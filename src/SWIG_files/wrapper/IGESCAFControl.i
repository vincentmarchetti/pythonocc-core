/*
Copyright 2008-2023 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.
*/
%define IGESCAFCONTROLDOCSTRING
"IGESCAFControl module, see official documentation at
https://www.opencascade.com/doc/occt-7.7.0/refman/html/package_igescafcontrol.html"
%enddef
%module (package="OCC.Core", docstring=IGESCAFCONTROLDOCSTRING) IGESCAFControl


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/EnumTemplates.i
%include ../common/Operators.i
%include ../common/OccHandle.i
%include ../common/IOStream.i


%{
#include<IGESCAFControl_module.hxx>

//Dependencies
#include<Standard_module.hxx>
#include<NCollection_module.hxx>
#include<Quantity_module.hxx>
#include<DE_module.hxx>
#include<TColStd_module.hxx>
#include<TCollection_module.hxx>
#include<TDocStd_module.hxx>
#include<XSControl_module.hxx>
#include<Message_module.hxx>
#include<TopoDS_module.hxx>
#include<IGESControl_module.hxx>
#include<TDF_module.hxx>
#include<Geom2d_module.hxx>
#include<IFSelect_module.hxx>
#include<Interface_module.hxx>
#include<IGESData_module.hxx>
#include<Geom_module.hxx>
#include<Transfer_module.hxx>
#include<PCDM_module.hxx>
#include<TopTools_module.hxx>
#include<CDF_module.hxx>
#include<Message_module.hxx>
#include<CDM_module.hxx>
#include<TopoDS_module.hxx>
#include<Resource_module.hxx>
#include<TopLoc_module.hxx>
#include<XSControl_module.hxx>
#include<ShapeExtend_module.hxx>
#include<TColGeom_module.hxx>
#include<MoniTool_module.hxx>
#include<IGESToBRep_module.hxx>
#include<BRep_module.hxx>
#include<TShort_module.hxx>
#include<Poly_module.hxx>
#include<Bnd_module.hxx>
#include<BRep_module.hxx>
#include<BRepTools_module.hxx>
#include<TColgp_module.hxx>
#include<TColStd_module.hxx>
#include<TCollection_module.hxx>
#include<Storage_module.hxx>
%};
%import Standard.i
%import NCollection.i
%import Quantity.i
%import DE.i
%import TColStd.i
%import TCollection.i
%import TDocStd.i
%import XSControl.i
%import Message.i
%import TopoDS.i
%import IGESControl.i
%import TDF.i

%pythoncode {
from enum import IntEnum
from OCC.Core.Exception import *
};

/* public enums */
/* end public enums declaration */

/* python proxy classes for enums */
%pythoncode {
};
/* end python proxy for enums */

/* handles */
%wrap_handle(IGESCAFControl_ConfigurationNode)
%wrap_handle(IGESCAFControl_Provider)
/* end handles declaration */

/* templates */
/* end templates declaration */

/* typedefs */
/* end typedefs declaration */

/***********************
* class IGESCAFControl *
***********************/
%rename(igescafcontrol) IGESCAFControl;
class IGESCAFControl {
	public:
		/****************** DecodeColor ******************/
		/**** md5 signature: 412697bd8d78fc5979403a70aef21561 ****/
		%feature("compactdefaultargs") DecodeColor;
		%feature("autodoc", "
Parameters
----------
col: int

Return
-------
Quantity_Color

Description
-----------
Provides a tool for writing iges file converts iges color index to cascade color.
") DecodeColor;
		static Quantity_Color DecodeColor(const Standard_Integer col);

		/****************** EncodeColor ******************/
		/**** md5 signature: b104ced61ad034521f1117876167864c ****/
		%feature("compactdefaultargs") EncodeColor;
		%feature("autodoc", "
Parameters
----------
col: Quantity_Color

Return
-------
int

Description
-----------
Tries to convert cascade color to iges color index if no corresponding color defined in iges, returns 0.
") EncodeColor;
		static Standard_Integer EncodeColor(const Quantity_Color & col);

};


%extend IGESCAFControl {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*****************************************
* class IGESCAFControl_ConfigurationNode *
*****************************************/
class IGESCAFControl_ConfigurationNode : public DE_ConfigurationNode {
	public:
		class IGESCAFControl_InternalSection {};
/* public enums */
enum ReadMode_BSplineContinuity {
	ReadMode_BSplineContinuity_C0 = 0,
	ReadMode_BSplineContinuity_C1 = 1,
	ReadMode_BSplineContinuity_C2 = 2,
};

enum ReadMode_MaxPrecision {
	ReadMode_MaxPrecision_Preferred = 0,
	ReadMode_MaxPrecision_Forced = 1,
};

enum ReadMode_Precision {
	ReadMode_Precision_File = 0,
	ReadMode_Precision_User = 1,
};

enum ReadMode_SurfaceCurve {
	ReadMode_SurfaceCurve_Default = 0,
	ReadMode_SurfaceCurve_2DUse_Preferred = 2,
	ReadMode_SurfaceCurve_2DUse_Forced = - 2,
	ReadMode_SurfaceCurve_3DUse_Preferred = 3,
	ReadMode_SurfaceCurve_3DUse_Forced = - 3,
};

enum WriteMode_BRep {
	WriteMode_BRep_Faces = 0,
	WriteMode_BRep_BRep = 1,
};

enum WriteMode_ConvertSurface {
	WriteMode_ConvertSurface_Off = 0,
	WriteMode_ConvertSurface_On = 1,
};

enum WriteMode_PlaneMode {
	WriteMode_PlaneMode_Plane = 0,
	WriteMode_PlaneMode_BSpline = 1,
};

enum WriteMode_PrecisionMode {
	WriteMode_PrecisionMode_Least = - 1,
	WriteMode_PrecisionMode_Average = 0,
	WriteMode_PrecisionMode_Greatest = 1,
	WriteMode_PrecisionMode_Session = 2,
};

/* end public enums declaration */

/* python proxy classes for enums */
%pythoncode {

class ReadMode_BSplineContinuity(IntEnum):
	ReadMode_BSplineContinuity_C0 = 0
	ReadMode_BSplineContinuity_C1 = 1
	ReadMode_BSplineContinuity_C2 = 2
ReadMode_BSplineContinuity_C0 = ReadMode_BSplineContinuity.ReadMode_BSplineContinuity_C0
ReadMode_BSplineContinuity_C1 = ReadMode_BSplineContinuity.ReadMode_BSplineContinuity_C1
ReadMode_BSplineContinuity_C2 = ReadMode_BSplineContinuity.ReadMode_BSplineContinuity_C2

class ReadMode_MaxPrecision(IntEnum):
	ReadMode_MaxPrecision_Preferred = 0
	ReadMode_MaxPrecision_Forced = 1
ReadMode_MaxPrecision_Preferred = ReadMode_MaxPrecision.ReadMode_MaxPrecision_Preferred
ReadMode_MaxPrecision_Forced = ReadMode_MaxPrecision.ReadMode_MaxPrecision_Forced

class ReadMode_Precision(IntEnum):
	ReadMode_Precision_File = 0
	ReadMode_Precision_User = 1
ReadMode_Precision_File = ReadMode_Precision.ReadMode_Precision_File
ReadMode_Precision_User = ReadMode_Precision.ReadMode_Precision_User

class ReadMode_SurfaceCurve(IntEnum):
	ReadMode_SurfaceCurve_Default = 0
	ReadMode_SurfaceCurve_2DUse_Preferred = 2
	ReadMode_SurfaceCurve_2DUse_Forced = - 2
	ReadMode_SurfaceCurve_3DUse_Preferred = 3
	ReadMode_SurfaceCurve_3DUse_Forced = - 3
ReadMode_SurfaceCurve_Default = ReadMode_SurfaceCurve.ReadMode_SurfaceCurve_Default
ReadMode_SurfaceCurve_2DUse_Preferred = ReadMode_SurfaceCurve.ReadMode_SurfaceCurve_2DUse_Preferred
ReadMode_SurfaceCurve_2DUse_Forced = ReadMode_SurfaceCurve.ReadMode_SurfaceCurve_2DUse_Forced
ReadMode_SurfaceCurve_3DUse_Preferred = ReadMode_SurfaceCurve.ReadMode_SurfaceCurve_3DUse_Preferred
ReadMode_SurfaceCurve_3DUse_Forced = ReadMode_SurfaceCurve.ReadMode_SurfaceCurve_3DUse_Forced

class WriteMode_BRep(IntEnum):
	WriteMode_BRep_Faces = 0
	WriteMode_BRep_BRep = 1
WriteMode_BRep_Faces = WriteMode_BRep.WriteMode_BRep_Faces
WriteMode_BRep_BRep = WriteMode_BRep.WriteMode_BRep_BRep

class WriteMode_ConvertSurface(IntEnum):
	WriteMode_ConvertSurface_Off = 0
	WriteMode_ConvertSurface_On = 1
WriteMode_ConvertSurface_Off = WriteMode_ConvertSurface.WriteMode_ConvertSurface_Off
WriteMode_ConvertSurface_On = WriteMode_ConvertSurface.WriteMode_ConvertSurface_On

class WriteMode_PlaneMode(IntEnum):
	WriteMode_PlaneMode_Plane = 0
	WriteMode_PlaneMode_BSpline = 1
WriteMode_PlaneMode_Plane = WriteMode_PlaneMode.WriteMode_PlaneMode_Plane
WriteMode_PlaneMode_BSpline = WriteMode_PlaneMode.WriteMode_PlaneMode_BSpline

class WriteMode_PrecisionMode(IntEnum):
	WriteMode_PrecisionMode_Least = - 1
	WriteMode_PrecisionMode_Average = 0
	WriteMode_PrecisionMode_Greatest = 1
	WriteMode_PrecisionMode_Session = 2
WriteMode_PrecisionMode_Least = WriteMode_PrecisionMode.WriteMode_PrecisionMode_Least
WriteMode_PrecisionMode_Average = WriteMode_PrecisionMode.WriteMode_PrecisionMode_Average
WriteMode_PrecisionMode_Greatest = WriteMode_PrecisionMode.WriteMode_PrecisionMode_Greatest
WriteMode_PrecisionMode_Session = WriteMode_PrecisionMode.WriteMode_PrecisionMode_Session
};
/* end python proxy for enums */

		IGESCAFControl_InternalSection InternalParameters;
		/****************** IGESCAFControl_ConfigurationNode ******************/
		/**** md5 signature: 96307af408fd934b33e11cbf8accb036 ****/
		%feature("compactdefaultargs") IGESCAFControl_ConfigurationNode;
		%feature("autodoc", "Return
-------
None

Description
-----------
Initializes all fields by default.
") IGESCAFControl_ConfigurationNode;
		 IGESCAFControl_ConfigurationNode();

		/****************** IGESCAFControl_ConfigurationNode ******************/
		/**** md5 signature: 30ed54c60b989aee1c71826f68dd24f0 ****/
		%feature("compactdefaultargs") IGESCAFControl_ConfigurationNode;
		%feature("autodoc", "
Parameters
----------
theNode: IGESCAFControl_ConfigurationNode

Return
-------
None

Description
-----------
Copies values of all fields @param[in] thenode object to copy.
") IGESCAFControl_ConfigurationNode;
		 IGESCAFControl_ConfigurationNode(const opencascade::handle<IGESCAFControl_ConfigurationNode> & theNode);

		/****************** BuildProvider ******************/
		/**** md5 signature: 732af66bf7bddbff6fa20c9629ec35a7 ****/
		%feature("compactdefaultargs") BuildProvider;
		%feature("autodoc", "Return
-------
opencascade::handle<DE_Provider>

Description
-----------
Creates new provider for the own format return new created provider.
") BuildProvider;
		virtual opencascade::handle<DE_Provider> BuildProvider();

		/****************** CheckContent ******************/
		/**** md5 signature: 2a770b41fb754bfe0ef0260c549f4919 ****/
		%feature("compactdefaultargs") CheckContent;
		%feature("autodoc", "
Parameters
----------
theBuffer: NCollection_Buffer

Return
-------
bool

Description
-----------
Checks the file content to verify a format @param[in] thebuffer read stream buffer to check content return standard_true if file is supported by a current provider.
") CheckContent;
		virtual bool CheckContent(const opencascade::handle<NCollection_Buffer> & theBuffer);

		/****************** Copy ******************/
		/**** md5 signature: 4559608ebdab2961e97de40732291656 ****/
		%feature("compactdefaultargs") Copy;
		%feature("autodoc", "Return
-------
opencascade::handle<DE_ConfigurationNode>

Description
-----------
Copies values of all fields return new object with the same field values.
") Copy;
		virtual opencascade::handle<DE_ConfigurationNode> Copy();

		/****************** GetExtensions ******************/
		/**** md5 signature: a58fd9c22a501a38d695eed6406f94bb ****/
		%feature("compactdefaultargs") GetExtensions;
		%feature("autodoc", "Return
-------
TColStd_ListOfAsciiString

Description
-----------
Gets list of supported file extensions return list of extensions.
") GetExtensions;
		virtual TColStd_ListOfAsciiString GetExtensions();

		/****************** GetFormat ******************/
		/**** md5 signature: 3a7e97ac1131aefae2f717c160d31ca9 ****/
		%feature("compactdefaultargs") GetFormat;
		%feature("autodoc", "Return
-------
TCollection_AsciiString

Description
-----------
Gets cad format name of associated provider return provider cad format.
") GetFormat;
		virtual TCollection_AsciiString GetFormat();

		/****************** GetVendor ******************/
		/**** md5 signature: dec3ae3842639c0f3f7b51f11891135d ****/
		%feature("compactdefaultargs") GetVendor;
		%feature("autodoc", "Return
-------
TCollection_AsciiString

Description
-----------
Gets provider's vendor name of associated provider return provider's vendor name.
") GetVendor;
		virtual TCollection_AsciiString GetVendor();

		/****************** IsExportSupported ******************/
		/**** md5 signature: 7b5a27f839d52b595deb06dd28df5230 ****/
		%feature("compactdefaultargs") IsExportSupported;
		%feature("autodoc", "Return
-------
bool

Description
-----------
Checks the export supporting return true if export is supported.
") IsExportSupported;
		virtual bool IsExportSupported();

		/****************** IsImportSupported ******************/
		/**** md5 signature: 54f008ecb7de4dd5dcaeefb3d1d06abc ****/
		%feature("compactdefaultargs") IsImportSupported;
		%feature("autodoc", "Return
-------
bool

Description
-----------
Checks the import supporting return true if import is supported.
") IsImportSupported;
		virtual bool IsImportSupported();

		/****************** Load ******************/
		/**** md5 signature: 994009254510d81a5f0f9a326a356850 ****/
		%feature("compactdefaultargs") Load;
		%feature("autodoc", "
Parameters
----------
theResource: DE_ConfigurationContext

Return
-------
bool

Description
-----------
Updates values according the resource @param[in] theresource input resource to use return true if theresource loading has ended correctly.
") Load;
		virtual bool Load(const opencascade::handle<DE_ConfigurationContext> & theResource);

		/****************** Save ******************/
		/**** md5 signature: d6023e92d8565d8e19b0fc2ce7e2a326 ****/
		%feature("compactdefaultargs") Save;
		%feature("autodoc", "Return
-------
TCollection_AsciiString

Description
-----------
Writes configuration to the string return result resource string.
") Save;
		virtual TCollection_AsciiString Save();

};


%make_alias(IGESCAFControl_ConfigurationNode)

%extend IGESCAFControl_ConfigurationNode {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/********************************
* class IGESCAFControl_Provider *
********************************/
class IGESCAFControl_Provider : public DE_Provider {
	public:
		/****************** IGESCAFControl_Provider ******************/
		/**** md5 signature: 227befd5701f2ad5faa6f569dfbf3784 ****/
		%feature("compactdefaultargs") IGESCAFControl_Provider;
		%feature("autodoc", "Return
-------
None

Description
-----------
Default constructor configure translation process with global configuration.
") IGESCAFControl_Provider;
		 IGESCAFControl_Provider();

		/****************** IGESCAFControl_Provider ******************/
		/**** md5 signature: 6a5079025a4ee80082d032256331470d ****/
		%feature("compactdefaultargs") IGESCAFControl_Provider;
		%feature("autodoc", "
Parameters
----------
theNode: DE_ConfigurationNode

Return
-------
None

Description
-----------
Configure translation process @param[in] thenode object to copy.
") IGESCAFControl_Provider;
		 IGESCAFControl_Provider(const opencascade::handle<DE_ConfigurationNode> & theNode);

		/****************** GetFormat ******************/
		/**** md5 signature: 3a7e97ac1131aefae2f717c160d31ca9 ****/
		%feature("compactdefaultargs") GetFormat;
		%feature("autodoc", "Return
-------
TCollection_AsciiString

Description
-----------
Gets cad format name of associated provider return provider cad format.
") GetFormat;
		virtual TCollection_AsciiString GetFormat();

		/****************** GetVendor ******************/
		/**** md5 signature: dec3ae3842639c0f3f7b51f11891135d ****/
		%feature("compactdefaultargs") GetVendor;
		%feature("autodoc", "Return
-------
TCollection_AsciiString

Description
-----------
Gets provider's vendor name of associated provider return provider's vendor name.
") GetVendor;
		virtual TCollection_AsciiString GetVendor();

		/****************** Read ******************/
		/**** md5 signature: 5da3d196d6292385962a1e60f3dec8a0 ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "
Parameters
----------
thePath: str
theDocument: TDocStd_Document
theWS: XSControl_WorkSession
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
Reads a cad file, according internal configuration @param[in] thepath path to the import cad file @param[out] thedocument document to save result @param[in] thews current work session @param theprogress[in] progress indicator return true if read operation has ended correctly.
") Read;
		virtual bool Read(TCollection_AsciiString thePath, const opencascade::handle<TDocStd_Document> & theDocument, opencascade::handle<XSControl_WorkSession> & theWS, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Read ******************/
		/**** md5 signature: ec9914af037216c0502c72d0c8784072 ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "
Parameters
----------
thePath: str
theDocument: TDocStd_Document
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
Reads a cad file, according internal configuration @param[in] thepath path to the import cad file @param[out] thedocument document to save result @param theprogress[in] progress indicator return true if read operation has ended correctly.
") Read;
		virtual bool Read(TCollection_AsciiString thePath, const opencascade::handle<TDocStd_Document> & theDocument, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Read ******************/
		/**** md5 signature: f5c487132f5fe207a43ed7a7e7ce6afc ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "
Parameters
----------
thePath: str
theShape: TopoDS_Shape
theWS: XSControl_WorkSession
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
Reads a cad file, according internal configuration @param[in] thepath path to the import cad file @param[out] theshape shape to save result @param[in] thews current work session @param theprogress[in] progress indicator return true if read operation has ended correctly.
") Read;
		virtual bool Read(TCollection_AsciiString thePath, TopoDS_Shape & theShape, opencascade::handle<XSControl_WorkSession> & theWS, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Read ******************/
		/**** md5 signature: 25ccf35b1d33bce5d3311fc0dff44615 ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "
Parameters
----------
thePath: str
theShape: TopoDS_Shape
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
Reads a cad file, according internal configuration @param[in] thepath path to the import cad file @param[out] theshape shape to save result @param theprogress[in] progress indicator return true if read operation has ended correctly.
") Read;
		virtual bool Read(TCollection_AsciiString thePath, TopoDS_Shape & theShape, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Write ******************/
		/**** md5 signature: d1d3f520ef648333a2d1d51e7ecf7636 ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "
Parameters
----------
thePath: str
theDocument: TDocStd_Document
theWS: XSControl_WorkSession
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
Writes a cad file, according internal configuration @param[in] thepath path to the export cad file @param[out] thedocument document to export @param[in] thews current work session @param theprogress[in] progress indicator return true if write operation has ended correctly.
") Write;
		virtual bool Write(TCollection_AsciiString thePath, const opencascade::handle<TDocStd_Document> & theDocument, opencascade::handle<XSControl_WorkSession> & theWS, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Write ******************/
		/**** md5 signature: 5d65a8a954decd50174318516f7bc4f8 ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "
Parameters
----------
thePath: str
theDocument: TDocStd_Document
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
Writes a cad file, according internal configuration @param[in] thepath path to the export cad file @param[out] thedocument document to export @param theprogress[in] progress indicator return true if write operation has ended correctly.
") Write;
		virtual bool Write(TCollection_AsciiString thePath, const opencascade::handle<TDocStd_Document> & theDocument, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Write ******************/
		/**** md5 signature: 0d58c2b5e69c703850ad85ac36436410 ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "
Parameters
----------
thePath: str
theShape: TopoDS_Shape
theWS: XSControl_WorkSession
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
Writes a cad file, according internal configuration @param[in] thepath path to the export cad file @param[out] theshape shape to export @param[in] thews current work session @param theprogress[in] progress indicator return true if write operation has ended correctly.
") Write;
		virtual bool Write(TCollection_AsciiString thePath, const TopoDS_Shape & theShape, opencascade::handle<XSControl_WorkSession> & theWS, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Write ******************/
		/**** md5 signature: 2e3eef7d4e677163a76bbbdf8a15c79f ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "
Parameters
----------
thePath: str
theShape: TopoDS_Shape
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
Writes a cad file, according internal configuration @param[in] thepath path to the export cad file @param[out] theshape shape to export @param theprogress[in] progress indicator return true if write operation has ended correctly.
") Write;
		virtual bool Write(TCollection_AsciiString thePath, const TopoDS_Shape & theShape, const Message_ProgressRange & theProgress = Message_ProgressRange());

};


%make_alias(IGESCAFControl_Provider)

%extend IGESCAFControl_Provider {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/******************************
* class IGESCAFControl_Reader *
******************************/
class IGESCAFControl_Reader : public IGESControl_Reader {
	public:
		/****************** IGESCAFControl_Reader ******************/
		/**** md5 signature: 247dc9b3de494ba90e36e7db39edee6b ****/
		%feature("compactdefaultargs") IGESCAFControl_Reader;
		%feature("autodoc", "Return
-------
None

Description
-----------
Creates a reader with an empty iges model and sets colormode, layermode and namemode to standard_true.
") IGESCAFControl_Reader;
		 IGESCAFControl_Reader();

		/****************** IGESCAFControl_Reader ******************/
		/**** md5 signature: ed2325657273ea5f907b2a7d8ba9ffcc ****/
		%feature("compactdefaultargs") IGESCAFControl_Reader;
		%feature("autodoc", "
Parameters
----------
theWS: XSControl_WorkSession
FromScratch: bool (optional, default to Standard_True)

Return
-------
None

Description
-----------
Creates a reader tool and attaches it to an already existing session clears the session if it was not yet set for iges.
") IGESCAFControl_Reader;
		 IGESCAFControl_Reader(const opencascade::handle<XSControl_WorkSession> & theWS, const Standard_Boolean FromScratch = Standard_True);

		/****************** GetColorMode ******************/
		/**** md5 signature: cddb885e605f1794a5a6486023f65736 ****/
		%feature("compactdefaultargs") GetColorMode;
		%feature("autodoc", "Return
-------
bool

Description
-----------
No available documentation.
") GetColorMode;
		Standard_Boolean GetColorMode();

		/****************** GetLayerMode ******************/
		/**** md5 signature: b6b1458608d2429d13e63a07c0b392d8 ****/
		%feature("compactdefaultargs") GetLayerMode;
		%feature("autodoc", "Return
-------
bool

Description
-----------
No available documentation.
") GetLayerMode;
		Standard_Boolean GetLayerMode();

		/****************** GetNameMode ******************/
		/**** md5 signature: 1097f532a68b4625a0108cddc8366238 ****/
		%feature("compactdefaultargs") GetNameMode;
		%feature("autodoc", "Return
-------
bool

Description
-----------
No available documentation.
") GetNameMode;
		Standard_Boolean GetNameMode();

		/****************** Perform ******************/
		/**** md5 signature: cee56f371ea8e972dad6b23f2e3d3bd3 ****/
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "
Parameters
----------
theFileName: str
theDoc: TDocStd_Document
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
No available documentation.
") Perform;
		Standard_Boolean Perform(TCollection_AsciiString theFileName, const opencascade::handle<TDocStd_Document> & theDoc, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Perform ******************/
		/**** md5 signature: 7404bc4c3b80e5147b5cfd67bfcd62d1 ****/
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "
Parameters
----------
theFileName: str
theDoc: TDocStd_Document
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
Translate iges file given by filename into the document return true if succeeded, and false in case of fail.
") Perform;
		Standard_Boolean Perform(Standard_CString theFileName, const opencascade::handle<TDocStd_Document> & theDoc, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** SetColorMode ******************/
		/**** md5 signature: 7026741e7d147d7065572beb98babc6e ****/
		%feature("compactdefaultargs") SetColorMode;
		%feature("autodoc", "
Parameters
----------
theMode: bool

Return
-------
None

Description
-----------
Set colormode for indicate read colors or not.
") SetColorMode;
		void SetColorMode(const Standard_Boolean theMode);

		/****************** SetLayerMode ******************/
		/**** md5 signature: 81f87cc05a87da11feacb0420dc37c4b ****/
		%feature("compactdefaultargs") SetLayerMode;
		%feature("autodoc", "
Parameters
----------
theMode: bool

Return
-------
None

Description
-----------
Set layermode for indicate read layers or not.
") SetLayerMode;
		void SetLayerMode(const Standard_Boolean theMode);

		/****************** SetNameMode ******************/
		/**** md5 signature: a69a0615cbbe8af82773337e918a7087 ****/
		%feature("compactdefaultargs") SetNameMode;
		%feature("autodoc", "
Parameters
----------
theMode: bool

Return
-------
None

Description
-----------
Set namemode for indicate read name or not.
") SetNameMode;
		void SetNameMode(const Standard_Boolean theMode);

		/****************** Transfer ******************/
		/**** md5 signature: df90f76568165a7e5bd8481bb89b6fc9 ****/
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "
Parameters
----------
theDoc: TDocStd_Document
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
Translates currently loaded iges file into the document returns true if succeeded, and false in case of fail.
") Transfer;
		Standard_Boolean Transfer(const opencascade::handle<TDocStd_Document> & theDoc, const Message_ProgressRange & theProgress = Message_ProgressRange());

};


%extend IGESCAFControl_Reader {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/******************************
* class IGESCAFControl_Writer *
******************************/
class IGESCAFControl_Writer : public IGESControl_Writer {
	public:
		/****************** IGESCAFControl_Writer ******************/
		/**** md5 signature: 34a554f8fe0d098b53da598d84fdc271 ****/
		%feature("compactdefaultargs") IGESCAFControl_Writer;
		%feature("autodoc", "Return
-------
None

Description
-----------
Creates a writer with an empty iges model and sets colormode, layermode and namemode to standard_true.
") IGESCAFControl_Writer;
		 IGESCAFControl_Writer();

		/****************** IGESCAFControl_Writer ******************/
		/**** md5 signature: 185eb49db43948a75dc15c0c48b3f1bc ****/
		%feature("compactdefaultargs") IGESCAFControl_Writer;
		%feature("autodoc", "
Parameters
----------
WS: XSControl_WorkSession
scratch: bool (optional, default to Standard_True)

Return
-------
None

Description
-----------
Creates a reader tool and attaches it to an already existing session clears the session if it was not yet set for iges.
") IGESCAFControl_Writer;
		 IGESCAFControl_Writer(const opencascade::handle<XSControl_WorkSession> & WS, const Standard_Boolean scratch = Standard_True);

		/****************** GetColorMode ******************/
		/**** md5 signature: 010da6a8a0e8a61fdb607fd6faba2b56 ****/
		%feature("compactdefaultargs") GetColorMode;
		%feature("autodoc", "Return
-------
bool

Description
-----------
No available documentation.
") GetColorMode;
		Standard_Boolean GetColorMode();

		/****************** GetLayerMode ******************/
		/**** md5 signature: d677385c303e067613f92bc738509727 ****/
		%feature("compactdefaultargs") GetLayerMode;
		%feature("autodoc", "Return
-------
bool

Description
-----------
No available documentation.
") GetLayerMode;
		Standard_Boolean GetLayerMode();

		/****************** GetNameMode ******************/
		/**** md5 signature: 2dd32a893d6f5f4666ac3752ace2d12f ****/
		%feature("compactdefaultargs") GetNameMode;
		%feature("autodoc", "Return
-------
bool

Description
-----------
No available documentation.
") GetNameMode;
		Standard_Boolean GetNameMode();

		/****************** Perform ******************/
		/**** md5 signature: 82a9ff51a493dfcaea368ecaef792fdb ****/
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "
Parameters
----------
doc: TDocStd_Document
filename: str
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
No available documentation.
") Perform;
		Standard_Boolean Perform(const opencascade::handle<TDocStd_Document> & doc, TCollection_AsciiString filename, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Perform ******************/
		/**** md5 signature: 1ef00b1bd520cd3b05cc4f00e91c494d ****/
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "
Parameters
----------
doc: TDocStd_Document
filename: str
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
Transfers a document and writes it to a iges file returns true if translation is ok.
") Perform;
		Standard_Boolean Perform(const opencascade::handle<TDocStd_Document> & doc, Standard_CString filename, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** SetColorMode ******************/
		/**** md5 signature: e8d41838c31a9460a1c83d84b1f572a1 ****/
		%feature("compactdefaultargs") SetColorMode;
		%feature("autodoc", "
Parameters
----------
colormode: bool

Return
-------
None

Description
-----------
Set colormode for indicate write colors or not.
") SetColorMode;
		void SetColorMode(const Standard_Boolean colormode);

		/****************** SetLayerMode ******************/
		/**** md5 signature: 3ec21c8de4b114a83bb0b34cb3b98662 ****/
		%feature("compactdefaultargs") SetLayerMode;
		%feature("autodoc", "
Parameters
----------
layermode: bool

Return
-------
None

Description
-----------
Set layermode for indicate write layers or not.
") SetLayerMode;
		void SetLayerMode(const Standard_Boolean layermode);

		/****************** SetNameMode ******************/
		/**** md5 signature: 43ccb5d3fb024d8191f251ee74d0f6ba ****/
		%feature("compactdefaultargs") SetNameMode;
		%feature("autodoc", "
Parameters
----------
namemode: bool

Return
-------
None

Description
-----------
Set namemode for indicate write name or not.
") SetNameMode;
		void SetNameMode(const Standard_Boolean namemode);

		/****************** Transfer ******************/
		/**** md5 signature: 31249612d40a7a08f4519552635fb88d ****/
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "
Parameters
----------
doc: TDocStd_Document
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
Transfers a document to a iges model returns true if translation is ok.
") Transfer;
		Standard_Boolean Transfer(const opencascade::handle<TDocStd_Document> & doc, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Transfer ******************/
		/**** md5 signature: f3e872ca158bc684049cac94dc49b992 ****/
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "
Parameters
----------
labels: TDF_LabelSequence
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
Transfers labels to a iges model returns true if translation is ok.
") Transfer;
		Standard_Boolean Transfer(const TDF_LabelSequence & labels, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Transfer ******************/
		/**** md5 signature: 04ca4aafde66fce5eeebd12288b3c0bd ****/
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "
Parameters
----------
label: TDF_Label
theProgress: Message_ProgressRange (optional, default to Message_ProgressRange())

Return
-------
bool

Description
-----------
Transfers label to a iges model returns true if translation is ok.
") Transfer;
		Standard_Boolean Transfer(const TDF_Label & label, const Message_ProgressRange & theProgress = Message_ProgressRange());

};


%extend IGESCAFControl_Writer {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/* harray1 classes */
/* harray2 classes */
/* hsequence classes */
/* class aliases */
%pythoncode {
}
/* deprecated methods */
%pythoncode {
@deprecated
def igescafcontrol_DecodeColor(*args):
	return igescafcontrol.DecodeColor(*args)

@deprecated
def igescafcontrol_EncodeColor(*args):
	return igescafcontrol.EncodeColor(*args)

}
