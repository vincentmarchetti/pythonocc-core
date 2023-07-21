/*
##Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.
*/

#include "Visualization.h"


static Handle(OpenGl_GraphicDriver)& GetGraphicDriver()
{
  static Handle(OpenGl_GraphicDriver) aGraphicDriver;
  return aGraphicDriver;
}


static const Handle(Standard_Transient)& WClass()
{
  static Handle(Standard_Transient) aWindowClass;
#ifdef WNT
  if (aWindowClass.IsNull())
  {
    aWindowClass = new WNT_WClass ("PyOCC_Class", (void*)DefWindowProc,
                                   CS_VREDRAW | CS_HREDRAW, 0, 0,
                                   ::LoadCursor (NULL, IDC_ARROW));
  }
#endif
  return aWindowClass;
}

Display3d::Display3d()
  : myIsOffscreen(false), mySizeX(0), mySizeY(0)
{
  printf("####### 3D rendering pipe initialisation #####\n");
  printf("Display3d class initialization starting ...\n");
  // Create graphic driver
  Handle(Aspect_DisplayConnection) aDisplayConnection = new Aspect_DisplayConnection();
  printf("Aspect_DisplayConnection created.\n");
  if (GetGraphicDriver().IsNull())
  {
  GetGraphicDriver() = new OpenGl_GraphicDriver(aDisplayConnection);
  }
  printf("OpenGl_GraphicDriver created.\n");
  // Create V3dViewer and V3d_View
  myV3dViewer = new V3d_Viewer(GetGraphicDriver());
  printf("V3d_Viewer created.\n");
  // Create AISInteractiveViewer
  myAISContext = new AIS_InteractiveContext(myV3dViewer);
  if (myAISContext.IsNull())
  {
  Message::SendFail ("Error: no AIS_InteractiveContext.");
  }
  else
  {
  printf("AIS_InteractiveContext created.\n");
  }
  // Create view
  myV3dView = myV3dViewer->CreateView();
  if (myV3dView.IsNull())
  {
  Message::SendFail("No active viewer.");
  }
  else
  {
  printf("V3d_View created\n");
  }
  // create camera
  myGraphic3dCamera = myV3dView -> Camera();
  if (myGraphic3dCamera.IsNull())
  {
  Message::SendFail("No camera.");
  }
  else
  {
  printf("Graphic3d_Camera created\n");
  }
  // create structure manager
  myGraphic3dStructureManager = myAISContext -> MainPrsMgr() -> StructureManager();
  if (myGraphic3dStructureManager.IsNull())
  {
  Message::SendFail("No structure manager.");
  }
  else
  {
  printf("Graphic3d_StructureManager created\n");
  }

}

Display3d::~Display3d()
{
}

void Display3d::GlInfo()
{
  printf("OpenGl information:\n");
  TColStd_IndexedDataMapOfStringString aDict;
  myV3dView->DiagnosticInformation(aDict, Graphic3d_DiagnosticInfo_Short);
  TCollection_AsciiString aText="";
  for (TColStd_IndexedDataMapOfStringString::Iterator aValueIter(aDict); aValueIter.More(); aValueIter.Next())
  {
    if (!aText.IsEmpty())
    {
      aText += "\n";
    }
    aText += TCollection_AsciiString("  ") + aValueIter.Key() + ": " + aValueIter.Value();
  }
  aText += "\n";
  printf("%s", aText.ToCString());
}

Standard_Boolean Display3d::InitOffscreen(int size_x, int size_y)
{
  myIsOffscreen = true;
  SetSize(size_x, size_y);

  printf("Display3d class successfully initialized.\n");
  printf("#########################################\n");
  return true;
}

Standard_Boolean Display3d::IsOffscreen()
{
  return myIsOffscreen;
}

Standard_Boolean Display3d::SetSize(int size_x, int size_y)
{
  if(myIsOffscreen)
  {
    mySizeX = size_x;
    mySizeY = size_y;

#ifdef WNT
      myWindow = new WNT_Window("PythonOCC",
                                Handle(WNT_WClass)::DownCast (WClass()),
                                WS_OVERLAPPEDWINDOW,
                                0, 0,
                                size_x, size_y,
                                Quantity_NOC_BLACK);
      myWindow->SetVirtual (true);
#elif defined(__APPLE__) && !defined(MACOSX_USE_GLX)
      myWindow = new Cocoa_Window("PythonOCC",
                                  0, 0,
                                  size_x, size_y);
      printf("Cocoa window created.\n");
      myWindow->SetVirtual (true);
#else
      myWindow = new Xw_Window(myAISContext->CurrentViewer()->Driver()->GetDisplayConnection(),
                               "PythonOCC",
                               0, 0,
                               size_x, size_y);
      myWindow->SetVirtual (true);
#endif
    myV3dView->SetWindow(myWindow);
    return true;
  }
  return false;
}

Standard_Boolean Display3d::GetSize(int &size_x, int &size_y)
{
  if(myIsOffscreen)
  {
    size_x = mySizeX;
    size_y = mySizeY;
    return true;
  }
  return false;
}

Standard_Boolean Display3d::GetImageData(int width,
                                         int height,
                                         const char* &data,
                                         size_t &size,
                                         const Graphic3d_BufferType& theBufferType)
{
  if(myIsOffscreen)
  {
    static Image_PixMap anImage;
    if (myV3dView->ToPixMap (anImage, width, height, theBufferType))
    {
      data = (const char*)anImage.Data();
      size = anImage.SizeBytes();
      return true;
    }
  }
  return false;
}

void Display3d::Init(long window_handle)
{
  // Create Graphic Window
  #ifdef WNT
      myWindow = new WNT_Window((Aspect_Handle) window_handle);
      printf("WNT window created.\n");
  #elif defined(__APPLE__) && !defined(MACOSX_USE_GLX)
      myWindow = new Cocoa_Window((NSView *) window_handle);
      printf("Cocoa window created.\n");
  #else
      myWindow = new Xw_Window(myAISContext->CurrentViewer()->Driver()->GetDisplayConnection(),
                               (Aspect_Handle) window_handle);
      printf("Xw_Window created.\n");
  #endif
  myV3dView->SetWindow(myWindow);
  if (!myWindow->IsMapped()) myWindow->Map();
  printf("Display3d class successfully initialized.\n");
  printf("#########################################\n");
}

void Display3d::ChangeRenderingParams(int Method,
                                      Standard_Integer RaytracingDepth,
                                      Standard_Boolean IsShadowEnabled,
                                      Standard_Boolean IsReflectionEnabled,
                                      Standard_Boolean IsAntialiasingEnabled,
                                      Standard_Boolean IsTransparentShadowEnabled,
                                      int StereoMode,
                                      int AnaglyphFilter,
                                      Standard_Boolean ToReverseStereo)
{
  Graphic3d_RenderingParams& aParams = myV3dView->ChangeRenderingParams();
  aParams.Method = (Graphic3d_RenderingMode)Method;
  aParams.RaytracingDepth = RaytracingDepth;
  aParams.IsShadowEnabled = IsShadowEnabled;
  aParams.IsAntialiasingEnabled = IsAntialiasingEnabled;
  aParams.IsReflectionEnabled = IsReflectionEnabled;
  aParams.IsTransparentShadowEnabled = IsTransparentShadowEnabled;
  aParams.StereoMode = (Graphic3d_StereoMode)StereoMode;
  aParams.AnaglyphFilter = (Graphic3d_RenderingParams::Anaglyph)AnaglyphFilter;
  aParams.ToReverseStereo =ToReverseStereo;
  myV3dView->Redraw();
}


void Display3d::SetNbMsaaSample(int nb)
{
  Graphic3d_RenderingParams& aParams = myV3dView->ChangeRenderingParams();
  aParams.NbMsaaSamples = nb;
  myV3dView->Redraw();
}

void Display3d::SetAnaglyphMode(int mode)
{
  Handle(Graphic3d_Camera) aCamera = myV3dView->Camera();
  Graphic3d_RenderingParams* aParams = &myV3dView->ChangeRenderingParams();
  
  aParams->StereoMode = Graphic3d_StereoMode_Anaglyph;
  aParams->AnaglyphFilter = (Graphic3d_RenderingParams::Anaglyph)mode;

  GetGraphicDriver()->ChangeOptions().contextStereo = true;
  aCamera->SetProjectionType (Graphic3d_Camera::Projection_Stereo);
  myV3dView->Redraw();
}

void Display3d::EnableVBO()
{
  GetGraphicDriver()->ChangeOptions().vboDisable = false;
}

void Display3d::DisableVBO()
{
  GetGraphicDriver()->ChangeOptions().vboDisable = true;
}

void Display3d::Test()
{
      BRepPrimAPI_MakeBox S(100,50,40);
      Handle(AIS_Shape) anAISShape = new AIS_Shape(S.Shape());
      myAISContext->Display(anAISShape, Standard_False);
      myV3dView->ZFitAll();
      myV3dView->FitAll();
}
