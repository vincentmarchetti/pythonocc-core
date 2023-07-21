from enum import IntEnum
from typing import overload, NewType, Optional, Tuple

from OCC.Core.Standard import *
from OCC.Core.NCollection import *
from OCC.Core.TDF import *
from OCC.Core.TopLoc import *
from OCC.Core.Quantity import *
from OCC.Core.AIS import *
from OCC.Core.Graphic3d import *
from OCC.Core.TDocStd import *
from OCC.Core.XCAFDoc import *
from OCC.Core.TCollection import *
from OCC.Core.TopoDS import *
from OCC.Core.TPrsStd import *
from OCC.Core.Image import *

#the following typedef cannot be wrapped as is
XCAFPrs_DataMapIteratorOfIndexedDataMapOfShapeStyle = NewType('XCAFPrs_DataMapIteratorOfIndexedDataMapOfShapeStyle', Any)
XCAFPrs_DocumentExplorerFlags = NewType('XCAFPrs_DocumentExplorerFlags', Standard_Integer)
#the following typedef cannot be wrapped as is
XCAFPrs_IndexedDataMapOfShapeStyle = NewType('XCAFPrs_IndexedDataMapOfShapeStyle', Any)


class xcafprs:
    @staticmethod
    def CollectStyleSettings(L: TDF_Label, loc: TopLoc_Location, settings: XCAFPrs_IndexedDataMapOfShapeStyle, theLayerColor: Optional[Quantity_ColorRGBA] = Quantity_ColorRGBA(Quantity_NOC_WHITE)) -> None: ...
    @staticmethod
    def GetViewNameMode() -> bool: ...
    @staticmethod
    def SetViewNameMode(viewNameMode: bool) -> None: ...

class XCAFPrs_AISObject(AIS_ColoredShape):
    def __init__(self, theLabel: TDF_Label) -> None: ...
    def DispatchStyles(self, theToSyncStyles: Optional[bool] = False) -> None: ...
    def GetLabel(self) -> TDF_Label: ...
    def SetLabel(self, theLabel: TDF_Label) -> None: ...
    def SetMaterial(self, theMaterial: Graphic3d_MaterialAspect) -> None: ...

class XCAFPrs_DocumentExplorer:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, theDocument: TDocStd_Document, theFlags: int, theDefStyle: Optional[XCAFPrs_Style] = XCAFPrs_Style()) -> None: ...
    @overload
    def __init__(self, theDocument: TDocStd_Document, theRoots: TDF_LabelSequence, theFlags: int, theDefStyle: Optional[XCAFPrs_Style] = XCAFPrs_Style()) -> None: ...
    def ChangeCurrent(self) -> XCAFPrs_DocumentNode: ...
    def ColorTool(self) -> XCAFDoc_ColorTool: ...
    @overload
    def Current(self) -> XCAFPrs_DocumentNode: ...
    @overload
    def Current(self, theDepth: int) -> XCAFPrs_DocumentNode: ...
    def CurrentDepth(self) -> int: ...
    @staticmethod
    def DefineChildId(theLabel: TDF_Label, theParentId: str) -> str: ...
    @overload
    @staticmethod
    def FindLabelFromPathId(theDocument: TDocStd_Document, theId: str, theParentLocation: TopLoc_Location, theLocation: TopLoc_Location) -> TDF_Label: ...
    @overload
    @staticmethod
    def FindLabelFromPathId(theDocument: TDocStd_Document, theId: str, theLocation: TopLoc_Location) -> TDF_Label: ...
    @staticmethod
    def FindShapeFromPathId(theDocument: TDocStd_Document, theId: str) -> TopoDS_Shape: ...
    @overload
    def Init(self, theDocument: TDocStd_Document, theRoot: TDF_Label, theFlags: int, theDefStyle: Optional[XCAFPrs_Style] = XCAFPrs_Style()) -> None: ...
    @overload
    def Init(self, theDocument: TDocStd_Document, theRoots: TDF_LabelSequence, theFlags: int, theDefStyle: Optional[XCAFPrs_Style] = XCAFPrs_Style()) -> None: ...
    def More(self) -> bool: ...
    def Next(self) -> None: ...
    def VisMaterialTool(self) -> XCAFDoc_VisMaterialTool: ...

class XCAFPrs_DocumentIdIterator:
    def __init__(self, thePath: str) -> None: ...
    def More(self) -> bool: ...
    def Next(self) -> None: ...
    def Value(self) -> str: ...

class XCAFPrs_DocumentNode:
    def __init__(self) -> None: ...
    @staticmethod
    def HashCode(theNode: XCAFPrs_DocumentNode, theN: int) -> int: ...
    @staticmethod
    def IsEqual(theNode1: XCAFPrs_DocumentNode, theNode2: XCAFPrs_DocumentNode) -> bool: ...

class XCAFPrs_Driver(TPrsStd_Driver):
    @staticmethod
    def GetID() -> Standard_GUID: ...
    def Update(self, L: TDF_Label, ais: AIS_InteractiveObject) -> bool: ...

class XCAFPrs_Style:
    def __init__(self) -> None: ...
    def BaseColorTexture(self) -> Image_Texture: ...
    def GetColorCurv(self) -> Quantity_Color: ...
    def GetColorSurf(self) -> Quantity_Color: ...
    def GetColorSurfRGBA(self) -> Quantity_ColorRGBA: ...
    @staticmethod
    def HashCode(theStyle: XCAFPrs_Style, theUpperBound: int) -> int: ...
    def IsEmpty(self) -> bool: ...
    @overload
    def IsEqual(self, theOther: XCAFPrs_Style) -> bool: ...
    @overload
    @staticmethod
    def IsEqual(theS1: XCAFPrs_Style, theS2: XCAFPrs_Style) -> bool: ...
    def IsSetColorCurv(self) -> bool: ...
    def IsSetColorSurf(self) -> bool: ...
    def IsVisible(self) -> bool: ...
    def Material(self) -> XCAFDoc_VisMaterial: ...
    def SetColorCurv(self, col: Quantity_Color) -> None: ...
    @overload
    def SetColorSurf(self, theColor: Quantity_Color) -> None: ...
    @overload
    def SetColorSurf(self, theColor: Quantity_ColorRGBA) -> None: ...
    def SetMaterial(self, theMaterial: XCAFDoc_VisMaterial) -> None: ...
    def SetVisibility(self, theVisibility: bool) -> None: ...
    def UnSetColorCurv(self) -> None: ...
    def UnSetColorSurf(self) -> None: ...

class XCAFPrs_Texture(Graphic3d_Texture2D):
    def __init__(self, theImageSource: Image_Texture, theUnit: Graphic3d_TextureUnit) -> None: ...
    def GetCompressedImage(self, theSupported: Image_SupportedFormats) -> Image_CompressedPixMap: ...
    def GetImage(self, theSupported: Image_SupportedFormats) -> Image_PixMap: ...
    def GetImageSource(self) -> Image_Texture: ...

# harray1 classes
# harray2 classes
# hsequence classes

