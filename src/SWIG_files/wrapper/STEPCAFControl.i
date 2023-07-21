/*
Copyright 2008-2022 Thomas Paviot (tpaviot@gmail.com)

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
%define STEPCAFCONTROLDOCSTRING
"STEPCAFControl module, see official documentation at
https://www.opencascade.com/doc/occt-7.6.0/refman/html/package_stepcafcontrol.html"
%enddef
%module (package="OCC.Core", docstring=STEPCAFCONTROLDOCSTRING) STEPCAFControl


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


%{
#include<STEPCAFControl_module.hxx>

//Dependencies
#include<Standard_module.hxx>
#include<NCollection_module.hxx>
#include<StepShape_module.hxx>
#include<StepBasic_module.hxx>
#include<STEPControl_module.hxx>
#include<TopoDS_module.hxx>
#include<TColStd_module.hxx>
#include<TCollection_module.hxx>
#include<TDF_module.hxx>
#include<IFSelect_module.hxx>
#include<XSControl_module.hxx>
#include<XCAFDimTolObjects_module.hxx>
#include<StepDimTol_module.hxx>
#include<StepRepr_module.hxx>
#include<StepVisual_module.hxx>
#include<TDocStd_module.hxx>
#include<Message_module.hxx>
#include<XCAFDoc_module.hxx>
#include<STEPConstruct_module.hxx>
#include<Interface_module.hxx>
#include<TopLoc_module.hxx>
#include<TopTools_module.hxx>
#include<CDF_module.hxx>
#include<PCDM_module.hxx>
#include<Message_module.hxx>
#include<Quantity_module.hxx>
#include<StepGeom_module.hxx>
#include<CDM_module.hxx>
#include<StepAP203_module.hxx>
#include<Resource_module.hxx>
#include<StepVisual_module.hxx>
#include<StepData_module.hxx>
#include<Geom_module.hxx>
#include<Geom2d_module.hxx>
#include<IFSelect_module.hxx>
#include<Transfer_module.hxx>
#include<Resource_module.hxx>
#include<TopLoc_module.hxx>
#include<XCAFView_module.hxx>
#include<XSControl_module.hxx>
#include<StepRepr_module.hxx>
#include<TDataStd_module.hxx>
#include<MoniTool_module.hxx>
#include<Graphic3d_module.hxx>
#include<Bnd_module.hxx>
#include<Aspect_module.hxx>
#include<Media_module.hxx>
#include<TColgp_module.hxx>
#include<TColStd_module.hxx>
#include<TCollection_module.hxx>
#include<Storage_module.hxx>
%};
%import Standard.i
%import NCollection.i
%import StepShape.i
%import StepBasic.i
%import STEPControl.i
%import TopoDS.i
%import TColStd.i
%import TCollection.i
%import TDF.i
%import IFSelect.i
%import XSControl.i
%import XCAFDimTolObjects.i
%import StepDimTol.i
%import StepRepr.i
%import StepVisual.i
%import TDocStd.i
%import Message.i
%import XCAFDoc.i
%import STEPConstruct.i

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
%wrap_handle(STEPCAFControl_ActorWrite)
%wrap_handle(STEPCAFControl_Controller)
%wrap_handle(STEPCAFControl_ExternFile)
/* end handles declaration */

/* templates */
%template(STEPCAFControl_DataMapOfLabelExternFile) NCollection_DataMap<TDF_Label,opencascade::handle<STEPCAFControl_ExternFile>,TDF_LabelMapHasher>;
%template(STEPCAFControl_DataMapOfLabelShape) NCollection_DataMap<TDF_Label,TopoDS_Shape,TDF_LabelMapHasher>;
%template(STEPCAFControl_DataMapOfPDExternFile) NCollection_DataMap<opencascade::handle<StepBasic_ProductDefinition>,opencascade::handle<STEPCAFControl_ExternFile>,TColStd_MapTransientHasher>;
%template(STEPCAFControl_DataMapOfSDRExternFile) NCollection_DataMap<opencascade::handle<StepShape_ShapeDefinitionRepresentation>,opencascade::handle<STEPCAFControl_ExternFile>,TColStd_MapTransientHasher>;
%template(STEPCAFControl_DataMapOfShapePD) NCollection_DataMap<TopoDS_Shape,opencascade::handle<StepBasic_ProductDefinition>,TopTools_ShapeMapHasher>;
%template(STEPCAFControl_DataMapOfShapeSDR) NCollection_DataMap<TopoDS_Shape,opencascade::handle<StepShape_ShapeDefinitionRepresentation>,TopTools_ShapeMapHasher>;
/* end templates declaration */

/* typedefs */
typedef NCollection_DataMap<TDF_Label, opencascade::handle<STEPCAFControl_ExternFile>, TDF_LabelMapHasher>::Iterator STEPCAFControl_DataMapIteratorOfDataMapOfLabelExternFile;
typedef NCollection_DataMap<TDF_Label, TopoDS_Shape, TDF_LabelMapHasher>::Iterator STEPCAFControl_DataMapIteratorOfDataMapOfLabelShape;
typedef NCollection_DataMap<opencascade::handle<StepBasic_ProductDefinition>, opencascade::handle<STEPCAFControl_ExternFile>, TColStd_MapTransientHasher>::Iterator STEPCAFControl_DataMapIteratorOfDataMapOfPDExternFile;
typedef NCollection_DataMap<opencascade::handle<StepShape_ShapeDefinitionRepresentation>, opencascade::handle<STEPCAFControl_ExternFile>, TColStd_MapTransientHasher>::Iterator STEPCAFControl_DataMapIteratorOfDataMapOfSDRExternFile;
typedef NCollection_DataMap<TopoDS_Shape, opencascade::handle<StepBasic_ProductDefinition>, TopTools_ShapeMapHasher>::Iterator STEPCAFControl_DataMapIteratorOfDataMapOfShapePD;
typedef NCollection_DataMap<TopoDS_Shape, opencascade::handle<StepShape_ShapeDefinitionRepresentation>, TopTools_ShapeMapHasher>::Iterator STEPCAFControl_DataMapIteratorOfDataMapOfShapeSDR;
typedef NCollection_DataMap<TDF_Label, opencascade::handle<STEPCAFControl_ExternFile>, TDF_LabelMapHasher> STEPCAFControl_DataMapOfLabelExternFile;
typedef NCollection_DataMap<TDF_Label, TopoDS_Shape, TDF_LabelMapHasher> STEPCAFControl_DataMapOfLabelShape;
typedef NCollection_DataMap<opencascade::handle<StepBasic_ProductDefinition>, opencascade::handle<STEPCAFControl_ExternFile>, TColStd_MapTransientHasher> STEPCAFControl_DataMapOfPDExternFile;
typedef NCollection_DataMap<opencascade::handle<StepShape_ShapeDefinitionRepresentation>, opencascade::handle<STEPCAFControl_ExternFile>, TColStd_MapTransientHasher> STEPCAFControl_DataMapOfSDRExternFile;
typedef NCollection_DataMap<TopoDS_Shape, opencascade::handle<StepBasic_ProductDefinition>, TopTools_ShapeMapHasher> STEPCAFControl_DataMapOfShapePD;
typedef NCollection_DataMap<TopoDS_Shape, opencascade::handle<StepShape_ShapeDefinitionRepresentation>, TopTools_ShapeMapHasher> STEPCAFControl_DataMapOfShapeSDR;
/* end typedefs declaration */

/**********************************
* class STEPCAFControl_ActorWrite *
**********************************/
class STEPCAFControl_ActorWrite : public STEPControl_ActorWrite {
	public:
		/****************** STEPCAFControl_ActorWrite ******************/
		/**** md5 signature: 55d2eef5460035edc16a241d250d3133 ****/
		%feature("compactdefaultargs") STEPCAFControl_ActorWrite;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") STEPCAFControl_ActorWrite;
		 STEPCAFControl_ActorWrite();

		/****************** ClearMap ******************/
		/**** md5 signature: 9356b49e3e18c060604ef62eda302963 ****/
		%feature("compactdefaultargs") ClearMap;
		%feature("autodoc", "Clears map of shapes registered as assemblies.

Returns
-------
None
") ClearMap;
		void ClearMap();

		/****************** IsAssembly ******************/
		/**** md5 signature: 30d578b0e9cf9ae797fce09e72f62fcb ****/
		%feature("compactdefaultargs") IsAssembly;
		%feature("autodoc", "Check whether shape s is assembly returns true if shape is registered in assemblies map.

Parameters
----------
S: TopoDS_Shape

Returns
-------
bool
") IsAssembly;
		virtual Standard_Boolean IsAssembly(TopoDS_Shape & S);

		/****************** RegisterAssembly ******************/
		/**** md5 signature: 622c0a9708d57976d3998396359aa735 ****/
		%feature("compactdefaultargs") RegisterAssembly;
		%feature("autodoc", "Registers shape to be written as assembly the shape should be topods_compound (else does nothing).

Parameters
----------
S: TopoDS_Shape

Returns
-------
None
") RegisterAssembly;
		void RegisterAssembly(const TopoDS_Shape & S);

		/****************** SetStdMode ******************/
		/**** md5 signature: 2640024529e09e71f4f773fb40c093b1 ****/
		%feature("compactdefaultargs") SetStdMode;
		%feature("autodoc", "Set standard mode of work in standard mode actor (default) behaves exactly as its ancestor, also map is cleared.

Parameters
----------
stdmode: bool,optional
	default value is Standard_True

Returns
-------
None
") SetStdMode;
		void SetStdMode(const Standard_Boolean stdmode = Standard_True);

};


%make_alias(STEPCAFControl_ActorWrite)

%extend STEPCAFControl_ActorWrite {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*****************************************
* class STEPCAFControl_ConfigurationNode *
*****************************************/
class STEPCAFControl_ConfigurationNode : public DE_ConfigurationNode {
	public:
		class STEPCAFControl_InternalSection {};
/* public enums */
enum ReadMode_BSplineContinuity {
	ReadMode_BSplineContinuity_C0 = 0,
	ReadMode_BSplineContinuity_C1 = 1,
	ReadMode_BSplineContinuity_C2 = 2,
};

enum ReadMode_Precision {
	ReadMode_Precision_File = 0,
	ReadMode_Precision_User = 1,
};

enum ReadMode_MaxPrecision {
	ReadMode_MaxPrecision_Preferred = 0,
	ReadMode_MaxPrecision_Forced = 1,
};

enum ReadMode_SurfaceCurve {
	ReadMode_SurfaceCurve_Default = 0,
	ReadMode_SurfaceCurve_2DUse_Preferred = 2,
	ReadMode_SurfaceCurve_2DUse_Forced = - 2,
	ReadMode_SurfaceCurve_3DUse_Preferred = 3,
	ReadMode_SurfaceCurve_3DUse_Forced = - 3,
};

enum AngleUnitMode {
	AngleUnitMode_File = 0,
	AngleUnitMode_Rad = 1,
	AngleUnitMode_Deg = 2,
};

enum ReadMode_ProductContext {
	ReadMode_ProductContext_All = 1,
	ReadMode_ProductContext_Design = 2,
	ReadMode_ProductContext_Analysis = 3,
};

enum ReadMode_ShapeRepr {
	ReadMode_ShapeRepr_All = 1,
	ReadMode_ShapeRepr_ABSR = 2,
	ReadMode_ShapeRepr_MSSR = 3,
	ReadMode_ShapeRepr_GBSSR = 4,
	ReadMode_ShapeRepr_FBSR = 5,
	ReadMode_ShapeRepr_EBWSR = 6,
	ReadMode_ShapeRepr_GBWSR = 7,
};

enum ReadMode_AssemblyLevel {
	ReadMode_AssemblyLevel_All = 1,
	ReadMode_AssemblyLevel_Assembly = 2,
	ReadMode_AssemblyLevel_Structure = 3,
	ReadMode_AssemblyLevel_Shape = 4,
};

enum RWMode_Tessellated {
	RWMode_Tessellated_Off = 0,
	RWMode_Tessellated_On = 1,
	RWMode_Tessellated_OnNoBRep = 2,
};

enum WriteMode_PrecisionMode {
	WriteMode_PrecisionMode_Least = - 1,
	WriteMode_PrecisionMode_Average = 0,
	WriteMode_PrecisionMode_Greatest = 1,
	WriteMode_PrecisionMode_Session = 2,
};

enum WriteMode_Assembly {
	WriteMode_Assembly_Off = 0,
	WriteMode_Assembly_On = 1,
	WriteMode_Assembly_Auto = 2,
};

enum WriteMode_StepSchema {
	WriteMode_StepSchema_AP214CD = 1,
	WriteMode_StepSchema_AP214DIS = 2,
	WriteMode_StepSchema_AP203 = 3,
	WriteMode_StepSchema_AP214IS = 4,
	WriteMode_StepSchema_AP242DIS = 5,
};

enum WriteMode_VertexMode {
	WriteMode_VertexMode_OneCompound = 0,
	WriteMode_VertexMode_SingleVertex = 1,
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

class ReadMode_Precision(IntEnum):
	ReadMode_Precision_File = 0
	ReadMode_Precision_User = 1
ReadMode_Precision_File = ReadMode_Precision.ReadMode_Precision_File
ReadMode_Precision_User = ReadMode_Precision.ReadMode_Precision_User

class ReadMode_MaxPrecision(IntEnum):
	ReadMode_MaxPrecision_Preferred = 0
	ReadMode_MaxPrecision_Forced = 1
ReadMode_MaxPrecision_Preferred = ReadMode_MaxPrecision.ReadMode_MaxPrecision_Preferred
ReadMode_MaxPrecision_Forced = ReadMode_MaxPrecision.ReadMode_MaxPrecision_Forced

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

class AngleUnitMode(IntEnum):
	AngleUnitMode_File = 0
	AngleUnitMode_Rad = 1
	AngleUnitMode_Deg = 2
AngleUnitMode_File = AngleUnitMode.AngleUnitMode_File
AngleUnitMode_Rad = AngleUnitMode.AngleUnitMode_Rad
AngleUnitMode_Deg = AngleUnitMode.AngleUnitMode_Deg

class ReadMode_ProductContext(IntEnum):
	ReadMode_ProductContext_All = 1
	ReadMode_ProductContext_Design = 2
	ReadMode_ProductContext_Analysis = 3
ReadMode_ProductContext_All = ReadMode_ProductContext.ReadMode_ProductContext_All
ReadMode_ProductContext_Design = ReadMode_ProductContext.ReadMode_ProductContext_Design
ReadMode_ProductContext_Analysis = ReadMode_ProductContext.ReadMode_ProductContext_Analysis

class ReadMode_ShapeRepr(IntEnum):
	ReadMode_ShapeRepr_All = 1
	ReadMode_ShapeRepr_ABSR = 2
	ReadMode_ShapeRepr_MSSR = 3
	ReadMode_ShapeRepr_GBSSR = 4
	ReadMode_ShapeRepr_FBSR = 5
	ReadMode_ShapeRepr_EBWSR = 6
	ReadMode_ShapeRepr_GBWSR = 7
ReadMode_ShapeRepr_All = ReadMode_ShapeRepr.ReadMode_ShapeRepr_All
ReadMode_ShapeRepr_ABSR = ReadMode_ShapeRepr.ReadMode_ShapeRepr_ABSR
ReadMode_ShapeRepr_MSSR = ReadMode_ShapeRepr.ReadMode_ShapeRepr_MSSR
ReadMode_ShapeRepr_GBSSR = ReadMode_ShapeRepr.ReadMode_ShapeRepr_GBSSR
ReadMode_ShapeRepr_FBSR = ReadMode_ShapeRepr.ReadMode_ShapeRepr_FBSR
ReadMode_ShapeRepr_EBWSR = ReadMode_ShapeRepr.ReadMode_ShapeRepr_EBWSR
ReadMode_ShapeRepr_GBWSR = ReadMode_ShapeRepr.ReadMode_ShapeRepr_GBWSR

class ReadMode_AssemblyLevel(IntEnum):
	ReadMode_AssemblyLevel_All = 1
	ReadMode_AssemblyLevel_Assembly = 2
	ReadMode_AssemblyLevel_Structure = 3
	ReadMode_AssemblyLevel_Shape = 4
ReadMode_AssemblyLevel_All = ReadMode_AssemblyLevel.ReadMode_AssemblyLevel_All
ReadMode_AssemblyLevel_Assembly = ReadMode_AssemblyLevel.ReadMode_AssemblyLevel_Assembly
ReadMode_AssemblyLevel_Structure = ReadMode_AssemblyLevel.ReadMode_AssemblyLevel_Structure
ReadMode_AssemblyLevel_Shape = ReadMode_AssemblyLevel.ReadMode_AssemblyLevel_Shape

class RWMode_Tessellated(IntEnum):
	RWMode_Tessellated_Off = 0
	RWMode_Tessellated_On = 1
	RWMode_Tessellated_OnNoBRep = 2
RWMode_Tessellated_Off = RWMode_Tessellated.RWMode_Tessellated_Off
RWMode_Tessellated_On = RWMode_Tessellated.RWMode_Tessellated_On
RWMode_Tessellated_OnNoBRep = RWMode_Tessellated.RWMode_Tessellated_OnNoBRep

class WriteMode_PrecisionMode(IntEnum):
	WriteMode_PrecisionMode_Least = - 1
	WriteMode_PrecisionMode_Average = 0
	WriteMode_PrecisionMode_Greatest = 1
	WriteMode_PrecisionMode_Session = 2
WriteMode_PrecisionMode_Least = WriteMode_PrecisionMode.WriteMode_PrecisionMode_Least
WriteMode_PrecisionMode_Average = WriteMode_PrecisionMode.WriteMode_PrecisionMode_Average
WriteMode_PrecisionMode_Greatest = WriteMode_PrecisionMode.WriteMode_PrecisionMode_Greatest
WriteMode_PrecisionMode_Session = WriteMode_PrecisionMode.WriteMode_PrecisionMode_Session

class WriteMode_Assembly(IntEnum):
	WriteMode_Assembly_Off = 0
	WriteMode_Assembly_On = 1
	WriteMode_Assembly_Auto = 2
WriteMode_Assembly_Off = WriteMode_Assembly.WriteMode_Assembly_Off
WriteMode_Assembly_On = WriteMode_Assembly.WriteMode_Assembly_On
WriteMode_Assembly_Auto = WriteMode_Assembly.WriteMode_Assembly_Auto

class WriteMode_StepSchema(IntEnum):
	WriteMode_StepSchema_AP214CD = 1
	WriteMode_StepSchema_AP214DIS = 2
	WriteMode_StepSchema_AP203 = 3
	WriteMode_StepSchema_AP214IS = 4
	WriteMode_StepSchema_AP242DIS = 5
WriteMode_StepSchema_AP214CD = WriteMode_StepSchema.WriteMode_StepSchema_AP214CD
WriteMode_StepSchema_AP214DIS = WriteMode_StepSchema.WriteMode_StepSchema_AP214DIS
WriteMode_StepSchema_AP203 = WriteMode_StepSchema.WriteMode_StepSchema_AP203
WriteMode_StepSchema_AP214IS = WriteMode_StepSchema.WriteMode_StepSchema_AP214IS
WriteMode_StepSchema_AP242DIS = WriteMode_StepSchema.WriteMode_StepSchema_AP242DIS

class WriteMode_VertexMode(IntEnum):
	WriteMode_VertexMode_OneCompound = 0
	WriteMode_VertexMode_SingleVertex = 1
WriteMode_VertexMode_OneCompound = WriteMode_VertexMode.WriteMode_VertexMode_OneCompound
WriteMode_VertexMode_SingleVertex = WriteMode_VertexMode.WriteMode_VertexMode_SingleVertex
};
/* end python proxy for enums */

		STEPCAFControl_InternalSection InternalParameters;
		/****************** STEPCAFControl_ConfigurationNode ******************/
		/**** md5 signature: 6f36f5fec71c0b21b0bc1a66ab772a2b ****/
		%feature("compactdefaultargs") STEPCAFControl_ConfigurationNode;
		%feature("autodoc", "Initializes all field by default.

Returns
-------
None
") STEPCAFControl_ConfigurationNode;
		 STEPCAFControl_ConfigurationNode();

		/****************** STEPCAFControl_ConfigurationNode ******************/
		/**** md5 signature: 0998d97bff85e24764099cc27d48b734 ****/
		%feature("compactdefaultargs") STEPCAFControl_ConfigurationNode;
		%feature("autodoc", "Copies values of all fields @param[in] thenode object to copy.

Parameters
----------
theNode: STEPCAFControl_ConfigurationNode

Returns
-------
None
") STEPCAFControl_ConfigurationNode;
		 STEPCAFControl_ConfigurationNode(const opencascade::handle<STEPCAFControl_ConfigurationNode> & theNode);

		/****************** BuildProvider ******************/
		/**** md5 signature: 732af66bf7bddbff6fa20c9629ec35a7 ****/
		%feature("compactdefaultargs") BuildProvider;
		%feature("autodoc", "Creates new provider for the own format returns new created provider.

Returns
-------
opencascade::handle<DE_Provider>
") BuildProvider;
		virtual opencascade::handle<DE_Provider> BuildProvider();

		/****************** CheckContent ******************/
		/**** md5 signature: 2a770b41fb754bfe0ef0260c549f4919 ****/
		%feature("compactdefaultargs") CheckContent;
		%feature("autodoc", "Checks the file content to verify a format @param[in] thebuffer read stream buffer to check content returns standard_true if file is supported by a current provider.

Parameters
----------
theBuffer: NCollection_Buffer

Returns
-------
bool
") CheckContent;
		virtual bool CheckContent(const opencascade::handle<NCollection_Buffer> & theBuffer);

		/****************** Copy ******************/
		/**** md5 signature: 4559608ebdab2961e97de40732291656 ****/
		%feature("compactdefaultargs") Copy;
		%feature("autodoc", "Copies values of all fields returns new object with the same field values.

Returns
-------
opencascade::handle<DE_ConfigurationNode>
") Copy;
		virtual opencascade::handle<DE_ConfigurationNode> Copy();

		/****************** GetExtensions ******************/
		/**** md5 signature: a58fd9c22a501a38d695eed6406f94bb ****/
		%feature("compactdefaultargs") GetExtensions;
		%feature("autodoc", "Gets list of supported file extensions returns list of extensions.

Returns
-------
TColStd_ListOfAsciiString
") GetExtensions;
		virtual TColStd_ListOfAsciiString GetExtensions();

		/****************** GetFormat ******************/
		/**** md5 signature: 3a7e97ac1131aefae2f717c160d31ca9 ****/
		%feature("compactdefaultargs") GetFormat;
		%feature("autodoc", "Gets cad format name of associated provider returns provider cad format.

Returns
-------
TCollection_AsciiString
") GetFormat;
		virtual TCollection_AsciiString GetFormat();

		/****************** GetVendor ******************/
		/**** md5 signature: dec3ae3842639c0f3f7b51f11891135d ****/
		%feature("compactdefaultargs") GetVendor;
		%feature("autodoc", "Gets provider's vendor name of associated provider returns provider's vendor name.

Returns
-------
TCollection_AsciiString
") GetVendor;
		virtual TCollection_AsciiString GetVendor();

		/****************** IsExportSupported ******************/
		/**** md5 signature: 7b5a27f839d52b595deb06dd28df5230 ****/
		%feature("compactdefaultargs") IsExportSupported;
		%feature("autodoc", "Checks the export supporting returns true if export is supported.

Returns
-------
bool
") IsExportSupported;
		virtual bool IsExportSupported();

		/****************** IsImportSupported ******************/
		/**** md5 signature: 54f008ecb7de4dd5dcaeefb3d1d06abc ****/
		%feature("compactdefaultargs") IsImportSupported;
		%feature("autodoc", "Checks the import supporting returns true if import is supported.

Returns
-------
bool
") IsImportSupported;
		virtual bool IsImportSupported();

		/****************** Load ******************/
		/**** md5 signature: 994009254510d81a5f0f9a326a356850 ****/
		%feature("compactdefaultargs") Load;
		%feature("autodoc", "Updates values according the resource @param[in] theresource input resource to use returns true if theresource loading has ended correctly.

Parameters
----------
theResource: DE_ConfigurationContext

Returns
-------
bool
") Load;
		virtual bool Load(const opencascade::handle<DE_ConfigurationContext> & theResource);

		/****************** Save ******************/
		/**** md5 signature: d6023e92d8565d8e19b0fc2ce7e2a326 ****/
		%feature("compactdefaultargs") Save;
		%feature("autodoc", "Writes configuration to the string returns result resource string.

Returns
-------
TCollection_AsciiString
") Save;
		virtual TCollection_AsciiString Save();

};


%extend STEPCAFControl_ConfigurationNode {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**********************************
* class STEPCAFControl_Controller *
**********************************/
class STEPCAFControl_Controller : public STEPControl_Controller {
	public:
		/****************** STEPCAFControl_Controller ******************/
		/**** md5 signature: c38d16414f889d4e9baae781f84816ac ****/
		%feature("compactdefaultargs") STEPCAFControl_Controller;
		%feature("autodoc", "Initializes the use of step norm (the first time).

Returns
-------
None
") STEPCAFControl_Controller;
		 STEPCAFControl_Controller();

		/****************** Init ******************/
		/**** md5 signature: 7a4f426a7cdbf379be5e43123bb3383c ****/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "Standard initialisation. it creates a controller for step-xcaf and records it to various names, available to select it later returns true when done, false if could not be done.

Returns
-------
bool
") Init;
		static Standard_Boolean Init();

};


%make_alias(STEPCAFControl_Controller)

%extend STEPCAFControl_Controller {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**********************************
* class STEPCAFControl_ExternFile *
**********************************/
class STEPCAFControl_ExternFile : public Standard_Transient {
	public:
		/****************** STEPCAFControl_ExternFile ******************/
		/**** md5 signature: 95a1646a349451e9888226d759085e3c ****/
		%feature("compactdefaultargs") STEPCAFControl_ExternFile;
		%feature("autodoc", "Creates an empty structure.

Returns
-------
None
") STEPCAFControl_ExternFile;
		 STEPCAFControl_ExternFile();

		/****************** GetLabel ******************/
		/**** md5 signature: b7ae9617d4db4ef8a9995ea610f01207 ****/
		%feature("compactdefaultargs") GetLabel;
		%feature("autodoc", "No available documentation.

Returns
-------
TDF_Label
") GetLabel;
		TDF_Label GetLabel();

		/****************** GetLoadStatus ******************/
		/**** md5 signature: bc4940b5da3f2280c94edf2abc353902 ****/
		%feature("compactdefaultargs") GetLoadStatus;
		%feature("autodoc", "No available documentation.

Returns
-------
IFSelect_ReturnStatus
") GetLoadStatus;
		IFSelect_ReturnStatus GetLoadStatus();

		/****************** GetName ******************/
		/**** md5 signature: 23aadc9cd2e3411b58fb02d3fd2db5c9 ****/
		%feature("compactdefaultargs") GetName;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") GetName;
		opencascade::handle<TCollection_HAsciiString> GetName();

		/****************** GetTransferStatus ******************/
		/**** md5 signature: 82b8d29758d7277ab7009cfe6b3cf9ac ****/
		%feature("compactdefaultargs") GetTransferStatus;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") GetTransferStatus;
		Standard_Boolean GetTransferStatus();

		/****************** GetWS ******************/
		/**** md5 signature: 89119193724f5e891a5efe59451eb38a ****/
		%feature("compactdefaultargs") GetWS;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<XSControl_WorkSession>
") GetWS;
		opencascade::handle<XSControl_WorkSession> GetWS();

		/****************** GetWriteStatus ******************/
		/**** md5 signature: 66e6176228b73c95062726edf2c9ad96 ****/
		%feature("compactdefaultargs") GetWriteStatus;
		%feature("autodoc", "No available documentation.

Returns
-------
IFSelect_ReturnStatus
") GetWriteStatus;
		IFSelect_ReturnStatus GetWriteStatus();

		/****************** SetLabel ******************/
		/**** md5 signature: b2ac78b1b3d88a69001417281367a04a ****/
		%feature("compactdefaultargs") SetLabel;
		%feature("autodoc", "No available documentation.

Parameters
----------
L: TDF_Label

Returns
-------
None
") SetLabel;
		void SetLabel(const TDF_Label & L);

		/****************** SetLoadStatus ******************/
		/**** md5 signature: f78974970f26eb42b7750584cdcf240c ****/
		%feature("compactdefaultargs") SetLoadStatus;
		%feature("autodoc", "No available documentation.

Parameters
----------
stat: IFSelect_ReturnStatus

Returns
-------
None
") SetLoadStatus;
		void SetLoadStatus(const IFSelect_ReturnStatus stat);

		/****************** SetName ******************/
		/**** md5 signature: 1a85c1f4dd446039f14efe98df7aeb03 ****/
		%feature("compactdefaultargs") SetName;
		%feature("autodoc", "No available documentation.

Parameters
----------
name: TCollection_HAsciiString

Returns
-------
None
") SetName;
		void SetName(const opencascade::handle<TCollection_HAsciiString> & name);

		/****************** SetTransferStatus ******************/
		/**** md5 signature: cafb7a2cdbfce82cc195c6c67c8f81e3 ****/
		%feature("compactdefaultargs") SetTransferStatus;
		%feature("autodoc", "No available documentation.

Parameters
----------
isok: bool

Returns
-------
None
") SetTransferStatus;
		void SetTransferStatus(const Standard_Boolean isok);

		/****************** SetWS ******************/
		/**** md5 signature: 7321af252c520042078e4ef9dc264ab1 ****/
		%feature("compactdefaultargs") SetWS;
		%feature("autodoc", "No available documentation.

Parameters
----------
WS: XSControl_WorkSession

Returns
-------
None
") SetWS;
		void SetWS(const opencascade::handle<XSControl_WorkSession> & WS);

		/****************** SetWriteStatus ******************/
		/**** md5 signature: 62a6099bda817c6e3c4520b4373f839f ****/
		%feature("compactdefaultargs") SetWriteStatus;
		%feature("autodoc", "No available documentation.

Parameters
----------
stat: IFSelect_ReturnStatus

Returns
-------
None
") SetWriteStatus;
		void SetWriteStatus(const IFSelect_ReturnStatus stat);

};


%make_alias(STEPCAFControl_ExternFile)

%extend STEPCAFControl_ExternFile {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/***********************************
* class STEPCAFControl_GDTProperty *
***********************************/
class STEPCAFControl_GDTProperty {
	public:
		/****************** STEPCAFControl_GDTProperty ******************/
		/**** md5 signature: 7e91729793c518285f94e991723ef350 ****/
		%feature("compactdefaultargs") STEPCAFControl_GDTProperty;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") STEPCAFControl_GDTProperty;
		 STEPCAFControl_GDTProperty();

		/****************** GetDatumRefModifiers ******************/
		/**** md5 signature: a9135dd15c61564a975d92fa2356d979 ****/
		%feature("compactdefaultargs") GetDatumRefModifiers;
		%feature("autodoc", "No available documentation.

Parameters
----------
theModifiers: XCAFDimTolObjects_DatumModifiersSequence
theModifWithVal: XCAFDimTolObjects_DatumModifWithValue
theValue: float
theUnit: StepBasic_Unit

Returns
-------
opencascade::handle<StepDimTol_HArray1OfDatumReferenceModifier>
") GetDatumRefModifiers;
		static opencascade::handle<StepDimTol_HArray1OfDatumReferenceModifier> GetDatumRefModifiers(const XCAFDimTolObjects_DatumModifiersSequence & theModifiers, const XCAFDimTolObjects_DatumModifWithValue & theModifWithVal, const Standard_Real theValue, const StepBasic_Unit theUnit);

		/****************** GetDatumTargetName ******************/
		/**** md5 signature: b72f88dd48cee3c7fded9891ceb0cee6 ****/
		%feature("compactdefaultargs") GetDatumTargetName;
		%feature("autodoc", "No available documentation.

Parameters
----------
theDatumType: XCAFDimTolObjects_DatumTargetType

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") GetDatumTargetName;
		static opencascade::handle<TCollection_HAsciiString> GetDatumTargetName(const XCAFDimTolObjects_DatumTargetType theDatumType);

		/****************** GetDatumTargetType ******************/
		/**** md5 signature: f061b884567ffb88b73b7b9eb4dbba78 ****/
		%feature("compactdefaultargs") GetDatumTargetType;
		%feature("autodoc", "No available documentation.

Parameters
----------
theDescription: TCollection_HAsciiString

Returns
-------
theType: XCAFDimTolObjects_DatumTargetType
") GetDatumTargetType;
		static Standard_Boolean GetDatumTargetType(const opencascade::handle<TCollection_HAsciiString> & theDescription, XCAFDimTolObjects_DatumTargetType &OutValue);

		/****************** GetDimClassOfTolerance ******************/
		/**** md5 signature: ef6490f81a506f3768ac8675b310839a ****/
		%feature("compactdefaultargs") GetDimClassOfTolerance;
		%feature("autodoc", "No available documentation.

Parameters
----------
theLAF: StepShape_LimitsAndFits

Returns
-------
theHolle: bool
theFV: XCAFDimTolObjects_DimensionFormVariance
theG: XCAFDimTolObjects_DimensionGrade
") GetDimClassOfTolerance;
		static void GetDimClassOfTolerance(const opencascade::handle<StepShape_LimitsAndFits> & theLAF, Standard_Boolean &OutValue, XCAFDimTolObjects_DimensionFormVariance &OutValue, XCAFDimTolObjects_DimensionGrade &OutValue);

		/****************** GetDimModifierName ******************/
		/**** md5 signature: 7409a4f0a6428922b61125f11f349438 ****/
		%feature("compactdefaultargs") GetDimModifierName;
		%feature("autodoc", "No available documentation.

Parameters
----------
theModifier: XCAFDimTolObjects_DimensionModif

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") GetDimModifierName;
		static opencascade::handle<TCollection_HAsciiString> GetDimModifierName(const XCAFDimTolObjects_DimensionModif theModifier);

		/****************** GetDimModifiers ******************/
		/**** md5 signature: a5e82546f1eb397e6cde50fe36fda47f ****/
		%feature("compactdefaultargs") GetDimModifiers;
		%feature("autodoc", "No available documentation.

Parameters
----------
theCRI: StepRepr_CompoundRepresentationItem
theModifiers: XCAFDimTolObjects_DimensionModifiersSequence

Returns
-------
None
") GetDimModifiers;
		static void GetDimModifiers(const opencascade::handle<StepRepr_CompoundRepresentationItem> & theCRI, XCAFDimTolObjects_DimensionModifiersSequence & theModifiers);

		/****************** GetDimQualifierName ******************/
		/**** md5 signature: 890a7f31264ca13488974d61b161392e ****/
		%feature("compactdefaultargs") GetDimQualifierName;
		%feature("autodoc", "No available documentation.

Parameters
----------
theQualifier: XCAFDimTolObjects_DimensionQualifier

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") GetDimQualifierName;
		static opencascade::handle<TCollection_HAsciiString> GetDimQualifierName(const XCAFDimTolObjects_DimensionQualifier theQualifier);

		/****************** GetDimQualifierType ******************/
		/**** md5 signature: 2858212ae20285d70294a48d1135ff38 ****/
		%feature("compactdefaultargs") GetDimQualifierType;
		%feature("autodoc", "No available documentation.

Parameters
----------
theDescription: TCollection_HAsciiString

Returns
-------
theType: XCAFDimTolObjects_DimensionQualifier
") GetDimQualifierType;
		static Standard_Boolean GetDimQualifierType(const opencascade::handle<TCollection_HAsciiString> & theDescription, XCAFDimTolObjects_DimensionQualifier &OutValue);

		/****************** GetDimType ******************/
		/**** md5 signature: 788b6cc24db4fba94bcd10595830a80e ****/
		%feature("compactdefaultargs") GetDimType;
		%feature("autodoc", "No available documentation.

Parameters
----------
theName: TCollection_HAsciiString

Returns
-------
theType: XCAFDimTolObjects_DimensionType
") GetDimType;
		static Standard_Boolean GetDimType(const opencascade::handle<TCollection_HAsciiString> & theName, XCAFDimTolObjects_DimensionType &OutValue);

		/****************** GetDimTypeName ******************/
		/**** md5 signature: d0af1b6c0d21c8b4d43ead92ca12a38a ****/
		%feature("compactdefaultargs") GetDimTypeName;
		%feature("autodoc", "No available documentation.

Parameters
----------
theType: XCAFDimTolObjects_DimensionType

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") GetDimTypeName;
		static opencascade::handle<TCollection_HAsciiString> GetDimTypeName(const XCAFDimTolObjects_DimensionType theType);

		/****************** GetGeomTolerance ******************/
		/**** md5 signature: 2f7cd26e1cef6ded0c741c54e526bca5 ****/
		%feature("compactdefaultargs") GetGeomTolerance;
		%feature("autodoc", "No available documentation.

Parameters
----------
theType: XCAFDimTolObjects_GeomToleranceType

Returns
-------
opencascade::handle<StepDimTol_GeometricTolerance>
") GetGeomTolerance;
		static opencascade::handle<StepDimTol_GeometricTolerance> GetGeomTolerance(const XCAFDimTolObjects_GeomToleranceType theType);

		/****************** GetGeomToleranceModifier ******************/
		/**** md5 signature: 2570e746e1f91a405972220afaf304e0 ****/
		%feature("compactdefaultargs") GetGeomToleranceModifier;
		%feature("autodoc", "No available documentation.

Parameters
----------
theModifier: XCAFDimTolObjects_GeomToleranceModif

Returns
-------
StepDimTol_GeometricToleranceModifier
") GetGeomToleranceModifier;
		static StepDimTol_GeometricToleranceModifier GetGeomToleranceModifier(const XCAFDimTolObjects_GeomToleranceModif theModifier);

		/****************** GetGeomToleranceType ******************/
		/**** md5 signature: 0b3446ba942436a2907b19cdd9bb98da ****/
		%feature("compactdefaultargs") GetGeomToleranceType;
		%feature("autodoc", "No available documentation.

Parameters
----------
theType: XCAFDimTolObjects_GeomToleranceType

Returns
-------
StepDimTol_GeometricToleranceType
") GetGeomToleranceType;
		static StepDimTol_GeometricToleranceType GetGeomToleranceType(const XCAFDimTolObjects_GeomToleranceType theType);

		/****************** GetGeomToleranceType ******************/
		/**** md5 signature: 0b9e83ac47e5d63026fdc0df256ed92f ****/
		%feature("compactdefaultargs") GetGeomToleranceType;
		%feature("autodoc", "No available documentation.

Parameters
----------
theType: StepDimTol_GeometricToleranceType

Returns
-------
XCAFDimTolObjects_GeomToleranceType
") GetGeomToleranceType;
		static XCAFDimTolObjects_GeomToleranceType GetGeomToleranceType(const StepDimTol_GeometricToleranceType theType);

		/****************** GetLimitsAndFits ******************/
		/**** md5 signature: a91d35e36a4ad93dc63af08f67fbe494 ****/
		%feature("compactdefaultargs") GetLimitsAndFits;
		%feature("autodoc", "No available documentation.

Parameters
----------
theHole: bool
theFormVariance: XCAFDimTolObjects_DimensionFormVariance
theGrade: XCAFDimTolObjects_DimensionGrade

Returns
-------
opencascade::handle<StepShape_LimitsAndFits>
") GetLimitsAndFits;
		static opencascade::handle<StepShape_LimitsAndFits> GetLimitsAndFits(Standard_Boolean theHole, XCAFDimTolObjects_DimensionFormVariance theFormVariance, XCAFDimTolObjects_DimensionGrade theGrade);

		/****************** GetTessellation ******************/
		/**** md5 signature: 85ed91fa7a6e1973202f735dbc048395 ****/
		%feature("compactdefaultargs") GetTessellation;
		%feature("autodoc", "No available documentation.

Parameters
----------
theShape: TopoDS_Shape

Returns
-------
opencascade::handle<StepVisual_TessellatedGeometricSet>
") GetTessellation;
		static opencascade::handle<StepVisual_TessellatedGeometricSet> GetTessellation(const TopoDS_Shape theShape);

		/****************** GetTolValueType ******************/
		/**** md5 signature: c48b39a90222f2f7713bf5bd61c69b57 ****/
		%feature("compactdefaultargs") GetTolValueType;
		%feature("autodoc", "No available documentation.

Parameters
----------
theDescription: TCollection_HAsciiString

Returns
-------
theType: XCAFDimTolObjects_GeomToleranceTypeValue
") GetTolValueType;
		static Standard_Boolean GetTolValueType(const opencascade::handle<TCollection_HAsciiString> & theDescription, XCAFDimTolObjects_GeomToleranceTypeValue &OutValue);

		/****************** GetTolValueType ******************/
		/**** md5 signature: 1c9751f63b6898c001757a599f0da519 ****/
		%feature("compactdefaultargs") GetTolValueType;
		%feature("autodoc", "No available documentation.

Parameters
----------
theType: XCAFDimTolObjects_GeomToleranceTypeValue

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") GetTolValueType;
		static opencascade::handle<TCollection_HAsciiString> GetTolValueType(const XCAFDimTolObjects_GeomToleranceTypeValue & theType);

		/****************** IsDimensionalLocation ******************/
		/**** md5 signature: ebe49a11e8b45ed94b2cb383d0e34204 ****/
		%feature("compactdefaultargs") IsDimensionalLocation;
		%feature("autodoc", "No available documentation.

Parameters
----------
theType: XCAFDimTolObjects_DimensionType

Returns
-------
bool
") IsDimensionalLocation;
		static Standard_Boolean IsDimensionalLocation(const XCAFDimTolObjects_DimensionType theType);

		/****************** IsDimensionalSize ******************/
		/**** md5 signature: 4b04a8b91d46eda495ee2842501635d7 ****/
		%feature("compactdefaultargs") IsDimensionalSize;
		%feature("autodoc", "No available documentation.

Parameters
----------
theType: XCAFDimTolObjects_DimensionType

Returns
-------
bool
") IsDimensionalSize;
		static Standard_Boolean IsDimensionalSize(const XCAFDimTolObjects_DimensionType theType);

};


%extend STEPCAFControl_GDTProperty {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/********************************
* class STEPCAFControl_Provider *
********************************/
class STEPCAFControl_Provider : public DE_Provider {
	public:
		/****************** STEPCAFControl_Provider ******************/
		/**** md5 signature: 20adbbdc11bc9103b1d42c07a2a70db5 ****/
		%feature("compactdefaultargs") STEPCAFControl_Provider;
		%feature("autodoc", "Default constructor configure translation process with global configuration.

Returns
-------
None
") STEPCAFControl_Provider;
		 STEPCAFControl_Provider();

		/****************** STEPCAFControl_Provider ******************/
		/**** md5 signature: 5130c206da3c63a654403b73610c627d ****/
		%feature("compactdefaultargs") STEPCAFControl_Provider;
		%feature("autodoc", "Configure translation process @param[in] thenode object to copy.

Parameters
----------
theNode: DE_ConfigurationNode

Returns
-------
None
") STEPCAFControl_Provider;
		 STEPCAFControl_Provider(const opencascade::handle<DE_ConfigurationNode> & theNode);

		/****************** GetFormat ******************/
		/**** md5 signature: 3a7e97ac1131aefae2f717c160d31ca9 ****/
		%feature("compactdefaultargs") GetFormat;
		%feature("autodoc", "Gets cad format name of associated provider returns provider cad format.

Returns
-------
TCollection_AsciiString
") GetFormat;
		virtual TCollection_AsciiString GetFormat();

		/****************** GetVendor ******************/
		/**** md5 signature: dec3ae3842639c0f3f7b51f11891135d ****/
		%feature("compactdefaultargs") GetVendor;
		%feature("autodoc", "Gets provider's vendor name of associated provider returns provider's vendor name.

Returns
-------
TCollection_AsciiString
") GetVendor;
		virtual TCollection_AsciiString GetVendor();

		/****************** Read ******************/
		/**** md5 signature: 5da3d196d6292385962a1e60f3dec8a0 ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads a cad file, according internal configuration @param[in] thepath path to the import cad file @param[out] thedocument document to save result @param[in] thews current work session @param theprogress[in] progress indicator returns true if read operation has ended correctly.

Parameters
----------
thePath: str
theDocument: TDocStd_Document
theWS: XSControl_WorkSession
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Read;
		virtual bool Read(TCollection_AsciiString thePath, const opencascade::handle<TDocStd_Document> & theDocument, opencascade::handle<XSControl_WorkSession> & theWS, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Read ******************/
		/**** md5 signature: ec9914af037216c0502c72d0c8784072 ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads a cad file, according internal configuration @param[in] thepath path to the import cad file @param[out] thedocument document to save result @param theprogress[in] progress indicator returns true if read operation has ended correctly.

Parameters
----------
thePath: str
theDocument: TDocStd_Document
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Read;
		virtual bool Read(TCollection_AsciiString thePath, const opencascade::handle<TDocStd_Document> & theDocument, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Read ******************/
		/**** md5 signature: f5c487132f5fe207a43ed7a7e7ce6afc ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads a cad file, according internal configuration @param[in] thepath path to the import cad file @param[out] theshape shape to save result @param[in] thews current work session @param theprogress[in] progress indicator returns true if read operation has ended correctly.

Parameters
----------
thePath: str
theShape: TopoDS_Shape
theWS: XSControl_WorkSession
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Read;
		virtual bool Read(TCollection_AsciiString thePath, TopoDS_Shape & theShape, opencascade::handle<XSControl_WorkSession> & theWS, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Read ******************/
		/**** md5 signature: 25ccf35b1d33bce5d3311fc0dff44615 ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads a cad file, according internal configuration @param[in] thepath path to the import cad file @param[out] theshape shape to save result @param theprogress[in] progress indicator returns true if read operation has ended correctly.

Parameters
----------
thePath: str
theShape: TopoDS_Shape
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Read;
		virtual bool Read(TCollection_AsciiString thePath, TopoDS_Shape & theShape, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Write ******************/
		/**** md5 signature: d1d3f520ef648333a2d1d51e7ecf7636 ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes a cad file, according internal configuration @param[in] thepath path to the export cad file @param[out] thedocument document to export @param[in] thews current work session @param theprogress[in] progress indicator returns true if write operation has ended correctly.

Parameters
----------
thePath: str
theDocument: TDocStd_Document
theWS: XSControl_WorkSession
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Write;
		virtual bool Write(TCollection_AsciiString thePath, const opencascade::handle<TDocStd_Document> & theDocument, opencascade::handle<XSControl_WorkSession> & theWS, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Write ******************/
		/**** md5 signature: 5d65a8a954decd50174318516f7bc4f8 ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes a cad file, according internal configuration @param[in] thepath path to the export cad file @param[out] thedocument document to export @param theprogress[in] progress indicator returns true if write operation has ended correctly.

Parameters
----------
thePath: str
theDocument: TDocStd_Document
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Write;
		virtual bool Write(TCollection_AsciiString thePath, const opencascade::handle<TDocStd_Document> & theDocument, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Write ******************/
		/**** md5 signature: 0d58c2b5e69c703850ad85ac36436410 ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes a cad file, according internal configuration @param[in] thepath path to the export cad file @param[out] theshape shape to export @param[in] thews current work session @param theprogress[in] progress indicator returns true if write operation has ended correctly.

Parameters
----------
thePath: str
theShape: TopoDS_Shape
theWS: XSControl_WorkSession
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Write;
		virtual bool Write(TCollection_AsciiString thePath, const TopoDS_Shape & theShape, opencascade::handle<XSControl_WorkSession> & theWS, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Write ******************/
		/**** md5 signature: 2e3eef7d4e677163a76bbbdf8a15c79f ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes a cad file, according internal configuration @param[in] thepath path to the export cad file @param[out] theshape shape to export @param theprogress[in] progress indicator returns true if write operation has ended correctly.

Parameters
----------
thePath: str
theShape: TopoDS_Shape
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Write;
		virtual bool Write(TCollection_AsciiString thePath, const TopoDS_Shape & theShape, const Message_ProgressRange & theProgress = Message_ProgressRange());

};


%extend STEPCAFControl_Provider {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/******************************
* class STEPCAFControl_Reader *
******************************/
class STEPCAFControl_Reader {
	public:
		/****************** STEPCAFControl_Reader ******************/
		/**** md5 signature: 10ea06c63a87bb835e9684b6441da268 ****/
		%feature("compactdefaultargs") STEPCAFControl_Reader;
		%feature("autodoc", "Creates a reader with an empty step model and sets colormode, layermode, namemode and propsmode to standard_true.

Returns
-------
None
") STEPCAFControl_Reader;
		 STEPCAFControl_Reader();

		/****************** STEPCAFControl_Reader ******************/
		/**** md5 signature: ec7cb3250e2df6297f9dc3aff96a6378 ****/
		%feature("compactdefaultargs") STEPCAFControl_Reader;
		%feature("autodoc", "Creates a reader tool and attaches it to an already existing session clears the session if it was not yet set for step.

Parameters
----------
WS: XSControl_WorkSession
scratch: bool,optional
	default value is Standard_True

Returns
-------
None
") STEPCAFControl_Reader;
		 STEPCAFControl_Reader(const opencascade::handle<XSControl_WorkSession> & WS, const Standard_Boolean scratch = Standard_True);

		/****************** ChangeReader ******************/
		/**** md5 signature: e5175f7e2460ff7f3db947662febd54a ****/
		%feature("compactdefaultargs") ChangeReader;
		%feature("autodoc", "Returns basic reader.

Returns
-------
STEPControl_Reader
") ChangeReader;
		STEPControl_Reader & ChangeReader();

		/****************** ExternFile ******************/
		/**** md5 signature: ad0d6b0b3be01575d180dd24c55cd264 ****/
		%feature("compactdefaultargs") ExternFile;
		%feature("autodoc", "Returns data on external file by its name returns false if no external file with given name is read.

Parameters
----------
name: str
ef: STEPCAFControl_ExternFile

Returns
-------
bool
") ExternFile;
		Standard_Boolean ExternFile(Standard_CString name, opencascade::handle<STEPCAFControl_ExternFile> & ef);

		/****************** ExternFiles ******************/
		/**** md5 signature: 1154c88bc3253c7291077317c11363ab ****/
		%feature("compactdefaultargs") ExternFiles;
		%feature("autodoc", "Returns data on external files returns null handle if no external files are read.

Returns
-------
NCollection_DataMap<TCollection_AsciiString, opencascade::handle<STEPCAFControl_ExternFile>>
") ExternFiles;
		const NCollection_DataMap<TCollection_AsciiString, opencascade::handle<STEPCAFControl_ExternFile>> & ExternFiles();

		/****************** FindInstance ******************/
		/**** md5 signature: 203c231e7643ced58be1d88666ced879 ****/
		%feature("compactdefaultargs") FindInstance;
		%feature("autodoc", "Returns label of instance of an assembly component corresponding to a given nauo.

Parameters
----------
NAUO: StepRepr_NextAssemblyUsageOccurrence
STool: XCAFDoc_ShapeTool
Tool: STEPConstruct_Tool
ShapeLabelMap: XCAFDoc_DataMapOfShapeLabel

Returns
-------
TDF_Label
") FindInstance;
		static TDF_Label FindInstance(const opencascade::handle<StepRepr_NextAssemblyUsageOccurrence> & NAUO, const opencascade::handle<XCAFDoc_ShapeTool> & STool, const STEPConstruct_Tool & Tool, const XCAFDoc_DataMapOfShapeLabel & ShapeLabelMap);

		/****************** GetColorMode ******************/
		/**** md5 signature: 010da6a8a0e8a61fdb607fd6faba2b56 ****/
		%feature("compactdefaultargs") GetColorMode;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") GetColorMode;
		Standard_Boolean GetColorMode();

		/****************** GetGDTMode ******************/
		/**** md5 signature: 55b51ed927a6915343b17b7c1634a445 ****/
		%feature("compactdefaultargs") GetGDTMode;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") GetGDTMode;
		Standard_Boolean GetGDTMode();

		/****************** GetLayerMode ******************/
		/**** md5 signature: d677385c303e067613f92bc738509727 ****/
		%feature("compactdefaultargs") GetLayerMode;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") GetLayerMode;
		Standard_Boolean GetLayerMode();

		/****************** GetMatMode ******************/
		/**** md5 signature: bfbb3f8c569d9550ca6565f2d11e50e9 ****/
		%feature("compactdefaultargs") GetMatMode;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") GetMatMode;
		Standard_Boolean GetMatMode();

		/****************** GetNameMode ******************/
		/**** md5 signature: 2dd32a893d6f5f4666ac3752ace2d12f ****/
		%feature("compactdefaultargs") GetNameMode;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") GetNameMode;
		Standard_Boolean GetNameMode();

		/****************** GetPropsMode ******************/
		/**** md5 signature: 3b2f4c2b61084d1e067d83421e0ea81d ****/
		%feature("compactdefaultargs") GetPropsMode;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") GetPropsMode;
		Standard_Boolean GetPropsMode();

		/****************** GetSHUOMode ******************/
		/**** md5 signature: 74c5f048b04741ef5abfe259b5c453cd ****/
		%feature("compactdefaultargs") GetSHUOMode;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") GetSHUOMode;
		Standard_Boolean GetSHUOMode();

		/****************** GetShapeLabelMap ******************/
		/**** md5 signature: a27551a2f74ec801c8cbaeeebce293a4 ****/
		%feature("compactdefaultargs") GetShapeLabelMap;
		%feature("autodoc", "No available documentation.

Returns
-------
XCAFDoc_DataMapOfShapeLabel
") GetShapeLabelMap;
		const XCAFDoc_DataMapOfShapeLabel & GetShapeLabelMap();

		/****************** GetViewMode ******************/
		/**** md5 signature: a843d1c8dafb9fee3990369ff0e366ba ****/
		%feature("compactdefaultargs") GetViewMode;
		%feature("autodoc", "Get view mode.

Returns
-------
bool
") GetViewMode;
		Standard_Boolean GetViewMode();

		/****************** Init ******************/
		/**** md5 signature: 13544ae418c98602c6eaed6faea8f526 ****/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "Clears the internal data structures and attaches to a new session clears the session if it was not yet set for step.

Parameters
----------
WS: XSControl_WorkSession
scratch: bool,optional
	default value is Standard_True

Returns
-------
None
") Init;
		void Init(const opencascade::handle<XSControl_WorkSession> & WS, const Standard_Boolean scratch = Standard_True);

		/****************** NbRootsForTransfer ******************/
		/**** md5 signature: 2b3065b08038f7cd7537c1ad0730579e ****/
		%feature("compactdefaultargs") NbRootsForTransfer;
		%feature("autodoc", "Returns number of roots recognized for transfer shortcut for reader().nbrootsfortransfer().

Returns
-------
int
") NbRootsForTransfer;
		Standard_Integer NbRootsForTransfer();

		/****************** Perform ******************/
		/**** md5 signature: 038a674a14ffeea66b522dd74c593d9c ****/
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "No available documentation.

Parameters
----------
filename: str
doc: TDocStd_Document
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Perform;
		Standard_Boolean Perform(TCollection_AsciiString filename, const opencascade::handle<TDocStd_Document> & doc, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Perform ******************/
		/**** md5 signature: a4a2998dbb462f3822a286fdffd32a42 ****/
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "Translate step file given by filename into the document return true if succeeded, and false in case of fail.

Parameters
----------
filename: str
doc: TDocStd_Document
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Perform;
		Standard_Boolean Perform(Standard_CString filename, const opencascade::handle<TDocStd_Document> & doc, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** ReadFile ******************/
		/**** md5 signature: d86a92113a329cc8dabf010061f31392 ****/
		%feature("compactdefaultargs") ReadFile;
		%feature("autodoc", "Loads a file and returns the read status provided for use like single-file reader. @param thefilename [in] file to open returns read status.

Parameters
----------
theFileName: str

Returns
-------
IFSelect_ReturnStatus
") ReadFile;
		IFSelect_ReturnStatus ReadFile(Standard_CString theFileName);

		/****************** ReadStream ******************/
		/**** md5 signature: ee73b79142d0bdf122db2d304fa9d6f3 ****/
		%feature("compactdefaultargs") ReadStream;
		%feature("autodoc", "Loads a file from stream and returns the read status. @param thename [in] auxiliary stream name @param theistream [in] stream to read from returns read status.

Parameters
----------
theName: str
theIStream: std::istream

Returns
-------
IFSelect_ReturnStatus
") ReadStream;
		IFSelect_ReturnStatus ReadStream(Standard_CString theName, std::istream & theIStream);

		/****************** Reader ******************/
		/**** md5 signature: c54201c04d6a5ca89c65eb2fb14b8396 ****/
		%feature("compactdefaultargs") Reader;
		%feature("autodoc", "Returns basic reader as const.

Returns
-------
STEPControl_Reader
") Reader;
		const STEPControl_Reader & Reader();

		/****************** SetColorMode ******************/
		/**** md5 signature: e8d41838c31a9460a1c83d84b1f572a1 ****/
		%feature("compactdefaultargs") SetColorMode;
		%feature("autodoc", "Set colormode for indicate read colors or not.

Parameters
----------
colormode: bool

Returns
-------
None
") SetColorMode;
		void SetColorMode(const Standard_Boolean colormode);

		/****************** SetGDTMode ******************/
		/**** md5 signature: 26501b5d4b403d5cdc2f7f47bdd108a7 ****/
		%feature("compactdefaultargs") SetGDTMode;
		%feature("autodoc", "Set gdt mode for indicate write gdt or not.

Parameters
----------
gdtmode: bool

Returns
-------
None
") SetGDTMode;
		void SetGDTMode(const Standard_Boolean gdtmode);

		/****************** SetLayerMode ******************/
		/**** md5 signature: 3ec21c8de4b114a83bb0b34cb3b98662 ****/
		%feature("compactdefaultargs") SetLayerMode;
		%feature("autodoc", "Set layermode for indicate read layers or not.

Parameters
----------
layermode: bool

Returns
-------
None
") SetLayerMode;
		void SetLayerMode(const Standard_Boolean layermode);

		/****************** SetMatMode ******************/
		/**** md5 signature: a4e85f2c1802858b34ebf1de2281b0d3 ****/
		%feature("compactdefaultargs") SetMatMode;
		%feature("autodoc", "Set material mode.

Parameters
----------
matmode: bool

Returns
-------
None
") SetMatMode;
		void SetMatMode(const Standard_Boolean matmode);

		/****************** SetNameMode ******************/
		/**** md5 signature: 43ccb5d3fb024d8191f251ee74d0f6ba ****/
		%feature("compactdefaultargs") SetNameMode;
		%feature("autodoc", "Set namemode for indicate read name or not.

Parameters
----------
namemode: bool

Returns
-------
None
") SetNameMode;
		void SetNameMode(const Standard_Boolean namemode);

		/****************** SetPropsMode ******************/
		/**** md5 signature: 97f3b34eb7a1e38c6cf17d5c26f938a6 ****/
		%feature("compactdefaultargs") SetPropsMode;
		%feature("autodoc", "Propsmode for indicate read validation properties or not.

Parameters
----------
propsmode: bool

Returns
-------
None
") SetPropsMode;
		void SetPropsMode(const Standard_Boolean propsmode);

		/****************** SetSHUOMode ******************/
		/**** md5 signature: ad06ed8b923731ee7b75bf3d7074f299 ****/
		%feature("compactdefaultargs") SetSHUOMode;
		%feature("autodoc", "Set shuo mode for indicate write shuo or not.

Parameters
----------
shuomode: bool

Returns
-------
None
") SetSHUOMode;
		void SetSHUOMode(const Standard_Boolean shuomode);

		/****************** SetViewMode ******************/
		/**** md5 signature: 86451933a668d6b4666beb6106f5e28f ****/
		%feature("compactdefaultargs") SetViewMode;
		%feature("autodoc", "Set view mode.

Parameters
----------
viewmode: bool

Returns
-------
None
") SetViewMode;
		void SetViewMode(const Standard_Boolean viewmode);

		/****************** Transfer ******************/
		/**** md5 signature: 31249612d40a7a08f4519552635fb88d ****/
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "Translates currently loaded step file into the document returns true if succeeded, and false in case of fail provided for use like single-file reader.

Parameters
----------
doc: TDocStd_Document
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Transfer;
		Standard_Boolean Transfer(const opencascade::handle<TDocStd_Document> & doc, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** TransferOneRoot ******************/
		/**** md5 signature: aa429310a76644e6f8262a806c04d28e ****/
		%feature("compactdefaultargs") TransferOneRoot;
		%feature("autodoc", "Translates currently loaded step file into the document returns true if succeeded, and false in case of fail provided for use like single-file reader.

Parameters
----------
num: int
doc: TDocStd_Document
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") TransferOneRoot;
		Standard_Boolean TransferOneRoot(const Standard_Integer num, const opencascade::handle<TDocStd_Document> & doc, const Message_ProgressRange & theProgress = Message_ProgressRange());

};


%extend STEPCAFControl_Reader {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/******************************
* class STEPCAFControl_Writer *
******************************/
class STEPCAFControl_Writer {
	public:
		/****************** STEPCAFControl_Writer ******************/
		/**** md5 signature: b952f46e0b24216811a10c2153805fc2 ****/
		%feature("compactdefaultargs") STEPCAFControl_Writer;
		%feature("autodoc", "Creates a writer with an empty step model and sets colormode, layermode, namemode and propsmode to standard_true.

Returns
-------
None
") STEPCAFControl_Writer;
		 STEPCAFControl_Writer();

		/****************** STEPCAFControl_Writer ******************/
		/**** md5 signature: dedf68dbebf4d519616966632e9764a8 ****/
		%feature("compactdefaultargs") STEPCAFControl_Writer;
		%feature("autodoc", "Creates a reader tool and attaches it to an already existing session clears the session if it was not yet set for step clears the internal data structures.

Parameters
----------
theWS: XSControl_WorkSession
theScratch: bool,optional
	default value is Standard_True

Returns
-------
None
") STEPCAFControl_Writer;
		 STEPCAFControl_Writer(const opencascade::handle<XSControl_WorkSession> & theWS, const Standard_Boolean theScratch = Standard_True);

		/****************** ChangeWriter ******************/
		/**** md5 signature: acee09144e4dec42ed602fde52975129 ****/
		%feature("compactdefaultargs") ChangeWriter;
		%feature("autodoc", "Returns basic reader for root file.

Returns
-------
STEPControl_Writer
") ChangeWriter;
		STEPControl_Writer & ChangeWriter();

		/****************** ExternFile ******************/
		/**** md5 signature: 0769b22e71152aabd75dace01164fc2b ****/
		%feature("compactdefaultargs") ExternFile;
		%feature("autodoc", "Returns data on external file by its original label returns false if no external file with given name is read.

Parameters
----------
theLabel: TDF_Label
theExtFile: STEPCAFControl_ExternFile

Returns
-------
bool
") ExternFile;
		Standard_Boolean ExternFile(const TDF_Label & theLabel, opencascade::handle<STEPCAFControl_ExternFile> & theExtFile);

		/****************** ExternFile ******************/
		/**** md5 signature: f77e0b8157371b505bc136b8bd33443e ****/
		%feature("compactdefaultargs") ExternFile;
		%feature("autodoc", "Returns data on external file by its name returns false if no external file with given name is read.

Parameters
----------
theName: str
theExtFile: STEPCAFControl_ExternFile

Returns
-------
bool
") ExternFile;
		Standard_Boolean ExternFile(Standard_CString theName, opencascade::handle<STEPCAFControl_ExternFile> & theExtFile);

		/****************** ExternFiles ******************/
		/**** md5 signature: 08a0b41df731275c7119f8910e47970c ****/
		%feature("compactdefaultargs") ExternFiles;
		%feature("autodoc", "Returns data on external files returns null handle if no external files are read.

Returns
-------
NCollection_DataMap<TCollection_AsciiString, opencascade::handle<STEPCAFControl_ExternFile>>
") ExternFiles;
		const NCollection_DataMap<TCollection_AsciiString, opencascade::handle<STEPCAFControl_ExternFile>> & ExternFiles();

		/****************** GetColorMode ******************/
		/**** md5 signature: cddb885e605f1794a5a6486023f65736 ****/
		%feature("compactdefaultargs") GetColorMode;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") GetColorMode;
		Standard_Boolean GetColorMode();

		/****************** GetDimTolMode ******************/
		/**** md5 signature: 5f3c2fc2e581a2ea711f9607cd0a817a ****/
		%feature("compactdefaultargs") GetDimTolMode;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") GetDimTolMode;
		Standard_Boolean GetDimTolMode();

		/****************** GetLayerMode ******************/
		/**** md5 signature: b6b1458608d2429d13e63a07c0b392d8 ****/
		%feature("compactdefaultargs") GetLayerMode;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") GetLayerMode;
		Standard_Boolean GetLayerMode();

		/****************** GetMaterialMode ******************/
		/**** md5 signature: 2057a4ef866086868ba91cb34e6ad09a ****/
		%feature("compactdefaultargs") GetMaterialMode;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") GetMaterialMode;
		Standard_Boolean GetMaterialMode();

		/****************** GetNameMode ******************/
		/**** md5 signature: 1097f532a68b4625a0108cddc8366238 ****/
		%feature("compactdefaultargs") GetNameMode;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") GetNameMode;
		Standard_Boolean GetNameMode();

		/****************** GetPropsMode ******************/
		/**** md5 signature: 99cee0ed60040ac88dbf6e950f82a10e ****/
		%feature("compactdefaultargs") GetPropsMode;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") GetPropsMode;
		Standard_Boolean GetPropsMode();

		/****************** GetSHUOMode ******************/
		/**** md5 signature: 4e3a3a7f89647ad6b4f35f24a42234d6 ****/
		%feature("compactdefaultargs") GetSHUOMode;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") GetSHUOMode;
		Standard_Boolean GetSHUOMode();

		/****************** Init ******************/
		/**** md5 signature: e7d3f870615865a6686f75c3aa077ff3 ****/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "Clears the internal data structures and attaches to a new session clears the session if it was not yet set for step.

Parameters
----------
theWS: XSControl_WorkSession
theScratch: bool,optional
	default value is Standard_True

Returns
-------
None
") Init;
		void Init(const opencascade::handle<XSControl_WorkSession> & theWS, const Standard_Boolean theScratch = Standard_True);

		/****************** Perform ******************/
		/**** md5 signature: 624f8c3670df66af47c4a9af2967eb2a ****/
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "No available documentation.

Parameters
----------
theDoc: TDocStd_Document
theFileName: str
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Perform;
		Standard_Boolean Perform(const opencascade::handle<TDocStd_Document> & theDoc, TCollection_AsciiString theFileName, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Perform ******************/
		/**** md5 signature: 90b76d8d692f1926baa1d9dd3db9018b ****/
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "Transfers a document and writes it to a step file returns true if translation is ok.

Parameters
----------
theDoc: TDocStd_Document
theFileName: str
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Perform;
		Standard_Boolean Perform(const opencascade::handle<TDocStd_Document> & theDoc, Standard_CString theFileName, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** SetColorMode ******************/
		/**** md5 signature: f341158b4cc5262e2e5cb7b941cc9031 ****/
		%feature("compactdefaultargs") SetColorMode;
		%feature("autodoc", "Set colormode for indicate write colors or not.

Parameters
----------
theColorMode: bool

Returns
-------
None
") SetColorMode;
		void SetColorMode(const Standard_Boolean theColorMode);

		/****************** SetDimTolMode ******************/
		/**** md5 signature: 08cd53498196841f3c3a5c0e281a464f ****/
		%feature("compactdefaultargs") SetDimTolMode;
		%feature("autodoc", "Set dimtolmode for indicate write d&gts or not.

Parameters
----------
theDimTolMode: bool

Returns
-------
None
") SetDimTolMode;
		void SetDimTolMode(const Standard_Boolean theDimTolMode);

		/****************** SetLayerMode ******************/
		/**** md5 signature: d164352478699d01fe5d59c680c2a74d ****/
		%feature("compactdefaultargs") SetLayerMode;
		%feature("autodoc", "Set layermode for indicate write layers or not.

Parameters
----------
theLayerMode: bool

Returns
-------
None
") SetLayerMode;
		void SetLayerMode(const Standard_Boolean theLayerMode);

		/****************** SetMaterialMode ******************/
		/**** md5 signature: 932571d6d0df2e34fd2487f6025f4956 ****/
		%feature("compactdefaultargs") SetMaterialMode;
		%feature("autodoc", "Set dimtolmode for indicate write d&gts or not.

Parameters
----------
theMaterialMode: bool

Returns
-------
None
") SetMaterialMode;
		void SetMaterialMode(const Standard_Boolean theMaterialMode);

		/****************** SetNameMode ******************/
		/**** md5 signature: a24984c6ce274882f02601c13cf73b9a ****/
		%feature("compactdefaultargs") SetNameMode;
		%feature("autodoc", "Set namemode for indicate write name or not.

Parameters
----------
theNameMode: bool

Returns
-------
None
") SetNameMode;
		void SetNameMode(const Standard_Boolean theNameMode);

		/****************** SetPropsMode ******************/
		/**** md5 signature: fbb288fb7a76bf6b9cd3acd70d056a7f ****/
		%feature("compactdefaultargs") SetPropsMode;
		%feature("autodoc", "Propsmode for indicate write validation properties or not.

Parameters
----------
thePropsMode: bool

Returns
-------
None
") SetPropsMode;
		void SetPropsMode(const Standard_Boolean thePropsMode);

		/****************** SetSHUOMode ******************/
		/**** md5 signature: 39955bf97fe8d6a6d6b3b211a859f216 ****/
		%feature("compactdefaultargs") SetSHUOMode;
		%feature("autodoc", "Set shuo mode for indicate write shuo or not.

Parameters
----------
theSHUOMode: bool

Returns
-------
None
") SetSHUOMode;
		void SetSHUOMode(const Standard_Boolean theSHUOMode);

		/****************** Transfer ******************/
		/**** md5 signature: dd7ebbdc1c22d7845ad531885273adee ****/
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "Transfers a document (or single label) to a step model the mode of translation of shape is asis if multi is not null pointer, it switches to multifile mode (with external refs), and string pointed by <multi> gives prefix for names of extern files (can be empty string) returns true if translation is ok.

Parameters
----------
theDoc: TDocStd_Document
theMode: STEPControl_StepModelType,optional
	default value is STEPControl_AsIs
theIsMulti: str,optional
	default value is 0
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Transfer;
		Standard_Boolean Transfer(const opencascade::handle<TDocStd_Document> & theDoc, const STEPControl_StepModelType theMode = STEPControl_AsIs, Standard_CString theIsMulti = 0, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Transfer ******************/
		/**** md5 signature: 40f710aeab310ab1eff9bbdbe733b162 ****/
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "Method to transfer part of the document specified by label.

Parameters
----------
theLabel: TDF_Label
theMode: STEPControl_StepModelType,optional
	default value is STEPControl_AsIs
theIsMulti: str,optional
	default value is 0
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Transfer;
		Standard_Boolean Transfer(const TDF_Label & theLabel, const STEPControl_StepModelType theMode = STEPControl_AsIs, Standard_CString theIsMulti = 0, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Transfer ******************/
		/**** md5 signature: 4e3f0900d966cc07a5e2191b2b4ba7a6 ****/
		%feature("compactdefaultargs") Transfer;
		%feature("autodoc", "Mehod to writing sequence of root assemblies or part of the file specified by use by one label .

Parameters
----------
theLabelSeq: TDF_LabelSequence
theMode: STEPControl_StepModelType,optional
	default value is STEPControl_AsIs
theIsMulti: str,optional
	default value is 0
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Transfer;
		Standard_Boolean Transfer(const TDF_LabelSequence & theLabelSeq, const STEPControl_StepModelType theMode = STEPControl_AsIs, Standard_CString theIsMulti = 0, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Write ******************/
		/**** md5 signature: 14544d6ececf228a5871ef6afa0279ae ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes all the produced models into file in case of multimodel with extern references, filename will be a name of root file, all other files have names of corresponding parts provided for use like single-file writer.

Parameters
----------
theFileName: str

Returns
-------
IFSelect_ReturnStatus
") Write;
		IFSelect_ReturnStatus Write(Standard_CString theFileName);

		/****************** WriteStream ******************/
		/**** md5 signature: e58591412136b10e3743cbf1ab89de94 ****/
		%feature("compactdefaultargs") WriteStream;
		%feature("autodoc", "Writes all the produced models into the stream. provided for use like single-file writer.

Parameters
----------
theStream: std::ostream

Returns
-------
IFSelect_ReturnStatus
") WriteStream;
		IFSelect_ReturnStatus WriteStream(std::ostream & theStream);

		/****************** Writer ******************/
		/**** md5 signature: 056d4f3221d283b7d58d92ddd5c40dd7 ****/
		%feature("compactdefaultargs") Writer;
		%feature("autodoc", "Returns basic reader as const.

Returns
-------
STEPControl_Writer
") Writer;
		const STEPControl_Writer & Writer();

};


%extend STEPCAFControl_Writer {
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
def STEPCAFControl_Controller_Init(*args):
	return STEPCAFControl_Controller.Init(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetDatumRefModifiers(*args):
	return STEPCAFControl_GDTProperty.GetDatumRefModifiers(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetDatumTargetName(*args):
	return STEPCAFControl_GDTProperty.GetDatumTargetName(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetDatumTargetType(*args):
	return STEPCAFControl_GDTProperty.GetDatumTargetType(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetDimClassOfTolerance(*args):
	return STEPCAFControl_GDTProperty.GetDimClassOfTolerance(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetDimModifierName(*args):
	return STEPCAFControl_GDTProperty.GetDimModifierName(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetDimModifiers(*args):
	return STEPCAFControl_GDTProperty.GetDimModifiers(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetDimQualifierName(*args):
	return STEPCAFControl_GDTProperty.GetDimQualifierName(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetDimQualifierType(*args):
	return STEPCAFControl_GDTProperty.GetDimQualifierType(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetDimType(*args):
	return STEPCAFControl_GDTProperty.GetDimType(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetDimTypeName(*args):
	return STEPCAFControl_GDTProperty.GetDimTypeName(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetGeomTolerance(*args):
	return STEPCAFControl_GDTProperty.GetGeomTolerance(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetGeomToleranceModifier(*args):
	return STEPCAFControl_GDTProperty.GetGeomToleranceModifier(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetGeomToleranceType(*args):
	return STEPCAFControl_GDTProperty.GetGeomToleranceType(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetGeomToleranceType(*args):
	return STEPCAFControl_GDTProperty.GetGeomToleranceType(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetLimitsAndFits(*args):
	return STEPCAFControl_GDTProperty.GetLimitsAndFits(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetTessellation(*args):
	return STEPCAFControl_GDTProperty.GetTessellation(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetTolValueType(*args):
	return STEPCAFControl_GDTProperty.GetTolValueType(*args)

@deprecated
def STEPCAFControl_GDTProperty_GetTolValueType(*args):
	return STEPCAFControl_GDTProperty.GetTolValueType(*args)

@deprecated
def STEPCAFControl_GDTProperty_IsDimensionalLocation(*args):
	return STEPCAFControl_GDTProperty.IsDimensionalLocation(*args)

@deprecated
def STEPCAFControl_GDTProperty_IsDimensionalSize(*args):
	return STEPCAFControl_GDTProperty.IsDimensionalSize(*args)

@deprecated
def STEPCAFControl_Reader_FindInstance(*args):
	return STEPCAFControl_Reader.FindInstance(*args)

}
