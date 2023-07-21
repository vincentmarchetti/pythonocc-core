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
%define XCAFDOCDOCSTRING
"XCAFDoc module, see official documentation at
https://www.opencascade.com/doc/occt-7.6.0/refman/html/package_xcafdoc.html"
%enddef
%module (package="OCC.Core", docstring=XCAFDOCDOCSTRING) XCAFDoc


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
#include<XCAFDoc_module.hxx>

//Dependencies
#include<Standard_module.hxx>
#include<NCollection_module.hxx>
#include<TCollection_module.hxx>
#include<TDF_module.hxx>
#include<TDataStd_module.hxx>
#include<TDocStd_module.hxx>
#include<TColStd_module.hxx>
#include<gp_module.hxx>
#include<Quantity_module.hxx>
#include<TopoDS_module.hxx>
#include<XCAFDimTolObjects_module.hxx>
#include<UnitsMethods_module.hxx>
#include<TopLoc_module.hxx>
#include<XCAFNoteObjects_module.hxx>
#include<OSD_module.hxx>
#include<TopTools_module.hxx>
#include<XCAFView_module.hxx>
#include<Graphic3d_module.hxx>
#include<Resource_module.hxx>
#include<Message_module.hxx>
#include<CDF_module.hxx>
#include<CDM_module.hxx>
#include<PCDM_module.hxx>
#include<TDF_module.hxx>
#include<Aspect_module.hxx>
#include<Bnd_module.hxx>
#include<Media_module.hxx>
#include<TColgp_module.hxx>
#include<TColStd_module.hxx>
#include<TCollection_module.hxx>
#include<Storage_module.hxx>
%};
%import Standard.i
%import NCollection.i
%import TCollection.i
%import TDF.i
%import TDataStd.i
%import TDocStd.i
%import TColStd.i
%import gp.i
%import Quantity.i
%import TopoDS.i
%import XCAFDimTolObjects.i
%import UnitsMethods.i
%import TopLoc.i
%import XCAFNoteObjects.i
%import OSD.i
%import TopTools.i
%import XCAFView.i
%import Graphic3d.i

%pythoncode {
from enum import IntEnum
from OCC.Core.Exception import *
};

/* public enums */
enum XCAFDoc_ColorType {
	XCAFDoc_ColorGen = 0,
	XCAFDoc_ColorSurf = 1,
	XCAFDoc_ColorCurv = 2,
};

/* end public enums declaration */

/* python proxy classes for enums */
%pythoncode {

class XCAFDoc_ColorType(IntEnum):
	XCAFDoc_ColorGen = 0
	XCAFDoc_ColorSurf = 1
	XCAFDoc_ColorCurv = 2
XCAFDoc_ColorGen = XCAFDoc_ColorType.XCAFDoc_ColorGen
XCAFDoc_ColorSurf = XCAFDoc_ColorType.XCAFDoc_ColorSurf
XCAFDoc_ColorCurv = XCAFDoc_ColorType.XCAFDoc_ColorCurv
};
/* end python proxy for enums */

/* handles */
%wrap_handle(XCAFDoc_Area)
%wrap_handle(XCAFDoc_AssemblyGraph)
%wrap_handle(XCAFDoc_AssemblyItemRef)
%wrap_handle(XCAFDoc_Centroid)
%wrap_handle(XCAFDoc_ClippingPlaneTool)
%wrap_handle(XCAFDoc_Color)
%wrap_handle(XCAFDoc_ColorTool)
%wrap_handle(XCAFDoc_Datum)
%wrap_handle(XCAFDoc_DimTol)
%wrap_handle(XCAFDoc_DimTolTool)
%wrap_handle(XCAFDoc_Dimension)
%wrap_handle(XCAFDoc_DocumentTool)
%wrap_handle(XCAFDoc_GraphNode)
%wrap_handle(XCAFDoc_LayerTool)
%wrap_handle(XCAFDoc_LengthUnit)
%wrap_handle(XCAFDoc_Location)
%wrap_handle(XCAFDoc_Material)
%wrap_handle(XCAFDoc_MaterialTool)
%wrap_handle(XCAFDoc_Note)
%wrap_handle(XCAFDoc_NotesTool)
%wrap_handle(XCAFDoc_ShapeMapTool)
%wrap_handle(XCAFDoc_ShapeTool)
%wrap_handle(XCAFDoc_View)
%wrap_handle(XCAFDoc_ViewTool)
%wrap_handle(XCAFDoc_VisMaterial)
%wrap_handle(XCAFDoc_VisMaterialTool)
%wrap_handle(XCAFDoc_Volume)
%wrap_handle(XCAFDoc_NoteBinData)
%wrap_handle(XCAFDoc_NoteComment)
%wrap_handle(XCAFDoc_NoteBalloon)
/* end handles declaration */

/* templates */
%template(XCAFDoc_DataMapOfShapeLabel) NCollection_DataMap<TopoDS_Shape,TDF_Label,TopTools_ShapeMapHasher>;
%template(XCAFDoc_GraphNodeSequence) NCollection_Sequence<opencascade::handle<XCAFDoc_GraphNode>>;

%extend NCollection_Sequence<opencascade::handle<XCAFDoc_GraphNode>> {
    %pythoncode {
    def __len__(self):
        return self.Size()
    }
};
/* end templates declaration */

/* typedefs */
typedef NCollection_DataMap<TopoDS_Shape, TDF_Label, TopTools_ShapeMapHasher>::Iterator XCAFDoc_DataMapIteratorOfDataMapOfShapeLabel;
typedef NCollection_DataMap<TopoDS_Shape, TDF_Label, TopTools_ShapeMapHasher> XCAFDoc_DataMapOfShapeLabel;
typedef NCollection_Sequence<opencascade::handle<XCAFDoc_GraphNode>> XCAFDoc_GraphNodeSequence;
typedef TCollection_AsciiString XCAFDoc_PartId;
/* end typedefs declaration */

/****************
* class XCAFDoc *
****************/
%rename(xcafdoc) XCAFDoc;
class XCAFDoc {
	public:
		/****************** AssemblyGUID ******************/
		/**** md5 signature: 08f8f5799c370f0c7118cbf66eb955e8 ****/
		%feature("compactdefaultargs") AssemblyGUID;
		%feature("autodoc", "Class for containing graphnodes. returns guid for uattribute identifying assembly.

Returns
-------
Standard_GUID
") AssemblyGUID;
		static const Standard_GUID & AssemblyGUID();

		/****************** AttributeInfo ******************/
		/**** md5 signature: 49484a25600c534dd484fee332280355 ****/
		%feature("compactdefaultargs") AttributeInfo;
		%feature("autodoc", "Prints attribute information into a string. @param theatt an xde attribute returns the generated info value.

Parameters
----------
theAtt: TDF_Attribute

Returns
-------
TCollection_AsciiString
") AttributeInfo;
		static TCollection_AsciiString AttributeInfo(const opencascade::handle<TDF_Attribute> & theAtt);

		/****************** ColorByLayerGUID ******************/
		/**** md5 signature: e7c9fa808a6c556c84def8d7ccc2e9e0 ****/
		%feature("compactdefaultargs") ColorByLayerGUID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ColorByLayerGUID;
		static const Standard_GUID & ColorByLayerGUID();

		/****************** ColorRefGUID ******************/
		/**** md5 signature: 551197dedb9ab8d034da4461360ef5df ****/
		%feature("compactdefaultargs") ColorRefGUID;
		%feature("autodoc", "Return guids for treenode representing specified types of colors.

Parameters
----------
type: XCAFDoc_ColorType

Returns
-------
Standard_GUID
") ColorRefGUID;
		static const Standard_GUID & ColorRefGUID(const XCAFDoc_ColorType type);

		/****************** DatumRefGUID ******************/
		/**** md5 signature: fa78499fe8700f501482b714104baae7 ****/
		%feature("compactdefaultargs") DatumRefGUID;
		%feature("autodoc", "Return guids for treenode representing specified types of datum.

Returns
-------
Standard_GUID
") DatumRefGUID;
		static const Standard_GUID & DatumRefGUID();

		/****************** DatumTolRefGUID ******************/
		/**** md5 signature: 83929cf7dea9ebe90ec24d767be2fcba ****/
		%feature("compactdefaultargs") DatumTolRefGUID;
		%feature("autodoc", "Return guids for treenode representing connections datum-toler.

Returns
-------
Standard_GUID
") DatumTolRefGUID;
		static const Standard_GUID & DatumTolRefGUID();

		/****************** DimTolRefGUID ******************/
		/**** md5 signature: cb6332b2f7ea08eacdb3015e18fff2ae ****/
		%feature("compactdefaultargs") DimTolRefGUID;
		%feature("autodoc", "Return guids for treenode representing specified types of dgt.

Returns
-------
Standard_GUID
") DimTolRefGUID;
		static const Standard_GUID & DimTolRefGUID();

		/****************** DimensionRefFirstGUID ******************/
		/**** md5 signature: 8f5110dc5159e61e07300a14ee7d197e ****/
		%feature("compactdefaultargs") DimensionRefFirstGUID;
		%feature("autodoc", "Return guids for treenode representing specified types of dimension.

Returns
-------
Standard_GUID
") DimensionRefFirstGUID;
		static const Standard_GUID & DimensionRefFirstGUID();

		/****************** DimensionRefSecondGUID ******************/
		/**** md5 signature: b332dc5df6a0f5cc6ad03aa406535426 ****/
		%feature("compactdefaultargs") DimensionRefSecondGUID;
		%feature("autodoc", "Return guids for treenode representing specified types of dimension.

Returns
-------
Standard_GUID
") DimensionRefSecondGUID;
		static const Standard_GUID & DimensionRefSecondGUID();

		/****************** ExternRefGUID ******************/
		/**** md5 signature: e4f3aecf6b95b248a97833fcdd9f78af ****/
		%feature("compactdefaultargs") ExternRefGUID;
		%feature("autodoc", "Returns guid for uattribute identifying external reference on no-step file.

Returns
-------
Standard_GUID
") ExternRefGUID;
		static const Standard_GUID & ExternRefGUID();

		/****************** GeomToleranceRefGUID ******************/
		/**** md5 signature: 3ce9952af6e8ac2829f1c8ddcb120406 ****/
		%feature("compactdefaultargs") GeomToleranceRefGUID;
		%feature("autodoc", "Return guids for treenode representing specified types of geomtolerance.

Returns
-------
Standard_GUID
") GeomToleranceRefGUID;
		static const Standard_GUID & GeomToleranceRefGUID();

		/****************** InvisibleGUID ******************/
		/**** md5 signature: 8dc61b41a2ab98beab1cf04a8ead4506 ****/
		%feature("compactdefaultargs") InvisibleGUID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") InvisibleGUID;
		static const Standard_GUID & InvisibleGUID();

		/****************** LayerRefGUID ******************/
		/**** md5 signature: 8a0906b64172bec646477a09e14b38e9 ****/
		%feature("compactdefaultargs") LayerRefGUID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") LayerRefGUID;
		static const Standard_GUID & LayerRefGUID();

		/****************** LockGUID ******************/
		/**** md5 signature: 9905902179bea800f4cbd2b10f32e70b ****/
		%feature("compactdefaultargs") LockGUID;
		%feature("autodoc", "Returns guid for uattribute identifying lock flag.

Returns
-------
Standard_GUID
") LockGUID;
		static const Standard_GUID & LockGUID();

		/****************** MaterialRefGUID ******************/
		/**** md5 signature: c92f52a63371080ee7e8ae947a177f9c ****/
		%feature("compactdefaultargs") MaterialRefGUID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") MaterialRefGUID;
		static const Standard_GUID & MaterialRefGUID();

		/****************** NoteRefGUID ******************/
		/**** md5 signature: b53339cbab8681aa0f794cf616872140 ****/
		%feature("compactdefaultargs") NoteRefGUID;
		%feature("autodoc", "Return guids for representing notes.

Returns
-------
Standard_GUID
") NoteRefGUID;
		static const Standard_GUID & NoteRefGUID();

		/****************** SHUORefGUID ******************/
		/**** md5 signature: bf4592bd617fbb30adb695367e15346c ****/
		%feature("compactdefaultargs") SHUORefGUID;
		%feature("autodoc", "Returns guid for uattribute identifying specified higher usage occurrence.

Returns
-------
Standard_GUID
") SHUORefGUID;
		static const Standard_GUID & SHUORefGUID();

		/****************** ShapeRefGUID ******************/
		/**** md5 signature: 344fd4ba37b7dcc32f16506ee780dea8 ****/
		%feature("compactdefaultargs") ShapeRefGUID;
		%feature("autodoc", "Returns guid for treenode representing assembly link.

Returns
-------
Standard_GUID
") ShapeRefGUID;
		static const Standard_GUID & ShapeRefGUID();

		/****************** ViewRefAnnotationGUID ******************/
		/**** md5 signature: 3b24a2105dcb91eff89d74331a1f1eb3 ****/
		%feature("compactdefaultargs") ViewRefAnnotationGUID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ViewRefAnnotationGUID;
		static const Standard_GUID & ViewRefAnnotationGUID();

		/****************** ViewRefGDTGUID ******************/
		/**** md5 signature: daead34db984df64a60d887ee14bf2bc ****/
		%feature("compactdefaultargs") ViewRefGDTGUID;
		%feature("autodoc", "Return guids for treenode representing specified types of view.

Returns
-------
Standard_GUID
") ViewRefGDTGUID;
		static const Standard_GUID & ViewRefGDTGUID();

		/****************** ViewRefGUID ******************/
		/**** md5 signature: 1d659c6eef18ddb9cf3a6adeb0f02de3 ****/
		%feature("compactdefaultargs") ViewRefGUID;
		%feature("autodoc", "Return guids for treenode representing specified types of view.

Returns
-------
Standard_GUID
") ViewRefGUID;
		static const Standard_GUID & ViewRefGUID();

		/****************** ViewRefNoteGUID ******************/
		/**** md5 signature: 1b759f7e4d75c3e69f1ed1ff8ce2bc80 ****/
		%feature("compactdefaultargs") ViewRefNoteGUID;
		%feature("autodoc", "Return guids for graphnode representing specified types of view.

Returns
-------
Standard_GUID
") ViewRefNoteGUID;
		static const Standard_GUID & ViewRefNoteGUID();

		/****************** ViewRefPlaneGUID ******************/
		/**** md5 signature: 1efa9615074bc88478edae11271485c7 ****/
		%feature("compactdefaultargs") ViewRefPlaneGUID;
		%feature("autodoc", "Return guids for treenode representing specified types of view.

Returns
-------
Standard_GUID
") ViewRefPlaneGUID;
		static const Standard_GUID & ViewRefPlaneGUID();

		/****************** ViewRefShapeGUID ******************/
		/**** md5 signature: b24e8f81946175309cbeb0c59979c17e ****/
		%feature("compactdefaultargs") ViewRefShapeGUID;
		%feature("autodoc", "Return guids for treenode representing specified types of view.

Returns
-------
Standard_GUID
") ViewRefShapeGUID;
		static const Standard_GUID & ViewRefShapeGUID();

		/****************** VisMaterialRefGUID ******************/
		/**** md5 signature: 6f2a7fe937e3eae96df1fce1ab75eee4 ****/
		%feature("compactdefaultargs") VisMaterialRefGUID;
		%feature("autodoc", "Return guid for treenode representing visualization material.

Returns
-------
Standard_GUID
") VisMaterialRefGUID;
		static const Standard_GUID & VisMaterialRefGUID();

};


%extend XCAFDoc {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*********************
* class XCAFDoc_Area *
*********************/
class XCAFDoc_Area : public TDataStd_Real {
	public:
		/****************** XCAFDoc_Area ******************/
		/**** md5 signature: 1d1a9e57f6fd1c122bae7660a32edfab ****/
		%feature("compactdefaultargs") XCAFDoc_Area;
		%feature("autodoc", "Class methods =============.

Returns
-------
None
") XCAFDoc_Area;
		 XCAFDoc_Area();


        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };

            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** Get ******************/
		/**** md5 signature: fc841fb28cb01367762b1d75c09d001e ****/
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "No available documentation.

Returns
-------
float
") Get;
		Standard_Real Get();

		/****************** Get ******************/
		/**** md5 signature: 3316de23e236385a3038e17ac1633259 ****/
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "Returns volume of area as argument and success status returns false if no such attribute at the <label>.

Parameters
----------
label: TDF_Label

Returns
-------
area: float
") Get;
		static Standard_Boolean Get(const TDF_Label & label, Standard_Real &OutValue);

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** Set ******************/
		/**** md5 signature: 17ac24e76c81dc3dd9e0c71d510d3f0f ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Sets a value of volume.

Parameters
----------
vol: float

Returns
-------
None
") Set;
		void Set(const Standard_Real vol);

		/****************** Set ******************/
		/**** md5 signature: 26f816a01f73f5548e5f4832735bb4cd ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Find, or create, an area attribute and set its value.

Parameters
----------
label: TDF_Label
area: float

Returns
-------
opencascade::handle<XCAFDoc_Area>
") Set;
		static opencascade::handle<XCAFDoc_Area> Set(const TDF_Label & label, const Standard_Real area);

};


%make_alias(XCAFDoc_Area)

%extend XCAFDoc_Area {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/******************************
* class XCAFDoc_AssemblyGraph *
******************************/
class XCAFDoc_AssemblyGraph : public Standard_Transient {
	public:
typedef NCollection_DataMap<Standard_Integer , TColStd_PackedMapOfInteger> AdjacencyMap;
		class Iterator {};
/* public enums */
enum NodeType {
	NodeType_UNDEFINED = 0,
	NodeType_AssemblyRoot = 1,
	NodeType_Subassembly = 2,
	NodeType_Occurrence = 3,
	NodeType_Part = 4,
	NodeType_Subshape = 5,
};

/* end public enums declaration */

/* python proxy classes for enums */
%pythoncode {

class NodeType(IntEnum):
	NodeType_UNDEFINED = 0
	NodeType_AssemblyRoot = 1
	NodeType_Subassembly = 2
	NodeType_Occurrence = 3
	NodeType_Part = 4
	NodeType_Subshape = 5
NodeType_UNDEFINED = NodeType.NodeType_UNDEFINED
NodeType_AssemblyRoot = NodeType.NodeType_AssemblyRoot
NodeType_Subassembly = NodeType.NodeType_Subassembly
NodeType_Occurrence = NodeType.NodeType_Occurrence
NodeType_Part = NodeType.NodeType_Part
NodeType_Subshape = NodeType.NodeType_Subshape
};
/* end python proxy for enums */

		/****************** XCAFDoc_AssemblyGraph ******************/
		/**** md5 signature: 7a43fcc42d351eea072de136f9d8ebb1 ****/
		%feature("compactdefaultargs") XCAFDoc_AssemblyGraph;
		%feature("autodoc", "\brief constructs graph from xcaf document. construction of a formal graph will be done immediately. \param [in] thedoc - document to iterate.

Parameters
----------
theDoc: TDocStd_Document

Returns
-------
None
") XCAFDoc_AssemblyGraph;
		 XCAFDoc_AssemblyGraph(const opencascade::handle<TDocStd_Document> & theDoc);

		/****************** XCAFDoc_AssemblyGraph ******************/
		/**** md5 signature: 6521866e2af20cbd6733dfab8c4790a7 ****/
		%feature("compactdefaultargs") XCAFDoc_AssemblyGraph;
		%feature("autodoc", "\brief constructs graph from xcaf label. construction of a formal graph will be done immediately. the specified label is used as a starting position. \param [in] thedoc - document to iterate. \param [in] thelabel - starting position.

Parameters
----------
theLabel: TDF_Label

Returns
-------
None
") XCAFDoc_AssemblyGraph;
		 XCAFDoc_AssemblyGraph(const TDF_Label & theLabel);

		/****************** GetChildren ******************/
		/**** md5 signature: 78c28009556cae3a454a6f4d2b5d95fb ****/
		%feature("compactdefaultargs") GetChildren;
		%feature("autodoc", "\brief returns ids of child nodes for the given node. \param [in] thenode - one-based node id. eturn set of child ids.

Parameters
----------
theNode: int

Returns
-------
TColStd_PackedMapOfInteger
") GetChildren;
		const TColStd_PackedMapOfInteger & GetChildren(const Standard_Integer theNode);

		/****************** GetLinks ******************/
		/**** md5 signature: 71d026ba70bb50b3fb1f61585b29c8cb ****/
		%feature("compactdefaultargs") GetLinks;
		%feature("autodoc", "\brief returns the collection of graph links in the form of adjacency matrix. eturn graph links.

Returns
-------
AdjacencyMap
") GetLinks;
		const AdjacencyMap & GetLinks();

		/****************** GetNode ******************/
		/**** md5 signature: 08746f2ada50261a47534d8d3ed0fa43 ****/
		%feature("compactdefaultargs") GetNode;
		%feature("autodoc", "\brief returns object id by node id. \param [in] thenode - one-based node id. eturn persistent id.

Parameters
----------
theNode: int

Returns
-------
TDF_Label
") GetNode;
		const TDF_Label & GetNode(const Standard_Integer theNode);

		/****************** GetNodeType ******************/
		/**** md5 signature: 2a8d798de989eafac09bfb870bab9fae ****/
		%feature("compactdefaultargs") GetNodeType;
		%feature("autodoc", "\brief returns the node type from ef nodetype enum. \param [in] thenode - one-based node id. eturn node type. \sa nodetype.

Parameters
----------
theNode: int

Returns
-------
XCAFDoc_AssemblyGraph::NodeType
") GetNodeType;
		XCAFDoc_AssemblyGraph::NodeType GetNodeType(const Standard_Integer theNode);

		/****************** GetNodes ******************/
		/**** md5 signature: 9ab15b253791908d8de8d61dad2baac4 ****/
		%feature("compactdefaultargs") GetNodes;
		%feature("autodoc", "\brief returns the unordered set of graph nodes. eturn graph nodes.

Returns
-------
TDF_LabelIndexedMap
") GetNodes;
		const TDF_LabelIndexedMap & GetNodes();

		/****************** GetRoots ******************/
		/**** md5 signature: a9e5a8c4207210773dc54e4bb1aa3b34 ****/
		%feature("compactdefaultargs") GetRoots;
		%feature("autodoc", "\brief returns ids of the root nodes. eturn ids of the root nodes.

Returns
-------
TColStd_PackedMapOfInteger
") GetRoots;
		const TColStd_PackedMapOfInteger & GetRoots();

		/****************** GetShapeTool ******************/
		/**** md5 signature: a61be1bd1f2b067dcdc81a2d70df068a ****/
		%feature("compactdefaultargs") GetShapeTool;
		%feature("autodoc", "Eturn document shape tool.

Returns
-------
opencascade::handle<XCAFDoc_ShapeTool>
") GetShapeTool;
		const opencascade::handle<XCAFDoc_ShapeTool> & GetShapeTool();

		/****************** HasChildren ******************/
		/**** md5 signature: 63e31188c1861192467c6f10fd5052bd ****/
		%feature("compactdefaultargs") HasChildren;
		%feature("autodoc", "\brief checks whether direct children exist for the given node. \param [in] thenode - one-based node id. eturn true/false.

Parameters
----------
theNode: int

Returns
-------
bool
") HasChildren;
		Standard_Boolean HasChildren(const Standard_Integer theNode);

		/****************** IsDirectLink ******************/
		/**** md5 signature: 1faed4dba5ede28516016e22db4e8d87 ****/
		%feature("compactdefaultargs") IsDirectLink;
		%feature("autodoc", "\brief checks whether the assembly graph contains (n1, n2) directed link. \param [in] thenode1 - one-based id of the first node. \param [in] thenode2 - one-based id of the second node. eturn true/false.

Parameters
----------
theNode1: int
theNode2: int

Returns
-------
bool
") IsDirectLink;
		Standard_Boolean IsDirectLink(const Standard_Integer theNode1, const Standard_Integer theNode2);

		/****************** NbLinks ******************/
		/**** md5 signature: 79abe033a91a532fb20a57d51be46cd3 ****/
		%feature("compactdefaultargs") NbLinks;
		%feature("autodoc", "\brief returns the number of graph links. eturn number of graph links.

Returns
-------
int
") NbLinks;
		Standard_Integer NbLinks();

		/****************** NbNodes ******************/
		/**** md5 signature: e10a1e755c3c99568fdfec53b6a1d5d1 ****/
		%feature("compactdefaultargs") NbNodes;
		%feature("autodoc", "\brief returns the number of graph nodes. eturn number of graph nodes.

Returns
-------
int
") NbNodes;
		Standard_Integer NbNodes();

		/****************** NbOccurrences ******************/
		/**** md5 signature: 0709027a395dbc5caa9d4801553bcbd4 ****/
		%feature("compactdefaultargs") NbOccurrences;
		%feature("autodoc", "Returns quantity of part usage occurrences. \param [in] thenode - one-based part id. eturn usage occurrence quantity.

Parameters
----------
theNode: int

Returns
-------
int
") NbOccurrences;
		Standard_Integer NbOccurrences(const Standard_Integer theNode);

};


%make_alias(XCAFDoc_AssemblyGraph)

%extend XCAFDoc_AssemblyGraph {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*******************************
* class XCAFDoc_AssemblyItemId *
*******************************/
class XCAFDoc_AssemblyItemId {
	public:
		class Hasher {};
		/****************** XCAFDoc_AssemblyItemId ******************/
		/**** md5 signature: 3be71f2dc646719d8cb62bac0797d937 ****/
		%feature("compactdefaultargs") XCAFDoc_AssemblyItemId;
		%feature("autodoc", "Constructs an empty item id.

Returns
-------
None
") XCAFDoc_AssemblyItemId;
		 XCAFDoc_AssemblyItemId();

		/****************** XCAFDoc_AssemblyItemId ******************/
		/**** md5 signature: 8b704244a3ee6533827ccb279c9c6e47 ****/
		%feature("compactdefaultargs") XCAFDoc_AssemblyItemId;
		%feature("autodoc", "Constructs an item id from a list of strings, where every string is a label entry. \param [in] thepath - list of label entries.

Parameters
----------
thePath: TColStd_ListOfAsciiString

Returns
-------
None
") XCAFDoc_AssemblyItemId;
		 XCAFDoc_AssemblyItemId(const TColStd_ListOfAsciiString & thePath);

		/****************** XCAFDoc_AssemblyItemId ******************/
		/**** md5 signature: 4f4fd6890c8e5f971165c7982fbcb794 ****/
		%feature("compactdefaultargs") XCAFDoc_AssemblyItemId;
		%feature("autodoc", "Constructs an item id from a formatted path, where label entries are separated by '/' symbol. \param [in] thestring - formatted full path.

Parameters
----------
theString: str

Returns
-------
None
") XCAFDoc_AssemblyItemId;
		 XCAFDoc_AssemblyItemId(TCollection_AsciiString theString);


            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** GetPath ******************/
		/**** md5 signature: 48824de01042bbf99d66feadad226b55 ****/
		%feature("compactdefaultargs") GetPath;
		%feature("autodoc", "Returns the full path as a list of label entries.

Returns
-------
TColStd_ListOfAsciiString
") GetPath;
		const TColStd_ListOfAsciiString & GetPath();

		/****************** Init ******************/
		/**** md5 signature: 6958557d1ed4aed4c5467d2492080e39 ****/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "Initializes the item id from a list of strings, where every string is a label entry. \param [in] thepath - list of label entries.

Parameters
----------
thePath: TColStd_ListOfAsciiString

Returns
-------
None
") Init;
		void Init(const TColStd_ListOfAsciiString & thePath);

		/****************** Init ******************/
		/**** md5 signature: 202b959385f798c770333c9d3efef0aa ****/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "Initializes the item id from a formatted path, where label entries are separated by '/' symbol. \param [in] thestring - formatted full path.

Parameters
----------
theString: str

Returns
-------
None
") Init;
		void Init(TCollection_AsciiString theString);

		/****************** IsChild ******************/
		/**** md5 signature: 74a81ffc330676a231e756fbcc5a0125 ****/
		%feature("compactdefaultargs") IsChild;
		%feature("autodoc", "Checks if this item is a child of the given item. \param [in] theother - potentially ancestor item. eturn true if the item is a child of theother item, otherwise - false.

Parameters
----------
theOther: XCAFDoc_AssemblyItemId

Returns
-------
bool
") IsChild;
		Standard_Boolean IsChild(const XCAFDoc_AssemblyItemId & theOther);

		/****************** IsDirectChild ******************/
		/**** md5 signature: 02475111130b916dd24bae1a2ab5339a ****/
		%feature("compactdefaultargs") IsDirectChild;
		%feature("autodoc", "Checks if this item is a direct child of the given item. \param [in] theother - potentially parent item. eturn true if the item is a direct child of theother item, otherwise - false.

Parameters
----------
theOther: XCAFDoc_AssemblyItemId

Returns
-------
bool
") IsDirectChild;
		Standard_Boolean IsDirectChild(const XCAFDoc_AssemblyItemId & theOther);

		/****************** IsEqual ******************/
		/**** md5 signature: c276f4db26b8326d1c7f04634e8614d8 ****/
		%feature("compactdefaultargs") IsEqual;
		%feature("autodoc", "Checks for item ids equality. \param [in] theother - the item id to check equality with. eturn true if this id is equal to theother, otherwise - false.

Parameters
----------
theOther: XCAFDoc_AssemblyItemId

Returns
-------
bool
") IsEqual;
		Standard_Boolean IsEqual(const XCAFDoc_AssemblyItemId & theOther);

		/****************** IsNull ******************/
		/**** md5 signature: eab2964eabd2f0636e5f767661fb72a9 ****/
		%feature("compactdefaultargs") IsNull;
		%feature("autodoc", "Returns true if the full path is empty, otherwise - false.

Returns
-------
bool
") IsNull;
		Standard_Boolean IsNull();

		/****************** Nullify ******************/
		/**** md5 signature: 1915d5159e87738b7b9af9d5accf4c6e ****/
		%feature("compactdefaultargs") Nullify;
		%feature("autodoc", "Clears the full path.

Returns
-------
None
") Nullify;
		void Nullify();

		/****************** ToString ******************/
		/**** md5 signature: 6a79ea63aa5c6c7eae0245b9bdc8f632 ****/
		%feature("compactdefaultargs") ToString;
		%feature("autodoc", "Returns the full pass as a formatted string.

Returns
-------
TCollection_AsciiString
") ToString;
		TCollection_AsciiString ToString();

};


%extend XCAFDoc_AssemblyItemId {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/********************************
* class XCAFDoc_AssemblyItemRef *
********************************/
class XCAFDoc_AssemblyItemRef : public TDF_Attribute {
	public:
		/****************** XCAFDoc_AssemblyItemRef ******************/
		/**** md5 signature: 7f77a642c1be436263b736d0b2eb7d35 ****/
		%feature("compactdefaultargs") XCAFDoc_AssemblyItemRef;
		%feature("autodoc", "Creates an empty reference attribute.

Returns
-------
None
") XCAFDoc_AssemblyItemRef;
		 XCAFDoc_AssemblyItemRef();

		/****************** ClearExtraRef ******************/
		/**** md5 signature: 263d6cb44cbbb2149f9558d7817e131b ****/
		%feature("compactdefaultargs") ClearExtraRef;
		%feature("autodoc", "Reverts the reference to empty state.

Returns
-------
None
") ClearExtraRef;
		void ClearExtraRef();


        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };

            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** Get ******************/
		/**** md5 signature: 3d90b76d3b6cdf628ef6575cb2d33050 ****/
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "Finds a reference attribute on the given label and returns it, if it is found.

Parameters
----------
theLabel: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_AssemblyItemRef>
") Get;
		static opencascade::handle<XCAFDoc_AssemblyItemRef> Get(const TDF_Label & theLabel);

		/****************** GetGUID ******************/
		/**** md5 signature: 4035298df9b7a3ee1fc784f10276a0bf ****/
		%feature("compactdefaultargs") GetGUID;
		%feature("autodoc", "Returns the assembly item's attribute that the reference points to. if the reference doesn't point to an attribute, returns an empty guid.

Returns
-------
Standard_GUID
") GetGUID;
		Standard_GUID GetGUID();

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetItem ******************/
		/**** md5 signature: b6a222a305b35c43f5b5bf5c092a486c ****/
		%feature("compactdefaultargs") GetItem;
		%feature("autodoc", "Returns the assembly item id that the reference points to.

Returns
-------
XCAFDoc_AssemblyItemId
") GetItem;
		const XCAFDoc_AssemblyItemId & GetItem();

		/****************** GetSubshapeIndex ******************/
		/**** md5 signature: 5fe7fd3a7a1ba78f0421b4c3ed0e8f07 ****/
		%feature("compactdefaultargs") GetSubshapeIndex;
		%feature("autodoc", "Returns the assembly item's subshape that the reference points to. if the reference doesn't point to a subshape, returns 0.

Returns
-------
int
") GetSubshapeIndex;
		Standard_Integer GetSubshapeIndex();

		/****************** HasExtraRef ******************/
		/**** md5 signature: 22588d8035b6e09da2a7e6d0bb7118c6 ****/
		%feature("compactdefaultargs") HasExtraRef;
		%feature("autodoc", "Checks if the reference points on an item's shapeindex or attribute.

Returns
-------
bool
") HasExtraRef;
		Standard_Boolean HasExtraRef();

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** IsGUID ******************/
		/**** md5 signature: 21b0c6c7bfbb106b096b44c451a46099 ****/
		%feature("compactdefaultargs") IsGUID;
		%feature("autodoc", "Checks is the reference points to an item's attribute.

Returns
-------
bool
") IsGUID;
		Standard_Boolean IsGUID();

		/****************** IsOrphan ******************/
		/**** md5 signature: eb05d99cebc22df31e6330e0e53fe62c ****/
		%feature("compactdefaultargs") IsOrphan;
		%feature("autodoc", "Checks if the reference points to a really existing item in xde document.

Returns
-------
bool
") IsOrphan;
		Standard_Boolean IsOrphan();

		/****************** IsSubshapeIndex ******************/
		/**** md5 signature: 471f0d7e1aa9074d6efc36e6019628ec ****/
		%feature("compactdefaultargs") IsSubshapeIndex;
		%feature("autodoc", "Checks is the reference points to an item's subshape.

Returns
-------
bool
") IsSubshapeIndex;
		Standard_Boolean IsSubshapeIndex();

		/****************** NewEmpty ******************/
		/**** md5 signature: c6d13c9ecc64c6c803b6e119e8216934 ****/
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TDF_Attribute>
") NewEmpty;
		opencascade::handle<TDF_Attribute> NewEmpty();

		/****************** Paste ******************/
		/**** md5 signature: f98a67c4f327c9d7cceaa72c60db3f31 ****/
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "No available documentation.

Parameters
----------
theAttrInto: TDF_Attribute
theRT: TDF_RelocationTable

Returns
-------
None
") Paste;
		void Paste(const opencascade::handle<TDF_Attribute> & theAttrInto, const opencascade::handle<TDF_RelocationTable> & theRT);

		/****************** Restore ******************/
		/**** md5 signature: 64974bd3177ca3958ca6f642f1c665f5 ****/
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "No available documentation.

Parameters
----------
theAttrFrom: TDF_Attribute

Returns
-------
None
") Restore;
		void Restore(const opencascade::handle<TDF_Attribute> & theAttrFrom);

		/****************** Set ******************/
		/**** md5 signature: bd9d6e07b3021dd893a192411c53dd3d ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Create (if not exist) a reference to an assembly item. \param [in] thelabel - label to add the attribute. \param [in] theitemid - assembly item id. eturn a handle to the attribute instance.

Parameters
----------
theLabel: TDF_Label
theItemId: XCAFDoc_AssemblyItemId

Returns
-------
opencascade::handle<XCAFDoc_AssemblyItemRef>
") Set;
		static opencascade::handle<XCAFDoc_AssemblyItemRef> Set(const TDF_Label & theLabel, const XCAFDoc_AssemblyItemId & theItemId);

		/****************** Set ******************/
		/**** md5 signature: c006d20ee52a9083de594f6d92d17432 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Create (if not exist) a reference to an assembly item's label attribute. \param [in] thelabel - label to add the attribute. \param [in] theitemid - assembly item id. \param [in] theguid - assembly item's label attribute id. eturn a handle to the attribute instance.

Parameters
----------
theLabel: TDF_Label
theItemId: XCAFDoc_AssemblyItemId
theGUID: Standard_GUID

Returns
-------
opencascade::handle<XCAFDoc_AssemblyItemRef>
") Set;
		static opencascade::handle<XCAFDoc_AssemblyItemRef> Set(const TDF_Label & theLabel, const XCAFDoc_AssemblyItemId & theItemId, const Standard_GUID & theGUID);

		/****************** Set ******************/
		/**** md5 signature: e9588e2a669028e38868faa6aec0d278 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Create (if not exist) a reference to an assembly item's subshape. \param [in] thelabel - label to add the attribute. \param [in] theitemid - assembly item id. \param [in] theshapeindex - assembly item's subshape index. eturn a handle to the attribute instance.

Parameters
----------
theLabel: TDF_Label
theItemId: XCAFDoc_AssemblyItemId
theShapeIndex: int

Returns
-------
opencascade::handle<XCAFDoc_AssemblyItemRef>
") Set;
		static opencascade::handle<XCAFDoc_AssemblyItemRef> Set(const TDF_Label & theLabel, const XCAFDoc_AssemblyItemId & theItemId, const Standard_Integer theShapeIndex);

		/****************** SetGUID ******************/
		/**** md5 signature: cee186262c3d0db0336ec4c42cee0136 ****/
		%feature("compactdefaultargs") SetGUID;
		%feature("autodoc", "Sets the assembly item's label attribute that the reference points to. the base assembly item will not change.

Parameters
----------
theAttrGUID: Standard_GUID

Returns
-------
None
") SetGUID;
		void SetGUID(const Standard_GUID & theAttrGUID);

		/****************** SetItem ******************/
		/**** md5 signature: 0b321c4a6177112c45f4d4bd9c118caf ****/
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "Sets the assembly item id that the reference points to. extra reference data (if any) will be cleared.

Parameters
----------
theItemId: XCAFDoc_AssemblyItemId

Returns
-------
None
") SetItem;
		void SetItem(const XCAFDoc_AssemblyItemId & theItemId);

		/****************** SetItem ******************/
		/**** md5 signature: 809764b6fa946132c65b655bd25dbafa ****/
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "Sets the assembly item id from a list of label entries that the reference points to. extra reference data (if any) will be cleared.

Parameters
----------
thePath: TColStd_ListOfAsciiString

Returns
-------
None
") SetItem;
		void SetItem(const TColStd_ListOfAsciiString & thePath);

		/****************** SetItem ******************/
		/**** md5 signature: ed6d4d7b28f4f31e5058482ec17190c4 ****/
		%feature("compactdefaultargs") SetItem;
		%feature("autodoc", "Sets the assembly item id from a formatted path that the reference points to. extra reference data (if any) will be cleared.

Parameters
----------
theString: str

Returns
-------
None
") SetItem;
		void SetItem(TCollection_AsciiString theString);

		/****************** SetSubshapeIndex ******************/
		/**** md5 signature: 21266a81ca356bdccdc2388c3f31e929 ****/
		%feature("compactdefaultargs") SetSubshapeIndex;
		%feature("autodoc", "Sets the assembly item's subshape that the reference points to. the base assembly item will not change.

Parameters
----------
theShapeIndex: int

Returns
-------
None
") SetSubshapeIndex;
		void SetSubshapeIndex(Standard_Integer theShapeIndex);

};


%make_alias(XCAFDoc_AssemblyItemRef)

%extend XCAFDoc_AssemblyItemRef {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*********************************
* class XCAFDoc_AssemblyIterator *
*********************************/
class XCAFDoc_AssemblyIterator {
	public:
		class AuxAssemblyItem {};
		/****************** XCAFDoc_AssemblyIterator ******************/
		/**** md5 signature: f213631244e18596430c804971b2db01 ****/
		%feature("compactdefaultargs") XCAFDoc_AssemblyIterator;
		%feature("autodoc", "Constructs iterator starting from assembly roots. \param [in] thedoc - document to iterate. \param [in, opt] thelevel - max level of hierarchy to reach (int_max is for no limit).

Parameters
----------
theDoc: TDocStd_Document
theLevel: int,optional
	default value is INT_MAX

Returns
-------
None
") XCAFDoc_AssemblyIterator;
		 XCAFDoc_AssemblyIterator(const opencascade::handle<TDocStd_Document> & theDoc, const Standard_Integer theLevel = INT_MAX);

		/****************** XCAFDoc_AssemblyIterator ******************/
		/**** md5 signature: 4fb9acc2af8eb9f22847137f2921a5a5 ****/
		%feature("compactdefaultargs") XCAFDoc_AssemblyIterator;
		%feature("autodoc", "Constructs iterator starting from the specified position in the assembly tree. \param [in] thedoc - document to iterate. \param [in] theroot - assembly item to start iterating from. \param [in, opt] thelevel - max level of hierarchy to reach (int_max is for no limit).

Parameters
----------
theDoc: TDocStd_Document
theRoot: XCAFDoc_AssemblyItemId
theLevel: int,optional
	default value is INT_MAX

Returns
-------
None
") XCAFDoc_AssemblyIterator;
		 XCAFDoc_AssemblyIterator(const opencascade::handle<TDocStd_Document> & theDoc, const XCAFDoc_AssemblyItemId & theRoot, const Standard_Integer theLevel = INT_MAX);

		/****************** Current ******************/
		/**** md5 signature: 3c4f769b7dbbbef61faa7e2c796471ec ****/
		%feature("compactdefaultargs") Current;
		%feature("autodoc", "Eturn current item.

Returns
-------
XCAFDoc_AssemblyItemId
") Current;
		XCAFDoc_AssemblyItemId Current();

		/****************** More ******************/
		/**** md5 signature: 6f6e915c9a3dca758c059d9e8af02dff ****/
		%feature("compactdefaultargs") More;
		%feature("autodoc", "Eturn true if there is still something to iterate, false -- otherwise.

Returns
-------
bool
") More;
		Standard_Boolean More();

		/****************** Next ******************/
		/**** md5 signature: f35c0df5f1d7c877986db18081404532 ****/
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "Moves depth-first iterator to the next position.

Returns
-------
None
") Next;
		void Next();

};


%extend XCAFDoc_AssemblyIterator {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*****************************
* class XCAFDoc_AssemblyTool *
*****************************/
class XCAFDoc_AssemblyTool {
	public:
};


%extend XCAFDoc_AssemblyTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*************************
* class XCAFDoc_Centroid *
*************************/
class XCAFDoc_Centroid : public TDF_Attribute {
	public:
		/****************** XCAFDoc_Centroid ******************/
		/**** md5 signature: ae330113df9c3495a25e9d03ac73cfcd ****/
		%feature("compactdefaultargs") XCAFDoc_Centroid;
		%feature("autodoc", "Class methods =============.

Returns
-------
None
") XCAFDoc_Centroid;
		 XCAFDoc_Centroid();


        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };

            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** Get ******************/
		/**** md5 signature: 6858beb2d2926012952734f9982f4540 ****/
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "No available documentation.

Returns
-------
gp_Pnt
") Get;
		gp_Pnt Get();

		/****************** Get ******************/
		/**** md5 signature: dfa5aa5f6d1141f4842ad724a4bbe68a ****/
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "Returns point as argument returns false if no such attribute at the <label>.

Parameters
----------
label: TDF_Label
pnt: gp_Pnt

Returns
-------
bool
") Get;
		static Standard_Boolean Get(const TDF_Label & label, gp_Pnt & pnt);

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** NewEmpty ******************/
		/**** md5 signature: c6d13c9ecc64c6c803b6e119e8216934 ****/
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TDF_Attribute>
") NewEmpty;
		opencascade::handle<TDF_Attribute> NewEmpty();

		/****************** Paste ******************/
		/**** md5 signature: a6ff306a759c68a191c0262635db980f ****/
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "No available documentation.

Parameters
----------
Into: TDF_Attribute
RT: TDF_RelocationTable

Returns
-------
None
") Paste;
		void Paste(const opencascade::handle<TDF_Attribute> & Into, const opencascade::handle<TDF_RelocationTable> & RT);

		/****************** Restore ******************/
		/**** md5 signature: ddeae219d389a1d89eecb3e23c73522a ****/
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "No available documentation.

Parameters
----------
With: TDF_Attribute

Returns
-------
None
") Restore;
		void Restore(const opencascade::handle<TDF_Attribute> & With);

		/****************** Set ******************/
		/**** md5 signature: e2324d1e7f5b53a63e38d29ef2d7c8ca ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Find, or create, a location attribute and set it's value the location attribute is returned. location methods ===============.

Parameters
----------
label: TDF_Label
pnt: gp_Pnt

Returns
-------
opencascade::handle<XCAFDoc_Centroid>
") Set;
		static opencascade::handle<XCAFDoc_Centroid> Set(const TDF_Label & label, const gp_Pnt & pnt);

		/****************** Set ******************/
		/**** md5 signature: c54194e78dc1d9312645386e87138447 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
pnt: gp_Pnt

Returns
-------
None
") Set;
		void Set(const gp_Pnt & pnt);

};


%make_alias(XCAFDoc_Centroid)

%extend XCAFDoc_Centroid {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**********************************
* class XCAFDoc_ClippingPlaneTool *
**********************************/
class XCAFDoc_ClippingPlaneTool : public TDataStd_GenericEmpty {
	public:
		/****************** XCAFDoc_ClippingPlaneTool ******************/
		/**** md5 signature: 522fcfb25b1352fbc544ea4eca6f8810 ****/
		%feature("compactdefaultargs") XCAFDoc_ClippingPlaneTool;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") XCAFDoc_ClippingPlaneTool;
		 XCAFDoc_ClippingPlaneTool();

		/****************** AddClippingPlane ******************/
		/**** md5 signature: 96cd9764611efec9708f97a7964b7322 ****/
		%feature("compactdefaultargs") AddClippingPlane;
		%feature("autodoc", "Adds a clipping plane definition to a clippingplane table and returns its label (returns existing label if the same clipping plane is already defined).

Parameters
----------
thePlane: gp_Pln
theName: str
theCapping: bool

Returns
-------
TDF_Label
") AddClippingPlane;
		TDF_Label AddClippingPlane(const gp_Pln & thePlane, const TCollection_ExtendedString theName, const Standard_Boolean theCapping);

		/****************** AddClippingPlane ******************/
		/**** md5 signature: 9131937433204037f31f3ee02b1b6873 ****/
		%feature("compactdefaultargs") AddClippingPlane;
		%feature("autodoc", "Adds a clipping plane definition to a clippingplane table and returns its label (returns existing label if the same clipping plane is already defined).

Parameters
----------
thePlane: gp_Pln
theName: TCollection_HAsciiString
theCapping: bool

Returns
-------
TDF_Label
") AddClippingPlane;
		TDF_Label AddClippingPlane(const gp_Pln & thePlane, const opencascade::handle<TCollection_HAsciiString> & theName, const Standard_Boolean theCapping);

		/****************** AddClippingPlane ******************/
		/**** md5 signature: 1402b567b5c2f09a4022c0affc0b5adc ****/
		%feature("compactdefaultargs") AddClippingPlane;
		%feature("autodoc", "Adds a clipping plane definition to a clippingplane table and returns its label (returns existing label if the same clipping plane is already defined).

Parameters
----------
thePlane: gp_Pln
theName: str

Returns
-------
TDF_Label
") AddClippingPlane;
		TDF_Label AddClippingPlane(const gp_Pln & thePlane, const TCollection_ExtendedString theName);

		/****************** AddClippingPlane ******************/
		/**** md5 signature: 39b67f88acdbae8d7a347f43242b6396 ****/
		%feature("compactdefaultargs") AddClippingPlane;
		%feature("autodoc", "Adds a clipping plane definition to a clippingplane table and returns its label (returns existing label if the same clipping plane is already defined).

Parameters
----------
thePlane: gp_Pln
theName: TCollection_HAsciiString

Returns
-------
TDF_Label
") AddClippingPlane;
		TDF_Label AddClippingPlane(const gp_Pln & thePlane, const opencascade::handle<TCollection_HAsciiString> & theName);

		/****************** BaseLabel ******************/
		/**** md5 signature: cb499d8135863e96e585085d0b85c75a ****/
		%feature("compactdefaultargs") BaseLabel;
		%feature("autodoc", "Returns the label under which clippingplanes are stored.

Returns
-------
TDF_Label
") BaseLabel;
		TDF_Label BaseLabel();

		/****************** GetCapping ******************/
		/**** md5 signature: 9fb51e4e906cd49924161bc8b3e0144e ****/
		%feature("compactdefaultargs") GetCapping;
		%feature("autodoc", "Get capping value for given clipping plane label return capping value.

Parameters
----------
theClippingPlaneL: TDF_Label

Returns
-------
bool
") GetCapping;
		Standard_Boolean GetCapping(const TDF_Label & theClippingPlaneL);

		/****************** GetCapping ******************/
		/**** md5 signature: 2118d546d645771e7bd879031cc515fb ****/
		%feature("compactdefaultargs") GetCapping;
		%feature("autodoc", "Get capping value for given clipping plane label return true if label is valid abd capping is exist.

Parameters
----------
theClippingPlaneL: TDF_Label

Returns
-------
theCapping: bool
") GetCapping;
		Standard_Boolean GetCapping(const TDF_Label & theClippingPlaneL, Standard_Boolean &OutValue);

		/****************** GetClippingPlane ******************/
		/**** md5 signature: dd697f66e4d9cc82de8f947965f9bc89 ****/
		%feature("compactdefaultargs") GetClippingPlane;
		%feature("autodoc", "Returns clippingplane defined by label lab returns false if the label is not in clippingplane table or does not define a clippingplane.

Parameters
----------
theLabel: TDF_Label
thePlane: gp_Pln
theName: str

Returns
-------
theCapping: bool
") GetClippingPlane;
		Standard_Boolean GetClippingPlane(const TDF_Label & theLabel, gp_Pln & thePlane, TCollection_ExtendedString & theName, Standard_Boolean &OutValue);

		/****************** GetClippingPlane ******************/
		/**** md5 signature: c5547290161f6dc5b2f97e2101ba4cfb ****/
		%feature("compactdefaultargs") GetClippingPlane;
		%feature("autodoc", "Returns clippingplane defined by label lab returns false if the label is not in clippingplane table or does not define a clippingplane.

Parameters
----------
theLabel: TDF_Label
thePlane: gp_Pln

Returns
-------
theName: TCollection_HAsciiString
theCapping: bool
") GetClippingPlane;
		Standard_Boolean GetClippingPlane(const TDF_Label & theLabel, gp_Pln & thePlane, opencascade::handle<TCollection_HAsciiString> &OutValue, Standard_Boolean &OutValue);

		/****************** GetClippingPlanes ******************/
		/**** md5 signature: 075e7b42329dbcab74840155da865a35 ****/
		%feature("compactdefaultargs") GetClippingPlanes;
		%feature("autodoc", "Returns a sequence of clipping planes currently stored in the clippingplane table.

Parameters
----------
Labels: TDF_LabelSequence

Returns
-------
None
") GetClippingPlanes;
		void GetClippingPlanes(TDF_LabelSequence & Labels);

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** IsClippingPlane ******************/
		/**** md5 signature: b7046791a09e74cde040327b1424c06d ****/
		%feature("compactdefaultargs") IsClippingPlane;
		%feature("autodoc", "Returns true if label belongs to a clippingplane table and is a clippingplane definition.

Parameters
----------
theLabel: TDF_Label

Returns
-------
bool
") IsClippingPlane;
		Standard_Boolean IsClippingPlane(const TDF_Label & theLabel);

		/****************** RemoveClippingPlane ******************/
		/**** md5 signature: 26c32e63236d98643988c90349194e52 ****/
		%feature("compactdefaultargs") RemoveClippingPlane;
		%feature("autodoc", "Removes clipping plane from the clippingplane table return false and do nothing if clipping plane is referenced in at least one view.

Parameters
----------
theLabel: TDF_Label

Returns
-------
bool
") RemoveClippingPlane;
		Standard_Boolean RemoveClippingPlane(const TDF_Label & theLabel);

		/****************** Set ******************/
		/**** md5 signature: 14dc48a9915ce467ffda532089e7780c ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Creates (if not exist) clippingplanetool.

Parameters
----------
theLabel: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_ClippingPlaneTool>
") Set;
		static opencascade::handle<XCAFDoc_ClippingPlaneTool> Set(const TDF_Label & theLabel);

		/****************** SetCapping ******************/
		/**** md5 signature: af3c264c9933a1de79de7bdc073d453f ****/
		%feature("compactdefaultargs") SetCapping;
		%feature("autodoc", "Set new value of capping for given clipping plane label.

Parameters
----------
theClippingPlaneL: TDF_Label
theCapping: bool

Returns
-------
None
") SetCapping;
		void SetCapping(const TDF_Label & theClippingPlaneL, const Standard_Boolean theCapping);

		/****************** UpdateClippingPlane ******************/
		/**** md5 signature: bc776ceb1d6117cc8f2ecd1262d46521 ****/
		%feature("compactdefaultargs") UpdateClippingPlane;
		%feature("autodoc", "Sets new value of plane and name to the given clipping plane label or do nothing, if the given label is not a clipping plane label.

Parameters
----------
theLabelL: TDF_Label
thePlane: gp_Pln
theName: str

Returns
-------
None
") UpdateClippingPlane;
		void UpdateClippingPlane(const TDF_Label & theLabelL, const gp_Pln & thePlane, const TCollection_ExtendedString theName);

};


%make_alias(XCAFDoc_ClippingPlaneTool)

%extend XCAFDoc_ClippingPlaneTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**********************
* class XCAFDoc_Color *
**********************/
class XCAFDoc_Color : public TDF_Attribute {
	public:
		/****************** XCAFDoc_Color ******************/
		/**** md5 signature: 90f95c5238144ae2afcc3df0a9c37fb1 ****/
		%feature("compactdefaultargs") XCAFDoc_Color;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") XCAFDoc_Color;
		 XCAFDoc_Color();


            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** GetAlpha ******************/
		/**** md5 signature: 84565d2001b45d9f108b1fd8295c8240 ****/
		%feature("compactdefaultargs") GetAlpha;
		%feature("autodoc", "No available documentation.

Returns
-------
float
") GetAlpha;
		Standard_ShortReal GetAlpha();

		/****************** GetColor ******************/
		/**** md5 signature: d4c30997bc0976f42c148c7003c6321b ****/
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "No available documentation.

Returns
-------
Quantity_Color
") GetColor;
		const Quantity_Color & GetColor();

		/****************** GetColorRGBA ******************/
		/**** md5 signature: 246f8061881801800ffaa798bf268100 ****/
		%feature("compactdefaultargs") GetColorRGBA;
		%feature("autodoc", "No available documentation.

Returns
-------
Quantity_ColorRGBA
") GetColorRGBA;
		const Quantity_ColorRGBA & GetColorRGBA();

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetNOC ******************/
		/**** md5 signature: ebb86be7317e9845d6927cc622e251b8 ****/
		%feature("compactdefaultargs") GetNOC;
		%feature("autodoc", "No available documentation.

Returns
-------
Quantity_NameOfColor
") GetNOC;
		Quantity_NameOfColor GetNOC();

		/****************** GetRGB ******************/
		/**** md5 signature: 69306d7864b5ca4bf06977090e6db8fd ****/
		%feature("compactdefaultargs") GetRGB;
		%feature("autodoc", "No available documentation.

Parameters
----------

Returns
-------
R: float
G: float
B: float
") GetRGB;
		void GetRGB(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** NewEmpty ******************/
		/**** md5 signature: c6d13c9ecc64c6c803b6e119e8216934 ****/
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TDF_Attribute>
") NewEmpty;
		opencascade::handle<TDF_Attribute> NewEmpty();

		/****************** Paste ******************/
		/**** md5 signature: a6ff306a759c68a191c0262635db980f ****/
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "No available documentation.

Parameters
----------
Into: TDF_Attribute
RT: TDF_RelocationTable

Returns
-------
None
") Paste;
		void Paste(const opencascade::handle<TDF_Attribute> & Into, const opencascade::handle<TDF_RelocationTable> & RT);

		/****************** Restore ******************/
		/**** md5 signature: ddeae219d389a1d89eecb3e23c73522a ****/
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "No available documentation.

Parameters
----------
With: TDF_Attribute

Returns
-------
None
") Restore;
		void Restore(const opencascade::handle<TDF_Attribute> & With);

		/****************** Set ******************/
		/**** md5 signature: 511b838bc44cd703059a095b81fd1667 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
label: TDF_Label
C: Quantity_Color

Returns
-------
opencascade::handle<XCAFDoc_Color>
") Set;
		static opencascade::handle<XCAFDoc_Color> Set(const TDF_Label & label, const Quantity_Color & C);

		/****************** Set ******************/
		/**** md5 signature: e4659b3e8995913bb915d93176bf069b ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
label: TDF_Label
C: Quantity_ColorRGBA

Returns
-------
opencascade::handle<XCAFDoc_Color>
") Set;
		static opencascade::handle<XCAFDoc_Color> Set(const TDF_Label & label, const Quantity_ColorRGBA & C);

		/****************** Set ******************/
		/**** md5 signature: 364f02967eadb97fd87574772ac1d8de ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
label: TDF_Label
C: Quantity_NameOfColor

Returns
-------
opencascade::handle<XCAFDoc_Color>
") Set;
		static opencascade::handle<XCAFDoc_Color> Set(const TDF_Label & label, const Quantity_NameOfColor C);

		/****************** Set ******************/
		/**** md5 signature: 656fcb7d51b7d9676e8ae2ddef9a72a8 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Find, or create, a color attribute and set it's value the color attribute is returned.

Parameters
----------
label: TDF_Label
R: float
G: float
B: float
alpha: float,optional
	default value is 1.0

Returns
-------
opencascade::handle<XCAFDoc_Color>
") Set;
		static opencascade::handle<XCAFDoc_Color> Set(const TDF_Label & label, const Standard_Real R, const Standard_Real G, const Standard_Real B, const Standard_Real alpha = 1.0);

		/****************** Set ******************/
		/**** md5 signature: 950c30f558d1ea0d05615f065e775e47 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
C: Quantity_Color

Returns
-------
None
") Set;
		void Set(const Quantity_Color & C);

		/****************** Set ******************/
		/**** md5 signature: f1c108ff086ceecd317a84ff18c426cc ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
C: Quantity_ColorRGBA

Returns
-------
None
") Set;
		void Set(const Quantity_ColorRGBA & C);

		/****************** Set ******************/
		/**** md5 signature: 7123deed59babe8053430671a14b1fe8 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
C: Quantity_NameOfColor

Returns
-------
None
") Set;
		void Set(const Quantity_NameOfColor C);

		/****************** Set ******************/
		/**** md5 signature: 1aff34b6372f7ae344ce23a045974763 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
R: float
G: float
B: float
alpha: float,optional
	default value is 1.0

Returns
-------
None
") Set;
		void Set(const Standard_Real R, const Standard_Real G, const Standard_Real B, const Standard_Real alpha = 1.0);

};


%make_alias(XCAFDoc_Color)

%extend XCAFDoc_Color {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**************************
* class XCAFDoc_ColorTool *
**************************/
class XCAFDoc_ColorTool : public TDataStd_GenericEmpty {
	public:
		/****************** XCAFDoc_ColorTool ******************/
		/**** md5 signature: f6ed5417f3b128e0a824bdc9feaffa0f ****/
		%feature("compactdefaultargs") XCAFDoc_ColorTool;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") XCAFDoc_ColorTool;
		 XCAFDoc_ColorTool();

		/****************** AddColor ******************/
		/**** md5 signature: 78ce80768a36bafba89dd722c911c784 ****/
		%feature("compactdefaultargs") AddColor;
		%feature("autodoc", "Adds a color definition to a colortable and returns its label (returns existing label if the same color is already defined).

Parameters
----------
col: Quantity_Color

Returns
-------
TDF_Label
") AddColor;
		TDF_Label AddColor(const Quantity_Color & col);

		/****************** AddColor ******************/
		/**** md5 signature: e5c15a7ac5d4ca8bf140149494253a9a ****/
		%feature("compactdefaultargs") AddColor;
		%feature("autodoc", "Adds a color definition to a colortable and returns its label (returns existing label if the same color is already defined).

Parameters
----------
col: Quantity_ColorRGBA

Returns
-------
TDF_Label
") AddColor;
		TDF_Label AddColor(const Quantity_ColorRGBA & col);

		/****************** AutoNaming ******************/
		/**** md5 signature: c4c4154491210e47fd199a3970712f25 ****/
		%feature("compactdefaultargs") AutoNaming;
		%feature("autodoc", "Returns current auto-naming mode; true by default. if true then for added colors the tdatastd_name attribute will be automatically added. this setting is global.

Returns
-------
bool
") AutoNaming;
		static Standard_Boolean AutoNaming();

		/****************** BaseLabel ******************/
		/**** md5 signature: cb499d8135863e96e585085d0b85c75a ****/
		%feature("compactdefaultargs") BaseLabel;
		%feature("autodoc", "Returns the label under which colors are stored.

Returns
-------
TDF_Label
") BaseLabel;
		TDF_Label BaseLabel();


            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** FindColor ******************/
		/**** md5 signature: 3bbdfc40532c55b34b874ffb30be7192 ****/
		%feature("compactdefaultargs") FindColor;
		%feature("autodoc", "Finds a color definition in a colortable and returns its label if found returns false if color is not found in colortable.

Parameters
----------
col: Quantity_Color
lab: TDF_Label

Returns
-------
bool
") FindColor;
		Standard_Boolean FindColor(const Quantity_Color & col, TDF_Label & lab);

		/****************** FindColor ******************/
		/**** md5 signature: 1147655098eda06e94c4798e8cabe037 ****/
		%feature("compactdefaultargs") FindColor;
		%feature("autodoc", "Finds a color definition in a colortable and returns its label if found returns false if color is not found in colortable.

Parameters
----------
col: Quantity_ColorRGBA
lab: TDF_Label

Returns
-------
bool
") FindColor;
		Standard_Boolean FindColor(const Quantity_ColorRGBA & col, TDF_Label & lab);

		/****************** FindColor ******************/
		/**** md5 signature: 1a4423bd5d3c7bbec127ad385848bbc8 ****/
		%feature("compactdefaultargs") FindColor;
		%feature("autodoc", "Finds a color definition in a colortable and returns its label if found (or null label else).

Parameters
----------
col: Quantity_Color

Returns
-------
TDF_Label
") FindColor;
		TDF_Label FindColor(const Quantity_Color & col);

		/****************** FindColor ******************/
		/**** md5 signature: a148889c39cc78ed52fbc1c8658b5ffd ****/
		%feature("compactdefaultargs") FindColor;
		%feature("autodoc", "Finds a color definition in a colortable and returns its label if found (or null label else).

Parameters
----------
col: Quantity_ColorRGBA

Returns
-------
TDF_Label
") FindColor;
		TDF_Label FindColor(const Quantity_ColorRGBA & col);

		/****************** GetColor ******************/
		/**** md5 signature: 7092ec33c89b067e1ceab0d67b5ed02d ****/
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "Returns color defined by label lab returns false if the label is not in colortable or does not define a color.

Parameters
----------
lab: TDF_Label
col: Quantity_Color

Returns
-------
bool
") GetColor;
		static Standard_Boolean GetColor(const TDF_Label & lab, Quantity_Color & col);

		/****************** GetColor ******************/
		/**** md5 signature: 7252a98dd463a84602d0b7516d6cfc04 ****/
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "Returns color defined by label lab returns false if the label is not in colortable or does not define a color.

Parameters
----------
lab: TDF_Label
col: Quantity_ColorRGBA

Returns
-------
bool
") GetColor;
		static Standard_Boolean GetColor(const TDF_Label & lab, Quantity_ColorRGBA & col);

		/****************** GetColor ******************/
		/**** md5 signature: 869ec12dba73e125e4d66d2a85d2d496 ****/
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "Returns label with color assigned to <l> as <type> returns false if no such color is assigned.

Parameters
----------
L: TDF_Label
type: XCAFDoc_ColorType
colorL: TDF_Label

Returns
-------
bool
") GetColor;
		static Standard_Boolean GetColor(const TDF_Label & L, const XCAFDoc_ColorType type, TDF_Label & colorL);

		/****************** GetColor ******************/
		/**** md5 signature: 9f42bc515522bf5857381b8ed56f5af6 ****/
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "Returns color assigned to <l> as <type> returns false if no such color is assigned.

Parameters
----------
L: TDF_Label
type: XCAFDoc_ColorType
color: Quantity_Color

Returns
-------
bool
") GetColor;
		static Standard_Boolean GetColor(const TDF_Label & L, const XCAFDoc_ColorType type, Quantity_Color & color);

		/****************** GetColor ******************/
		/**** md5 signature: 175af0eadf13dd6e8e7059280dcebe1e ****/
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "Returns color assigned to <l> as <type> returns false if no such color is assigned.

Parameters
----------
L: TDF_Label
type: XCAFDoc_ColorType
color: Quantity_ColorRGBA

Returns
-------
bool
") GetColor;
		static Standard_Boolean GetColor(const TDF_Label & L, const XCAFDoc_ColorType type, Quantity_ColorRGBA & color);

		/****************** GetColor ******************/
		/**** md5 signature: 6e439ce30113cabaadf18ee4ce1d0971 ****/
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "Returns label with color assigned to <l> as <type> returns false if no such color is assigned.

Parameters
----------
S: TopoDS_Shape
type: XCAFDoc_ColorType
colorL: TDF_Label

Returns
-------
bool
") GetColor;
		Standard_Boolean GetColor(const TopoDS_Shape & S, const XCAFDoc_ColorType type, TDF_Label & colorL);

		/****************** GetColor ******************/
		/**** md5 signature: ef929cbf533d21d7175ca9bc9612c1dd ****/
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "Returns color assigned to <l> as <type> returns false if no such color is assigned.

Parameters
----------
S: TopoDS_Shape
type: XCAFDoc_ColorType
color: Quantity_Color

Returns
-------
bool
") GetColor;
		Standard_Boolean GetColor(const TopoDS_Shape & S, const XCAFDoc_ColorType type, Quantity_Color & color);

		/****************** GetColor ******************/
		/**** md5 signature: cdaf77e1e7bc9d6efa49735c4dd947da ****/
		%feature("compactdefaultargs") GetColor;
		%feature("autodoc", "Returns color assigned to <l> as <type> returns false if no such color is assigned.

Parameters
----------
S: TopoDS_Shape
type: XCAFDoc_ColorType
color: Quantity_ColorRGBA

Returns
-------
bool
") GetColor;
		Standard_Boolean GetColor(const TopoDS_Shape & S, const XCAFDoc_ColorType type, Quantity_ColorRGBA & color);

		/****************** GetColors ******************/
		/**** md5 signature: 88a4f493497fb4866d576058b5935de4 ****/
		%feature("compactdefaultargs") GetColors;
		%feature("autodoc", "Returns a sequence of colors currently stored in the colortable.

Parameters
----------
Labels: TDF_LabelSequence

Returns
-------
None
") GetColors;
		void GetColors(TDF_LabelSequence & Labels);

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetInstanceColor ******************/
		/**** md5 signature: 855b671c623961258f4be1567b8d227b ****/
		%feature("compactdefaultargs") GetInstanceColor;
		%feature("autodoc", "Gets the color of component that styled with shuo structure returns false if no sush component or color type.

Parameters
----------
theShape: TopoDS_Shape
type: XCAFDoc_ColorType
color: Quantity_Color

Returns
-------
bool
") GetInstanceColor;
		Standard_Boolean GetInstanceColor(const TopoDS_Shape & theShape, const XCAFDoc_ColorType type, Quantity_Color & color);

		/****************** GetInstanceColor ******************/
		/**** md5 signature: 335996aab7ee2b0e53bbff025f43a356 ****/
		%feature("compactdefaultargs") GetInstanceColor;
		%feature("autodoc", "Gets the color of component that styled with shuo structure returns false if no sush component or color type.

Parameters
----------
theShape: TopoDS_Shape
type: XCAFDoc_ColorType
color: Quantity_ColorRGBA

Returns
-------
bool
") GetInstanceColor;
		Standard_Boolean GetInstanceColor(const TopoDS_Shape & theShape, const XCAFDoc_ColorType type, Quantity_ColorRGBA & color);

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** IsColor ******************/
		/**** md5 signature: 6e0c21f53eff58c1dcaea14deac7b42a ****/
		%feature("compactdefaultargs") IsColor;
		%feature("autodoc", "Returns true if label belongs to a colortable and is a color definition.

Parameters
----------
lab: TDF_Label

Returns
-------
bool
") IsColor;
		Standard_Boolean IsColor(const TDF_Label & lab);

		/****************** IsColorByLayer ******************/
		/**** md5 signature: 9a41db2ee797b30e37a3f13d7c16eb4b ****/
		%feature("compactdefaultargs") IsColorByLayer;
		%feature("autodoc", "Return true if object color defined by its layer, false if not.

Parameters
----------
L: TDF_Label

Returns
-------
bool
") IsColorByLayer;
		Standard_Boolean IsColorByLayer(const TDF_Label & L);

		/****************** IsInstanceVisible ******************/
		/**** md5 signature: 6a49fb7f40fed334771e4767ded8f913 ****/
		%feature("compactdefaultargs") IsInstanceVisible;
		%feature("autodoc", "Gets the visibility status of component that styled with shuo structure returns false if no sush component.

Parameters
----------
theShape: TopoDS_Shape

Returns
-------
bool
") IsInstanceVisible;
		Standard_Boolean IsInstanceVisible(const TopoDS_Shape & theShape);

		/****************** IsSet ******************/
		/**** md5 signature: bd9188b0fee55268355c76a167d393b8 ****/
		%feature("compactdefaultargs") IsSet;
		%feature("autodoc", "Returns true if label <l> has a color assignment of the type <type>.

Parameters
----------
L: TDF_Label
type: XCAFDoc_ColorType

Returns
-------
bool
") IsSet;
		Standard_Boolean IsSet(const TDF_Label & L, const XCAFDoc_ColorType type);

		/****************** IsSet ******************/
		/**** md5 signature: 5518d18f8ece6e840bf92ca90d374bde ****/
		%feature("compactdefaultargs") IsSet;
		%feature("autodoc", "Returns true if label <l> has a color assignment of the type <type>.

Parameters
----------
S: TopoDS_Shape
type: XCAFDoc_ColorType

Returns
-------
bool
") IsSet;
		Standard_Boolean IsSet(const TopoDS_Shape & S, const XCAFDoc_ColorType type);

		/****************** IsVisible ******************/
		/**** md5 signature: bcc14ce19df050eb884b5911b48c4b59 ****/
		%feature("compactdefaultargs") IsVisible;
		%feature("autodoc", "Return true if object on this label is visible, false if invisible.

Parameters
----------
L: TDF_Label

Returns
-------
bool
") IsVisible;
		static Standard_Boolean IsVisible(const TDF_Label & L);

		/****************** RemoveColor ******************/
		/**** md5 signature: 3e1749f5696dd21fe53c3eb3d8e77952 ****/
		%feature("compactdefaultargs") RemoveColor;
		%feature("autodoc", "Removes color from the colortable.

Parameters
----------
lab: TDF_Label

Returns
-------
None
") RemoveColor;
		void RemoveColor(const TDF_Label & lab);

		/****************** ReverseChainsOfTreeNodes ******************/
		/**** md5 signature: 1dc7658fc9fe4298f3000009cd052717 ****/
		%feature("compactdefaultargs") ReverseChainsOfTreeNodes;
		%feature("autodoc", "Reverses order in chains of treenodes (from last to first) under each color label since we became to use function ::prepend() instead of ::append() in method setcolor() for acceleration.

Returns
-------
bool
") ReverseChainsOfTreeNodes;
		Standard_Boolean ReverseChainsOfTreeNodes();

		/****************** Set ******************/
		/**** md5 signature: b64dbbaddbab53d4135ce29025f58d74 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Creates (if not exist) colortool.

Parameters
----------
L: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_ColorTool>
") Set;
		static opencascade::handle<XCAFDoc_ColorTool> Set(const TDF_Label & L);

		/****************** SetAutoNaming ******************/
		/**** md5 signature: 7fd38a1b0351965674c506a9a2165e36 ****/
		%feature("compactdefaultargs") SetAutoNaming;
		%feature("autodoc", "See also autonaming().

Parameters
----------
theIsAutoNaming: bool

Returns
-------
None
") SetAutoNaming;
		static void SetAutoNaming(Standard_Boolean theIsAutoNaming);

		/****************** SetColor ******************/
		/**** md5 signature: 88b8899f758e2e2c777de7c0158faf95 ****/
		%feature("compactdefaultargs") SetColor;
		%feature("autodoc", "Sets a link with guid defined by <type> (see xcafdoc::colorrefguid()) from label <l> to color defined by <colorl>. color of shape is defined following way in dependance with type of color. if type of color is xcafdoc_colorgen - then this color defines default color for surfaces and curves. if for shape color with types xcafdoc_colorsurf or xcafdoc_colorcurv is specified then such color overrides generic color.

Parameters
----------
L: TDF_Label
colorL: TDF_Label
type: XCAFDoc_ColorType

Returns
-------
None
") SetColor;
		void SetColor(const TDF_Label & L, const TDF_Label & colorL, const XCAFDoc_ColorType type);

		/****************** SetColor ******************/
		/**** md5 signature: de1be3db1bce601aade3b825ac7d7d34 ****/
		%feature("compactdefaultargs") SetColor;
		%feature("autodoc", "Sets a link with guid defined by <type> (see xcafdoc::colorrefguid()) from label <l> to color <color> in the colortable adds a color as necessary.

Parameters
----------
L: TDF_Label
Color: Quantity_Color
type: XCAFDoc_ColorType

Returns
-------
None
") SetColor;
		void SetColor(const TDF_Label & L, const Quantity_Color & Color, const XCAFDoc_ColorType type);

		/****************** SetColor ******************/
		/**** md5 signature: 34ba97c1dca1aa80a46dddc421bfc6de ****/
		%feature("compactdefaultargs") SetColor;
		%feature("autodoc", "Sets a link with guid defined by <type> (see xcafdoc::colorrefguid()) from label <l> to color <color> in the colortable adds a color as necessary.

Parameters
----------
L: TDF_Label
Color: Quantity_ColorRGBA
type: XCAFDoc_ColorType

Returns
-------
None
") SetColor;
		void SetColor(const TDF_Label & L, const Quantity_ColorRGBA & Color, const XCAFDoc_ColorType type);

		/****************** SetColor ******************/
		/**** md5 signature: 6202598d30ee3d257d39602b69647e2d ****/
		%feature("compactdefaultargs") SetColor;
		%feature("autodoc", "Sets a link with guid defined by <type> (see xcafdoc::colorrefguid()) from label <l> to color defined by <colorl> returns false if cannot find a label for shape s.

Parameters
----------
S: TopoDS_Shape
colorL: TDF_Label
type: XCAFDoc_ColorType

Returns
-------
bool
") SetColor;
		Standard_Boolean SetColor(const TopoDS_Shape & S, const TDF_Label & colorL, const XCAFDoc_ColorType type);

		/****************** SetColor ******************/
		/**** md5 signature: 95860926bf58788e35a7a396dde55626 ****/
		%feature("compactdefaultargs") SetColor;
		%feature("autodoc", "Sets a link with guid defined by <type> (see xcafdoc::colorrefguid()) from label <l> to color <color> in the colortable adds a color as necessary returns false if cannot find a label for shape s.

Parameters
----------
S: TopoDS_Shape
Color: Quantity_Color
type: XCAFDoc_ColorType

Returns
-------
bool
") SetColor;
		Standard_Boolean SetColor(const TopoDS_Shape & S, const Quantity_Color & Color, const XCAFDoc_ColorType type);

		/****************** SetColor ******************/
		/**** md5 signature: 4ca335fb0c83da16bb17e25059a55821 ****/
		%feature("compactdefaultargs") SetColor;
		%feature("autodoc", "Sets a link with guid defined by <type> (see xcafdoc::colorrefguid()) from label <l> to color <color> in the colortable adds a color as necessary returns false if cannot find a label for shape s.

Parameters
----------
S: TopoDS_Shape
Color: Quantity_ColorRGBA
type: XCAFDoc_ColorType

Returns
-------
bool
") SetColor;
		Standard_Boolean SetColor(const TopoDS_Shape & S, const Quantity_ColorRGBA & Color, const XCAFDoc_ColorType type);

		/****************** SetColorByLayer ******************/
		/**** md5 signature: d9336c6979d549e34e959e8c545065d7 ****/
		%feature("compactdefaultargs") SetColorByLayer;
		%feature("autodoc", "Set the color defined by layer flag on label. do nothing if there no any object. set uattribute with corresponding guid.

Parameters
----------
shapeLabel: TDF_Label
isColorByLayer: bool,optional
	default value is Standard_False

Returns
-------
None
") SetColorByLayer;
		void SetColorByLayer(const TDF_Label & shapeLabel, const Standard_Boolean isColorByLayer = Standard_False);

		/****************** SetInstanceColor ******************/
		/**** md5 signature: 38d327350d74a4b50133a2430b830761 ****/
		%feature("compactdefaultargs") SetInstanceColor;
		%feature("autodoc", "Sets the color of component that styled with shuo structure returns false if no sush component found note: create shuo structeure if it is necessary and if <iscreateshuo>.

Parameters
----------
theShape: TopoDS_Shape
type: XCAFDoc_ColorType
color: Quantity_Color
isCreateSHUO: bool,optional
	default value is Standard_True

Returns
-------
bool
") SetInstanceColor;
		Standard_Boolean SetInstanceColor(const TopoDS_Shape & theShape, const XCAFDoc_ColorType type, const Quantity_Color & color, const Standard_Boolean isCreateSHUO = Standard_True);

		/****************** SetInstanceColor ******************/
		/**** md5 signature: ac0db6049ffc048828c50429f2690a69 ****/
		%feature("compactdefaultargs") SetInstanceColor;
		%feature("autodoc", "Sets the color of component that styled with shuo structure returns false if no sush component found note: create shuo structeure if it is necessary and if <iscreateshuo>.

Parameters
----------
theShape: TopoDS_Shape
type: XCAFDoc_ColorType
color: Quantity_ColorRGBA
isCreateSHUO: bool,optional
	default value is Standard_True

Returns
-------
bool
") SetInstanceColor;
		Standard_Boolean SetInstanceColor(const TopoDS_Shape & theShape, const XCAFDoc_ColorType type, const Quantity_ColorRGBA & color, const Standard_Boolean isCreateSHUO = Standard_True);

		/****************** SetVisibility ******************/
		/**** md5 signature: d1a8069667dd5b652068dcdf277ecf70 ****/
		%feature("compactdefaultargs") SetVisibility;
		%feature("autodoc", "Set the visibility of object on label. do nothing if there no any object. set uattribute with corresponding guid.

Parameters
----------
shapeLabel: TDF_Label
isvisible: bool,optional
	default value is Standard_True

Returns
-------
None
") SetVisibility;
		void SetVisibility(const TDF_Label & shapeLabel, const Standard_Boolean isvisible = Standard_True);

		/****************** ShapeTool ******************/
		/**** md5 signature: f3b52ea6763fc2a237d4ce7351722eb2 ****/
		%feature("compactdefaultargs") ShapeTool;
		%feature("autodoc", "Returns internal xcafdoc_shapetool tool.

Returns
-------
opencascade::handle<XCAFDoc_ShapeTool>
") ShapeTool;
		const opencascade::handle<XCAFDoc_ShapeTool> & ShapeTool();

		/****************** UnSetColor ******************/
		/**** md5 signature: 4a350d0cf48724014836220d4bfcc269 ****/
		%feature("compactdefaultargs") UnSetColor;
		%feature("autodoc", "Removes a link with guid defined by <type> (see xcafdoc::colorrefguid()) from label <l> to color.

Parameters
----------
L: TDF_Label
type: XCAFDoc_ColorType

Returns
-------
None
") UnSetColor;
		void UnSetColor(const TDF_Label & L, const XCAFDoc_ColorType type);

		/****************** UnSetColor ******************/
		/**** md5 signature: 6c2c0732be206bf3b137cd978cb72c32 ****/
		%feature("compactdefaultargs") UnSetColor;
		%feature("autodoc", "Removes a link with guid defined by <type> (see xcafdoc::colorrefguid()) from label <l> to color returns true if such link existed.

Parameters
----------
S: TopoDS_Shape
type: XCAFDoc_ColorType

Returns
-------
bool
") UnSetColor;
		Standard_Boolean UnSetColor(const TopoDS_Shape & S, const XCAFDoc_ColorType type);

};


%make_alias(XCAFDoc_ColorTool)

%extend XCAFDoc_ColorTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**********************
* class XCAFDoc_Datum *
**********************/
class XCAFDoc_Datum : public TDF_Attribute {
	public:
		/****************** XCAFDoc_Datum ******************/
		/**** md5 signature: 326721c9f48980ecbf6644f41dc6bb7e ****/
		%feature("compactdefaultargs") XCAFDoc_Datum;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") XCAFDoc_Datum;
		 XCAFDoc_Datum();


            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** GetDescription ******************/
		/**** md5 signature: d57bdeefc6af6dad2fd33af139e84636 ****/
		%feature("compactdefaultargs") GetDescription;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") GetDescription;
		opencascade::handle<TCollection_HAsciiString> GetDescription();

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetIdentification ******************/
		/**** md5 signature: 1c3af0f209cc0a50800473ebb4349206 ****/
		%feature("compactdefaultargs") GetIdentification;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") GetIdentification;
		opencascade::handle<TCollection_HAsciiString> GetIdentification();

		/****************** GetName ******************/
		/**** md5 signature: 23aadc9cd2e3411b58fb02d3fd2db5c9 ****/
		%feature("compactdefaultargs") GetName;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") GetName;
		opencascade::handle<TCollection_HAsciiString> GetName();

		/****************** GetObject ******************/
		/**** md5 signature: 073da452cb43608ac741069c33dbd361 ****/
		%feature("compactdefaultargs") GetObject;
		%feature("autodoc", "Returns dimension object data taken from the paren's label and its sub-labels.

Returns
-------
opencascade::handle<XCAFDimTolObjects_DatumObject>
") GetObject;
		opencascade::handle<XCAFDimTolObjects_DatumObject> GetObject();

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** NewEmpty ******************/
		/**** md5 signature: c6d13c9ecc64c6c803b6e119e8216934 ****/
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TDF_Attribute>
") NewEmpty;
		opencascade::handle<TDF_Attribute> NewEmpty();

		/****************** Paste ******************/
		/**** md5 signature: a6ff306a759c68a191c0262635db980f ****/
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "No available documentation.

Parameters
----------
Into: TDF_Attribute
RT: TDF_RelocationTable

Returns
-------
None
") Paste;
		void Paste(const opencascade::handle<TDF_Attribute> & Into, const opencascade::handle<TDF_RelocationTable> & RT);

		/****************** Restore ******************/
		/**** md5 signature: ddeae219d389a1d89eecb3e23c73522a ****/
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "No available documentation.

Parameters
----------
With: TDF_Attribute

Returns
-------
None
") Restore;
		void Restore(const opencascade::handle<TDF_Attribute> & With);

		/****************** Set ******************/
		/**** md5 signature: abbb0ce2fe8160fc59e48134918705cf ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
label: TDF_Label
aName: TCollection_HAsciiString
aDescription: TCollection_HAsciiString
anIdentification: TCollection_HAsciiString

Returns
-------
opencascade::handle<XCAFDoc_Datum>
") Set;
		static opencascade::handle<XCAFDoc_Datum> Set(const TDF_Label & label, const opencascade::handle<TCollection_HAsciiString> & aName, const opencascade::handle<TCollection_HAsciiString> & aDescription, const opencascade::handle<TCollection_HAsciiString> & anIdentification);

		/****************** Set ******************/
		/**** md5 signature: bc678b4db80f6d228e9f44f33f201a2d ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
theLabel: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_Datum>
") Set;
		static opencascade::handle<XCAFDoc_Datum> Set(const TDF_Label & theLabel);

		/****************** Set ******************/
		/**** md5 signature: 780645a6a8ebebf24a0065db679bc441 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
aName: TCollection_HAsciiString
aDescription: TCollection_HAsciiString
anIdentification: TCollection_HAsciiString

Returns
-------
None
") Set;
		void Set(const opencascade::handle<TCollection_HAsciiString> & aName, const opencascade::handle<TCollection_HAsciiString> & aDescription, const opencascade::handle<TCollection_HAsciiString> & anIdentification);

		/****************** SetObject ******************/
		/**** md5 signature: c6d57e033685bdb838511cff3f60503b ****/
		%feature("compactdefaultargs") SetObject;
		%feature("autodoc", "Updates parent's label and its sub-labels with data taken from thedatumobject. old data associated with the label will be lost.

Parameters
----------
theDatumObject: XCAFDimTolObjects_DatumObject

Returns
-------
None
") SetObject;
		void SetObject(const opencascade::handle<XCAFDimTolObjects_DatumObject> & theDatumObject);

};


%make_alias(XCAFDoc_Datum)

%extend XCAFDoc_Datum {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/***********************
* class XCAFDoc_DimTol *
***********************/
class XCAFDoc_DimTol : public TDF_Attribute {
	public:
		/****************** XCAFDoc_DimTol ******************/
		/**** md5 signature: a81a84fd72551cc64aff08da8be185fa ****/
		%feature("compactdefaultargs") XCAFDoc_DimTol;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") XCAFDoc_DimTol;
		 XCAFDoc_DimTol();


            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** GetDescription ******************/
		/**** md5 signature: d57bdeefc6af6dad2fd33af139e84636 ****/
		%feature("compactdefaultargs") GetDescription;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") GetDescription;
		opencascade::handle<TCollection_HAsciiString> GetDescription();

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetKind ******************/
		/**** md5 signature: 4f9ebeb20b5068c0d63bfd05749d79e7 ****/
		%feature("compactdefaultargs") GetKind;
		%feature("autodoc", "No available documentation.

Returns
-------
int
") GetKind;
		Standard_Integer GetKind();

		/****************** GetName ******************/
		/**** md5 signature: 23aadc9cd2e3411b58fb02d3fd2db5c9 ****/
		%feature("compactdefaultargs") GetName;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") GetName;
		opencascade::handle<TCollection_HAsciiString> GetName();

		/****************** GetVal ******************/
		/**** md5 signature: d23dee5e27a9746b5920bdd1eebbb034 ****/
		%feature("compactdefaultargs") GetVal;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TColStd_HArray1OfReal>
") GetVal;
		opencascade::handle<TColStd_HArray1OfReal> GetVal();

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** NewEmpty ******************/
		/**** md5 signature: c6d13c9ecc64c6c803b6e119e8216934 ****/
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TDF_Attribute>
") NewEmpty;
		opencascade::handle<TDF_Attribute> NewEmpty();

		/****************** Paste ******************/
		/**** md5 signature: a6ff306a759c68a191c0262635db980f ****/
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "No available documentation.

Parameters
----------
Into: TDF_Attribute
RT: TDF_RelocationTable

Returns
-------
None
") Paste;
		void Paste(const opencascade::handle<TDF_Attribute> & Into, const opencascade::handle<TDF_RelocationTable> & RT);

		/****************** Restore ******************/
		/**** md5 signature: ddeae219d389a1d89eecb3e23c73522a ****/
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "No available documentation.

Parameters
----------
With: TDF_Attribute

Returns
-------
None
") Restore;
		void Restore(const opencascade::handle<TDF_Attribute> & With);

		/****************** Set ******************/
		/**** md5 signature: 0e088b45ba43798cbbadf8fb54dc5758 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
label: TDF_Label
kind: int
aVal: TColStd_HArray1OfReal
aName: TCollection_HAsciiString
aDescription: TCollection_HAsciiString

Returns
-------
opencascade::handle<XCAFDoc_DimTol>
") Set;
		static opencascade::handle<XCAFDoc_DimTol> Set(const TDF_Label & label, const Standard_Integer kind, const opencascade::handle<TColStd_HArray1OfReal> & aVal, const opencascade::handle<TCollection_HAsciiString> & aName, const opencascade::handle<TCollection_HAsciiString> & aDescription);

		/****************** Set ******************/
		/**** md5 signature: 005387a155cdf120f6741b0203be001d ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
kind: int
aVal: TColStd_HArray1OfReal
aName: TCollection_HAsciiString
aDescription: TCollection_HAsciiString

Returns
-------
None
") Set;
		void Set(const Standard_Integer kind, const opencascade::handle<TColStd_HArray1OfReal> & aVal, const opencascade::handle<TCollection_HAsciiString> & aName, const opencascade::handle<TCollection_HAsciiString> & aDescription);

};


%make_alias(XCAFDoc_DimTol)

%extend XCAFDoc_DimTol {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/***************************
* class XCAFDoc_DimTolTool *
***************************/
class XCAFDoc_DimTolTool : public TDataStd_GenericEmpty {
	public:
		/****************** XCAFDoc_DimTolTool ******************/
		/**** md5 signature: 2c5641f63aaa759ef0aac01b43f9acd2 ****/
		%feature("compactdefaultargs") XCAFDoc_DimTolTool;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") XCAFDoc_DimTolTool;
		 XCAFDoc_DimTolTool();

		/****************** AddDatum ******************/
		/**** md5 signature: 7b3140f13c362f2900f2e8aeee2b7060 ****/
		%feature("compactdefaultargs") AddDatum;
		%feature("autodoc", "Adds a datum definition to the gd&t table and returns its label.

Parameters
----------
theName: TCollection_HAsciiString
theDescription: TCollection_HAsciiString
theIdentification: TCollection_HAsciiString

Returns
-------
TDF_Label
") AddDatum;
		TDF_Label AddDatum(const opencascade::handle<TCollection_HAsciiString> & theName, const opencascade::handle<TCollection_HAsciiString> & theDescription, const opencascade::handle<TCollection_HAsciiString> & theIdentification);

		/****************** AddDatum ******************/
		/**** md5 signature: 76d11891da7673a63ac64936a722b7dd ****/
		%feature("compactdefaultargs") AddDatum;
		%feature("autodoc", "Adds a datum definition to the gd&t table and returns its label.

Returns
-------
TDF_Label
") AddDatum;
		TDF_Label AddDatum();

		/****************** AddDimTol ******************/
		/**** md5 signature: 33633f3f5990025d285e6d16619c14d9 ****/
		%feature("compactdefaultargs") AddDimTol;
		%feature("autodoc", "Adds a dimension tolerance definition with the specified kind, value, name and description to the gd&t table and returns its label.

Parameters
----------
theKind: int
theVal: TColStd_HArray1OfReal
theName: TCollection_HAsciiString
theDescription: TCollection_HAsciiString

Returns
-------
TDF_Label
") AddDimTol;
		TDF_Label AddDimTol(const Standard_Integer theKind, const opencascade::handle<TColStd_HArray1OfReal> & theVal, const opencascade::handle<TCollection_HAsciiString> & theName, const opencascade::handle<TCollection_HAsciiString> & theDescription);

		/****************** AddDimension ******************/
		/**** md5 signature: 2448da71f93125dbf15e2a84b4a8e8d9 ****/
		%feature("compactdefaultargs") AddDimension;
		%feature("autodoc", "Adds a dimension definition to the gd&t table and returns its label.

Returns
-------
TDF_Label
") AddDimension;
		TDF_Label AddDimension();

		/****************** AddGeomTolerance ******************/
		/**** md5 signature: 45a2568a95679220a38a4de1efabae73 ****/
		%feature("compactdefaultargs") AddGeomTolerance;
		%feature("autodoc", "Adds a geomtolerance definition to the gd&t table and returns its label.

Returns
-------
TDF_Label
") AddGeomTolerance;
		TDF_Label AddGeomTolerance();

		/****************** BaseLabel ******************/
		/**** md5 signature: cb499d8135863e96e585085d0b85c75a ****/
		%feature("compactdefaultargs") BaseLabel;
		%feature("autodoc", "Returns the label under which gd&t table is stored.

Returns
-------
TDF_Label
") BaseLabel;
		TDF_Label BaseLabel();


            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** FindDatum ******************/
		/**** md5 signature: 762e8c713a9968fc10c6079959aeb55a ****/
		%feature("compactdefaultargs") FindDatum;
		%feature("autodoc", "Finds a datum satisfying the specified name, description and identification and returns its label if found.

Parameters
----------
theName: TCollection_HAsciiString
theDescription: TCollection_HAsciiString
theIdentification: TCollection_HAsciiString
lab: TDF_Label

Returns
-------
bool
") FindDatum;
		Standard_Boolean FindDatum(const opencascade::handle<TCollection_HAsciiString> & theName, const opencascade::handle<TCollection_HAsciiString> & theDescription, const opencascade::handle<TCollection_HAsciiString> & theIdentification, TDF_Label & lab);

		/****************** FindDimTol ******************/
		/**** md5 signature: c33247660577a175ffa709d9177abd30 ****/
		%feature("compactdefaultargs") FindDimTol;
		%feature("autodoc", "Finds a dimension tolerance definition in the gd&t table satisfying the specified kind, values, name and description and returns its label if found. returns false if dimension tolerance is not found in dgttable.

Parameters
----------
theKind: int
theVal: TColStd_HArray1OfReal
theName: TCollection_HAsciiString
theDescription: TCollection_HAsciiString
lab: TDF_Label

Returns
-------
bool
") FindDimTol;
		Standard_Boolean FindDimTol(const Standard_Integer theKind, const opencascade::handle<TColStd_HArray1OfReal> & theVal, const opencascade::handle<TCollection_HAsciiString> & theName, const opencascade::handle<TCollection_HAsciiString> & theDescription, TDF_Label & lab);

		/****************** FindDimTol ******************/
		/**** md5 signature: 75daa01afc028c46a100f5a8ef4e3e33 ****/
		%feature("compactdefaultargs") FindDimTol;
		%feature("autodoc", "Finds a dimension tolerance in the gd&t table satisfying the specified kind, values, name and description and returns its label if found (or null label else).

Parameters
----------
theKind: int
theVal: TColStd_HArray1OfReal
theName: TCollection_HAsciiString
theDescription: TCollection_HAsciiString

Returns
-------
TDF_Label
") FindDimTol;
		TDF_Label FindDimTol(const Standard_Integer theKind, const opencascade::handle<TColStd_HArray1OfReal> & theVal, const opencascade::handle<TCollection_HAsciiString> & theName, const opencascade::handle<TCollection_HAsciiString> & theDescription);

		/****************** GetDatum ******************/
		/**** md5 signature: 256371abdbf6af89c728800b68b11970 ****/
		%feature("compactdefaultargs") GetDatum;
		%feature("autodoc", "Returns datum assigned to thedatuml label. returns false if no such datum is assigned.

Parameters
----------
theDatumL: TDF_Label

Returns
-------
theName: TCollection_HAsciiString
theDescription: TCollection_HAsciiString
theIdentification: TCollection_HAsciiString
") GetDatum;
		Standard_Boolean GetDatum(const TDF_Label & theDatumL, opencascade::handle<TCollection_HAsciiString> &OutValue, opencascade::handle<TCollection_HAsciiString> &OutValue, opencascade::handle<TCollection_HAsciiString> &OutValue);

		/****************** GetDatumLabels ******************/
		/**** md5 signature: 55e6de8f484b7fb12b9a45740915465a ****/
		%feature("compactdefaultargs") GetDatumLabels;
		%feature("autodoc", "Returns a sequence of datums currently stored in the gd&t table.

Parameters
----------
Labels: TDF_LabelSequence

Returns
-------
None
") GetDatumLabels;
		void GetDatumLabels(TDF_LabelSequence & Labels);

		/****************** GetDatumOfTolerLabels ******************/
		/**** md5 signature: 581e63a0a9642866e1575d216f9b4d3d ****/
		%feature("compactdefaultargs") GetDatumOfTolerLabels;
		%feature("autodoc", "Returns all datum labels defined for thedimtoll label.

Parameters
----------
theDimTolL: TDF_Label
theDatums: TDF_LabelSequence

Returns
-------
bool
") GetDatumOfTolerLabels;
		static Standard_Boolean GetDatumOfTolerLabels(const TDF_Label & theDimTolL, TDF_LabelSequence & theDatums);

		/****************** GetDatumWithObjectOfTolerLabels ******************/
		/**** md5 signature: d5f3a53d01bb6038ce1c82b7e4989ce4 ****/
		%feature("compactdefaultargs") GetDatumWithObjectOfTolerLabels;
		%feature("autodoc", "Returns all datum labels with xcafdimtolobjects_datumobject defined for label thedimtoll.

Parameters
----------
theDimTolL: TDF_Label
theDatums: TDF_LabelSequence

Returns
-------
bool
") GetDatumWithObjectOfTolerLabels;
		static Standard_Boolean GetDatumWithObjectOfTolerLabels(const TDF_Label & theDimTolL, TDF_LabelSequence & theDatums);

		/****************** GetDimTol ******************/
		/**** md5 signature: 5f2928d077835acfc683c0b7e312ac72 ****/
		%feature("compactdefaultargs") GetDimTol;
		%feature("autodoc", "Returns dimension tolerance assigned to thedimtoll label. returns false if no such dimension tolerance is assigned.

Parameters
----------
theDimTolL: TDF_Label
theVal: TColStd_HArray1OfReal

Returns
-------
theKind: int
theName: TCollection_HAsciiString
theDescription: TCollection_HAsciiString
") GetDimTol;
		Standard_Boolean GetDimTol(const TDF_Label & theDimTolL, Standard_Integer &OutValue, opencascade::handle<TColStd_HArray1OfReal> & theVal, opencascade::handle<TCollection_HAsciiString> &OutValue, opencascade::handle<TCollection_HAsciiString> &OutValue);

		/****************** GetDimTolLabels ******************/
		/**** md5 signature: ecf3558fc2a17c2bcf4c65b55b7aabbc ****/
		%feature("compactdefaultargs") GetDimTolLabels;
		%feature("autodoc", "Returns a sequence of d&gts currently stored in the gd&t table.

Parameters
----------
Labels: TDF_LabelSequence

Returns
-------
None
") GetDimTolLabels;
		void GetDimTolLabels(TDF_LabelSequence & Labels);

		/****************** GetDimensionLabels ******************/
		/**** md5 signature: 504a5e31e966a8a26a5cf90485323ca9 ****/
		%feature("compactdefaultargs") GetDimensionLabels;
		%feature("autodoc", "Returns a sequence of dimension labels currently stored in the gd&t table.

Parameters
----------
theLabels: TDF_LabelSequence

Returns
-------
None
") GetDimensionLabels;
		void GetDimensionLabels(TDF_LabelSequence & theLabels);

		/****************** GetGDTPresentations ******************/
		/**** md5 signature: a26953d21d44fa7d4472494fc996a947 ****/
		%feature("compactdefaultargs") GetGDTPresentations;
		%feature("autodoc", "Fill the map gdt label -> shape presentation .

Parameters
----------
theGDTLabelToShape: NCollection_IndexedDataMap<TDF_Label, TopoDS_Shape, TDF_LabelMapHasher>

Returns
-------
None
") GetGDTPresentations;
		void GetGDTPresentations(NCollection_IndexedDataMap<TDF_Label, TopoDS_Shape, TDF_LabelMapHasher> & theGDTLabelToShape);

		/****************** GetGeomToleranceLabels ******************/
		/**** md5 signature: 2d6c1e791bb5b7a6b1a122177cbe232c ****/
		%feature("compactdefaultargs") GetGeomToleranceLabels;
		%feature("autodoc", "Returns a sequence of tolerance labels currently stored in the gd&t table.

Parameters
----------
theLabels: TDF_LabelSequence

Returns
-------
None
") GetGeomToleranceLabels;
		void GetGeomToleranceLabels(TDF_LabelSequence & theLabels);

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "Returns the standard gd&t tool guid.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetRefDatumLabel ******************/
		/**** md5 signature: 1c1192ac47d0141d94af63ccb7a6d0b3 ****/
		%feature("compactdefaultargs") GetRefDatumLabel;
		%feature("autodoc", "Returns datum label defined for theshapel label.

Parameters
----------
theShapeL: TDF_Label
theDatum: TDF_LabelSequence

Returns
-------
bool
") GetRefDatumLabel;
		Standard_Boolean GetRefDatumLabel(const TDF_Label & theShapeL, TDF_LabelSequence & theDatum);

		/****************** GetRefDimensionLabels ******************/
		/**** md5 signature: ccaeb24b5942a2c91a26dca1537efdde ****/
		%feature("compactdefaultargs") GetRefDimensionLabels;
		%feature("autodoc", "Returns all dimension labels defined for theshapel.

Parameters
----------
theShapeL: TDF_Label
theDimensions: TDF_LabelSequence

Returns
-------
bool
") GetRefDimensionLabels;
		Standard_Boolean GetRefDimensionLabels(const TDF_Label & theShapeL, TDF_LabelSequence & theDimensions);

		/****************** GetRefGeomToleranceLabels ******************/
		/**** md5 signature: 0b42463efe1d71a925e01f3df4baa566 ****/
		%feature("compactdefaultargs") GetRefGeomToleranceLabels;
		%feature("autodoc", "Returns all geomtolerance labels defined for theshapel.

Parameters
----------
theShapeL: TDF_Label
theDimTols: TDF_LabelSequence

Returns
-------
bool
") GetRefGeomToleranceLabels;
		Standard_Boolean GetRefGeomToleranceLabels(const TDF_Label & theShapeL, TDF_LabelSequence & theDimTols);

		/****************** GetRefShapeLabel ******************/
		/**** md5 signature: b09dac51ded70edf3dd23cc545931b1a ****/
		%feature("compactdefaultargs") GetRefShapeLabel;
		%feature("autodoc", "Gets all shape labels referred by thel label of the gd&t table. returns false if there are no shape labels added to the sequences.

Parameters
----------
theL: TDF_Label
theShapeLFirst: TDF_LabelSequence
theShapeLSecond: TDF_LabelSequence

Returns
-------
bool
") GetRefShapeLabel;
		static Standard_Boolean GetRefShapeLabel(const TDF_Label & theL, TDF_LabelSequence & theShapeLFirst, TDF_LabelSequence & theShapeLSecond);

		/****************** GetTolerOfDatumLabels ******************/
		/**** md5 signature: b4d4047d58bcf3d1d31d5586d788da7e ****/
		%feature("compactdefaultargs") GetTolerOfDatumLabels;
		%feature("autodoc", "Returns all geomtoleranses labels defined for thedatuml label.

Parameters
----------
theDatumL: TDF_Label
theTols: TDF_LabelSequence

Returns
-------
bool
") GetTolerOfDatumLabels;
		Standard_Boolean GetTolerOfDatumLabels(const TDF_Label & theDatumL, TDF_LabelSequence & theTols);

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** IsDatum ******************/
		/**** md5 signature: f9fc66216884062aee57e82b99e0c430 ****/
		%feature("compactdefaultargs") IsDatum;
		%feature("autodoc", "Returns true if label belongs to the gd&t table and is a datum definition.

Parameters
----------
lab: TDF_Label

Returns
-------
bool
") IsDatum;
		Standard_Boolean IsDatum(const TDF_Label & lab);

		/****************** IsDimTol ******************/
		/**** md5 signature: 6164fb606ba8e8ce39ae03de78b256df ****/
		%feature("compactdefaultargs") IsDimTol;
		%feature("autodoc", "Returns true if thelab belongs to the gd&t table and is a dmension tolerance.

Parameters
----------
theLab: TDF_Label

Returns
-------
bool
") IsDimTol;
		Standard_Boolean IsDimTol(const TDF_Label & theLab);

		/****************** IsDimension ******************/
		/**** md5 signature: d2e9be167d5876d235dfbae78e178c74 ****/
		%feature("compactdefaultargs") IsDimension;
		%feature("autodoc", "Returns true if the label belongs to a gd&t table and is a dimension definition.

Parameters
----------
theLab: TDF_Label

Returns
-------
bool
") IsDimension;
		Standard_Boolean IsDimension(const TDF_Label & theLab);

		/****************** IsGeomTolerance ******************/
		/**** md5 signature: f1752001ac406fe776100c60515d2afc ****/
		%feature("compactdefaultargs") IsGeomTolerance;
		%feature("autodoc", "Returns true if the label belongs to the gd&t table and is a dimension tolerance.

Parameters
----------
theLab: TDF_Label

Returns
-------
bool
") IsGeomTolerance;
		Standard_Boolean IsGeomTolerance(const TDF_Label & theLab);

		/****************** IsLocked ******************/
		/**** md5 signature: 525167f6a33772eba368f6db8d245b08 ****/
		%feature("compactdefaultargs") IsLocked;
		%feature("autodoc", "Returns true if the given gdt is marked as locked.

Parameters
----------
theViewL: TDF_Label

Returns
-------
bool
") IsLocked;
		Standard_Boolean IsLocked(const TDF_Label & theViewL);

		/****************** Lock ******************/
		/**** md5 signature: 44e08eb297c1fac0353895828de43f48 ****/
		%feature("compactdefaultargs") Lock;
		%feature("autodoc", "Mark the given gdt as locked.

Parameters
----------
theViewL: TDF_Label

Returns
-------
None
") Lock;
		void Lock(const TDF_Label & theViewL);

		/****************** Set ******************/
		/**** md5 signature: fb1eaa4ca2f6c7d90fe59b7b29cc9a0b ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Creates (if not exist) dimtoltool attribute.

Parameters
----------
L: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_DimTolTool>
") Set;
		static opencascade::handle<XCAFDoc_DimTolTool> Set(const TDF_Label & L);

		/****************** SetDatum ******************/
		/**** md5 signature: 620d2e7e5ea6dd4cee301423d2e90f70 ****/
		%feature("compactdefaultargs") SetDatum;
		%feature("autodoc", "Sets a datum to the sequence of shape labels.

Parameters
----------
theShapeLabels: TDF_LabelSequence
theDatumL: TDF_Label

Returns
-------
None
") SetDatum;
		void SetDatum(const TDF_LabelSequence & theShapeLabels, const TDF_Label & theDatumL);

		/****************** SetDatum ******************/
		/**** md5 signature: d982af1bc9dd960ae3ae8d920d54dad2 ****/
		%feature("compactdefaultargs") SetDatum;
		%feature("autodoc", "Sets a datum to thel label and binds it with thetolerl label. a datum with the specified name, description and identification is created if it isn't found in the gd&t table.

Parameters
----------
theL: TDF_Label
theTolerL: TDF_Label
theName: TCollection_HAsciiString
theDescription: TCollection_HAsciiString
theIdentification: TCollection_HAsciiString

Returns
-------
None
") SetDatum;
		void SetDatum(const TDF_Label & theL, const TDF_Label & theTolerL, const opencascade::handle<TCollection_HAsciiString> & theName, const opencascade::handle<TCollection_HAsciiString> & theDescription, const opencascade::handle<TCollection_HAsciiString> & theIdentification);

		/****************** SetDatumToGeomTol ******************/
		/**** md5 signature: db27d085af9240574d7b342aaecc9c83 ****/
		%feature("compactdefaultargs") SetDatumToGeomTol;
		%feature("autodoc", "Sets a datum from thedatuml label to thetoletl label.

Parameters
----------
theDatumL: TDF_Label
theTolerL: TDF_Label

Returns
-------
None
") SetDatumToGeomTol;
		void SetDatumToGeomTol(const TDF_Label & theDatumL, const TDF_Label & theTolerL);

		/****************** SetDimTol ******************/
		/**** md5 signature: 38322484baaaf45bd1c89d9c7b1799d0 ****/
		%feature("compactdefaultargs") SetDimTol;
		%feature("autodoc", "Sets existing dimension tolerance to thel label.

Parameters
----------
theL: TDF_Label
theDimTolL: TDF_Label

Returns
-------
None
") SetDimTol;
		void SetDimTol(const TDF_Label & theL, const TDF_Label & theDimTolL);

		/****************** SetDimTol ******************/
		/**** md5 signature: 657747002dc09194625a31ab74d997c9 ****/
		%feature("compactdefaultargs") SetDimTol;
		%feature("autodoc", "Creates a dimension tolerance and sets it to thel label.

Parameters
----------
theL: TDF_Label
theKind: int
theVal: TColStd_HArray1OfReal
theName: TCollection_HAsciiString
theDescription: TCollection_HAsciiString

Returns
-------
TDF_Label
") SetDimTol;
		TDF_Label SetDimTol(const TDF_Label & theL, const Standard_Integer theKind, const opencascade::handle<TColStd_HArray1OfReal> & theVal, const opencascade::handle<TCollection_HAsciiString> & theName, const opencascade::handle<TCollection_HAsciiString> & theDescription);

		/****************** SetDimension ******************/
		/**** md5 signature: aeacf2e8d43dbbe31b48269f71752074 ****/
		%feature("compactdefaultargs") SetDimension;
		%feature("autodoc", "Sets a dimension to sequences target labels.

Parameters
----------
theFirstLS: TDF_LabelSequence
theSecondLS: TDF_LabelSequence
theDimL: TDF_Label

Returns
-------
None
") SetDimension;
		void SetDimension(const TDF_LabelSequence & theFirstLS, const TDF_LabelSequence & theSecondLS, const TDF_Label & theDimL);

		/****************** SetDimension ******************/
		/**** md5 signature: 195e81604b6cf3cc5c4843b69ed128bb ****/
		%feature("compactdefaultargs") SetDimension;
		%feature("autodoc", "Sets a dimension to target labels.

Parameters
----------
theFirstL: TDF_Label
theSecondL: TDF_Label
theDimL: TDF_Label

Returns
-------
None
") SetDimension;
		void SetDimension(const TDF_Label & theFirstL, const TDF_Label & theSecondL, const TDF_Label & theDimL);

		/****************** SetDimension ******************/
		/**** md5 signature: d6ad33b3ad7394b9a483ba06cdd9c78b ****/
		%feature("compactdefaultargs") SetDimension;
		%feature("autodoc", "Sets a dimension to the target label.

Parameters
----------
theL: TDF_Label
theDimL: TDF_Label

Returns
-------
None
") SetDimension;
		void SetDimension(const TDF_Label & theL, const TDF_Label & theDimL);

		/****************** SetGDTPresentations ******************/
		/**** md5 signature: d4e6966638f7a6a582773b37cdf58473 ****/
		%feature("compactdefaultargs") SetGDTPresentations;
		%feature("autodoc", "Set shape presentation for gdt labels according to given map (thegdtlabeltoprs) thegdtlabeltoprsname map is an additional argument, can be used to set presentation names. if label is not in the thegdtlabeltoprsname map, the presentation name will be empty.

Parameters
----------
theGDTLabelToPrs: NCollection_IndexedDataMap<TDF_Label, TopoDS_Shape, TDF_LabelMapHasher>

Returns
-------
None
") SetGDTPresentations;
		void SetGDTPresentations(NCollection_IndexedDataMap<TDF_Label, TopoDS_Shape, TDF_LabelMapHasher> & theGDTLabelToPrs);

		/****************** SetGeomTolerance ******************/
		/**** md5 signature: 58ad83a4333f88636ad5771b734333df ****/
		%feature("compactdefaultargs") SetGeomTolerance;
		%feature("autodoc", "Sets a geometry tolerance from thegeomtoll to thel label. checks if thegeomtoll is a geometry tolerance definition first.

Parameters
----------
theL: TDF_Label
theGeomTolL: TDF_Label

Returns
-------
None
") SetGeomTolerance;
		void SetGeomTolerance(const TDF_Label & theL, const TDF_Label & theGeomTolL);

		/****************** SetGeomTolerance ******************/
		/**** md5 signature: f258891382dacd68c36f7ec08b321562 ****/
		%feature("compactdefaultargs") SetGeomTolerance;
		%feature("autodoc", "Sets a geometry tolerance from thegeomtoll to sequence of labels thel. checks if thegeomtoll is a geometry tolerance definition first.

Parameters
----------
theL: TDF_LabelSequence
theGeomTolL: TDF_Label

Returns
-------
None
") SetGeomTolerance;
		void SetGeomTolerance(const TDF_LabelSequence & theL, const TDF_Label & theGeomTolL);

		/****************** ShapeTool ******************/
		/**** md5 signature: f3b52ea6763fc2a237d4ce7351722eb2 ****/
		%feature("compactdefaultargs") ShapeTool;
		%feature("autodoc", "Returns internal xcafdoc_shapetool tool.

Returns
-------
opencascade::handle<XCAFDoc_ShapeTool>
") ShapeTool;
		const opencascade::handle<XCAFDoc_ShapeTool> & ShapeTool();

		/****************** Unlock ******************/
		/**** md5 signature: 47087adf5c901031f9be4fa4e9008a89 ****/
		%feature("compactdefaultargs") Unlock;
		%feature("autodoc", "Unlock the given gdt.

Parameters
----------
theViewL: TDF_Label

Returns
-------
None
") Unlock;
		void Unlock(const TDF_Label & theViewL);

};


%make_alias(XCAFDoc_DimTolTool)

%extend XCAFDoc_DimTolTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**************************
* class XCAFDoc_Dimension *
**************************/
class XCAFDoc_Dimension : public TDataStd_GenericEmpty {
	public:
		/****************** XCAFDoc_Dimension ******************/
		/**** md5 signature: 2f99c63c2afe4a9019d4297ed13fc8e7 ****/
		%feature("compactdefaultargs") XCAFDoc_Dimension;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") XCAFDoc_Dimension;
		 XCAFDoc_Dimension();


            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetObject ******************/
		/**** md5 signature: 4fbe8acda838943eb7ecc2a85c52a164 ****/
		%feature("compactdefaultargs") GetObject;
		%feature("autodoc", "Returns dimension object data taken from the parent's label and its sub-labels.

Returns
-------
opencascade::handle<XCAFDimTolObjects_DimensionObject>
") GetObject;
		opencascade::handle<XCAFDimTolObjects_DimensionObject> GetObject();

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** Set ******************/
		/**** md5 signature: e8759c5f34d978e2ceb6df9a8d290445 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
theLabel: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_Dimension>
") Set;
		static opencascade::handle<XCAFDoc_Dimension> Set(const TDF_Label & theLabel);

		/****************** SetObject ******************/
		/**** md5 signature: 95b72ce55fc506acef34593949ecd306 ****/
		%feature("compactdefaultargs") SetObject;
		%feature("autodoc", "Updates parent's label and its sub-labels with data taken from thedimensionobject. old data associated with the label will be lost.

Parameters
----------
theDimensionObject: XCAFDimTolObjects_DimensionObject

Returns
-------
None
") SetObject;
		void SetObject(const opencascade::handle<XCAFDimTolObjects_DimensionObject> & theDimensionObject);

};


%make_alias(XCAFDoc_Dimension)

%extend XCAFDoc_Dimension {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*****************************
* class XCAFDoc_DocumentTool *
*****************************/
class XCAFDoc_DocumentTool : public TDataStd_GenericEmpty {
	public:
		/****************** XCAFDoc_DocumentTool ******************/
		/**** md5 signature: 1abef24785b933429a4a476444f0ca17 ****/
		%feature("compactdefaultargs") XCAFDoc_DocumentTool;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") XCAFDoc_DocumentTool;
		 XCAFDoc_DocumentTool();

		/****************** AfterRetrieval ******************/
		/**** md5 signature: 64d86db498a6796b75d057eb0b1ce0d7 ****/
		%feature("compactdefaultargs") AfterRetrieval;
		%feature("autodoc", "To init this derived attribute after the attribute restore using the base restore-methods.

Parameters
----------
forceIt: bool,optional
	default value is Standard_False

Returns
-------
bool
") AfterRetrieval;
		Standard_Boolean AfterRetrieval(const Standard_Boolean forceIt = Standard_False);

		/****************** CheckClippingPlaneTool ******************/
		/**** md5 signature: 5ac400db795bc76289a32a0abdf334f5 ****/
		%feature("compactdefaultargs") CheckClippingPlaneTool;
		%feature("autodoc", "Checks for the clippingplanetool attribute on the label's document returns true if tool exists, else if it has not been created.

Parameters
----------
theAcces: TDF_Label

Returns
-------
bool
") CheckClippingPlaneTool;
		static Standard_Boolean CheckClippingPlaneTool(const TDF_Label & theAcces);

		/****************** CheckColorTool ******************/
		/**** md5 signature: 660635f7484fab169bc26e9088f3994a ****/
		%feature("compactdefaultargs") CheckColorTool;
		%feature("autodoc", "Checks for the colortool attribute on the label's document returns true if tool exists, else if it has not been created.

Parameters
----------
theAcces: TDF_Label

Returns
-------
bool
") CheckColorTool;
		static Standard_Boolean CheckColorTool(const TDF_Label & theAcces);

		/****************** CheckDimTolTool ******************/
		/**** md5 signature: 0bf5426f0f4ae7da5037784f05bf99b7 ****/
		%feature("compactdefaultargs") CheckDimTolTool;
		%feature("autodoc", "Checks for the dimtoltool attribute on the label's document returns true if tool exists, else if it has not been created.

Parameters
----------
theAcces: TDF_Label

Returns
-------
bool
") CheckDimTolTool;
		static Standard_Boolean CheckDimTolTool(const TDF_Label & theAcces);

		/****************** CheckLayerTool ******************/
		/**** md5 signature: d3d227fbba8fe850226811ce58abb271 ****/
		%feature("compactdefaultargs") CheckLayerTool;
		%feature("autodoc", "Checks for the layertool attribute on the label's document returns true if tool exists, else if it has not been created.

Parameters
----------
theAcces: TDF_Label

Returns
-------
bool
") CheckLayerTool;
		static Standard_Boolean CheckLayerTool(const TDF_Label & theAcces);

		/****************** CheckMaterialTool ******************/
		/**** md5 signature: 03a5fa0271f0560259fc992158faa2f5 ****/
		%feature("compactdefaultargs") CheckMaterialTool;
		%feature("autodoc", "Checks for the materialtool attribute on the label's document returns true if tool exists, else if it has not been created.

Parameters
----------
theAcces: TDF_Label

Returns
-------
bool
") CheckMaterialTool;
		static Standard_Boolean CheckMaterialTool(const TDF_Label & theAcces);

		/****************** CheckNotesTool ******************/
		/**** md5 signature: 1ee3ef9d6e3d459846177d7abd63bdf4 ****/
		%feature("compactdefaultargs") CheckNotesTool;
		%feature("autodoc", "Checks for the notestool attribute on the label's document returns true if tool exists, else if it has not been created.

Parameters
----------
theAcces: TDF_Label

Returns
-------
bool
") CheckNotesTool;
		static Standard_Boolean CheckNotesTool(const TDF_Label & theAcces);

		/****************** CheckShapeTool ******************/
		/**** md5 signature: f136e0c142bde10b026f24cb004968b9 ****/
		%feature("compactdefaultargs") CheckShapeTool;
		%feature("autodoc", "Checks for the shapetool attribute on the label's document returns true if tool exists, else if it has not been created.

Parameters
----------
theAcces: TDF_Label

Returns
-------
bool
") CheckShapeTool;
		static Standard_Boolean CheckShapeTool(const TDF_Label & theAcces);

		/****************** CheckViewTool ******************/
		/**** md5 signature: 93bf0d9b8a865d2506083f67f2f1054f ****/
		%feature("compactdefaultargs") CheckViewTool;
		%feature("autodoc", "Checks for the viewtool attribute on the label's document returns true if tool exists, else if it has not been created.

Parameters
----------
theAcces: TDF_Label

Returns
-------
bool
") CheckViewTool;
		static Standard_Boolean CheckViewTool(const TDF_Label & theAcces);

		/****************** CheckVisMaterialTool ******************/
		/**** md5 signature: 89d82113ddadc435dd5120cce04e9706 ****/
		%feature("compactdefaultargs") CheckVisMaterialTool;
		%feature("autodoc", "Checks for the vismaterialtool attribute on the label's document returns true if tool exists, else if it has not been created.

Parameters
----------
theAcces: TDF_Label

Returns
-------
bool
") CheckVisMaterialTool;
		static Standard_Boolean CheckVisMaterialTool(const TDF_Label & theAcces);

		/****************** ClippingPlaneTool ******************/
		/**** md5 signature: 10db4cdb3c6c63d4b8a63936644512e6 ****/
		%feature("compactdefaultargs") ClippingPlaneTool;
		%feature("autodoc", "Creates (if it does not exist) clippingplanetool attribute on clippingplaneslabel().

Parameters
----------
acces: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_ClippingPlaneTool>
") ClippingPlaneTool;
		static opencascade::handle<XCAFDoc_ClippingPlaneTool> ClippingPlaneTool(const TDF_Label & acces);

		/****************** ClippingPlanesLabel ******************/
		/**** md5 signature: 5b7c2ced1060d0932b5d1e5e0ecd5f81 ****/
		%feature("compactdefaultargs") ClippingPlanesLabel;
		%feature("autodoc", "Returns sub-label of doclabel() with tag 8.

Parameters
----------
acces: TDF_Label

Returns
-------
TDF_Label
") ClippingPlanesLabel;
		static TDF_Label ClippingPlanesLabel(const TDF_Label & acces);

		/****************** ColorTool ******************/
		/**** md5 signature: d3c0054b10912f448673053243c3c346 ****/
		%feature("compactdefaultargs") ColorTool;
		%feature("autodoc", "Creates (if it does not exist) colortool attribute on colorslabel().

Parameters
----------
acces: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_ColorTool>
") ColorTool;
		static opencascade::handle<XCAFDoc_ColorTool> ColorTool(const TDF_Label & acces);

		/****************** ColorsLabel ******************/
		/**** md5 signature: e23e6d491f1947ea83faba361eb41fc1 ****/
		%feature("compactdefaultargs") ColorsLabel;
		%feature("autodoc", "Returns sub-label of doclabel() with tag 2.

Parameters
----------
acces: TDF_Label

Returns
-------
TDF_Label
") ColorsLabel;
		static TDF_Label ColorsLabel(const TDF_Label & acces);

		/****************** DGTsLabel ******************/
		/**** md5 signature: d4e8164cc4fda6d66464f0535ee644fe ****/
		%feature("compactdefaultargs") DGTsLabel;
		%feature("autodoc", "Returns sub-label of doclabel() with tag 4.

Parameters
----------
acces: TDF_Label

Returns
-------
TDF_Label
") DGTsLabel;
		static TDF_Label DGTsLabel(const TDF_Label & acces);

		/****************** DimTolTool ******************/
		/**** md5 signature: d1466e8aeae874db80fe131cd897eb31 ****/
		%feature("compactdefaultargs") DimTolTool;
		%feature("autodoc", "Creates (if it does not exist) dimtoltool attribute on dgtslabel().

Parameters
----------
acces: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_DimTolTool>
") DimTolTool;
		static opencascade::handle<XCAFDoc_DimTolTool> DimTolTool(const TDF_Label & acces);

		/****************** DocLabel ******************/
		/**** md5 signature: 3f2fe08c41b68def128f86c32d38b346 ****/
		%feature("compactdefaultargs") DocLabel;
		%feature("autodoc", "Returns label where the documenttool attribute is or 0.1 if documenttool is not yet set.

Parameters
----------
acces: TDF_Label

Returns
-------
TDF_Label
") DocLabel;
		static TDF_Label DocLabel(const TDF_Label & acces);

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetLengthUnit ******************/
		/**** md5 signature: a78d3cb40d43e699eaae3d784020542b ****/
		%feature("compactdefaultargs") GetLengthUnit;
		%feature("autodoc", "Returns value of current internal unit for the document converted to base unit type.

Parameters
----------
theDoc: TDocStd_Document
theBaseUnit: UnitsMethods_LengthUnit

Returns
-------
theResut: float
") GetLengthUnit;
		static Standard_Boolean GetLengthUnit(const opencascade::handle<TDocStd_Document> & theDoc, Standard_Real &OutValue, const UnitsMethods_LengthUnit theBaseUnit);

		/****************** GetLengthUnit ******************/
		/**** md5 signature: a1cc428a47258c7b442ac5238dc362a5 ****/
		%feature("compactdefaultargs") GetLengthUnit;
		%feature("autodoc", "Returns value of current internal unit for the document in meter.

Parameters
----------
theDoc: TDocStd_Document

Returns
-------
theResut: float
") GetLengthUnit;
		static Standard_Boolean GetLengthUnit(const opencascade::handle<TDocStd_Document> & theDoc, Standard_Real &OutValue);

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** Init ******************/
		/**** md5 signature: 5c8b420ee9c456c5fe5ca5ec600af54c ****/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "To be called when reading this attribute from file.

Returns
-------
None
") Init;
		void Init();

		/****************** IsXCAFDocument ******************/
		/**** md5 signature: 71845c88f1c5a077b07fac764551f8cc ****/
		%feature("compactdefaultargs") IsXCAFDocument;
		%feature("autodoc", "No available documentation.

Parameters
----------
Doc: TDocStd_Document

Returns
-------
bool
") IsXCAFDocument;
		static Standard_Boolean IsXCAFDocument(const opencascade::handle<TDocStd_Document> & Doc);

		/****************** LayerTool ******************/
		/**** md5 signature: 69adf92e6bb0c252d5ffef6f5b5a2adb ****/
		%feature("compactdefaultargs") LayerTool;
		%feature("autodoc", "Creates (if it does not exist) layertool attribute on layerslabel().

Parameters
----------
acces: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_LayerTool>
") LayerTool;
		static opencascade::handle<XCAFDoc_LayerTool> LayerTool(const TDF_Label & acces);

		/****************** LayersLabel ******************/
		/**** md5 signature: 736a64053b934f8122bdb4a1fbb56010 ****/
		%feature("compactdefaultargs") LayersLabel;
		%feature("autodoc", "Returns sub-label of doclabel() with tag 3.

Parameters
----------
acces: TDF_Label

Returns
-------
TDF_Label
") LayersLabel;
		static TDF_Label LayersLabel(const TDF_Label & acces);

		/****************** MaterialTool ******************/
		/**** md5 signature: 5807def30a6152d99b7f839e854c5742 ****/
		%feature("compactdefaultargs") MaterialTool;
		%feature("autodoc", "Creates (if it does not exist) dimtoltool attribute on dgtslabel().

Parameters
----------
acces: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_MaterialTool>
") MaterialTool;
		static opencascade::handle<XCAFDoc_MaterialTool> MaterialTool(const TDF_Label & acces);

		/****************** MaterialsLabel ******************/
		/**** md5 signature: 528074efc4484c95c9f9404e5c4e7a9a ****/
		%feature("compactdefaultargs") MaterialsLabel;
		%feature("autodoc", "Returns sub-label of doclabel() with tag 5.

Parameters
----------
acces: TDF_Label

Returns
-------
TDF_Label
") MaterialsLabel;
		static TDF_Label MaterialsLabel(const TDF_Label & acces);

		/****************** NotesLabel ******************/
		/**** md5 signature: e008bd46ff239db30ba9453034fc580b ****/
		%feature("compactdefaultargs") NotesLabel;
		%feature("autodoc", "Returns sub-label of doclabel() with tag 9.

Parameters
----------
acces: TDF_Label

Returns
-------
TDF_Label
") NotesLabel;
		static TDF_Label NotesLabel(const TDF_Label & acces);

		/****************** NotesTool ******************/
		/**** md5 signature: 73cd9c9db561cfa07b4f78d1cb4b624c ****/
		%feature("compactdefaultargs") NotesTool;
		%feature("autodoc", "Creates (if it does not exist) notestool attribute on noteslabel().

Parameters
----------
acces: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_NotesTool>
") NotesTool;
		static opencascade::handle<XCAFDoc_NotesTool> NotesTool(const TDF_Label & acces);

		/****************** Set ******************/
		/**** md5 signature: c5a760c0b9d0ee3da7b5ef3d4911fff3 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Create (if not exist) documenttool attribute on 0.1 label if <isacces> is true, else on <l> label. this label will be returned by doclabel(); if the attribute is already set it won't be reset on <l> even if <isacces> is false. colortool and shapetool attributes are also set by this method.

Parameters
----------
L: TDF_Label
IsAcces: bool,optional
	default value is Standard_True

Returns
-------
opencascade::handle<XCAFDoc_DocumentTool>
") Set;
		static opencascade::handle<XCAFDoc_DocumentTool> Set(const TDF_Label & L, const Standard_Boolean IsAcces = Standard_True);

		/****************** SetLengthUnit ******************/
		/**** md5 signature: 32c628012b28a6681470c3cdf3ff49de ****/
		%feature("compactdefaultargs") SetLengthUnit;
		%feature("autodoc", "Sets value of current internal unit to the document in meter.

Parameters
----------
theDoc: TDocStd_Document
theUnitValue: float

Returns
-------
None
") SetLengthUnit;
		static void SetLengthUnit(const opencascade::handle<TDocStd_Document> & theDoc, const Standard_Real theUnitValue);

		/****************** SetLengthUnit ******************/
		/**** md5 signature: 1a04f9d02d600f3c79dd760366c246bb ****/
		%feature("compactdefaultargs") SetLengthUnit;
		%feature("autodoc", "Sets value of current internal unit to the document @param theunitvalue must be represented in the base unit type.

Parameters
----------
theDoc: TDocStd_Document
theUnitValue: float
theBaseUnit: UnitsMethods_LengthUnit

Returns
-------
None
") SetLengthUnit;
		static void SetLengthUnit(const opencascade::handle<TDocStd_Document> & theDoc, const Standard_Real theUnitValue, const UnitsMethods_LengthUnit theBaseUnit);

		/****************** ShapeTool ******************/
		/**** md5 signature: 8e94f9cf40c103af90fc51fe6aebf09f ****/
		%feature("compactdefaultargs") ShapeTool;
		%feature("autodoc", "Creates (if it does not exist) shapetool attribute on shapeslabel().

Parameters
----------
acces: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_ShapeTool>
") ShapeTool;
		static opencascade::handle<XCAFDoc_ShapeTool> ShapeTool(const TDF_Label & acces);

		/****************** ShapesLabel ******************/
		/**** md5 signature: 72018a6459d2ee439837a4dfcab76a41 ****/
		%feature("compactdefaultargs") ShapesLabel;
		%feature("autodoc", "Returns sub-label of doclabel() with tag 1.

Parameters
----------
acces: TDF_Label

Returns
-------
TDF_Label
") ShapesLabel;
		static TDF_Label ShapesLabel(const TDF_Label & acces);

		/****************** ViewTool ******************/
		/**** md5 signature: 15975daf16f7afba4900e61b6fb4c808 ****/
		%feature("compactdefaultargs") ViewTool;
		%feature("autodoc", "Creates (if it does not exist) viewtool attribute on viewslabel().

Parameters
----------
acces: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_ViewTool>
") ViewTool;
		static opencascade::handle<XCAFDoc_ViewTool> ViewTool(const TDF_Label & acces);

		/****************** ViewsLabel ******************/
		/**** md5 signature: 5a81b215e7e769e498fa8526eb262542 ****/
		%feature("compactdefaultargs") ViewsLabel;
		%feature("autodoc", "Returns sub-label of doclabel() with tag 7.

Parameters
----------
acces: TDF_Label

Returns
-------
TDF_Label
") ViewsLabel;
		static TDF_Label ViewsLabel(const TDF_Label & acces);

		/****************** VisMaterialLabel ******************/
		/**** md5 signature: aa97b0800d16da0cd7711258f1341b2e ****/
		%feature("compactdefaultargs") VisMaterialLabel;
		%feature("autodoc", "Returns sub-label of doclabel() with tag 10.

Parameters
----------
theLabel: TDF_Label

Returns
-------
TDF_Label
") VisMaterialLabel;
		static TDF_Label VisMaterialLabel(const TDF_Label & theLabel);

		/****************** VisMaterialTool ******************/
		/**** md5 signature: b8eef964f42cbc7ca9b1f5ddea81ec3e ****/
		%feature("compactdefaultargs") VisMaterialTool;
		%feature("autodoc", "Creates (if it does not exist) xcafdoc_vismaterialtool attribute on vismateriallabel(). should not be confused with materialtool() defining physical/manufacturing materials.

Parameters
----------
theLabel: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_VisMaterialTool>
") VisMaterialTool;
		static opencascade::handle<XCAFDoc_VisMaterialTool> VisMaterialTool(const TDF_Label & theLabel);

};


%make_alias(XCAFDoc_DocumentTool)

%extend XCAFDoc_DocumentTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/***********************
* class XCAFDoc_Editor *
***********************/
class XCAFDoc_Editor {
	public:
		/****************** CloneMetaData ******************/
		/**** md5 signature: f14c3cbe68eca94b9d5e52b084993a7e ****/
		%feature("compactdefaultargs") CloneMetaData;
		%feature("autodoc", "Copies metadata contains from the source label to the destination label. protected against creating a new label for non-existent tools @param[in] thesrclabel original label to copy from @param[in] thedstlabel destination shape label to set attributes @param[in] thevismatmap relating map of the original vismaterial and created. can be null for the same document @param[in] thetocopycolor copying visible value and shape color (handled all color type) @param[in] thetocopylayer copying layer @param[in] thetocopymaterial copying material @param[in] thetocopyvismaterial copying visual material @param[in] thetocopyattributes copying of other node attributes, for example, a shape's property.

Parameters
----------
theSrcLabel: TDF_Label
theDstLabel: TDF_Label
theVisMatMap: XCAFDoc_VisMaterial
theToCopyColor: bool,optional
	default value is Standard_True
theToCopyLayer: bool,optional
	default value is Standard_True
theToCopyMaterial: bool,optional
	default value is Standard_True
theToCopyVisMaterial: bool,optional
	default value is Standard_True
theToCopyAttributes: bool,optional
	default value is Standard_True

Returns
-------
None
") CloneMetaData;
		static void CloneMetaData(const TDF_Label & theSrcLabel, const TDF_Label & theDstLabel, NCollection_DataMap<opencascade::handle<XCAFDoc_VisMaterial>, opencascade::handle<XCAFDoc_VisMaterial> > * theVisMatMap, const Standard_Boolean theToCopyColor = Standard_True, const Standard_Boolean theToCopyLayer = Standard_True, const Standard_Boolean theToCopyMaterial = Standard_True, const Standard_Boolean theToCopyVisMaterial = Standard_True, const Standard_Boolean theToCopyAttributes = Standard_True);

		/****************** CloneShapeLabel ******************/
		/**** md5 signature: fe8d3ddece674e5cfd912302a879c99f ****/
		%feature("compactdefaultargs") CloneShapeLabel;
		%feature("autodoc", "Copies shapes label with keeping of shape structure (recursively) @param[in] thesrclabel original label to copy from @param[in] thesrcshapetool shape tool to get @param[in] thedstshapetool shape tool to set @param[out] themap relating map of the original shapes label and labels created from them returns result shape label.

Parameters
----------
theSrcLabel: TDF_Label
theSrcShapeTool: XCAFDoc_ShapeTool
theDstShapeTool: XCAFDoc_ShapeTool
theMap: TDF_LabelDataMap

Returns
-------
TDF_Label
") CloneShapeLabel;
		static TDF_Label CloneShapeLabel(const TDF_Label & theSrcLabel, const opencascade::handle<XCAFDoc_ShapeTool> & theSrcShapeTool, const opencascade::handle<XCAFDoc_ShapeTool> & theDstShapeTool, TDF_LabelDataMap & theMap);

		/****************** Expand ******************/
		/**** md5 signature: a02579f48f2e6aeceff5c0a438adac69 ****/
		%feature("compactdefaultargs") Expand;
		%feature("autodoc", "Converts shape (compound/compsolid/shell/wire) to assembly. @param[in] thedoc input document @param[in] theshape input shape label @param[in] therecursively recursively expand a compound subshape returns true if shape successfully expanded.

Parameters
----------
theDoc: TDF_Label
theShape: TDF_Label
theRecursively: bool,optional
	default value is Standard_True

Returns
-------
bool
") Expand;
		static Standard_Boolean Expand(const TDF_Label & theDoc, const TDF_Label & theShape, const Standard_Boolean theRecursively = Standard_True);

		/****************** Expand ******************/
		/**** md5 signature: 1cc446d192c84b603f3864408a96c0c5 ****/
		%feature("compactdefaultargs") Expand;
		%feature("autodoc", "Converts all compounds shapes in the document to assembly @param[in] thedoc input document @param[in] therecursively recursively expand a compound subshape returns true if shape successfully expanded.

Parameters
----------
theDoc: TDF_Label
theRecursively: bool,optional
	default value is Standard_True

Returns
-------
bool
") Expand;
		static Standard_Boolean Expand(const TDF_Label & theDoc, const Standard_Boolean theRecursively = Standard_True);

		/****************** Extract ******************/
		/**** md5 signature: 93e9a9f11a6f9bed0b17528a9eb4450c ****/
		%feature("compactdefaultargs") Extract;
		%feature("autodoc", "Clones all labels to a new position, keeping the structure with all the attributes @param[in] thesrclabels original labels to copy from @param[in] thedstlabel label to set result as a component of or a main document's label to simply set new shape @param[in] theisnovismat get a vismaterial attributes as is or convert to color returns true if shape successfully extracted.

Parameters
----------
theSrcLabels: TDF_LabelSequence
theDstLabel: TDF_Label
theIsNoVisMat: bool,optional
	default value is Standard_False

Returns
-------
bool
") Extract;
		static Standard_Boolean Extract(const TDF_LabelSequence & theSrcLabels, const TDF_Label & theDstLabel, const Standard_Boolean theIsNoVisMat = Standard_False);

		/****************** Extract ******************/
		/**** md5 signature: 531fbb8186e8c5cce7327b10cd4dae8f ****/
		%feature("compactdefaultargs") Extract;
		%feature("autodoc", "Clones the label to a new position, keeping the structure with all the attributes @param[in] thesrclabel original label to copy from @param[in] thedstlabel label to set result as a component of or a main document's label to simply set new shape @param[in] theisnovismat get a vismaterial attributes as is or convert to color returns true if shape successfully extracted.

Parameters
----------
theSrcLabel: TDF_Label
theDstLabel: TDF_Label
theIsNoVisMat: bool,optional
	default value is Standard_False

Returns
-------
bool
") Extract;
		static Standard_Boolean Extract(const TDF_Label & theSrcLabel, const TDF_Label & theDstLabel, const Standard_Boolean theIsNoVisMat = Standard_False);

		/****************** RescaleGeometry ******************/
		/**** md5 signature: 6d7b362a664687f8478cc030b7cf7497 ****/
		%feature("compactdefaultargs") RescaleGeometry;
		%feature("autodoc", "Applies geometrical scaling to the following assembly components: - part geometry - sub-assembly/part occurrence location - part's centroid, area and volume attributes - pmis (warnings and errors are reported if it is impossible to make changes) normally, should start from a root sub-assembly, but if theforceifnotroot true scaling will be applied forcibly. if thelabel corresponds to the shape tool scaling is applied to the whole assembly. @param[in] thelabel starting label @param[in] thescalefactor scale factor, should be positive @param[in] theforceifnotroot allows scaling of a non root assembly if true,  otherwise - returns false returns true in case of success, otherwise - false.

Parameters
----------
theLabel: TDF_Label
theScaleFactor: float
theForceIfNotRoot: bool,optional
	default value is Standard_False

Returns
-------
bool
") RescaleGeometry;
		static Standard_Boolean RescaleGeometry(const TDF_Label & theLabel, const Standard_Real theScaleFactor, const Standard_Boolean theForceIfNotRoot = Standard_False);

};


%extend XCAFDoc_Editor {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/******************************
* class XCAFDoc_GeomTolerance *
******************************/
/**************************
* class XCAFDoc_GraphNode *
**************************/
class XCAFDoc_GraphNode : public TDF_Attribute {
	public:
		/****************** XCAFDoc_GraphNode ******************/
		/**** md5 signature: 643e3623efbb4efb8eb5d7e1356f6832 ****/
		%feature("compactdefaultargs") XCAFDoc_GraphNode;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") XCAFDoc_GraphNode;
		 XCAFDoc_GraphNode();

		/****************** BeforeForget ******************/
		/**** md5 signature: e5a78fffddf9fa82f6f158acce858991 ****/
		%feature("compactdefaultargs") BeforeForget;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") BeforeForget;
		virtual void BeforeForget();

		/****************** ChildIndex ******************/
		/**** md5 signature: 682216d8962572b2a6d0d9650fe30579 ****/
		%feature("compactdefaultargs") ChildIndex;
		%feature("autodoc", "Return index of <ch>, or zero if there is no such graphnode.

Parameters
----------
Ch: XCAFDoc_GraphNode

Returns
-------
int
") ChildIndex;
		Standard_Integer ChildIndex(const opencascade::handle<XCAFDoc_GraphNode> & Ch);


        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };

            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** FatherIndex ******************/
		/**** md5 signature: 0552d958b58828a573e0ce57383c8892 ****/
		%feature("compactdefaultargs") FatherIndex;
		%feature("autodoc", "Return index of <f>, or zero if there is no such graphnode.

Parameters
----------
F: XCAFDoc_GraphNode

Returns
-------
int
") FatherIndex;
		Standard_Integer FatherIndex(const opencascade::handle<XCAFDoc_GraphNode> & F);

		/****************** Find ******************/
		/**** md5 signature: c8c06d23a72baca71ade3f2b9e71a1d2 ****/
		%feature("compactdefaultargs") Find;
		%feature("autodoc", "Class methods working on the node =================================== shortcut to search a graph node attribute with default graphid. returns true if found.

Parameters
----------
L: TDF_Label
G: XCAFDoc_GraphNode

Returns
-------
bool
") Find;
		static Standard_Boolean Find(const TDF_Label & L, opencascade::handle<XCAFDoc_GraphNode> & G);

		/****************** GetChild ******************/
		/**** md5 signature: f3079079d6ef393938288aca3f9d7364 ****/
		%feature("compactdefaultargs") GetChild;
		%feature("autodoc", "Return graphnode by index from graphnodesequence.

Parameters
----------
Chindex: int

Returns
-------
opencascade::handle<XCAFDoc_GraphNode>
") GetChild;
		opencascade::handle<XCAFDoc_GraphNode> GetChild(const Standard_Integer Chindex);

		/****************** GetDefaultGraphID ******************/
		/**** md5 signature: 2532385e5611250dafc41295a1c5ea7c ****/
		%feature("compactdefaultargs") GetDefaultGraphID;
		%feature("autodoc", "Returns a default graph id. this id is used by the <set> method without explicit tree id. instance methods: ================.

Returns
-------
Standard_GUID
") GetDefaultGraphID;
		static const Standard_GUID & GetDefaultGraphID();

		/****************** GetFather ******************/
		/**** md5 signature: c225ed7d16816bb6f759624c525f59c7 ****/
		%feature("compactdefaultargs") GetFather;
		%feature("autodoc", "Return graphnode by index from graphnodesequence.

Parameters
----------
Findex: int

Returns
-------
opencascade::handle<XCAFDoc_GraphNode>
") GetFather;
		opencascade::handle<XCAFDoc_GraphNode> GetFather(const Standard_Integer Findex);

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "Returns the graph id (default or explicit one depending on the set method used).

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** IsChild ******************/
		/**** md5 signature: 3b5281f07d586724740a0ee9906e41eb ****/
		%feature("compactdefaultargs") IsChild;
		%feature("autodoc", "Returns true if <self> is child of <f>.

Parameters
----------
F: XCAFDoc_GraphNode

Returns
-------
bool
") IsChild;
		Standard_Boolean IsChild(const opencascade::handle<XCAFDoc_GraphNode> & F);

		/****************** IsFather ******************/
		/**** md5 signature: 8d38d7a87e653033dd64268fc7539eaa ****/
		%feature("compactdefaultargs") IsFather;
		%feature("autodoc", "Returns true if <self> is father of <ch>.

Parameters
----------
Ch: XCAFDoc_GraphNode

Returns
-------
bool
") IsFather;
		Standard_Boolean IsFather(const opencascade::handle<XCAFDoc_GraphNode> & Ch);

		/****************** NbChildren ******************/
		/**** md5 signature: 4cd749dbf8e93e1f47a795e922eb497f ****/
		%feature("compactdefaultargs") NbChildren;
		%feature("autodoc", "Return number of childrens graphnodes. implementation of attribute methods: ===================================.

Returns
-------
int
") NbChildren;
		Standard_Integer NbChildren();

		/****************** NbFathers ******************/
		/**** md5 signature: eff8485bf050fe027dbf732e442fcd27 ****/
		%feature("compactdefaultargs") NbFathers;
		%feature("autodoc", "Return number of fathers graphnodes.

Returns
-------
int
") NbFathers;
		Standard_Integer NbFathers();

		/****************** NewEmpty ******************/
		/**** md5 signature: 8be17a4d2a4deeee198571712e76805e ****/
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TDF_Attribute>
") NewEmpty;
		virtual opencascade::handle<TDF_Attribute> NewEmpty();

		/****************** Paste ******************/
		/**** md5 signature: 05e5f8f16a08ca8388ac65d3be603584 ****/
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "No available documentation.

Parameters
----------
into: TDF_Attribute
RT: TDF_RelocationTable

Returns
-------
None
") Paste;
		virtual void Paste(const opencascade::handle<TDF_Attribute> & into, const opencascade::handle<TDF_RelocationTable> & RT);

		/****************** References ******************/
		/**** md5 signature: 3f614360a69c957f8600d26b49bc71b2 ****/
		%feature("compactdefaultargs") References;
		%feature("autodoc", "No available documentation.

Parameters
----------
aDataSet: TDF_DataSet

Returns
-------
None
") References;
		virtual void References(const opencascade::handle<TDF_DataSet> & aDataSet);

		/****************** Restore ******************/
		/**** md5 signature: 317305acc3f3ea9c2fd983a7ed00e566 ****/
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "No available documentation.

Parameters
----------
with: TDF_Attribute

Returns
-------
None
") Restore;
		virtual void Restore(const opencascade::handle<TDF_Attribute> & with);

		/****************** Set ******************/
		/**** md5 signature: b6e8909fbbbdf1041428186cdb13569c ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Finds or creates a graphnode attribute on the label <l> with the default graph id, returned by the method <getdefaultgraphid>. returns the created/found graphnode attribute.

Parameters
----------
L: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_GraphNode>
") Set;
		static opencascade::handle<XCAFDoc_GraphNode> Set(const TDF_Label & L);

		/****************** Set ******************/
		/**** md5 signature: b809956f0f830840d9994567f2e0323a ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Finds or creates a graphnode attribute on the label <l>, with an explicit tree id. <explicitgraphid> is the id returned by <tdf_attribute::id> method. returns the found/created graphnode attribute.

Parameters
----------
L: TDF_Label
ExplicitGraphID: Standard_GUID

Returns
-------
opencascade::handle<XCAFDoc_GraphNode>
") Set;
		static opencascade::handle<XCAFDoc_GraphNode> Set(const TDF_Label & L, const Standard_GUID & ExplicitGraphID);

		/****************** SetChild ******************/
		/**** md5 signature: 431185596e80ff92dd67b0de989901c2 ****/
		%feature("compactdefaultargs") SetChild;
		%feature("autodoc", "Set graphnode <ch> as child of me and returns index of <ch> in sequence that containing children graphnodes. return index of <ch> from graphnodesequnece.

Parameters
----------
Ch: XCAFDoc_GraphNode

Returns
-------
int
") SetChild;
		Standard_Integer SetChild(const opencascade::handle<XCAFDoc_GraphNode> & Ch);

		/****************** SetFather ******************/
		/**** md5 signature: 563dec4ab7923a2ffcf972708f6ca65d ****/
		%feature("compactdefaultargs") SetFather;
		%feature("autodoc", "Set graphnode <f> as father of me and returns index of <f> in sequence that containing fathers graphnodes. return index of <f> from graphnodesequnece.

Parameters
----------
F: XCAFDoc_GraphNode

Returns
-------
int
") SetFather;
		Standard_Integer SetFather(const opencascade::handle<XCAFDoc_GraphNode> & F);

		/****************** SetGraphID ******************/
		/**** md5 signature: f024812dcf92005052396001898ee2fa ****/
		%feature("compactdefaultargs") SetGraphID;
		%feature("autodoc", "No available documentation.

Parameters
----------
explicitID: Standard_GUID

Returns
-------
None
") SetGraphID;
		void SetGraphID(const Standard_GUID & explicitID);

		/****************** UnSetChild ******************/
		/**** md5 signature: 3f93c2a21491d627b4f30b8c6d1186c9 ****/
		%feature("compactdefaultargs") UnSetChild;
		%feature("autodoc", "Remove <ch> from graphnodesequence. and remove link between father and child.

Parameters
----------
Ch: XCAFDoc_GraphNode

Returns
-------
None
") UnSetChild;
		void UnSetChild(const opencascade::handle<XCAFDoc_GraphNode> & Ch);

		/****************** UnSetChild ******************/
		/**** md5 signature: a5aa02a94b4f30a64d7fcaea30ef11bc ****/
		%feature("compactdefaultargs") UnSetChild;
		%feature("autodoc", "Remove child graphnode by index from children graphnodesequence. and remove link between father and child.

Parameters
----------
Chindex: int

Returns
-------
None
") UnSetChild;
		void UnSetChild(const Standard_Integer Chindex);

		/****************** UnSetFather ******************/
		/**** md5 signature: 7db0f5a2b969b8587c0c18917b5183da ****/
		%feature("compactdefaultargs") UnSetFather;
		%feature("autodoc", "Remove <f> from fathers graphnodesequence. and remove link between father and child.

Parameters
----------
F: XCAFDoc_GraphNode

Returns
-------
None
") UnSetFather;
		void UnSetFather(const opencascade::handle<XCAFDoc_GraphNode> & F);

		/****************** UnSetFather ******************/
		/**** md5 signature: 8999d2c6ba28bea2f5ea14d291c9d98b ****/
		%feature("compactdefaultargs") UnSetFather;
		%feature("autodoc", "Remove father graphnode by index from fathers graphnodesequence. and remove link between father and child.

Parameters
----------
Findex: int

Returns
-------
None
") UnSetFather;
		void UnSetFather(const Standard_Integer Findex);

};


%make_alias(XCAFDoc_GraphNode)

%extend XCAFDoc_GraphNode {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**************************
* class XCAFDoc_LayerTool *
**************************/
class XCAFDoc_LayerTool : public TDataStd_GenericEmpty {
	public:
		/****************** XCAFDoc_LayerTool ******************/
		/**** md5 signature: e54175d79e822b0491336741e09fba62 ****/
		%feature("compactdefaultargs") XCAFDoc_LayerTool;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") XCAFDoc_LayerTool;
		 XCAFDoc_LayerTool();

		/****************** AddLayer ******************/
		/**** md5 signature: b4e925ccd9f434d36de9de65e71210fd ****/
		%feature("compactdefaultargs") AddLayer;
		%feature("autodoc", "Adds a layer definition to a layertable and returns its label (returns existing label if the same layer is already defined).

Parameters
----------
theLayer: str

Returns
-------
TDF_Label
") AddLayer;
		TDF_Label AddLayer(TCollection_ExtendedString theLayer);

		/****************** AddLayer ******************/
		/**** md5 signature: efd3c8f010e5ea0400be0df10efda0ea ****/
		%feature("compactdefaultargs") AddLayer;
		%feature("autodoc", "Adds a layer definition to a layertable and returns its label returns existing label (if it is already defined) of visible or invisible layer, according to <thetofindvisible> parameter.

Parameters
----------
theLayer: str
theToFindVisible: bool

Returns
-------
TDF_Label
") AddLayer;
		TDF_Label AddLayer(TCollection_ExtendedString theLayer, const Standard_Boolean theToFindVisible);

		/****************** BaseLabel ******************/
		/**** md5 signature: cb499d8135863e96e585085d0b85c75a ****/
		%feature("compactdefaultargs") BaseLabel;
		%feature("autodoc", "Returns the label under which layers are stored.

Returns
-------
TDF_Label
") BaseLabel;
		TDF_Label BaseLabel();


            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** FindLayer ******************/
		/**** md5 signature: 0267420ac417e060cacb31e601857357 ****/
		%feature("compactdefaultargs") FindLayer;
		%feature("autodoc", "Finds a layer definition in a layertable and returns its label if found returns false if layer is not found in layertable.

Parameters
----------
aLayer: str
lab: TDF_Label

Returns
-------
bool
") FindLayer;
		Standard_Boolean FindLayer(TCollection_ExtendedString aLayer, TDF_Label & lab);

		/****************** FindLayer ******************/
		/**** md5 signature: 0560222f5f3f399e6f4382dab748b597 ****/
		%feature("compactdefaultargs") FindLayer;
		%feature("autodoc", "Finds a layer definition in a layertable by name returns first founded label with the same name if <thetofindwithproperty> is false if <thetofindwithproperty> is true returns first label that contains or not contains visible attr, according to the <thetofindvisible> parameter.

Parameters
----------
aLayer: str
theToFindWithProperty: bool,optional
	default value is Standard_False
theToFindVisible: bool,optional
	default value is Standard_True

Returns
-------
TDF_Label
") FindLayer;
		TDF_Label FindLayer(TCollection_ExtendedString aLayer, const Standard_Boolean theToFindWithProperty = Standard_False, const Standard_Boolean theToFindVisible = Standard_True);

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetLayer ******************/
		/**** md5 signature: 2099239e4d425f754c07f6006359f398 ****/
		%feature("compactdefaultargs") GetLayer;
		%feature("autodoc", "Returns layer defined by label lab returns false if the label is not in layertable or does not define a layer.

Parameters
----------
lab: TDF_Label
aLayer: str

Returns
-------
bool
") GetLayer;
		Standard_Boolean GetLayer(const TDF_Label & lab, TCollection_ExtendedString & aLayer);

		/****************** GetLayerLabels ******************/
		/**** md5 signature: 84f17cdc1af1c985c94e9de1a1511a80 ****/
		%feature("compactdefaultargs") GetLayerLabels;
		%feature("autodoc", "Returns a sequence of layers currently stored in the layertable.

Parameters
----------
Labels: TDF_LabelSequence

Returns
-------
None
") GetLayerLabels;
		void GetLayerLabels(TDF_LabelSequence & Labels);

		/****************** GetLayers ******************/
		/**** md5 signature: 953f9dad8d91ef1a63d45947fa903a86 ****/
		%feature("compactdefaultargs") GetLayers;
		%feature("autodoc", "Return sequence of strings <alayers> that associated with label <l>.

Parameters
----------
L: TDF_Label
aLayerS: TColStd_HSequenceOfExtendedString

Returns
-------
bool
") GetLayers;
		Standard_Boolean GetLayers(const TDF_Label & L, opencascade::handle<TColStd_HSequenceOfExtendedString> & aLayerS);

		/****************** GetLayers ******************/
		/**** md5 signature: 9845310e823a8d2fba61ea655007feb4 ****/
		%feature("compactdefaultargs") GetLayers;
		%feature("autodoc", "Return sequence of labels <alayersl> that associated with label <l>.

Parameters
----------
L: TDF_Label
aLayerLS: TDF_LabelSequence

Returns
-------
bool
") GetLayers;
		Standard_Boolean GetLayers(const TDF_Label & L, TDF_LabelSequence & aLayerLS);

		/****************** GetLayers ******************/
		/**** md5 signature: b624ff551305b796a9b6df6db9f43a65 ****/
		%feature("compactdefaultargs") GetLayers;
		%feature("autodoc", "Return sequence of strings that associated with label <l>.

Parameters
----------
L: TDF_Label

Returns
-------
opencascade::handle<TColStd_HSequenceOfExtendedString>
") GetLayers;
		opencascade::handle<TColStd_HSequenceOfExtendedString> GetLayers(const TDF_Label & L);

		/****************** GetLayers ******************/
		/**** md5 signature: eab19fc3c6a58f076ec77ace40e248d6 ****/
		%feature("compactdefaultargs") GetLayers;
		%feature("autodoc", "Return sequence of strings <alayers> that associated with shape <sh>.

Parameters
----------
Sh: TopoDS_Shape
aLayerS: TColStd_HSequenceOfExtendedString

Returns
-------
bool
") GetLayers;
		Standard_Boolean GetLayers(const TopoDS_Shape & Sh, opencascade::handle<TColStd_HSequenceOfExtendedString> & aLayerS);

		/****************** GetLayers ******************/
		/**** md5 signature: 4a3d6fd1f6bfa465766e7e80bd090710 ****/
		%feature("compactdefaultargs") GetLayers;
		%feature("autodoc", "Return sequence of labels <alayerls> that associated with shape <sh>.

Parameters
----------
Sh: TopoDS_Shape
aLayerLS: TDF_LabelSequence

Returns
-------
bool
") GetLayers;
		Standard_Boolean GetLayers(const TopoDS_Shape & Sh, TDF_LabelSequence & aLayerLS);

		/****************** GetLayers ******************/
		/**** md5 signature: ed0999253a31a118a0a7dc6ff2cef627 ****/
		%feature("compactdefaultargs") GetLayers;
		%feature("autodoc", "Return sequence of strings that associated with shape <sh>.

Parameters
----------
Sh: TopoDS_Shape

Returns
-------
opencascade::handle<TColStd_HSequenceOfExtendedString>
") GetLayers;
		opencascade::handle<TColStd_HSequenceOfExtendedString> GetLayers(const TopoDS_Shape & Sh);

		/****************** GetShapesOfLayer ******************/
		/**** md5 signature: 2bcd2de1711ebf8ae0d1ddf5d01dce52 ****/
		%feature("compactdefaultargs") GetShapesOfLayer;
		%feature("autodoc", "Return sequanese of shape labels that assigned with layers to <shlabels>.

Parameters
----------
theLayerL: TDF_Label
theShLabels: TDF_LabelSequence

Returns
-------
None
") GetShapesOfLayer;
		static void GetShapesOfLayer(const TDF_Label & theLayerL, TDF_LabelSequence & theShLabels);

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** IsLayer ******************/
		/**** md5 signature: 4a101f8272764c24f6003a3a4bbf7401 ****/
		%feature("compactdefaultargs") IsLayer;
		%feature("autodoc", "Returns true if label belongs to a layertable and is a layer definition.

Parameters
----------
lab: TDF_Label

Returns
-------
bool
") IsLayer;
		Standard_Boolean IsLayer(const TDF_Label & lab);

		/****************** IsSet ******************/
		/**** md5 signature: da1805c49ea79ebc72a8991642ec3092 ****/
		%feature("compactdefaultargs") IsSet;
		%feature("autodoc", "Returns true if label <l> has a layer associated with the <alayer>.

Parameters
----------
L: TDF_Label
aLayer: str

Returns
-------
bool
") IsSet;
		Standard_Boolean IsSet(const TDF_Label & L, TCollection_ExtendedString aLayer);

		/****************** IsSet ******************/
		/**** md5 signature: a752a69f656dba6fbb8ebf3bb48adf18 ****/
		%feature("compactdefaultargs") IsSet;
		%feature("autodoc", "Returns true if label <l> has a layer associated with the <alayerl> label.

Parameters
----------
L: TDF_Label
aLayerL: TDF_Label

Returns
-------
bool
") IsSet;
		Standard_Boolean IsSet(const TDF_Label & L, const TDF_Label & aLayerL);

		/****************** IsSet ******************/
		/**** md5 signature: 7acfad2b2c93c72dcbcde07c992eace5 ****/
		%feature("compactdefaultargs") IsSet;
		%feature("autodoc", "Returns true if shape <sh> has a layer associated with the <alayer>.

Parameters
----------
Sh: TopoDS_Shape
aLayer: str

Returns
-------
bool
") IsSet;
		Standard_Boolean IsSet(const TopoDS_Shape & Sh, TCollection_ExtendedString aLayer);

		/****************** IsSet ******************/
		/**** md5 signature: d8ac3a643dcc3086d6694928e97ec0a0 ****/
		%feature("compactdefaultargs") IsSet;
		%feature("autodoc", "Returns true if shape <sh> has a layer associated with the <alayerl>.

Parameters
----------
Sh: TopoDS_Shape
aLayerL: TDF_Label

Returns
-------
bool
") IsSet;
		Standard_Boolean IsSet(const TopoDS_Shape & Sh, const TDF_Label & aLayerL);

		/****************** IsVisible ******************/
		/**** md5 signature: 6227a2cd355d217477cad280b6d33e8c ****/
		%feature("compactdefaultargs") IsVisible;
		%feature("autodoc", "Return true if layer is visible, false if invisible.

Parameters
----------
layerL: TDF_Label

Returns
-------
bool
") IsVisible;
		Standard_Boolean IsVisible(const TDF_Label & layerL);

		/****************** RemoveLayer ******************/
		/**** md5 signature: 70b3d064bc3eaaa8774633bc02985d70 ****/
		%feature("compactdefaultargs") RemoveLayer;
		%feature("autodoc", "Removes layer from the layertable.

Parameters
----------
lab: TDF_Label

Returns
-------
None
") RemoveLayer;
		void RemoveLayer(const TDF_Label & lab);

		/****************** Set ******************/
		/**** md5 signature: 9357654ead4b02c2995c604f9b674917 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Creates (if not exist) layertool.

Parameters
----------
L: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_LayerTool>
") Set;
		static opencascade::handle<XCAFDoc_LayerTool> Set(const TDF_Label & L);

		/****************** SetLayer ******************/
		/**** md5 signature: 3422b6047af75235c376d876de3cf28f ****/
		%feature("compactdefaultargs") SetLayer;
		%feature("autodoc", "Sets a link from label <l> to layer defined by <layerl> optional parameter <shapeinonelayer> show could shape be in number of layers or only in one.

Parameters
----------
L: TDF_Label
LayerL: TDF_Label
shapeInOneLayer: bool,optional
	default value is Standard_False

Returns
-------
None
") SetLayer;
		void SetLayer(const TDF_Label & L, const TDF_Label & LayerL, const Standard_Boolean shapeInOneLayer = Standard_False);

		/****************** SetLayer ******************/
		/**** md5 signature: 12728541996e6e62a71cd846d014e4e6 ****/
		%feature("compactdefaultargs") SetLayer;
		%feature("autodoc", "Sets a link from label <l> to layer <alayer> in the layertable adds a layer as necessary optional parameter <shapeinonelayer> show could shape be in number of layers or only in one.

Parameters
----------
L: TDF_Label
aLayer: str
shapeInOneLayer: bool,optional
	default value is Standard_False

Returns
-------
None
") SetLayer;
		void SetLayer(const TDF_Label & L, TCollection_ExtendedString aLayer, const Standard_Boolean shapeInOneLayer = Standard_False);

		/****************** SetLayer ******************/
		/**** md5 signature: 387666dea1ccb3d8d0644bd40bb7a443 ****/
		%feature("compactdefaultargs") SetLayer;
		%feature("autodoc", "Sets a link from label that containing shape <sh> with layer that situated at label <layerl>. optional parameter <shapeinonelayer> show could shape be in number of layers or only in one. return false if no such shape <sh> or label <layerl>.

Parameters
----------
Sh: TopoDS_Shape
LayerL: TDF_Label
shapeInOneLayer: bool,optional
	default value is Standard_False

Returns
-------
bool
") SetLayer;
		Standard_Boolean SetLayer(const TopoDS_Shape & Sh, const TDF_Label & LayerL, const Standard_Boolean shapeInOneLayer = Standard_False);

		/****************** SetLayer ******************/
		/**** md5 signature: 380cc4543ee2bef02f30e321605a9b90 ****/
		%feature("compactdefaultargs") SetLayer;
		%feature("autodoc", "Sets a link from label that containing shape <sh> with layer <alayer>. add <alayer> to layertable if nessesery. optional parameter <shapeinonelayer> show could shape be in number of layers or only in one. return false if no such shape <sh>.

Parameters
----------
Sh: TopoDS_Shape
aLayer: str
shapeInOneLayer: bool,optional
	default value is Standard_False

Returns
-------
bool
") SetLayer;
		Standard_Boolean SetLayer(const TopoDS_Shape & Sh, TCollection_ExtendedString aLayer, const Standard_Boolean shapeInOneLayer = Standard_False);

		/****************** SetVisibility ******************/
		/**** md5 signature: fd298e2f64f12ef8883e1e6d1ec6dea6 ****/
		%feature("compactdefaultargs") SetVisibility;
		%feature("autodoc", "Set the visibility of layer. if layer is invisible when on it's layer will set uattribute with corresponding guid.

Parameters
----------
layerL: TDF_Label
isvisible: bool,optional
	default value is Standard_True

Returns
-------
None
") SetVisibility;
		void SetVisibility(const TDF_Label & layerL, const Standard_Boolean isvisible = Standard_True);

		/****************** ShapeTool ******************/
		/**** md5 signature: f3b52ea6763fc2a237d4ce7351722eb2 ****/
		%feature("compactdefaultargs") ShapeTool;
		%feature("autodoc", "Returns internal xcafdoc_shapetool tool.

Returns
-------
opencascade::handle<XCAFDoc_ShapeTool>
") ShapeTool;
		const opencascade::handle<XCAFDoc_ShapeTool> & ShapeTool();

		/****************** UnSetLayers ******************/
		/**** md5 signature: 6b2f8a0f998eeb6df2ab7a1db6a4fa18 ****/
		%feature("compactdefaultargs") UnSetLayers;
		%feature("autodoc", "Removes a link from label <l> to all layers.

Parameters
----------
L: TDF_Label

Returns
-------
None
") UnSetLayers;
		void UnSetLayers(const TDF_Label & L);

		/****************** UnSetLayers ******************/
		/**** md5 signature: 3259f4baa2439e4b27bb7a8b0d85e773 ****/
		%feature("compactdefaultargs") UnSetLayers;
		%feature("autodoc", "Remove link between shape <sh> and all layers at layertable. return false if no such shape <sh> in xcaf document.

Parameters
----------
Sh: TopoDS_Shape

Returns
-------
bool
") UnSetLayers;
		Standard_Boolean UnSetLayers(const TopoDS_Shape & Sh);

		/****************** UnSetOneLayer ******************/
		/**** md5 signature: 9b5848573639c5455b04242e7cddd6bf ****/
		%feature("compactdefaultargs") UnSetOneLayer;
		%feature("autodoc", "Remove link from label <l> and layer <alayer>. returns false if no such layer.

Parameters
----------
L: TDF_Label
aLayer: str

Returns
-------
bool
") UnSetOneLayer;
		Standard_Boolean UnSetOneLayer(const TDF_Label & L, TCollection_ExtendedString aLayer);

		/****************** UnSetOneLayer ******************/
		/**** md5 signature: 302c9e7d6d6e40f3f9efacfcf142096e ****/
		%feature("compactdefaultargs") UnSetOneLayer;
		%feature("autodoc", "Remove link from label <l> and layer <alayerl>. returns false if <alayerl> is not a layer label.

Parameters
----------
L: TDF_Label
aLayerL: TDF_Label

Returns
-------
bool
") UnSetOneLayer;
		Standard_Boolean UnSetOneLayer(const TDF_Label & L, const TDF_Label & aLayerL);

		/****************** UnSetOneLayer ******************/
		/**** md5 signature: 4fbe306d3f90ebbbc06ed01545ca21bd ****/
		%feature("compactdefaultargs") UnSetOneLayer;
		%feature("autodoc", "Remove link between shape <sh> and layer <alayer>. returns false if no such layer <alayer> or shape <sh>.

Parameters
----------
Sh: TopoDS_Shape
aLayer: str

Returns
-------
bool
") UnSetOneLayer;
		Standard_Boolean UnSetOneLayer(const TopoDS_Shape & Sh, TCollection_ExtendedString aLayer);

		/****************** UnSetOneLayer ******************/
		/**** md5 signature: 615aafd249a97646285d23d0f7c5fd58 ****/
		%feature("compactdefaultargs") UnSetOneLayer;
		%feature("autodoc", "Remove link between shape <sh> and layer <alayerl>. returns false if no such layer <alayerl> or shape <sh>.

Parameters
----------
Sh: TopoDS_Shape
aLayerL: TDF_Label

Returns
-------
bool
") UnSetOneLayer;
		Standard_Boolean UnSetOneLayer(const TopoDS_Shape & Sh, const TDF_Label & aLayerL);

};


%make_alias(XCAFDoc_LayerTool)

%extend XCAFDoc_LayerTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/***************************
* class XCAFDoc_LengthUnit *
***************************/
class XCAFDoc_LengthUnit : public TDF_Attribute {
	public:
		/****************** XCAFDoc_LengthUnit ******************/
		/**** md5 signature: 364d9ddfae96196b2b587c84f83339d1 ****/
		%feature("compactdefaultargs") XCAFDoc_LengthUnit;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") XCAFDoc_LengthUnit;
		 XCAFDoc_LengthUnit();


        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };

            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "Returns the guid of the attribute.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetUnitName ******************/
		/**** md5 signature: 16cdd69f7f38a7fd849d2d4de7b40582 ****/
		%feature("compactdefaultargs") GetUnitName;
		%feature("autodoc", "Length unit description (could be arbitrary text).

Returns
-------
TCollection_AsciiString
") GetUnitName;
		const TCollection_AsciiString & GetUnitName();

		/****************** GetUnitValue ******************/
		/**** md5 signature: b755ff03d367a17dc1e3fb9b380cb1d6 ****/
		%feature("compactdefaultargs") GetUnitValue;
		%feature("autodoc", "Returns length unit scale factor to meter.

Returns
-------
float
") GetUnitValue;
		Standard_Real GetUnitValue();

		/****************** ID ******************/
		/**** md5 signature: 18550bf05502080c8e2a8a16aabb4183 ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		virtual const Standard_GUID & ID();

		/****************** IsEmpty ******************/
		/**** md5 signature: d529c07ce9e12eea3222188c82b0e80b ****/
		%feature("compactdefaultargs") IsEmpty;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") IsEmpty;
		Standard_Boolean IsEmpty();

		/****************** Paste ******************/
		/**** md5 signature: 1ca8837621f1ccc366be2408ac59ed9a ****/
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "No available documentation.

Parameters
----------
theInto: TDF_Attribute
theRT: TDF_RelocationTable

Returns
-------
None
") Paste;
		virtual void Paste(const opencascade::handle<TDF_Attribute> & theInto, const opencascade::handle<TDF_RelocationTable> & theRT);

		/****************** Restore ******************/
		/**** md5 signature: 5e22af670b4c476a215a562aa4f78470 ****/
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "No available documentation.

Parameters
----------
theWith: TDF_Attribute

Returns
-------
None
") Restore;
		virtual void Restore(const opencascade::handle<TDF_Attribute> & theWith);

		/****************** Set ******************/
		/**** md5 signature: a2ef88def6650db08f955206b2e6b30b ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Finds or creates a lengthunit attribute @param theunitname - name of the unit: mm, m, cm, km, micron, in, min, nin, ft, stat.mile @param theunitvalue - length scale factor to meter the lengthunit attribute is returned.

Parameters
----------
theLabel: TDF_Label
theUnitName: str
theUnitValue: float

Returns
-------
opencascade::handle<XCAFDoc_LengthUnit>
") Set;
		static opencascade::handle<XCAFDoc_LengthUnit> Set(const TDF_Label & theLabel, TCollection_AsciiString theUnitName, const Standard_Real theUnitValue);

		/****************** Set ******************/
		/**** md5 signature: 6574b11e6a0f9e7ddc0ec3a5fa9d4758 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Finds or creates a lengthunit attribute @param theunitvalue - length scale factor to meter the lengthunit attribute is returned.

Parameters
----------
theLabel: TDF_Label
theUnitValue: float

Returns
-------
opencascade::handle<XCAFDoc_LengthUnit>
") Set;
		static opencascade::handle<XCAFDoc_LengthUnit> Set(const TDF_Label & theLabel, const Standard_Real theUnitValue);

		/****************** Set ******************/
		/**** md5 signature: 1e2a91a95c285484e745e7fdfa54df85 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Finds, or creates, a lengthunit attribute with explicit user defined guid @param theunitname - name of the unit: mm, m, cm, km, micron, in, min, nin, ft, stat.mile @param theunitvalue - length scale factor to meter the lengthunit attribute is returned.

Parameters
----------
theLabel: TDF_Label
theGUID: Standard_GUID
theUnitName: str
theUnitValue: float

Returns
-------
opencascade::handle<XCAFDoc_LengthUnit>
") Set;
		static opencascade::handle<XCAFDoc_LengthUnit> Set(const TDF_Label & theLabel, const Standard_GUID & theGUID, TCollection_AsciiString theUnitName, const Standard_Real theUnitValue);

		/****************** Set ******************/
		/**** md5 signature: 886c0c008a83c600a3fa609bbf9b32eb ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Creates a lengthunit attribute @param theunitname - name of the unit: mm, m, cm, km, micron, in, min, nin, ft, stat.mile @param theunitvalue - length scale factor to meter.

Parameters
----------
theUnitName: str
theUnitValue: float

Returns
-------
None
") Set;
		void Set(TCollection_AsciiString theUnitName, const Standard_Real theUnitValue);

};


%make_alias(XCAFDoc_LengthUnit)

%extend XCAFDoc_LengthUnit {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*************************
* class XCAFDoc_Location *
*************************/
class XCAFDoc_Location : public TDF_Attribute {
	public:
		/****************** XCAFDoc_Location ******************/
		/**** md5 signature: 2d5e62afecc2f47f6a32deafc536152b ****/
		%feature("compactdefaultargs") XCAFDoc_Location;
		%feature("autodoc", "Class methods =============.

Returns
-------
None
") XCAFDoc_Location;
		 XCAFDoc_Location();


            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** Get ******************/
		/**** md5 signature: 359bc64c03f84420a1380939ba1ece6c ****/
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "Returns true if there is a reference on the same label.

Returns
-------
TopLoc_Location
") Get;
		const TopLoc_Location & Get();

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** NewEmpty ******************/
		/**** md5 signature: c6d13c9ecc64c6c803b6e119e8216934 ****/
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TDF_Attribute>
") NewEmpty;
		opencascade::handle<TDF_Attribute> NewEmpty();

		/****************** Paste ******************/
		/**** md5 signature: a6ff306a759c68a191c0262635db980f ****/
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "No available documentation.

Parameters
----------
Into: TDF_Attribute
RT: TDF_RelocationTable

Returns
-------
None
") Paste;
		void Paste(const opencascade::handle<TDF_Attribute> & Into, const opencascade::handle<TDF_RelocationTable> & RT);

		/****************** Restore ******************/
		/**** md5 signature: ddeae219d389a1d89eecb3e23c73522a ****/
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "No available documentation.

Parameters
----------
With: TDF_Attribute

Returns
-------
None
") Restore;
		void Restore(const opencascade::handle<TDF_Attribute> & With);

		/****************** Set ******************/
		/**** md5 signature: 0c361e816257c5327f25db0bbb1ba828 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Find, or create, a location attribute and set it's value the location attribute is returned. location methods ===============.

Parameters
----------
label: TDF_Label
Loc: TopLoc_Location

Returns
-------
opencascade::handle<XCAFDoc_Location>
") Set;
		static opencascade::handle<XCAFDoc_Location> Set(const TDF_Label & label, const TopLoc_Location & Loc);

		/****************** Set ******************/
		/**** md5 signature: 966bc32cd32426ecb76db3a1646d4b65 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
Loc: TopLoc_Location

Returns
-------
None
") Set;
		void Set(const TopLoc_Location & Loc);

};


%make_alias(XCAFDoc_Location)

%extend XCAFDoc_Location {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*************************
* class XCAFDoc_Material *
*************************/
class XCAFDoc_Material : public TDF_Attribute {
	public:
		/****************** XCAFDoc_Material ******************/
		/**** md5 signature: f462b57795f908e7fe50317722771242 ****/
		%feature("compactdefaultargs") XCAFDoc_Material;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") XCAFDoc_Material;
		 XCAFDoc_Material();


            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** GetDensName ******************/
		/**** md5 signature: 3b1043acd4ad662679429887111967a0 ****/
		%feature("compactdefaultargs") GetDensName;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") GetDensName;
		opencascade::handle<TCollection_HAsciiString> GetDensName();

		/****************** GetDensValType ******************/
		/**** md5 signature: 42efd68e1d2c974eb5eb1ab702d3a6de ****/
		%feature("compactdefaultargs") GetDensValType;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") GetDensValType;
		opencascade::handle<TCollection_HAsciiString> GetDensValType();

		/****************** GetDensity ******************/
		/**** md5 signature: d5dfed938eb147d8285ab999d43e471f ****/
		%feature("compactdefaultargs") GetDensity;
		%feature("autodoc", "No available documentation.

Returns
-------
float
") GetDensity;
		Standard_Real GetDensity();

		/****************** GetDescription ******************/
		/**** md5 signature: d57bdeefc6af6dad2fd33af139e84636 ****/
		%feature("compactdefaultargs") GetDescription;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") GetDescription;
		opencascade::handle<TCollection_HAsciiString> GetDescription();

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetName ******************/
		/**** md5 signature: 23aadc9cd2e3411b58fb02d3fd2db5c9 ****/
		%feature("compactdefaultargs") GetName;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") GetName;
		opencascade::handle<TCollection_HAsciiString> GetName();

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** NewEmpty ******************/
		/**** md5 signature: c6d13c9ecc64c6c803b6e119e8216934 ****/
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TDF_Attribute>
") NewEmpty;
		opencascade::handle<TDF_Attribute> NewEmpty();

		/****************** Paste ******************/
		/**** md5 signature: a6ff306a759c68a191c0262635db980f ****/
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "No available documentation.

Parameters
----------
Into: TDF_Attribute
RT: TDF_RelocationTable

Returns
-------
None
") Paste;
		void Paste(const opencascade::handle<TDF_Attribute> & Into, const opencascade::handle<TDF_RelocationTable> & RT);

		/****************** Restore ******************/
		/**** md5 signature: ddeae219d389a1d89eecb3e23c73522a ****/
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "No available documentation.

Parameters
----------
With: TDF_Attribute

Returns
-------
None
") Restore;
		void Restore(const opencascade::handle<TDF_Attribute> & With);

		/****************** Set ******************/
		/**** md5 signature: b9ab594e6a46e98fefa561d0d89dc428 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
label: TDF_Label
aName: TCollection_HAsciiString
aDescription: TCollection_HAsciiString
aDensity: float
aDensName: TCollection_HAsciiString
aDensValType: TCollection_HAsciiString

Returns
-------
opencascade::handle<XCAFDoc_Material>
") Set;
		static opencascade::handle<XCAFDoc_Material> Set(const TDF_Label & label, const opencascade::handle<TCollection_HAsciiString> & aName, const opencascade::handle<TCollection_HAsciiString> & aDescription, const Standard_Real aDensity, const opencascade::handle<TCollection_HAsciiString> & aDensName, const opencascade::handle<TCollection_HAsciiString> & aDensValType);

		/****************** Set ******************/
		/**** md5 signature: 034aaba85688cc8b7993102d857e2950 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
aName: TCollection_HAsciiString
aDescription: TCollection_HAsciiString
aDensity: float
aDensName: TCollection_HAsciiString
aDensValType: TCollection_HAsciiString

Returns
-------
None
") Set;
		void Set(const opencascade::handle<TCollection_HAsciiString> & aName, const opencascade::handle<TCollection_HAsciiString> & aDescription, const Standard_Real aDensity, const opencascade::handle<TCollection_HAsciiString> & aDensName, const opencascade::handle<TCollection_HAsciiString> & aDensValType);

};


%make_alias(XCAFDoc_Material)

%extend XCAFDoc_Material {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*****************************
* class XCAFDoc_MaterialTool *
*****************************/
class XCAFDoc_MaterialTool : public TDataStd_GenericEmpty {
	public:
		/****************** XCAFDoc_MaterialTool ******************/
		/**** md5 signature: fbb0be87f4f6e7f0c11ef3c770906fb1 ****/
		%feature("compactdefaultargs") XCAFDoc_MaterialTool;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") XCAFDoc_MaterialTool;
		 XCAFDoc_MaterialTool();

		/****************** AddMaterial ******************/
		/**** md5 signature: 11efae8094265240a0ae79a9eceefe7a ****/
		%feature("compactdefaultargs") AddMaterial;
		%feature("autodoc", "Adds a material definition to a table and returns its label.

Parameters
----------
aName: TCollection_HAsciiString
aDescription: TCollection_HAsciiString
aDensity: float
aDensName: TCollection_HAsciiString
aDensValType: TCollection_HAsciiString

Returns
-------
TDF_Label
") AddMaterial;
		TDF_Label AddMaterial(const opencascade::handle<TCollection_HAsciiString> & aName, const opencascade::handle<TCollection_HAsciiString> & aDescription, const Standard_Real aDensity, const opencascade::handle<TCollection_HAsciiString> & aDensName, const opencascade::handle<TCollection_HAsciiString> & aDensValType);

		/****************** BaseLabel ******************/
		/**** md5 signature: cb499d8135863e96e585085d0b85c75a ****/
		%feature("compactdefaultargs") BaseLabel;
		%feature("autodoc", "Returns the label under which colors are stored.

Returns
-------
TDF_Label
") BaseLabel;
		TDF_Label BaseLabel();


            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** GetDensityForShape ******************/
		/**** md5 signature: d31bfcf5af78d069e4eaeca8afb83fc2 ****/
		%feature("compactdefaultargs") GetDensityForShape;
		%feature("autodoc", "Find referred material and return density from it if no material --> return 0.

Parameters
----------
ShapeL: TDF_Label

Returns
-------
float
") GetDensityForShape;
		static Standard_Real GetDensityForShape(const TDF_Label & ShapeL);

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetMaterial ******************/
		/**** md5 signature: cf930e538eb371f96b92c4f439c49612 ****/
		%feature("compactdefaultargs") GetMaterial;
		%feature("autodoc", "Returns material assigned to <matl> returns false if no such material is assigned.

Parameters
----------
MatL: TDF_Label

Returns
-------
aName: TCollection_HAsciiString
aDescription: TCollection_HAsciiString
aDensity: float
aDensName: TCollection_HAsciiString
aDensValType: TCollection_HAsciiString
") GetMaterial;
		static Standard_Boolean GetMaterial(const TDF_Label & MatL, opencascade::handle<TCollection_HAsciiString> &OutValue, opencascade::handle<TCollection_HAsciiString> &OutValue, Standard_Real &OutValue, opencascade::handle<TCollection_HAsciiString> &OutValue, opencascade::handle<TCollection_HAsciiString> &OutValue);

		/****************** GetMaterialLabels ******************/
		/**** md5 signature: cd3883adc849957e7e10d763ad936071 ****/
		%feature("compactdefaultargs") GetMaterialLabels;
		%feature("autodoc", "Returns a sequence of materials currently stored in the material table.

Parameters
----------
Labels: TDF_LabelSequence

Returns
-------
None
") GetMaterialLabels;
		void GetMaterialLabels(TDF_LabelSequence & Labels);

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** IsMaterial ******************/
		/**** md5 signature: 2ab0f6e08f5f464910f152e278e80ede ****/
		%feature("compactdefaultargs") IsMaterial;
		%feature("autodoc", "Returns true if label belongs to a material table and is a material definition.

Parameters
----------
lab: TDF_Label

Returns
-------
bool
") IsMaterial;
		Standard_Boolean IsMaterial(const TDF_Label & lab);

		/****************** Set ******************/
		/**** md5 signature: 93eb8e9cd550f2295955998cae514434 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Creates (if not exist) materialtool.

Parameters
----------
L: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_MaterialTool>
") Set;
		static opencascade::handle<XCAFDoc_MaterialTool> Set(const TDF_Label & L);

		/****************** SetMaterial ******************/
		/**** md5 signature: 25933d10c1b326360e9cadcc044353a2 ****/
		%feature("compactdefaultargs") SetMaterial;
		%feature("autodoc", "Sets a link with guid.

Parameters
----------
L: TDF_Label
MatL: TDF_Label

Returns
-------
None
") SetMaterial;
		void SetMaterial(const TDF_Label & L, const TDF_Label & MatL);

		/****************** SetMaterial ******************/
		/**** md5 signature: d21ca9049a63498f251becc3202c4066 ****/
		%feature("compactdefaultargs") SetMaterial;
		%feature("autodoc", "Sets a link with guid adds a material as necessary.

Parameters
----------
L: TDF_Label
aName: TCollection_HAsciiString
aDescription: TCollection_HAsciiString
aDensity: float
aDensName: TCollection_HAsciiString
aDensValType: TCollection_HAsciiString

Returns
-------
None
") SetMaterial;
		void SetMaterial(const TDF_Label & L, const opencascade::handle<TCollection_HAsciiString> & aName, const opencascade::handle<TCollection_HAsciiString> & aDescription, const Standard_Real aDensity, const opencascade::handle<TCollection_HAsciiString> & aDensName, const opencascade::handle<TCollection_HAsciiString> & aDensValType);

		/****************** ShapeTool ******************/
		/**** md5 signature: f3b52ea6763fc2a237d4ce7351722eb2 ****/
		%feature("compactdefaultargs") ShapeTool;
		%feature("autodoc", "Returns internal xcafdoc_shapetool tool.

Returns
-------
opencascade::handle<XCAFDoc_ShapeTool>
") ShapeTool;
		const opencascade::handle<XCAFDoc_ShapeTool> & ShapeTool();

};


%make_alias(XCAFDoc_MaterialTool)

%extend XCAFDoc_MaterialTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*********************
* class XCAFDoc_Note *
*********************/
%nodefaultctor XCAFDoc_Note;
class XCAFDoc_Note : public TDF_Attribute {
	public:

        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };

            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** Get ******************/
		/**** md5 signature: 1ceee7b570e5f239e158c7517ea24a7d ****/
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "Finds a reference attribute on the given label and returns it, if it is found.

Parameters
----------
theLabel: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_Note>
") Get;
		static opencascade::handle<XCAFDoc_Note> Get(const TDF_Label & theLabel);

		/****************** GetObject ******************/
		/**** md5 signature: 71dbd3fdb8801c6f0c263f66457f91b5 ****/
		%feature("compactdefaultargs") GetObject;
		%feature("autodoc", "Returns auxiliary data object.

Returns
-------
opencascade::handle<XCAFNoteObjects_NoteObject>
") GetObject;
		opencascade::handle<XCAFNoteObjects_NoteObject> GetObject();

		/****************** IsMine ******************/
		/**** md5 signature: e19f4305102e0c7325115c67c4cb34d6 ****/
		%feature("compactdefaultargs") IsMine;
		%feature("autodoc", "Checks if the given label represents a note.

Parameters
----------
theLabel: TDF_Label

Returns
-------
bool
") IsMine;
		static Standard_Boolean IsMine(const TDF_Label & theLabel);

		/****************** IsOrphan ******************/
		/**** md5 signature: eb05d99cebc22df31e6330e0e53fe62c ****/
		%feature("compactdefaultargs") IsOrphan;
		%feature("autodoc", "Checks if the note isn't linked to annotated items.

Returns
-------
bool
") IsOrphan;
		Standard_Boolean IsOrphan();

		/****************** Paste ******************/
		/**** md5 signature: f98a67c4f327c9d7cceaa72c60db3f31 ****/
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "No available documentation.

Parameters
----------
theAttrInto: TDF_Attribute
theRT: TDF_RelocationTable

Returns
-------
None
") Paste;
		void Paste(const opencascade::handle<TDF_Attribute> & theAttrInto, const opencascade::handle<TDF_RelocationTable> & theRT);

		/****************** Restore ******************/
		/**** md5 signature: 64974bd3177ca3958ca6f642f1c665f5 ****/
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "No available documentation.

Parameters
----------
theAttrFrom: TDF_Attribute

Returns
-------
None
") Restore;
		void Restore(const opencascade::handle<TDF_Attribute> & theAttrFrom);

		/****************** Set ******************/
		/**** md5 signature: 7028b1b5759e056bb785b7cb64a8734a ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Sets the user name and the timestamp of the note. \param [in] theusername - the user associated with the note. \param [in] thetimestamp - timestamp of the note. eturn a handle to the attribute instance.

Parameters
----------
theUserName: str
theTimeStamp: str

Returns
-------
None
") Set;
		void Set(TCollection_ExtendedString theUserName, TCollection_ExtendedString theTimeStamp);

		/****************** SetObject ******************/
		/**** md5 signature: 71119db957b809a32068e9c60ccf3aaf ****/
		%feature("compactdefaultargs") SetObject;
		%feature("autodoc", "Updates auxiliary data.

Parameters
----------
theObject: XCAFNoteObjects_NoteObject

Returns
-------
None
") SetObject;
		void SetObject(const opencascade::handle<XCAFNoteObjects_NoteObject> & theObject);

		/****************** TimeStamp ******************/
		/**** md5 signature: da74f049fea064226fb35bba315df859 ****/
		%feature("compactdefaultargs") TimeStamp;
		%feature("autodoc", "Returns the timestamp of the note.

Returns
-------
TCollection_ExtendedString
") TimeStamp;
		const TCollection_ExtendedString & TimeStamp();

		/****************** UserName ******************/
		/**** md5 signature: 9adfab6768c9cf07c019afd496692827 ****/
		%feature("compactdefaultargs") UserName;
		%feature("autodoc", "Returns the user name, who created the note.

Returns
-------
TCollection_ExtendedString
") UserName;
		const TCollection_ExtendedString & UserName();

};


%make_alias(XCAFDoc_Note)

%extend XCAFDoc_Note {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**************************
* class XCAFDoc_NotesTool *
**************************/
class XCAFDoc_NotesTool : public TDataStd_GenericEmpty {
	public:
		/****************** XCAFDoc_NotesTool ******************/
		/**** md5 signature: c0e77601b7f2e50489392007c2098938 ****/
		%feature("compactdefaultargs") XCAFDoc_NotesTool;
		%feature("autodoc", "Creates an empty notes tool.

Returns
-------
None
") XCAFDoc_NotesTool;
		 XCAFDoc_NotesTool();

		/****************** AddNote ******************/
		/**** md5 signature: c9f044efe559b77b586fd200c2229d61 ****/
		%feature("compactdefaultargs") AddNote;
		%feature("autodoc", "Adds the given note to the assembly item. \param [in] thenotelabel - note label. \param [in] theitemid - assembly item id. eturn a handle to the assembly reference attribute.

Parameters
----------
theNoteLabel: TDF_Label
theItemId: XCAFDoc_AssemblyItemId

Returns
-------
opencascade::handle<XCAFDoc_AssemblyItemRef>
") AddNote;
		opencascade::handle<XCAFDoc_AssemblyItemRef> AddNote(const TDF_Label & theNoteLabel, const XCAFDoc_AssemblyItemId & theItemId);

		/****************** AddNote ******************/
		/**** md5 signature: 51ab4480df00fbda55f45031ccc45334 ****/
		%feature("compactdefaultargs") AddNote;
		%feature("autodoc", "Adds the given note to the labeled item. \param [in] thenotelabel - note label. \param [in] theitemlabel - item label. eturn a handle to the assembly reference attribute.

Parameters
----------
theNoteLabel: TDF_Label
theItemLabel: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_AssemblyItemRef>
") AddNote;
		opencascade::handle<XCAFDoc_AssemblyItemRef> AddNote(const TDF_Label & theNoteLabel, const TDF_Label & theItemLabel);

		/****************** AddNoteToAttr ******************/
		/**** md5 signature: 2994c4af4a88647f63b347e8d6a87709 ****/
		%feature("compactdefaultargs") AddNoteToAttr;
		%feature("autodoc", "Adds the given note to the assembly item's attribute. \param [in] thenotelabel - note label. \param [in] theitemid - assembly item id. \param [in] theguid - assembly item's attribute guid. eturn a handle to the assembly reference attribute.

Parameters
----------
theNoteLabel: TDF_Label
theItemId: XCAFDoc_AssemblyItemId
theGUID: Standard_GUID

Returns
-------
opencascade::handle<XCAFDoc_AssemblyItemRef>
") AddNoteToAttr;
		opencascade::handle<XCAFDoc_AssemblyItemRef> AddNoteToAttr(const TDF_Label & theNoteLabel, const XCAFDoc_AssemblyItemId & theItemId, const Standard_GUID & theGUID);

		/****************** AddNoteToAttr ******************/
		/**** md5 signature: da5393bd90097082a350ebed45a901fe ****/
		%feature("compactdefaultargs") AddNoteToAttr;
		%feature("autodoc", "Adds the given note to the labeled item's attribute. \param [in] thenotelabel - note label. \param [in] theitemlabel - item label. \param [in] theguid - assembly item's attribute guid. eturn a handle to the assembly reference attribute.

Parameters
----------
theNoteLabel: TDF_Label
theItemLabel: TDF_Label
theGUID: Standard_GUID

Returns
-------
opencascade::handle<XCAFDoc_AssemblyItemRef>
") AddNoteToAttr;
		opencascade::handle<XCAFDoc_AssemblyItemRef> AddNoteToAttr(const TDF_Label & theNoteLabel, const TDF_Label & theItemLabel, const Standard_GUID & theGUID);

		/****************** AddNoteToSubshape ******************/
		/**** md5 signature: 2360780bf2c45574d710cc0ef52bdaa8 ****/
		%feature("compactdefaultargs") AddNoteToSubshape;
		%feature("autodoc", "Adds the given note to the assembly item's subshape. \param [in] thenotelabel - note label. \param [in] theitemid - assembly item id. \param [in] thesubshapeindex - assembly item's subshape index. eturn a handle to the assembly reference attribute.

Parameters
----------
theNoteLabel: TDF_Label
theItemId: XCAFDoc_AssemblyItemId
theSubshapeIndex: int

Returns
-------
opencascade::handle<XCAFDoc_AssemblyItemRef>
") AddNoteToSubshape;
		opencascade::handle<XCAFDoc_AssemblyItemRef> AddNoteToSubshape(const TDF_Label & theNoteLabel, const XCAFDoc_AssemblyItemId & theItemId, Standard_Integer theSubshapeIndex);

		/****************** AddNoteToSubshape ******************/
		/**** md5 signature: 75680fb4a33672aa1df6d75ea75cecee ****/
		%feature("compactdefaultargs") AddNoteToSubshape;
		%feature("autodoc", "Adds the given note to the labeled item's subshape. \param [in] thenotelabel - note label. \param [in] theitemlabel - item label. \param [in] thesubshapeindex - assembly item's subshape index. eturn a handle to the assembly reference attribute.

Parameters
----------
theNoteLabel: TDF_Label
theItemLabel: TDF_Label
theSubshapeIndex: int

Returns
-------
opencascade::handle<XCAFDoc_AssemblyItemRef>
") AddNoteToSubshape;
		opencascade::handle<XCAFDoc_AssemblyItemRef> AddNoteToSubshape(const TDF_Label & theNoteLabel, const TDF_Label & theItemLabel, Standard_Integer theSubshapeIndex);

		/****************** CreateBalloon ******************/
		/**** md5 signature: 4107d08404aed1c9342055777bdbc42b ****/
		%feature("compactdefaultargs") CreateBalloon;
		%feature("autodoc", "Create a new 'balloon' note. creates a new label under the notes hive and attaches ef xcafdoc_noteballoon attribute (derived ftom ef xcafdoc_note). \param [in] theusername - the user associated with the note. \param [in] thetimestamp - timestamp of the note. \param [in] thecomment - textual comment. eturn a handle to the base note attribute.

Parameters
----------
theUserName: str
theTimeStamp: str
theComment: str

Returns
-------
opencascade::handle<XCAFDoc_Note>
") CreateBalloon;
		opencascade::handle<XCAFDoc_Note> CreateBalloon(TCollection_ExtendedString theUserName, TCollection_ExtendedString theTimeStamp, TCollection_ExtendedString theComment);

		/****************** CreateBinData ******************/
		/**** md5 signature: 8fffa593325c02823c46011e17c3c3e5 ****/
		%feature("compactdefaultargs") CreateBinData;
		%feature("autodoc", "Create a new note with data loaded from a binary file. creates a new label under the notes hive and attaches ef xcafdoc_notecomment attribute (derived ftom ef xcafdoc_note). \param [in] theusername - the user associated with the note. \param [in] thetimestamp - timestamp of the note. \param [in] thetitle - file title. \param [in] themimetype - mime type of the file. \param [in] thefile - input binary file. eturn a handle to the base note attribute.

Parameters
----------
theUserName: str
theTimeStamp: str
theTitle: str
theMIMEtype: str
theFile: OSD_File

Returns
-------
opencascade::handle<XCAFDoc_Note>
") CreateBinData;
		opencascade::handle<XCAFDoc_Note> CreateBinData(TCollection_ExtendedString theUserName, TCollection_ExtendedString theTimeStamp, TCollection_ExtendedString theTitle, TCollection_AsciiString theMIMEtype, OSD_File & theFile);

		/****************** CreateBinData ******************/
		/**** md5 signature: f95933746f1ce2d9b2f0b561d3f3005d ****/
		%feature("compactdefaultargs") CreateBinData;
		%feature("autodoc", "Create a new note with data loaded from a byte data array. creates a new label under the notes hive and attaches ef xcafdoc_notecomment attribute (derived ftom ef xcafdoc_note). \param [in] theusername - the user associated with the note. \param [in] thetimestamp - timestamp of the note. \param [in] thetitle - data title. \param [in] themimetype - mime type of the file. \param [in] thedata - byte data array. eturn a handle to the base note attribute.

Parameters
----------
theUserName: str
theTimeStamp: str
theTitle: str
theMIMEtype: str
theData: TColStd_HArray1OfByte

Returns
-------
opencascade::handle<XCAFDoc_Note>
") CreateBinData;
		opencascade::handle<XCAFDoc_Note> CreateBinData(TCollection_ExtendedString theUserName, TCollection_ExtendedString theTimeStamp, TCollection_ExtendedString theTitle, TCollection_AsciiString theMIMEtype, const opencascade::handle<TColStd_HArray1OfByte> & theData);

		/****************** CreateComment ******************/
		/**** md5 signature: 41b663076b0b608af4ceedbf243160b2 ****/
		%feature("compactdefaultargs") CreateComment;
		%feature("autodoc", "Create a new comment note. creates a new label under the notes hive and attaches ef xcafdoc_notecomment attribute (derived ftom ef xcafdoc_note). \param [in] theusername - the user associated with the note. \param [in] thetimestamp - timestamp of the note. \param [in] thecomment - textual comment. eturn a handle to the base note attribute.

Parameters
----------
theUserName: str
theTimeStamp: str
theComment: str

Returns
-------
opencascade::handle<XCAFDoc_Note>
") CreateComment;
		opencascade::handle<XCAFDoc_Note> CreateComment(TCollection_ExtendedString theUserName, TCollection_ExtendedString theTimeStamp, TCollection_ExtendedString theComment);

		/****************** DeleteAllNotes ******************/
		/**** md5 signature: d76db32223599baa426956fe4ae117fb ****/
		%feature("compactdefaultargs") DeleteAllNotes;
		%feature("autodoc", "Deletes all notes. clears all annotations. eturn number of deleted notes.

Returns
-------
int
") DeleteAllNotes;
		Standard_Integer DeleteAllNotes();

		/****************** DeleteNote ******************/
		/**** md5 signature: fcc5261113674a7f0d27fa7a33b4b226 ****/
		%feature("compactdefaultargs") DeleteNote;
		%feature("autodoc", "Deletes the given note. removes all links with items annotated by the note. \param [in] thenotelabel - note label. eturn true if the note is deleted, otherwise - false.

Parameters
----------
theNoteLabel: TDF_Label

Returns
-------
bool
") DeleteNote;
		Standard_Boolean DeleteNote(const TDF_Label & theNoteLabel);

		/****************** DeleteNotes ******************/
		/**** md5 signature: 212195de7ae0789a3ae0fef0b02cb687 ****/
		%feature("compactdefaultargs") DeleteNotes;
		%feature("autodoc", "Deletes the given notes. removes all links with items annotated by the notes. \param [in] thenotelabels - note label sequence. eturn number of deleted notes.

Parameters
----------
theNoteLabels: TDF_LabelSequence

Returns
-------
int
") DeleteNotes;
		Standard_Integer DeleteNotes(TDF_LabelSequence & theNoteLabels);

		/****************** DeleteOrphanNotes ******************/
		/**** md5 signature: 28735e5cf750d9e8f9d4b700139d69d9 ****/
		%feature("compactdefaultargs") DeleteOrphanNotes;
		%feature("autodoc", "Deletes all notes that aren't linked to annotated items. eturn number of deleted notes.

Returns
-------
int
") DeleteOrphanNotes;
		Standard_Integer DeleteOrphanNotes();


        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
		/****************** FindAnnotatedItem ******************/
		/**** md5 signature: 7e562ae1ec4bb3d6b2a750f4a95ec514 ****/
		%feature("compactdefaultargs") FindAnnotatedItem;
		%feature("autodoc", "Finds a label of the given assembly item id in the annotated items hive. \param [in] theitemid - assembly item id. eturn annotated item label if it is found, otherwise - null label.

Parameters
----------
theItemId: XCAFDoc_AssemblyItemId

Returns
-------
TDF_Label
") FindAnnotatedItem;
		TDF_Label FindAnnotatedItem(const XCAFDoc_AssemblyItemId & theItemId);

		/****************** FindAnnotatedItem ******************/
		/**** md5 signature: b57f724d81528931d6f6f4e8c20759bd ****/
		%feature("compactdefaultargs") FindAnnotatedItem;
		%feature("autodoc", "Finds a label of the given labeled item in the annotated items hive. \param [in] theitemlabel - item label. eturn annotated item label if it is found, otherwise - null label.

Parameters
----------
theItemLabel: TDF_Label

Returns
-------
TDF_Label
") FindAnnotatedItem;
		TDF_Label FindAnnotatedItem(const TDF_Label & theItemLabel);

		/****************** FindAnnotatedItemAttr ******************/
		/**** md5 signature: 408bda6b14038825cc94a8eb0bccca37 ****/
		%feature("compactdefaultargs") FindAnnotatedItemAttr;
		%feature("autodoc", "Finds a label of the given assembly item's attribute in the annotated items hive. \param [in] theitemid - assembly item id. \param [in] theguid - assembly item's attribute guid. eturn annotated item label if it is found, otherwise - null label.

Parameters
----------
theItemId: XCAFDoc_AssemblyItemId
theGUID: Standard_GUID

Returns
-------
TDF_Label
") FindAnnotatedItemAttr;
		TDF_Label FindAnnotatedItemAttr(const XCAFDoc_AssemblyItemId & theItemId, const Standard_GUID & theGUID);

		/****************** FindAnnotatedItemAttr ******************/
		/**** md5 signature: 2144cf2f088a63cb26df5ba367daca0f ****/
		%feature("compactdefaultargs") FindAnnotatedItemAttr;
		%feature("autodoc", "Finds a label of the given labeled item's attribute in the annotated items hive. \param [in] theitemlabel - item label. \param [in] theguid - item's attribute guid. eturn annotated item label if it is found, otherwise - null label.

Parameters
----------
theItemLabel: TDF_Label
theGUID: Standard_GUID

Returns
-------
TDF_Label
") FindAnnotatedItemAttr;
		TDF_Label FindAnnotatedItemAttr(const TDF_Label & theItemLabel, const Standard_GUID & theGUID);

		/****************** FindAnnotatedItemSubshape ******************/
		/**** md5 signature: 0f46e6375dcc80ee14b74dcf453de9f3 ****/
		%feature("compactdefaultargs") FindAnnotatedItemSubshape;
		%feature("autodoc", "Finds a label of the given assembly item's subshape in the annotated items hive. \param [in] theitemid - assembly item id. \param [in] thesubshapeindex - assembly item's subshape index. eturn annotated item label if it is found, otherwise - null label.

Parameters
----------
theItemId: XCAFDoc_AssemblyItemId
theSubshapeIndex: int

Returns
-------
TDF_Label
") FindAnnotatedItemSubshape;
		TDF_Label FindAnnotatedItemSubshape(const XCAFDoc_AssemblyItemId & theItemId, Standard_Integer theSubshapeIndex);

		/****************** FindAnnotatedItemSubshape ******************/
		/**** md5 signature: 3a2962e0ffccec18c01b843ebabcb970 ****/
		%feature("compactdefaultargs") FindAnnotatedItemSubshape;
		%feature("autodoc", "Finds a label of the given labeled item's subshape in the annotated items hive. \param [in] theitemlabel - item label. \param [in] thesubshapeindex - labeled item's subshape index. eturn annotated item label if it is found, otherwise - null label.

Parameters
----------
theItemLabel: TDF_Label
theSubshapeIndex: int

Returns
-------
TDF_Label
") FindAnnotatedItemSubshape;
		TDF_Label FindAnnotatedItemSubshape(const TDF_Label & theItemLabel, Standard_Integer theSubshapeIndex);

		/****************** GetAnnotatedItems ******************/
		/**** md5 signature: 4496039dd3c39e53d288a82ad9564402 ****/
		%feature("compactdefaultargs") GetAnnotatedItems;
		%feature("autodoc", "Returns all labels from the annotated items hive. the label sequence isn't cleared beforehand. \param [out] thenotelabels - sequence of labels.

Parameters
----------
theLabels: TDF_LabelSequence

Returns
-------
None
") GetAnnotatedItems;
		void GetAnnotatedItems(TDF_LabelSequence & theLabels);

		/****************** GetAnnotatedItemsLabel ******************/
		/**** md5 signature: ed92168a16310f5f00b16c87f1b19956 ****/
		%feature("compactdefaultargs") GetAnnotatedItemsLabel;
		%feature("autodoc", "Returns the label of the annotated items hive.

Returns
-------
TDF_Label
") GetAnnotatedItemsLabel;
		TDF_Label GetAnnotatedItemsLabel();

		/****************** GetAttrNotes ******************/
		/**** md5 signature: 2484311fbe361979f31b83ffcfd0a4ba ****/
		%feature("compactdefaultargs") GetAttrNotes;
		%feature("autodoc", "Gets all note labels of the assembly item's attribute. notes linked to the item itself or to item's subshapes aren't taken into account. the label sequence isn't cleared beforehand. \param [in] theitemid - assembly item id. \param [in] theguid - assembly item's attribute guid. \param [out] thenotelabels - sequence of labels. eturn number of added labels.

Parameters
----------
theItemId: XCAFDoc_AssemblyItemId
theGUID: Standard_GUID
theNoteLabels: TDF_LabelSequence

Returns
-------
int
") GetAttrNotes;
		Standard_Integer GetAttrNotes(const XCAFDoc_AssemblyItemId & theItemId, const Standard_GUID & theGUID, TDF_LabelSequence & theNoteLabels);

		/****************** GetAttrNotes ******************/
		/**** md5 signature: e918e199a4549c610d658d5b0782ca3e ****/
		%feature("compactdefaultargs") GetAttrNotes;
		%feature("autodoc", "Gets all note labels of the labeled item's attribute. notes linked to the item itself or to item's subshapes aren't taken into account. the label sequence isn't cleared beforehand. \param [in] theitemlabel - item label. \param [in] theguid - item's attribute guid. \param [out] thenotelabels - sequence of labels. eturn number of added labels.

Parameters
----------
theItemLabel: TDF_Label
theGUID: Standard_GUID
theNoteLabels: TDF_LabelSequence

Returns
-------
int
") GetAttrNotes;
		Standard_Integer GetAttrNotes(const TDF_Label & theItemLabel, const Standard_GUID & theGUID, TDF_LabelSequence & theNoteLabels);

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "Returns default attribute guid.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetNotes ******************/
		/**** md5 signature: 3eaff0039b5762932a99faba6128a7f8 ****/
		%feature("compactdefaultargs") GetNotes;
		%feature("autodoc", "Returns all labels from the notes hive. the label sequence isn't cleared beforehand. \param [out] thenotelabels - sequence of labels.

Parameters
----------
theNoteLabels: TDF_LabelSequence

Returns
-------
None
") GetNotes;
		void GetNotes(TDF_LabelSequence & theNoteLabels);

		/****************** GetNotes ******************/
		/**** md5 signature: 9677742e6436764971a3aa625485ac9b ****/
		%feature("compactdefaultargs") GetNotes;
		%feature("autodoc", "Gets all note labels of the assembly item. notes linked to item's subshapes or attributes aren't taken into account. the label sequence isn't cleared beforehand. \param [in] theitemid - assembly item id. \param [out] thenotelabels - sequence of labels. eturn number of added labels.

Parameters
----------
theItemId: XCAFDoc_AssemblyItemId
theNoteLabels: TDF_LabelSequence

Returns
-------
int
") GetNotes;
		Standard_Integer GetNotes(const XCAFDoc_AssemblyItemId & theItemId, TDF_LabelSequence & theNoteLabels);

		/****************** GetNotes ******************/
		/**** md5 signature: ca573f8db3190ce342926c3482e585fa ****/
		%feature("compactdefaultargs") GetNotes;
		%feature("autodoc", "Gets all note labels of the labeled item. notes linked to item's attributes aren't taken into account. the label sequence isn't cleared beforehand. \param [in] theitemlabel - item label. \param [out] thenotelabels - sequence of labels. eturn number of added labels.

Parameters
----------
theItemLabel: TDF_Label
theNoteLabels: TDF_LabelSequence

Returns
-------
int
") GetNotes;
		Standard_Integer GetNotes(const TDF_Label & theItemLabel, TDF_LabelSequence & theNoteLabels);

		/****************** GetNotesLabel ******************/
		/**** md5 signature: 4fe051c0e9aeba91b144247aba0adb33 ****/
		%feature("compactdefaultargs") GetNotesLabel;
		%feature("autodoc", "Returns the label of the notes hive.

Returns
-------
TDF_Label
") GetNotesLabel;
		TDF_Label GetNotesLabel();

		/****************** GetOrphanNotes ******************/
		/**** md5 signature: 5c06cc6eaa83dfdb361a5977b68e2fa6 ****/
		%feature("compactdefaultargs") GetOrphanNotes;
		%feature("autodoc", "Returns note labels that aren't linked to annotated items. the label sequence isn't cleared beforehand. \param [out] thenotelabels - sequence of labels.

Parameters
----------
theNoteLabels: TDF_LabelSequence

Returns
-------
None
") GetOrphanNotes;
		void GetOrphanNotes(TDF_LabelSequence & theNoteLabels);

		/****************** GetSubshapeNotes ******************/
		/**** md5 signature: a8e37adf0f297855e40b9d82c32f26d2 ****/
		%feature("compactdefaultargs") GetSubshapeNotes;
		%feature("autodoc", "Gets all note labels of the annotated item. notes linked to the item itself or to item's attributes taken into account. the label sequence isn't cleared beforehand. \param [in] theitemid - assembly item id. \param [in] thesubshapeindex - assembly item's subshape index. \param [out] thenotelabels - sequence of labels. eturn number of added labels.

Parameters
----------
theItemId: XCAFDoc_AssemblyItemId
theSubshapeIndex: int
theNoteLabels: TDF_LabelSequence

Returns
-------
int
") GetSubshapeNotes;
		Standard_Integer GetSubshapeNotes(const XCAFDoc_AssemblyItemId & theItemId, Standard_Integer theSubshapeIndex, TDF_LabelSequence & theNoteLabels);

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** IsAnnotatedItem ******************/
		/**** md5 signature: d249559d7dcdebf95d733b3f22bc2aec ****/
		%feature("compactdefaultargs") IsAnnotatedItem;
		%feature("autodoc", "Checks if the given assembly item is annotated. \param [in] theitemid - assembly item id. eturn true if the item is annotated, otherwise - false.

Parameters
----------
theItemId: XCAFDoc_AssemblyItemId

Returns
-------
bool
") IsAnnotatedItem;
		Standard_Boolean IsAnnotatedItem(const XCAFDoc_AssemblyItemId & theItemId);

		/****************** IsAnnotatedItem ******************/
		/**** md5 signature: 2aa4fbbcf177e4060de93407bf25a3bd ****/
		%feature("compactdefaultargs") IsAnnotatedItem;
		%feature("autodoc", "Checks if the given labeled item is annotated. \param [in] theitemlabel - item label. eturn true if the item is annotated, otherwise - false.

Parameters
----------
theItemLabel: TDF_Label

Returns
-------
bool
") IsAnnotatedItem;
		Standard_Boolean IsAnnotatedItem(const TDF_Label & theItemLabel);

		/****************** NbAnnotatedItems ******************/
		/**** md5 signature: 271bd476dece9faa3ecc0379c24b0b14 ****/
		%feature("compactdefaultargs") NbAnnotatedItems;
		%feature("autodoc", "Returns the number of labels in the annotated items hive.

Returns
-------
int
") NbAnnotatedItems;
		Standard_Integer NbAnnotatedItems();

		/****************** NbNotes ******************/
		/**** md5 signature: 1e0dec8eb135bf5406df279926405070 ****/
		%feature("compactdefaultargs") NbNotes;
		%feature("autodoc", "Returns the number of labels in the notes hive.

Returns
-------
int
") NbNotes;
		Standard_Integer NbNotes();

		/****************** NbOrphanNotes ******************/
		/**** md5 signature: af3b04100b88fbb2f39a73d2e8ea0fc2 ****/
		%feature("compactdefaultargs") NbOrphanNotes;
		%feature("autodoc", "Returns number of notes that aren't linked to annotated items.

Returns
-------
int
") NbOrphanNotes;
		Standard_Integer NbOrphanNotes();

		/****************** RemoveAllAttrNotes ******************/
		/**** md5 signature: f87cc4ba4b5336a7a43b4abcd34c0df0 ****/
		%feature("compactdefaultargs") RemoveAllAttrNotes;
		%feature("autodoc", "Removes all notes from the assembly item's attribute. \param [in] theitemid - assembly item id. \param [in] theguid - assembly item's attribute guid. \param [in] thedeliforphan - deletes removed notes from the notes  hive if there are no more annotated items  linked with the notes. eturn true if the notes are removed, otherwise - false.

Parameters
----------
theItemId: XCAFDoc_AssemblyItemId
theGUID: Standard_GUID
theDelIfOrphan: bool,optional
	default value is Standard_False

Returns
-------
bool
") RemoveAllAttrNotes;
		Standard_Boolean RemoveAllAttrNotes(const XCAFDoc_AssemblyItemId & theItemId, const Standard_GUID & theGUID, Standard_Boolean theDelIfOrphan = Standard_False);

		/****************** RemoveAllAttrNotes ******************/
		/**** md5 signature: ab3384f6fec701536ba8a49ba8bf23e0 ****/
		%feature("compactdefaultargs") RemoveAllAttrNotes;
		%feature("autodoc", "Removes all notes from the labeled item's attribute. \param [in] theitemlabel - item label. \param [in] theguid - labeled item's attribute guid. \param [in] thedeliforphan - deletes removed notes from the notes  hive if there are no more annotated items  linked with the notes. eturn true if the notes are removed, otherwise - false.

Parameters
----------
theItemLabel: TDF_Label
theGUID: Standard_GUID
theDelIfOrphan: bool,optional
	default value is Standard_False

Returns
-------
bool
") RemoveAllAttrNotes;
		Standard_Boolean RemoveAllAttrNotes(const TDF_Label & theItemLabel, const Standard_GUID & theGUID, Standard_Boolean theDelIfOrphan = Standard_False);

		/****************** RemoveAllNotes ******************/
		/**** md5 signature: c85ade81eb2c8a7319078b3b2da7ff8c ****/
		%feature("compactdefaultargs") RemoveAllNotes;
		%feature("autodoc", "Removes all notes from the assembly item. \param [in] theitemid - assembly item id. \param [in] thedeliforphan - deletes removed notes from the notes  hive if there are no more annotated items  linked with the notes. eturn true if the notes are removed, otherwise - false.

Parameters
----------
theItemId: XCAFDoc_AssemblyItemId
theDelIfOrphan: bool,optional
	default value is Standard_False

Returns
-------
bool
") RemoveAllNotes;
		Standard_Boolean RemoveAllNotes(const XCAFDoc_AssemblyItemId & theItemId, Standard_Boolean theDelIfOrphan = Standard_False);

		/****************** RemoveAllNotes ******************/
		/**** md5 signature: 4d0ca199bab79b7dfdd558e2d3a8f8b6 ****/
		%feature("compactdefaultargs") RemoveAllNotes;
		%feature("autodoc", "Removes all notes from the labeled item. \param [in] theitemlabel - item label. \param [in] thedeliforphan - deletes removed notes from the notes  hive if there are no more annotated items  linked with the notes. eturn true if the notes are removed, otherwise - false.

Parameters
----------
theItemLabel: TDF_Label
theDelIfOrphan: bool,optional
	default value is Standard_False

Returns
-------
bool
") RemoveAllNotes;
		Standard_Boolean RemoveAllNotes(const TDF_Label & theItemLabel, Standard_Boolean theDelIfOrphan = Standard_False);

		/****************** RemoveAllSubshapeNotes ******************/
		/**** md5 signature: 61809034c9176602fc3ecfcb9095df7f ****/
		%feature("compactdefaultargs") RemoveAllSubshapeNotes;
		%feature("autodoc", "Removes all notes from the assembly item's subshape. \param [in] theitemid - assembly item id. \param [in] thesubshapeindex - assembly item's subshape index. \param [in] thedeliforphan - deletes removed notes from the notes  hive if there are no more annotated items  linked with the notes. eturn true if the notes are removed, otherwise - false.

Parameters
----------
theItemId: XCAFDoc_AssemblyItemId
theSubshapeIndex: int
theDelIfOrphan: bool,optional
	default value is Standard_False

Returns
-------
bool
") RemoveAllSubshapeNotes;
		Standard_Boolean RemoveAllSubshapeNotes(const XCAFDoc_AssemblyItemId & theItemId, Standard_Integer theSubshapeIndex, Standard_Boolean theDelIfOrphan = Standard_False);

		/****************** RemoveAttrNote ******************/
		/**** md5 signature: d19033e7c6ea63a7932cc6959c590c73 ****/
		%feature("compactdefaultargs") RemoveAttrNote;
		%feature("autodoc", "Removes a note from the assembly item's attribute. \param [in] thenotelabel - note label. \param [in] theitemid - assembly item id. \param [in] theguid - assembly item's attribute guid. \param [in] thedeliforphan - deletes the note from the notes hive  if there are no more assembly item's  attribute linked with the note. eturn true if the note is removed, otherwise - false.

Parameters
----------
theNoteLabel: TDF_Label
theItemId: XCAFDoc_AssemblyItemId
theGUID: Standard_GUID
theDelIfOrphan: bool,optional
	default value is Standard_False

Returns
-------
bool
") RemoveAttrNote;
		Standard_Boolean RemoveAttrNote(const TDF_Label & theNoteLabel, const XCAFDoc_AssemblyItemId & theItemId, const Standard_GUID & theGUID, Standard_Boolean theDelIfOrphan = Standard_False);

		/****************** RemoveAttrNote ******************/
		/**** md5 signature: f669a2661b6c80e2d0431ddabb8ed3ee ****/
		%feature("compactdefaultargs") RemoveAttrNote;
		%feature("autodoc", "Removes a note from the labeled item's attribute. \param [in] thenotelabel - note label. \param [in] theitemlabel - item label. \param [in] theguid - labeled item's attribute guid. \param [in] thedeliforphan - deletes the note from the notes hive  if there are no more assembly item's  attribute linked with the note. eturn true if the note is removed, otherwise - false.

Parameters
----------
theNoteLabel: TDF_Label
theItemLabel: TDF_Label
theGUID: Standard_GUID
theDelIfOrphan: bool,optional
	default value is Standard_False

Returns
-------
bool
") RemoveAttrNote;
		Standard_Boolean RemoveAttrNote(const TDF_Label & theNoteLabel, const TDF_Label & theItemLabel, const Standard_GUID & theGUID, Standard_Boolean theDelIfOrphan = Standard_False);

		/****************** RemoveNote ******************/
		/**** md5 signature: 59b78cbc6224f13948a628dcc964c09d ****/
		%feature("compactdefaultargs") RemoveNote;
		%feature("autodoc", "Removes the given note from the assembly item. \param [in] thenotelabel - note label. \param [in] theitemid - assembly item id. \param [in] thedeliforphan - deletes the note from the notes hive  if there are no more assembly items  linked with the note. eturn true if the note is removed, otherwise - false.

Parameters
----------
theNoteLabel: TDF_Label
theItemId: XCAFDoc_AssemblyItemId
theDelIfOrphan: bool,optional
	default value is Standard_False

Returns
-------
bool
") RemoveNote;
		Standard_Boolean RemoveNote(const TDF_Label & theNoteLabel, const XCAFDoc_AssemblyItemId & theItemId, Standard_Boolean theDelIfOrphan = Standard_False);

		/****************** RemoveNote ******************/
		/**** md5 signature: 894236c1135bf9f9bb6587f432d401b4 ****/
		%feature("compactdefaultargs") RemoveNote;
		%feature("autodoc", "Removes the given note from the labeled item. \param [in] thenotelabel - note label. \param [in] theitemlabel - item label. \param [in] thedeliforphan - deletes the note from the notes hive  if there are no more labeled items  linked with the note. eturn true if the note is removed, otherwise - false.

Parameters
----------
theNoteLabel: TDF_Label
theItemLabel: TDF_Label
theDelIfOrphan: bool,optional
	default value is Standard_False

Returns
-------
bool
") RemoveNote;
		Standard_Boolean RemoveNote(const TDF_Label & theNoteLabel, const TDF_Label & theItemLabel, Standard_Boolean theDelIfOrphan = Standard_False);

		/****************** RemoveSubshapeNote ******************/
		/**** md5 signature: 05c0bbc0887f4806997dd9253f6b254d ****/
		%feature("compactdefaultargs") RemoveSubshapeNote;
		%feature("autodoc", "Removes the given note from the assembly item's subshape. \param [in] thenotelabel - note label. \param [in] theitemid - assembly item id. \param [in] thesubshapeindex - assembly item's subshape index. \param [in] thedeliforphan - deletes the note from the notes hive  if there are no more assembly item's  subshape linked with the note. eturn true if the note is removed, otherwise - false.

Parameters
----------
theNoteLabel: TDF_Label
theItemId: XCAFDoc_AssemblyItemId
theSubshapeIndex: int
theDelIfOrphan: bool,optional
	default value is Standard_False

Returns
-------
bool
") RemoveSubshapeNote;
		Standard_Boolean RemoveSubshapeNote(const TDF_Label & theNoteLabel, const XCAFDoc_AssemblyItemId & theItemId, Standard_Integer theSubshapeIndex, Standard_Boolean theDelIfOrphan = Standard_False);

		/****************** RemoveSubshapeNote ******************/
		/**** md5 signature: bd5ee3f725fe9ebca8b1ca0381c54143 ****/
		%feature("compactdefaultargs") RemoveSubshapeNote;
		%feature("autodoc", "Removes the given note from the labeled item's subshape. \param [in] thenotelabel - note label. \param [in] theitemlabel - item label. \param [in] thesubshapeindex - labeled item's subshape index. \param [in] thedeliforphan - deletes the note from the notes hive  if there are no more assembly item's  subshape linked with the note. eturn true if the note is removed, otherwise - false.

Parameters
----------
theNoteLabel: TDF_Label
theItemLabel: TDF_Label
theSubshapeIndex: int
theDelIfOrphan: bool,optional
	default value is Standard_False

Returns
-------
bool
") RemoveSubshapeNote;
		Standard_Boolean RemoveSubshapeNote(const TDF_Label & theNoteLabel, const TDF_Label & theItemLabel, Standard_Integer theSubshapeIndex, Standard_Boolean theDelIfOrphan = Standard_False);

		/****************** Set ******************/
		/**** md5 signature: 2ff88c3f33292cb4a299d4e1fc57ff9a ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Create (if not exist) a notes tool from xcafdoc on thelabel.

Parameters
----------
theLabel: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_NotesTool>
") Set;
		static opencascade::handle<XCAFDoc_NotesTool> Set(const TDF_Label & theLabel);

};


%make_alias(XCAFDoc_NotesTool)

%extend XCAFDoc_NotesTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*****************************
* class XCAFDoc_ShapeMapTool *
*****************************/
class XCAFDoc_ShapeMapTool : public TDF_Attribute {
	public:
		/****************** XCAFDoc_ShapeMapTool ******************/
		/**** md5 signature: 718d3a0988987c0f4a6143f5dbd61cb1 ****/
		%feature("compactdefaultargs") XCAFDoc_ShapeMapTool;
		%feature("autodoc", "Creates an empty tool.

Returns
-------
None
") XCAFDoc_ShapeMapTool;
		 XCAFDoc_ShapeMapTool();


            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetMap ******************/
		/**** md5 signature: 97196e1d12ab20d57df7044569c41ac7 ****/
		%feature("compactdefaultargs") GetMap;
		%feature("autodoc", "No available documentation.

Returns
-------
TopTools_IndexedMapOfShape
") GetMap;
		const TopTools_IndexedMapOfShape & GetMap();

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** IsSubShape ******************/
		/**** md5 signature: 977d342fcae58056c8f85ffd45dcc15b ****/
		%feature("compactdefaultargs") IsSubShape;
		%feature("autodoc", "Checks whether shape <sub> is subshape of shape stored on label shapel.

Parameters
----------
sub: TopoDS_Shape

Returns
-------
bool
") IsSubShape;
		Standard_Boolean IsSubShape(const TopoDS_Shape & sub);

		/****************** NewEmpty ******************/
		/**** md5 signature: c6d13c9ecc64c6c803b6e119e8216934 ****/
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TDF_Attribute>
") NewEmpty;
		opencascade::handle<TDF_Attribute> NewEmpty();

		/****************** Paste ******************/
		/**** md5 signature: a6ff306a759c68a191c0262635db980f ****/
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "No available documentation.

Parameters
----------
into: TDF_Attribute
RT: TDF_RelocationTable

Returns
-------
None
") Paste;
		void Paste(const opencascade::handle<TDF_Attribute> & into, const opencascade::handle<TDF_RelocationTable> & RT);

		/****************** Restore ******************/
		/**** md5 signature: ddeae219d389a1d89eecb3e23c73522a ****/
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "No available documentation.

Parameters
----------
with: TDF_Attribute

Returns
-------
None
") Restore;
		void Restore(const opencascade::handle<TDF_Attribute> & with);

		/****************** Set ******************/
		/**** md5 signature: 560ff08959f299869cc3123eea33884b ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Create (if not exist) shapetool from xcafdoc on <l>.

Parameters
----------
L: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_ShapeMapTool>
") Set;
		static opencascade::handle<XCAFDoc_ShapeMapTool> Set(const TDF_Label & L);

		/****************** SetShape ******************/
		/**** md5 signature: 61fbf3edc3841b29e8ccf415d8706a1b ****/
		%feature("compactdefaultargs") SetShape;
		%feature("autodoc", "Sets representation (topods_shape) for top-level shape.

Parameters
----------
S: TopoDS_Shape

Returns
-------
None
") SetShape;
		void SetShape(const TopoDS_Shape & S);

};


%make_alias(XCAFDoc_ShapeMapTool)

%extend XCAFDoc_ShapeMapTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**************************
* class XCAFDoc_ShapeTool *
**************************/
class XCAFDoc_ShapeTool : public TDataStd_GenericEmpty {
	public:
		/****************** XCAFDoc_ShapeTool ******************/
		/**** md5 signature: 5b97c0c77598e644de30c3b8c03cca11 ****/
		%feature("compactdefaultargs") XCAFDoc_ShapeTool;
		%feature("autodoc", "Creates an empty tool creates a tool to work with a document <doc> attaches to label xcafdoc::labelshapes().

Returns
-------
None
") XCAFDoc_ShapeTool;
		 XCAFDoc_ShapeTool();

		/****************** AddComponent ******************/
		/**** md5 signature: b70e09b3452825fc10a94bf2cbba9eb7 ****/
		%feature("compactdefaultargs") AddComponent;
		%feature("autodoc", "Adds a component given by its label and location to the assembly note: assembly must be isassembly() or issimpleshape().

Parameters
----------
assembly: TDF_Label
comp: TDF_Label
Loc: TopLoc_Location

Returns
-------
TDF_Label
") AddComponent;
		TDF_Label AddComponent(const TDF_Label & assembly, const TDF_Label & comp, const TopLoc_Location & Loc);

		/****************** AddComponent ******************/
		/**** md5 signature: 444ff2989c6c63d50f6de580cca46794 ****/
		%feature("compactdefaultargs") AddComponent;
		%feature("autodoc", "Adds a shape (located) as a component to the assembly if necessary, creates an additional top-level shape for component and return the label of component. if expand is true and component is compound, it will be created as assembly also note: assembly must be isassembly() or issimpleshape().

Parameters
----------
assembly: TDF_Label
comp: TopoDS_Shape
expand: bool,optional
	default value is Standard_False

Returns
-------
TDF_Label
") AddComponent;
		TDF_Label AddComponent(const TDF_Label & assembly, const TopoDS_Shape & comp, const Standard_Boolean expand = Standard_False);

		/****************** AddShape ******************/
		/**** md5 signature: ab520f98165c9ecf40f3fee310927942 ****/
		%feature("compactdefaultargs") AddShape;
		%feature("autodoc", "Adds a new top-level (creates and returns a new label) if makeassembly is true, treats topabs_compound shapes as assemblies (creates assembly structure). note: <makeprepare> replace components without location in assembly by located components to avoid some problems. if autonaming() is true then automatically attaches names.

Parameters
----------
S: TopoDS_Shape
makeAssembly: bool,optional
	default value is Standard_True
makePrepare: bool,optional
	default value is Standard_True

Returns
-------
TDF_Label
") AddShape;
		TDF_Label AddShape(const TopoDS_Shape & S, const Standard_Boolean makeAssembly = Standard_True, const Standard_Boolean makePrepare = Standard_True);

		/****************** AddSubShape ******************/
		/**** md5 signature: 558754a0421156ef049e0b4507806193 ****/
		%feature("compactdefaultargs") AddSubShape;
		%feature("autodoc", "Adds a label for subshape <sub> of shape stored on label shapel returns null label if it is not subshape.

Parameters
----------
shapeL: TDF_Label
sub: TopoDS_Shape

Returns
-------
TDF_Label
") AddSubShape;
		TDF_Label AddSubShape(const TDF_Label & shapeL, const TopoDS_Shape & sub);

		/****************** AddSubShape ******************/
		/**** md5 signature: 3e661272c759ab94382d909a6b34a606 ****/
		%feature("compactdefaultargs") AddSubShape;
		%feature("autodoc", "Adds (of finds already existed) a label for subshape <sub> of shape stored on label shapel. label addedsubshapel returns added (found) label or empty in case of wrong subshape. returns true, if new shape was added, false in case of already existed subshape/wrong subshape.

Parameters
----------
shapeL: TDF_Label
sub: TopoDS_Shape
addedSubShapeL: TDF_Label

Returns
-------
bool
") AddSubShape;
		Standard_Boolean AddSubShape(const TDF_Label & shapeL, const TopoDS_Shape & sub, TDF_Label & addedSubShapeL);

		/****************** AutoNaming ******************/
		/**** md5 signature: c4c4154491210e47fd199a3970712f25 ****/
		%feature("compactdefaultargs") AutoNaming;
		%feature("autodoc", "Returns current auto-naming mode. see setautonaming() for description.

Returns
-------
bool
") AutoNaming;
		static Standard_Boolean AutoNaming();

		/****************** BaseLabel ******************/
		/**** md5 signature: cb499d8135863e96e585085d0b85c75a ****/
		%feature("compactdefaultargs") BaseLabel;
		%feature("autodoc", "Returns the label under which shapes are stored.

Returns
-------
TDF_Label
") BaseLabel;
		TDF_Label BaseLabel();

		/****************** ComputeShapes ******************/
		/**** md5 signature: fb7b892d8fb91ca0f8a461452a468488 ****/
		%feature("compactdefaultargs") ComputeShapes;
		%feature("autodoc", "Recursive.

Parameters
----------
L: TDF_Label

Returns
-------
None
") ComputeShapes;
		void ComputeShapes(const TDF_Label & L);

		/****************** ComputeSimpleShapes ******************/
		/**** md5 signature: 8f21e84f2d7c8a5855df571cb8738ea6 ****/
		%feature("compactdefaultargs") ComputeSimpleShapes;
		%feature("autodoc", "Compute a sequence of simple shapes.

Returns
-------
None
") ComputeSimpleShapes;
		void ComputeSimpleShapes();


        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };

            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** Expand ******************/
		/**** md5 signature: 303313cc4599e4d88e82e690ea6d0ec6 ****/
		%feature("compactdefaultargs") Expand;
		%feature("autodoc", "Convert shape (compound/compsolid/shell/wire) to assembly.

Parameters
----------
Shape: TDF_Label

Returns
-------
bool
") Expand;
		Standard_Boolean Expand(const TDF_Label & Shape);

		/****************** FindComponent ******************/
		/**** md5 signature: ebad0b9e90985456173ebcec788ae386 ****/
		%feature("compactdefaultargs") FindComponent;
		%feature("autodoc", "Search the path of labels in the document, that corresponds the component from any assembly try to search the sequence of labels with location that produce this shape as component of any assembly note: clear sequence of labels before filling.

Parameters
----------
theShape: TopoDS_Shape
Labels: TDF_LabelSequence

Returns
-------
bool
") FindComponent;
		Standard_Boolean FindComponent(const TopoDS_Shape & theShape, TDF_LabelSequence & Labels);

		/****************** FindMainShape ******************/
		/**** md5 signature: 37e4e0c22653d7d223843876d69e26d9 ****/
		%feature("compactdefaultargs") FindMainShape;
		%feature("autodoc", "Performs a search among top-level shapes to find the shape containing <sub> as subshape checks only simple shapes, and returns the first found label (which should be the only one for valid model).

Parameters
----------
sub: TopoDS_Shape

Returns
-------
TDF_Label
") FindMainShape;
		TDF_Label FindMainShape(const TopoDS_Shape & sub);

		/****************** FindMainShapeUsingMap ******************/
		/**** md5 signature: d7a834974439597167af8e5492bd8747 ****/
		%feature("compactdefaultargs") FindMainShapeUsingMap;
		%feature("autodoc", "No available documentation.

Parameters
----------
sub: TopoDS_Shape

Returns
-------
TDF_Label
") FindMainShapeUsingMap;
		TDF_Label FindMainShapeUsingMap(const TopoDS_Shape & sub);

		/****************** FindSHUO ******************/
		/**** md5 signature: 167ff534b15905bf97c94dc495725fb6 ****/
		%feature("compactdefaultargs") FindSHUO;
		%feature("autodoc", "Searches the shuo by labels of components from upper_usage component to next_usage returns null attribute if no shuo found.

Parameters
----------
Labels: TDF_LabelSequence
theSHUOAttr: XCAFDoc_GraphNode

Returns
-------
bool
") FindSHUO;
		static Standard_Boolean FindSHUO(const TDF_LabelSequence & Labels, opencascade::handle<XCAFDoc_GraphNode> & theSHUOAttr);

		/****************** FindShape ******************/
		/**** md5 signature: 845098eb24d8c59fb763486c303b3a63 ****/
		%feature("compactdefaultargs") FindShape;
		%feature("autodoc", "Returns the label corresponding to shape s (searches among top-level shapes, not including subcomponents of assemblies and subshapes) if findinstance is false (default), search for the input shape without location if findinstance is true, searches for the input shape as is. return true if <s> is found.

Parameters
----------
S: TopoDS_Shape
L: TDF_Label
findInstance: bool,optional
	default value is Standard_False

Returns
-------
bool
") FindShape;
		Standard_Boolean FindShape(const TopoDS_Shape & S, TDF_Label & L, const Standard_Boolean findInstance = Standard_False);

		/****************** FindShape ******************/
		/**** md5 signature: cb0584f95b03ec04e8ccade873a65bb0 ****/
		%feature("compactdefaultargs") FindShape;
		%feature("autodoc", "Does the same as previous method returns null label if not found.

Parameters
----------
S: TopoDS_Shape
findInstance: bool,optional
	default value is Standard_False

Returns
-------
TDF_Label
") FindShape;
		TDF_Label FindShape(const TopoDS_Shape & S, const Standard_Boolean findInstance = Standard_False);

		/****************** FindSubShape ******************/
		/**** md5 signature: f1f60ae4ee2928877b4c3ec89b43adef ****/
		%feature("compactdefaultargs") FindSubShape;
		%feature("autodoc", "Finds a label for subshape <sub> of shape stored on label shapel returns null label if it is not found.

Parameters
----------
shapeL: TDF_Label
sub: TopoDS_Shape
L: TDF_Label

Returns
-------
bool
") FindSubShape;
		Standard_Boolean FindSubShape(const TDF_Label & shapeL, const TopoDS_Shape & sub, TDF_Label & L);

		/****************** GetAllComponentSHUO ******************/
		/**** md5 signature: 4c27c4334f766dfc1d781ea859f6b4b1 ****/
		%feature("compactdefaultargs") GetAllComponentSHUO;
		%feature("autodoc", "Returns founded shuo graphnodes of indicated component returns false in other case.

Parameters
----------
CompLabel: TDF_Label
SHUOAttrs: TDF_AttributeSequence

Returns
-------
bool
") GetAllComponentSHUO;
		static Standard_Boolean GetAllComponentSHUO(const TDF_Label & CompLabel, TDF_AttributeSequence & SHUOAttrs);

		/****************** GetAllSHUOInstances ******************/
		/**** md5 signature: 90f2a7b264bde6bb22428574fcce0f01 ****/
		%feature("compactdefaultargs") GetAllSHUOInstances;
		%feature("autodoc", "Searching for component shapes that styled by shuo returns empty sequence of shape if no any shape is found.

Parameters
----------
theSHUO: XCAFDoc_GraphNode
theSHUOShapeSeq: TopTools_SequenceOfShape

Returns
-------
bool
") GetAllSHUOInstances;
		Standard_Boolean GetAllSHUOInstances(const opencascade::handle<XCAFDoc_GraphNode> & theSHUO, TopTools_SequenceOfShape & theSHUOShapeSeq);

		/****************** GetComponents ******************/
		/**** md5 signature: 965f650c2f79ab4636998cd925d7db4e ****/
		%feature("compactdefaultargs") GetComponents;
		%feature("autodoc", "Returns list of components of assembly returns false if label is not assembly.

Parameters
----------
L: TDF_Label
Labels: TDF_LabelSequence
getsubchilds: bool,optional
	default value is Standard_False

Returns
-------
bool
") GetComponents;
		static Standard_Boolean GetComponents(const TDF_Label & L, TDF_LabelSequence & Labels, const Standard_Boolean getsubchilds = Standard_False);

		/****************** GetExternRefs ******************/
		/**** md5 signature: 5422f8a639665300630cf2268afcc66c ****/
		%feature("compactdefaultargs") GetExternRefs;
		%feature("autodoc", "Gets the names of references on the no-step files.

Parameters
----------
L: TDF_Label
SHAS: TColStd_SequenceOfHAsciiString

Returns
-------
None
") GetExternRefs;
		static void GetExternRefs(const TDF_Label & L, TColStd_SequenceOfHAsciiString & SHAS);

		/****************** GetFreeShapes ******************/
		/**** md5 signature: 3b29ad3ef597a9080fa145a525b910fa ****/
		%feature("compactdefaultargs") GetFreeShapes;
		%feature("autodoc", "Returns a sequence of all top-level shapes which are free (i.e. not referred by any other).

Parameters
----------
FreeLabels: TDF_LabelSequence

Returns
-------
None
") GetFreeShapes;
		void GetFreeShapes(TDF_LabelSequence & FreeLabels);

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetLocation ******************/
		/**** md5 signature: b73bb57bbd021037f9fe9474f8be086f ****/
		%feature("compactdefaultargs") GetLocation;
		%feature("autodoc", "Returns location of instance.

Parameters
----------
L: TDF_Label

Returns
-------
TopLoc_Location
") GetLocation;
		static TopLoc_Location GetLocation(const TDF_Label & L);

		/****************** GetNamedProperties ******************/
		/**** md5 signature: 646040535cf7d5054140f4e545cea16e ****/
		%feature("compactdefaultargs") GetNamedProperties;
		%feature("autodoc", "Method to get nameddata attribute assigned to the given shape label. @param thelabel [in] the shape label @param thetocreate [in] create and assign attribute if it doesn't exist returns handle to the nameddata attribute or null if there is none.

Parameters
----------
theLabel: TDF_Label
theToCreate: bool,optional
	default value is Standard_False

Returns
-------
opencascade::handle<TDataStd_NamedData>
") GetNamedProperties;
		opencascade::handle<TDataStd_NamedData> GetNamedProperties(const TDF_Label & theLabel, const Standard_Boolean theToCreate = Standard_False);

		/****************** GetNamedProperties ******************/
		/**** md5 signature: 9dc1161d92313b6489a83aed43171a36 ****/
		%feature("compactdefaultargs") GetNamedProperties;
		%feature("autodoc", "Method to get nameddata attribute assigned to a label of the given shape. @param theshape [in] input shape @param thetocreate [in] create and assign attribute if it doesn't exist returns handle to the nameddata attribute or null if there is none.

Parameters
----------
theShape: TopoDS_Shape
theToCreate: bool,optional
	default value is Standard_False

Returns
-------
opencascade::handle<TDataStd_NamedData>
") GetNamedProperties;
		opencascade::handle<TDataStd_NamedData> GetNamedProperties(const TopoDS_Shape & theShape, const Standard_Boolean theToCreate = Standard_False);

		/****************** GetOneShape ******************/
		/**** md5 signature: 3215690f7fd49b341401d78832c630e0 ****/
		%feature("compactdefaultargs") GetOneShape;
		%feature("autodoc", "Gets shape from a sequence of shape's labels @param[in] thelabels a sequence of labels to get shapes from returns original shape in case of one label and a compound of shapes in case of more.

Parameters
----------
theLabels: TDF_LabelSequence

Returns
-------
TopoDS_Shape
") GetOneShape;
		static TopoDS_Shape GetOneShape(const TDF_LabelSequence & theLabels);

		/****************** GetOneShape ******************/
		/**** md5 signature: 5c1df85e1e2a72b0b93fde509f26a709 ****/
		%feature("compactdefaultargs") GetOneShape;
		%feature("autodoc", "Gets shape from a sequence of all top-level shapes which are free returns original shape in case of one label and a compound of shapes in case of more.

Returns
-------
TopoDS_Shape
") GetOneShape;
		TopoDS_Shape GetOneShape();

		/****************** GetReferredShape ******************/
		/**** md5 signature: 63acc4d5460c835c166b1fc0b2913030 ****/
		%feature("compactdefaultargs") GetReferredShape;
		%feature("autodoc", "Returns label which corresponds to a shape referred by l returns false if label is not reference.

Parameters
----------
L: TDF_Label
Label: TDF_Label

Returns
-------
bool
") GetReferredShape;
		static Standard_Boolean GetReferredShape(const TDF_Label & L, TDF_Label & Label);

		/****************** GetSHUO ******************/
		/**** md5 signature: 0212a4e0b68d5b9bee4a8b833513cfdf ****/
		%feature("compactdefaultargs") GetSHUO;
		%feature("autodoc", "Returns founded shuo graphnode attribute <ashuoattr> returns false in other case.

Parameters
----------
SHUOLabel: TDF_Label
aSHUOAttr: XCAFDoc_GraphNode

Returns
-------
bool
") GetSHUO;
		static Standard_Boolean GetSHUO(const TDF_Label & SHUOLabel, opencascade::handle<XCAFDoc_GraphNode> & aSHUOAttr);

		/****************** GetSHUOInstance ******************/
		/**** md5 signature: ca31198cfeed305fd2720c84fb281379 ****/
		%feature("compactdefaultargs") GetSHUOInstance;
		%feature("autodoc", "Search for the component shape that styled by shuo returns null shape if no any shape is found.

Parameters
----------
theSHUO: XCAFDoc_GraphNode

Returns
-------
TopoDS_Shape
") GetSHUOInstance;
		TopoDS_Shape GetSHUOInstance(const opencascade::handle<XCAFDoc_GraphNode> & theSHUO);

		/****************** GetSHUONextUsage ******************/
		/**** md5 signature: de5d54336c6031a9133b34bd368905ec ****/
		%feature("compactdefaultargs") GetSHUONextUsage;
		%feature("autodoc", "Returns the sequence of labels of shuo attributes, which is next_usage for this upper_usage shuo attribute (that indicated by label) note: returns next_usages only on one level (not recurse) note: do not clear the sequence before filling.

Parameters
----------
UpperUsageL: TDF_Label
Labels: TDF_LabelSequence

Returns
-------
bool
") GetSHUONextUsage;
		static Standard_Boolean GetSHUONextUsage(const TDF_Label & UpperUsageL, TDF_LabelSequence & Labels);

		/****************** GetSHUOUpperUsage ******************/
		/**** md5 signature: 8c7deb0fc9f38fda76bdbf41714ab966 ****/
		%feature("compactdefaultargs") GetSHUOUpperUsage;
		%feature("autodoc", "Returns the sequence of labels of shuo attributes, which is upper_usage for this next_usage shuo attribute (that indicated by label) note: returns upper_usages only on one level (not recurse) note: do not clear the sequence before filling.

Parameters
----------
NextUsageL: TDF_Label
Labels: TDF_LabelSequence

Returns
-------
bool
") GetSHUOUpperUsage;
		static Standard_Boolean GetSHUOUpperUsage(const TDF_Label & NextUsageL, TDF_LabelSequence & Labels);

		/****************** GetShape ******************/
		/**** md5 signature: 12e18ed15b4c30c86eb4dc2bccd98ead ****/
		%feature("compactdefaultargs") GetShape;
		%feature("autodoc", "To get topods_shape from shape's label for component, returns new shape with correct location returns false if label does not contain shape.

Parameters
----------
L: TDF_Label
S: TopoDS_Shape

Returns
-------
bool
") GetShape;
		static Standard_Boolean GetShape(const TDF_Label & L, TopoDS_Shape & S);

		/****************** GetShape ******************/
		/**** md5 signature: 9877181bb42dd1a8926db70912cc456b ****/
		%feature("compactdefaultargs") GetShape;
		%feature("autodoc", "To get topods_shape from shape's label for component, returns new shape with correct location returns null shape if label does not contain shape.

Parameters
----------
L: TDF_Label

Returns
-------
TopoDS_Shape
") GetShape;
		static TopoDS_Shape GetShape(const TDF_Label & L);

		/****************** GetShapes ******************/
		/**** md5 signature: bd03175d16f83772000e487926da7a1b ****/
		%feature("compactdefaultargs") GetShapes;
		%feature("autodoc", "Returns a sequence of all top-level shapes.

Parameters
----------
Labels: TDF_LabelSequence

Returns
-------
None
") GetShapes;
		void GetShapes(TDF_LabelSequence & Labels);

		/****************** GetSubShapes ******************/
		/**** md5 signature: 61fd9b1cf28a6c82289977de265cda3d ****/
		%feature("compactdefaultargs") GetSubShapes;
		%feature("autodoc", "Returns list of labels identifying subshapes of the given shape returns false if no subshapes are placed on that label.

Parameters
----------
L: TDF_Label
Labels: TDF_LabelSequence

Returns
-------
bool
") GetSubShapes;
		static Standard_Boolean GetSubShapes(const TDF_Label & L, TDF_LabelSequence & Labels);

		/****************** GetUsers ******************/
		/**** md5 signature: 631b9871700da2b532a3f52c8cc043a8 ****/
		%feature("compactdefaultargs") GetUsers;
		%feature("autodoc", "Returns list of labels which refer shape l as component returns number of users (0 if shape is free).

Parameters
----------
L: TDF_Label
Labels: TDF_LabelSequence
getsubchilds: bool,optional
	default value is Standard_False

Returns
-------
int
") GetUsers;
		static Standard_Integer GetUsers(const TDF_Label & L, TDF_LabelSequence & Labels, const Standard_Boolean getsubchilds = Standard_False);

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** Init ******************/
		/**** md5 signature: 0de93ef32c53d091768788dca0e281fd ****/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "Set hascomponents into false.

Returns
-------
None
") Init;
		void Init();

		/****************** IsAssembly ******************/
		/**** md5 signature: 308bbdd0d26fd0c7456e6872fa72e14a ****/
		%feature("compactdefaultargs") IsAssembly;
		%feature("autodoc", "Returns true if the label is a label of assembly, i.e. contains sublabels which are assembly components this is relevant only if isshape() is true.

Parameters
----------
L: TDF_Label

Returns
-------
bool
") IsAssembly;
		static Standard_Boolean IsAssembly(const TDF_Label & L);

		/****************** IsComponent ******************/
		/**** md5 signature: 30ed8b403781dcb49b3a580b6d219389 ****/
		%feature("compactdefaultargs") IsComponent;
		%feature("autodoc", "Return true if <l> is reference serving as component of assembly.

Parameters
----------
L: TDF_Label

Returns
-------
bool
") IsComponent;
		static Standard_Boolean IsComponent(const TDF_Label & L);

		/****************** IsCompound ******************/
		/**** md5 signature: 2b86286dc9fbe6dcb0f99ead5cde05be ****/
		%feature("compactdefaultargs") IsCompound;
		%feature("autodoc", "Returns true if the label is a label of compound, i.e. contains some sublabels this is relevant only if isshape() is true.

Parameters
----------
L: TDF_Label

Returns
-------
bool
") IsCompound;
		static Standard_Boolean IsCompound(const TDF_Label & L);

		/****************** IsExternRef ******************/
		/**** md5 signature: dd4e4c75f341c482befdb0ef1b2855fa ****/
		%feature("compactdefaultargs") IsExternRef;
		%feature("autodoc", "Returns true if the label is a label of external references, i.e. there are some reference on the no-step files, which are described in document only their names.

Parameters
----------
L: TDF_Label

Returns
-------
bool
") IsExternRef;
		static Standard_Boolean IsExternRef(const TDF_Label & L);

		/****************** IsFree ******************/
		/**** md5 signature: 4632d5524fafcf4fdb414ee78695ba2e ****/
		%feature("compactdefaultargs") IsFree;
		%feature("autodoc", "Returns true if the label is not used by any assembly, i.e. contains sublabels which are assembly components this is relevant only if isshape() is true (there is no father treenode on this <l>).

Parameters
----------
L: TDF_Label

Returns
-------
bool
") IsFree;
		static Standard_Boolean IsFree(const TDF_Label & L);

		/****************** IsReference ******************/
		/**** md5 signature: ef6d663903ae7c76a5428b42c80b9e53 ****/
		%feature("compactdefaultargs") IsReference;
		%feature("autodoc", "Return true if <l> is a located instance of other shape i.e. reference.

Parameters
----------
L: TDF_Label

Returns
-------
bool
") IsReference;
		static Standard_Boolean IsReference(const TDF_Label & L);

		/****************** IsShape ******************/
		/**** md5 signature: c3ab63e53bcd355b73741658aee01bf3 ****/
		%feature("compactdefaultargs") IsShape;
		%feature("autodoc", "Returns true if the label represents a shape (simple shape, assembly or reference).

Parameters
----------
L: TDF_Label

Returns
-------
bool
") IsShape;
		static Standard_Boolean IsShape(const TDF_Label & L);

		/****************** IsSimpleShape ******************/
		/**** md5 signature: 4c4177edcc7bf3d8d703530eb635d0c7 ****/
		%feature("compactdefaultargs") IsSimpleShape;
		%feature("autodoc", "Returns true if the label is a label of simple shape.

Parameters
----------
L: TDF_Label

Returns
-------
bool
") IsSimpleShape;
		static Standard_Boolean IsSimpleShape(const TDF_Label & L);

		/****************** IsSubShape ******************/
		/**** md5 signature: 50ddcfe534886f5fec3948f8f98f861c ****/
		%feature("compactdefaultargs") IsSubShape;
		%feature("autodoc", "Return true if <l> is subshape of the top-level shape.

Parameters
----------
L: TDF_Label

Returns
-------
bool
") IsSubShape;
		static Standard_Boolean IsSubShape(const TDF_Label & L);

		/****************** IsSubShape ******************/
		/**** md5 signature: 131a333e19caa661b4848dab09c72020 ****/
		%feature("compactdefaultargs") IsSubShape;
		%feature("autodoc", "Checks whether shape <sub> is subshape of shape stored on label shapel.

Parameters
----------
shapeL: TDF_Label
sub: TopoDS_Shape

Returns
-------
bool
") IsSubShape;
		Standard_Boolean IsSubShape(const TDF_Label & shapeL, const TopoDS_Shape & sub);

		/****************** IsTopLevel ******************/
		/**** md5 signature: c206e13d6551c9efb4cb38ecf9541b7f ****/
		%feature("compactdefaultargs") IsTopLevel;
		%feature("autodoc", "Returns true if the label is a label of top-level shape, as opposed to component of assembly or subshape.

Parameters
----------
L: TDF_Label

Returns
-------
bool
") IsTopLevel;
		Standard_Boolean IsTopLevel(const TDF_Label & L);

		/****************** NbComponents ******************/
		/**** md5 signature: 85fb744e73f692eafaffe56f8e6075f0 ****/
		%feature("compactdefaultargs") NbComponents;
		%feature("autodoc", "Returns number of assembles components.

Parameters
----------
L: TDF_Label
getsubchilds: bool,optional
	default value is Standard_False

Returns
-------
int
") NbComponents;
		static Standard_Integer NbComponents(const TDF_Label & L, const Standard_Boolean getsubchilds = Standard_False);

		/****************** NewShape ******************/
		/**** md5 signature: be3f917f6ac40df6a84f450b698db353 ****/
		%feature("compactdefaultargs") NewShape;
		%feature("autodoc", "Creates new (empty) top-level shape. initially it holds empty topods_compound.

Returns
-------
TDF_Label
") NewShape;
		TDF_Label NewShape();

		/****************** RemoveComponent ******************/
		/**** md5 signature: 231f2b5b04ddc6bf841f8649e4547e79 ****/
		%feature("compactdefaultargs") RemoveComponent;
		%feature("autodoc", "Removes a component from its assembly.

Parameters
----------
comp: TDF_Label

Returns
-------
None
") RemoveComponent;
		void RemoveComponent(const TDF_Label & comp);

		/****************** RemoveSHUO ******************/
		/**** md5 signature: c1256efb858a4de654c42f35505a5bd7 ****/
		%feature("compactdefaultargs") RemoveSHUO;
		%feature("autodoc", "Remove shuo from component sublabel, remove all dependencies on other shuo. returns false if cannot remove shuo dependencies. note: remove any styles that associated with this shuo.

Parameters
----------
SHUOLabel: TDF_Label

Returns
-------
bool
") RemoveSHUO;
		Standard_Boolean RemoveSHUO(const TDF_Label & SHUOLabel);

		/****************** RemoveShape ******************/
		/**** md5 signature: 5dc9d907fb40debe9a30891be77f58b8 ****/
		%feature("compactdefaultargs") RemoveShape;
		%feature("autodoc", "Removes shape (whole label and all its sublabels) if removecompletely is true, removes complete shape if removecompletely is false, removes instance(location) only returns false (and does nothing) if shape is not free or is not top-level shape.

Parameters
----------
L: TDF_Label
removeCompletely: bool,optional
	default value is Standard_True

Returns
-------
bool
") RemoveShape;
		Standard_Boolean RemoveShape(const TDF_Label & L, const Standard_Boolean removeCompletely = Standard_True);

		/****************** Search ******************/
		/**** md5 signature: a69db72e1ed9e8508704ef54f202920d ****/
		%feature("compactdefaultargs") Search;
		%feature("autodoc", "General tool to find a (sub) shape in the document * if findinstance is true, and s has a non-null location, first tries to find the shape among the top-level shapes with this location * if not found, and findcomponent is true, tries to find the shape among the components of assemblies * if not found, tries to find the shape without location among top-level shapes * if not found and findsubshape is true, tries to find a shape as a subshape of top-level simple shapes returns false if nothing is found.

Parameters
----------
S: TopoDS_Shape
L: TDF_Label
findInstance: bool,optional
	default value is Standard_True
findComponent: bool,optional
	default value is Standard_True
findSubshape: bool,optional
	default value is Standard_True

Returns
-------
bool
") Search;
		Standard_Boolean Search(const TopoDS_Shape & S, TDF_Label & L, const Standard_Boolean findInstance = Standard_True, const Standard_Boolean findComponent = Standard_True, const Standard_Boolean findSubshape = Standard_True);

		/****************** SearchUsingMap ******************/
		/**** md5 signature: a67550d58116b424c641f834920520d5 ****/
		%feature("compactdefaultargs") SearchUsingMap;
		%feature("autodoc", "No available documentation.

Parameters
----------
S: TopoDS_Shape
L: TDF_Label
findWithoutLoc: bool
findSubshape: bool

Returns
-------
bool
") SearchUsingMap;
		Standard_Boolean SearchUsingMap(const TopoDS_Shape & S, TDF_Label & L, const Standard_Boolean findWithoutLoc, const Standard_Boolean findSubshape);

		/****************** Set ******************/
		/**** md5 signature: e7840fdd6b042b302eff154ea7e10508 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Create (if not exist) shapetool from xcafdoc on <l>.

Parameters
----------
L: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_ShapeTool>
") Set;
		static opencascade::handle<XCAFDoc_ShapeTool> Set(const TDF_Label & L);

		/****************** SetAutoNaming ******************/
		/**** md5 signature: c770a59b95234df0799e8b06387f9431 ****/
		%feature("compactdefaultargs") SetAutoNaming;
		%feature("autodoc", "Sets auto-naming mode to <v>. if true then for added shapes, links, assemblies and shuo's, the tdatastd_name attribute is automatically added. for shapes it contains a shape type (e.g. 'solid', 'shell', etc); for links it has a form '=>[0:1:1:2]' (where a tag is a label containing a shape without a location); for assemblies it is 'assembly', and 'shuo' for shuo's. this setting is global; it cannot be made a member function as it is used by static methods as well. by default, auto-naming is enabled. see also autonaming().

Parameters
----------
V: bool

Returns
-------
None
") SetAutoNaming;
		static void SetAutoNaming(const Standard_Boolean V);

		/****************** SetExternRefs ******************/
		/**** md5 signature: 4665e7683743e5d87b2b30a8ab0eaed7 ****/
		%feature("compactdefaultargs") SetExternRefs;
		%feature("autodoc", "Sets the names of references on the no-step files.

Parameters
----------
SHAS: TColStd_SequenceOfHAsciiString

Returns
-------
TDF_Label
") SetExternRefs;
		TDF_Label SetExternRefs(const TColStd_SequenceOfHAsciiString & SHAS);

		/****************** SetExternRefs ******************/
		/**** md5 signature: 34e1ca33bee0b97faee1b376c0df5aed ****/
		%feature("compactdefaultargs") SetExternRefs;
		%feature("autodoc", "Sets the names of references on the no-step files.

Parameters
----------
L: TDF_Label
SHAS: TColStd_SequenceOfHAsciiString

Returns
-------
None
") SetExternRefs;
		void SetExternRefs(const TDF_Label & L, const TColStd_SequenceOfHAsciiString & SHAS);

		/****************** SetInstanceSHUO ******************/
		/**** md5 signature: 3a2876846d7fb4d04fba56e940da38a9 ****/
		%feature("compactdefaultargs") SetInstanceSHUO;
		%feature("autodoc", "Search for the component shape by labelks path and set shuo structure for founded label structure returns null attribute if no component in any assembly found.

Parameters
----------
theShape: TopoDS_Shape

Returns
-------
opencascade::handle<XCAFDoc_GraphNode>
") SetInstanceSHUO;
		opencascade::handle<XCAFDoc_GraphNode> SetInstanceSHUO(const TopoDS_Shape & theShape);

		/****************** SetLocation ******************/
		/**** md5 signature: 9a34a0d86dea02beeb4159dd398eab09 ****/
		%feature("compactdefaultargs") SetLocation;
		%feature("autodoc", "Sets location to the shape label if label is reference -> changes location attribute if label is free shape -> creates reference with location to it @param[in] theshapelabel the shape label to change location @param[in] theloc location to set @param[out] thereflabel the reference label with new location returns true if new location was set.

Parameters
----------
theShapeLabel: TDF_Label
theLoc: TopLoc_Location
theRefLabel: TDF_Label

Returns
-------
bool
") SetLocation;
		Standard_Boolean SetLocation(const TDF_Label & theShapeLabel, const TopLoc_Location & theLoc, TDF_Label & theRefLabel);

		/****************** SetSHUO ******************/
		/**** md5 signature: f02f367ef3accdf59d9c28425fa6702b ****/
		%feature("compactdefaultargs") SetSHUO;
		%feature("autodoc", "Sets the shuo structure between upper_usage and next_usage create multy-level (if number of labels > 2) shuo from first to last initialise out <mainshuoattr> by main upper_usage shuo attribute. returns false if some of labels in not component label.

Parameters
----------
Labels: TDF_LabelSequence
MainSHUOAttr: XCAFDoc_GraphNode

Returns
-------
bool
") SetSHUO;
		Standard_Boolean SetSHUO(const TDF_LabelSequence & Labels, opencascade::handle<XCAFDoc_GraphNode> & MainSHUOAttr);

		/****************** SetShape ******************/
		/**** md5 signature: a0d7d58b60bcc078c2a64a6ff54f1afc ****/
		%feature("compactdefaultargs") SetShape;
		%feature("autodoc", "Sets representation (topods_shape) for top-level shape.

Parameters
----------
L: TDF_Label
S: TopoDS_Shape

Returns
-------
None
") SetShape;
		void SetShape(const TDF_Label & L, const TopoDS_Shape & S);

		/****************** UpdateAssemblies ******************/
		/**** md5 signature: 9e19036c79d91376e16f3485fb8f9ab8 ****/
		%feature("compactdefaultargs") UpdateAssemblies;
		%feature("autodoc", "Top-down update for all assembly compounds stored in the document.

Returns
-------
None
") UpdateAssemblies;
		void UpdateAssemblies();

};


%make_alias(XCAFDoc_ShapeTool)

%extend XCAFDoc_ShapeTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*********************
* class XCAFDoc_View *
*********************/
class XCAFDoc_View : public TDataStd_GenericEmpty {
	public:
		/****************** XCAFDoc_View ******************/
		/**** md5 signature: 0245c9b612af8c7f9c5d80a84506c419 ****/
		%feature("compactdefaultargs") XCAFDoc_View;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") XCAFDoc_View;
		 XCAFDoc_View();

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetObject ******************/
		/**** md5 signature: d4237a0790ea570202ac13a7e6992469 ****/
		%feature("compactdefaultargs") GetObject;
		%feature("autodoc", "Returns view object data taken from the paren's label and its sub-labels.

Returns
-------
opencascade::handle<XCAFView_Object>
") GetObject;
		opencascade::handle<XCAFView_Object> GetObject();

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** Set ******************/
		/**** md5 signature: 674777373bb851e3052609659f01d247 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "No available documentation.

Parameters
----------
theLabel: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_View>
") Set;
		static opencascade::handle<XCAFDoc_View> Set(const TDF_Label & theLabel);

		/****************** SetObject ******************/
		/**** md5 signature: e479b9d64db1c1df40b02c80de3956b3 ****/
		%feature("compactdefaultargs") SetObject;
		%feature("autodoc", "Updates parent's label and its sub-labels with data taken from theviewobject. old data associated with the label will be lost.

Parameters
----------
theViewObject: XCAFView_Object

Returns
-------
None
") SetObject;
		void SetObject(const opencascade::handle<XCAFView_Object> & theViewObject);

};


%make_alias(XCAFDoc_View)

%extend XCAFDoc_View {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*************************
* class XCAFDoc_ViewTool *
*************************/
class XCAFDoc_ViewTool : public TDataStd_GenericEmpty {
	public:
		/****************** XCAFDoc_ViewTool ******************/
		/**** md5 signature: 4864083a9c277edf2495cf642a7aeced ****/
		%feature("compactdefaultargs") XCAFDoc_ViewTool;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") XCAFDoc_ViewTool;
		 XCAFDoc_ViewTool();

		/****************** AddView ******************/
		/**** md5 signature: f710066f6898ee7d96369f06cca4b434 ****/
		%feature("compactdefaultargs") AddView;
		%feature("autodoc", "Adds a view definition to a view table and returns its label.

Returns
-------
TDF_Label
") AddView;
		TDF_Label AddView();

		/****************** BaseLabel ******************/
		/**** md5 signature: cb499d8135863e96e585085d0b85c75a ****/
		%feature("compactdefaultargs") BaseLabel;
		%feature("autodoc", "Returns the label under which views are stored.

Returns
-------
TDF_Label
") BaseLabel;
		TDF_Label BaseLabel();

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetRefAnnotationLabel ******************/
		/**** md5 signature: adbb0bd96987f5dd502342f98af37dc2 ****/
		%feature("compactdefaultargs") GetRefAnnotationLabel;
		%feature("autodoc", "Returns annotation labels defined for label theviewl returns false if the theviewl is not in view table.

Parameters
----------
theViewL: TDF_Label
theAnnotationLabels: TDF_LabelSequence

Returns
-------
bool
") GetRefAnnotationLabel;
		Standard_Boolean GetRefAnnotationLabel(const TDF_Label & theViewL, TDF_LabelSequence & theAnnotationLabels);

		/****************** GetRefClippingPlaneLabel ******************/
		/**** md5 signature: 08fe417e603f5cebaa6099a6c9994406 ****/
		%feature("compactdefaultargs") GetRefClippingPlaneLabel;
		%feature("autodoc", "Returns clippingplane labels defined for label theviewl returns false if the theviewl is not in view table.

Parameters
----------
theViewL: TDF_Label
theClippingPlaneLabels: TDF_LabelSequence

Returns
-------
bool
") GetRefClippingPlaneLabel;
		Standard_Boolean GetRefClippingPlaneLabel(const TDF_Label & theViewL, TDF_LabelSequence & theClippingPlaneLabels);

		/****************** GetRefGDTLabel ******************/
		/**** md5 signature: 16f5af4d1cc838706a11589d232f6281 ****/
		%feature("compactdefaultargs") GetRefGDTLabel;
		%feature("autodoc", "Returns gdt labels defined for label theviewl returns false if the theviewl is not in view table.

Parameters
----------
theViewL: TDF_Label
theGDTLabels: TDF_LabelSequence

Returns
-------
bool
") GetRefGDTLabel;
		Standard_Boolean GetRefGDTLabel(const TDF_Label & theViewL, TDF_LabelSequence & theGDTLabels);

		/****************** GetRefNoteLabel ******************/
		/**** md5 signature: 087a10719b8a08daaf9b4b682b485bc6 ****/
		%feature("compactdefaultargs") GetRefNoteLabel;
		%feature("autodoc", "Returns notes labels defined for label theviewl returns false if the theviewl is not in view table.

Parameters
----------
theViewL: TDF_Label
theNoteLabels: TDF_LabelSequence

Returns
-------
bool
") GetRefNoteLabel;
		Standard_Boolean GetRefNoteLabel(const TDF_Label & theViewL, TDF_LabelSequence & theNoteLabels);

		/****************** GetRefShapeLabel ******************/
		/**** md5 signature: a5b7bbffe5910aef728fcd3c4ea56c61 ****/
		%feature("compactdefaultargs") GetRefShapeLabel;
		%feature("autodoc", "Returns shape labels defined for label theviewl returns false if the theviewl is not in view table.

Parameters
----------
theViewL: TDF_Label
theShapeLabels: TDF_LabelSequence

Returns
-------
bool
") GetRefShapeLabel;
		Standard_Boolean GetRefShapeLabel(const TDF_Label & theViewL, TDF_LabelSequence & theShapeLabels);

		/****************** GetViewLabels ******************/
		/**** md5 signature: fbefc5992416ed037012e1c240875b38 ****/
		%feature("compactdefaultargs") GetViewLabels;
		%feature("autodoc", "Returns a sequence of view labels currently stored in the view table.

Parameters
----------
theLabels: TDF_LabelSequence

Returns
-------
None
") GetViewLabels;
		void GetViewLabels(TDF_LabelSequence & theLabels);

		/****************** GetViewLabelsForAnnotation ******************/
		/**** md5 signature: e6813f69c2a96cac3f81a816f3096681 ****/
		%feature("compactdefaultargs") GetViewLabelsForAnnotation;
		%feature("autodoc", "Returns all view labels defined for label annotationl.

Parameters
----------
theAnnotationL: TDF_Label
theViews: TDF_LabelSequence

Returns
-------
bool
") GetViewLabelsForAnnotation;
		Standard_Boolean GetViewLabelsForAnnotation(const TDF_Label & theAnnotationL, TDF_LabelSequence & theViews);

		/****************** GetViewLabelsForClippingPlane ******************/
		/**** md5 signature: 3090ed9534474e4abb629bb309f25043 ****/
		%feature("compactdefaultargs") GetViewLabelsForClippingPlane;
		%feature("autodoc", "Returns all view labels defined for label clippingplanel.

Parameters
----------
theClippingPlaneL: TDF_Label
theViews: TDF_LabelSequence

Returns
-------
bool
") GetViewLabelsForClippingPlane;
		Standard_Boolean GetViewLabelsForClippingPlane(const TDF_Label & theClippingPlaneL, TDF_LabelSequence & theViews);

		/****************** GetViewLabelsForGDT ******************/
		/**** md5 signature: 84dd537e765f503d701a6a8f1d7c52af ****/
		%feature("compactdefaultargs") GetViewLabelsForGDT;
		%feature("autodoc", "Returns all view labels defined for label gdtl.

Parameters
----------
theGDTL: TDF_Label
theViews: TDF_LabelSequence

Returns
-------
bool
") GetViewLabelsForGDT;
		Standard_Boolean GetViewLabelsForGDT(const TDF_Label & theGDTL, TDF_LabelSequence & theViews);

		/****************** GetViewLabelsForNote ******************/
		/**** md5 signature: 405d6e77095d2fefecc7811b6c52f6ee ****/
		%feature("compactdefaultargs") GetViewLabelsForNote;
		%feature("autodoc", "Returns all view labels defined for label notel.

Parameters
----------
theNoteL: TDF_Label
theViews: TDF_LabelSequence

Returns
-------
bool
") GetViewLabelsForNote;
		Standard_Boolean GetViewLabelsForNote(const TDF_Label & theNoteL, TDF_LabelSequence & theViews);

		/****************** GetViewLabelsForShape ******************/
		/**** md5 signature: 616ce3c405d48c26da5ecf4af3b4b1e7 ****/
		%feature("compactdefaultargs") GetViewLabelsForShape;
		%feature("autodoc", "Returns all view labels defined for label shapel.

Parameters
----------
theShapeL: TDF_Label
theViews: TDF_LabelSequence

Returns
-------
bool
") GetViewLabelsForShape;
		Standard_Boolean GetViewLabelsForShape(const TDF_Label & theShapeL, TDF_LabelSequence & theViews);

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** IsLocked ******************/
		/**** md5 signature: 525167f6a33772eba368f6db8d245b08 ****/
		%feature("compactdefaultargs") IsLocked;
		%feature("autodoc", "Returns true if the given view is marked as locked.

Parameters
----------
theViewL: TDF_Label

Returns
-------
bool
") IsLocked;
		Standard_Boolean IsLocked(const TDF_Label & theViewL);

		/****************** IsView ******************/
		/**** md5 signature: 48ba474113cb71fafdfc01a63bc94a0b ****/
		%feature("compactdefaultargs") IsView;
		%feature("autodoc", "Returns true if label belongs to a view table and is a view definition.

Parameters
----------
theLabel: TDF_Label

Returns
-------
bool
") IsView;
		Standard_Boolean IsView(const TDF_Label & theLabel);

		/****************** Lock ******************/
		/**** md5 signature: 44e08eb297c1fac0353895828de43f48 ****/
		%feature("compactdefaultargs") Lock;
		%feature("autodoc", "Mark the given view as locked.

Parameters
----------
theViewL: TDF_Label

Returns
-------
None
") Lock;
		void Lock(const TDF_Label & theViewL);

		/****************** RemoveView ******************/
		/**** md5 signature: f1810b43f33eadaf802adda4d65274e8 ****/
		%feature("compactdefaultargs") RemoveView;
		%feature("autodoc", "Remove view.

Parameters
----------
theViewL: TDF_Label

Returns
-------
None
") RemoveView;
		void RemoveView(const TDF_Label & theViewL);

		/****************** Set ******************/
		/**** md5 signature: 36ad683191aa4700d6f2065ed9e0ca01 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Creates (if not exist) viewtool.

Parameters
----------
L: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_ViewTool>
") Set;
		static opencascade::handle<XCAFDoc_ViewTool> Set(const TDF_Label & L);

		/****************** SetClippingPlanes ******************/
		/**** md5 signature: 75d8e9e15a57ed5ceb219a3a0566ebf0 ****/
		%feature("compactdefaultargs") SetClippingPlanes;
		%feature("autodoc", "Set clipping planes to given view.

Parameters
----------
theClippingPlaneLabels: TDF_LabelSequence
theViewL: TDF_Label

Returns
-------
None
") SetClippingPlanes;
		void SetClippingPlanes(const TDF_LabelSequence & theClippingPlaneLabels, const TDF_Label & theViewL);

		/****************** SetView ******************/
		/**** md5 signature: 12420635907d634a5728dcc5727564b7 ****/
		%feature("compactdefaultargs") SetView;
		%feature("autodoc", "Sets a link with guid.

Parameters
----------
theShapes: TDF_LabelSequence
theGDTs: TDF_LabelSequence
theClippingPlanes: TDF_LabelSequence
theNotes: TDF_LabelSequence
theAnnotations: TDF_LabelSequence
theViewL: TDF_Label

Returns
-------
None
") SetView;
		void SetView(const TDF_LabelSequence & theShapes, const TDF_LabelSequence & theGDTs, const TDF_LabelSequence & theClippingPlanes, const TDF_LabelSequence & theNotes, const TDF_LabelSequence & theAnnotations, const TDF_Label & theViewL);

		/****************** SetView ******************/
		/**** md5 signature: 858ae5fc114ae42fb04909b8e0ee13f2 ****/
		%feature("compactdefaultargs") SetView;
		%feature("autodoc", "Sets a link with guid.

Parameters
----------
theShapes: TDF_LabelSequence
theGDTs: TDF_LabelSequence
theClippingPlanes: TDF_LabelSequence
theViewL: TDF_Label

Returns
-------
None
") SetView;
		void SetView(const TDF_LabelSequence & theShapes, const TDF_LabelSequence & theGDTs, const TDF_LabelSequence & theClippingPlanes, const TDF_Label & theViewL);

		/****************** SetView ******************/
		/**** md5 signature: 7d2d965552290c39e7efedc05a01491f ****/
		%feature("compactdefaultargs") SetView;
		%feature("autodoc", "Sets a link with guid.

Parameters
----------
theShapes: TDF_LabelSequence
theGDTs: TDF_LabelSequence
theViewL: TDF_Label

Returns
-------
None
") SetView;
		void SetView(const TDF_LabelSequence & theShapes, const TDF_LabelSequence & theGDTs, const TDF_Label & theViewL);

		/****************** Unlock ******************/
		/**** md5 signature: 47087adf5c901031f9be4fa4e9008a89 ****/
		%feature("compactdefaultargs") Unlock;
		%feature("autodoc", "Unlock the given view.

Parameters
----------
theViewL: TDF_Label

Returns
-------
None
") Unlock;
		void Unlock(const TDF_Label & theViewL);

};


%make_alias(XCAFDoc_ViewTool)

%extend XCAFDoc_ViewTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/****************************
* class XCAFDoc_VisMaterial *
****************************/
class XCAFDoc_VisMaterial : public TDF_Attribute {
	public:
		/****************** XCAFDoc_VisMaterial ******************/
		/**** md5 signature: de25513c62db54dd98c28fb751e5f3a8 ****/
		%feature("compactdefaultargs") XCAFDoc_VisMaterial;
		%feature("autodoc", "Empty constructor.

Returns
-------
None
") XCAFDoc_VisMaterial;
		 XCAFDoc_VisMaterial();

		/****************** AlphaCutOff ******************/
		/**** md5 signature: 24016059420e9e5c6d337d7b29b53858 ****/
		%feature("compactdefaultargs") AlphaCutOff;
		%feature("autodoc", "Return alpha cutoff value; 0.5 by default.

Returns
-------
float
") AlphaCutOff;
		Standard_ShortReal AlphaCutOff();

		/****************** AlphaMode ******************/
		/**** md5 signature: c141b940ccd51adaa91c404b4d4a5d76 ****/
		%feature("compactdefaultargs") AlphaMode;
		%feature("autodoc", "Return alpha mode; graphic3d_alphamode_blendauto by default.

Returns
-------
Graphic3d_AlphaMode
") AlphaMode;
		Graphic3d_AlphaMode AlphaMode();

		/****************** BaseColor ******************/
		/**** md5 signature: f8585c32bce71447f36243b6bcd6baa9 ****/
		%feature("compactdefaultargs") BaseColor;
		%feature("autodoc", "Return base color.

Returns
-------
Quantity_ColorRGBA
") BaseColor;
		Quantity_ColorRGBA BaseColor();

		/****************** CommonMaterial ******************/
		/**** md5 signature: 703dc4550b60da27a28ba4b2bb54d11e ****/
		%feature("compactdefaultargs") CommonMaterial;
		%feature("autodoc", "Return common material. note that default constructor creates an empty material (@sa xcafdoc_vismaterialcommon::isdefined).

Returns
-------
XCAFDoc_VisMaterialCommon
") CommonMaterial;
		const XCAFDoc_VisMaterialCommon & CommonMaterial();

		/****************** ConvertToCommonMaterial ******************/
		/**** md5 signature: 251cc72d8a745287cc99962025b28cdc ****/
		%feature("compactdefaultargs") ConvertToCommonMaterial;
		%feature("autodoc", "Return common material or convert pbr into common material.

Returns
-------
XCAFDoc_VisMaterialCommon
") ConvertToCommonMaterial;
		XCAFDoc_VisMaterialCommon ConvertToCommonMaterial();

		/****************** ConvertToPbrMaterial ******************/
		/**** md5 signature: 9c2a26304acde37d2893e7eed990e88a ****/
		%feature("compactdefaultargs") ConvertToPbrMaterial;
		%feature("autodoc", "Return pbr material or convert common into pbr material.

Returns
-------
XCAFDoc_VisMaterialPBR
") ConvertToPbrMaterial;
		XCAFDoc_VisMaterialPBR ConvertToPbrMaterial();


            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** FaceCulling ******************/
		/**** md5 signature: ea5bcfdb7347bbf80f346aa702bd7b90 ****/
		%feature("compactdefaultargs") FaceCulling;
		%feature("autodoc", "Returns if the material is double or single sided; graphic3d_typeofbackfacingmodel_auto by default.

Returns
-------
Graphic3d_TypeOfBackfacingModel
") FaceCulling;
		Graphic3d_TypeOfBackfacingModel FaceCulling();

		/****************** FillAspect ******************/
		/**** md5 signature: f4ca83412976fc99587d66a154a321d7 ****/
		%feature("compactdefaultargs") FillAspect;
		%feature("autodoc", "Fill in graphic aspects.

Parameters
----------
theAspect: Graphic3d_Aspects

Returns
-------
None
") FillAspect;
		void FillAspect(const opencascade::handle<Graphic3d_Aspects> & theAspect);

		/****************** FillMaterialAspect ******************/
		/**** md5 signature: e6d424919dabf73c3259cb308aa680fb ****/
		%feature("compactdefaultargs") FillMaterialAspect;
		%feature("autodoc", "Fill in material aspect.

Parameters
----------
theAspect: Graphic3d_MaterialAspect

Returns
-------
None
") FillMaterialAspect;
		void FillMaterialAspect(Graphic3d_MaterialAspect & theAspect);

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "Return attribute guid.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** HasCommonMaterial ******************/
		/**** md5 signature: aa206ac5c69652ddd1cd9aa40a51da8f ****/
		%feature("compactdefaultargs") HasCommonMaterial;
		%feature("autodoc", "Return true if common material is defined; false by default.

Returns
-------
bool
") HasCommonMaterial;
		Standard_Boolean HasCommonMaterial();

		/****************** HasPbrMaterial ******************/
		/**** md5 signature: 417eb60e1913f57f432ccf39e10b5468 ****/
		%feature("compactdefaultargs") HasPbrMaterial;
		%feature("autodoc", "Return true if metal-roughness pbr material is defined; false by default.

Returns
-------
bool
") HasPbrMaterial;
		Standard_Boolean HasPbrMaterial();

		/****************** ID ******************/
		/**** md5 signature: 1f78b7b062d92028dbde1d3574326fe0 ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "Return guid of this attribute type.

Returns
-------
Standard_GUID
") ID;
		virtual const Standard_GUID & ID();

		/****************** IsDoubleSided ******************/
		/**** md5 signature: 3f3fa1df3b72a87d0575b414de6fd9d7 ****/
		%feature("compactdefaultargs") IsDoubleSided;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") IsDoubleSided;
		Standard_Boolean IsDoubleSided();

		/****************** IsEmpty ******************/
		/**** md5 signature: 70a41d5fe65955a28167088305fc6991 ****/
		%feature("compactdefaultargs") IsEmpty;
		%feature("autodoc", "Return true if material definition is empty.

Returns
-------
bool
") IsEmpty;
		bool IsEmpty();

		/****************** IsEqual ******************/
		/**** md5 signature: 476d84fee7480124df14143cefe579cd ****/
		%feature("compactdefaultargs") IsEqual;
		%feature("autodoc", "Compare two materials. performs deep comparison by actual values - e.g. can be useful for merging materials.

Parameters
----------
theOther: XCAFDoc_VisMaterial

Returns
-------
bool
") IsEqual;
		Standard_Boolean IsEqual(const opencascade::handle<XCAFDoc_VisMaterial> & theOther);

		/****************** NewEmpty ******************/
		/**** md5 signature: 8be17a4d2a4deeee198571712e76805e ****/
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "Create a new empty attribute.

Returns
-------
opencascade::handle<TDF_Attribute>
") NewEmpty;
		virtual opencascade::handle<TDF_Attribute> NewEmpty();

		/****************** Paste ******************/
		/**** md5 signature: bc0917a7664a14cd92df5b6f55c794b3 ****/
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "Paste this attribute into another one. @param theinto [in/out] target attribute to copy this into @param thereltable [in] relocation table.

Parameters
----------
theInto: TDF_Attribute
theRelTable: TDF_RelocationTable

Returns
-------
None
") Paste;
		virtual void Paste(const opencascade::handle<TDF_Attribute> & theInto, const opencascade::handle<TDF_RelocationTable> & theRelTable);

		/****************** PbrMaterial ******************/
		/**** md5 signature: 70e2786d099bf6b93bcc9776e47c8653 ****/
		%feature("compactdefaultargs") PbrMaterial;
		%feature("autodoc", "Return metal-roughness pbr material. note that default constructor creates an empty material (@sa xcafdoc_vismaterialpbr::isdefined).

Returns
-------
XCAFDoc_VisMaterialPBR
") PbrMaterial;
		const XCAFDoc_VisMaterialPBR & PbrMaterial();

		/****************** RawName ******************/
		/**** md5 signature: 7e81df8d60c046b013b0297615523157 ****/
		%feature("compactdefaultargs") RawName;
		%feature("autodoc", "Return material name / tag (transient data, not stored in the document).

Returns
-------
opencascade::handle<TCollection_HAsciiString>
") RawName;
		const opencascade::handle<TCollection_HAsciiString> & RawName();

		/****************** Restore ******************/
		/**** md5 signature: 5e22af670b4c476a215a562aa4f78470 ****/
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "Restore attribute from specified state. @param thewith [in] attribute state to restore (copy into this).

Parameters
----------
theWith: TDF_Attribute

Returns
-------
None
") Restore;
		virtual void Restore(const opencascade::handle<TDF_Attribute> & theWith);

		/****************** SetAlphaMode ******************/
		/**** md5 signature: c2e8a613e9fab051d49d9fc3b604a42f ****/
		%feature("compactdefaultargs") SetAlphaMode;
		%feature("autodoc", "Set alpha mode.

Parameters
----------
theMode: Graphic3d_AlphaMode
theCutOff: float,optional
	default value is 0.5f

Returns
-------
None
") SetAlphaMode;
		void SetAlphaMode(Graphic3d_AlphaMode theMode, Standard_ShortReal theCutOff = 0.5f);

		/****************** SetCommonMaterial ******************/
		/**** md5 signature: 1da963f33b57d451b2018898c979446d ****/
		%feature("compactdefaultargs") SetCommonMaterial;
		%feature("autodoc", "Setup common material.

Parameters
----------
theMaterial: XCAFDoc_VisMaterialCommon

Returns
-------
None
") SetCommonMaterial;
		void SetCommonMaterial(const XCAFDoc_VisMaterialCommon & theMaterial);

		/****************** SetDoubleSided ******************/
		/**** md5 signature: 171db484b26d731ec2830f77a9cf4851 ****/
		%feature("compactdefaultargs") SetDoubleSided;
		%feature("autodoc", "No available documentation.

Parameters
----------
theIsDoubleSided: bool

Returns
-------
None
") SetDoubleSided;
		void SetDoubleSided(Standard_Boolean theIsDoubleSided);

		/****************** SetFaceCulling ******************/
		/**** md5 signature: cf7dadbbebda38a3c1720b79e3ec6234 ****/
		%feature("compactdefaultargs") SetFaceCulling;
		%feature("autodoc", "Specifies whether the material is double or single sided.

Parameters
----------
theFaceCulling: Graphic3d_TypeOfBackfacingModel

Returns
-------
None
") SetFaceCulling;
		void SetFaceCulling(Graphic3d_TypeOfBackfacingModel theFaceCulling);

		/****************** SetPbrMaterial ******************/
		/**** md5 signature: 246f3302fcf9beda6246ed99bc1b8073 ****/
		%feature("compactdefaultargs") SetPbrMaterial;
		%feature("autodoc", "Setup metal-roughness pbr material.

Parameters
----------
theMaterial: XCAFDoc_VisMaterialPBR

Returns
-------
None
") SetPbrMaterial;
		void SetPbrMaterial(const XCAFDoc_VisMaterialPBR & theMaterial);

		/****************** SetRawName ******************/
		/**** md5 signature: 9f88ade149954cac32d3dc435506e2f6 ****/
		%feature("compactdefaultargs") SetRawName;
		%feature("autodoc", "Set material name / tag (transient data, not stored in the document).

Parameters
----------
theName: TCollection_HAsciiString

Returns
-------
None
") SetRawName;
		void SetRawName(const opencascade::handle<TCollection_HAsciiString> & theName);

		/****************** UnsetCommonMaterial ******************/
		/**** md5 signature: a5b693feebb7383a941684ae5470fefc ****/
		%feature("compactdefaultargs") UnsetCommonMaterial;
		%feature("autodoc", "Setup undefined common material.

Returns
-------
None
") UnsetCommonMaterial;
		void UnsetCommonMaterial();

		/****************** UnsetPbrMaterial ******************/
		/**** md5 signature: 6eacbffbd2403fc7578046deb6faf1ad ****/
		%feature("compactdefaultargs") UnsetPbrMaterial;
		%feature("autodoc", "Setup undefined metal-roughness pbr material.

Returns
-------
None
") UnsetPbrMaterial;
		void UnsetPbrMaterial();

};


%make_alias(XCAFDoc_VisMaterial)

%extend XCAFDoc_VisMaterial {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**********************************
* class XCAFDoc_VisMaterialCommon *
**********************************/
class XCAFDoc_VisMaterialCommon {
	public:
		opencascade::handle<Image_Texture > DiffuseTexture;
		Quantity_Color AmbientColor;
		Quantity_Color DiffuseColor;
		Quantity_Color SpecularColor;
		Quantity_Color EmissiveColor;
		float Shininess;
		float Transparency;
		bool IsDefined;
		/****************** XCAFDoc_VisMaterialCommon ******************/
		/**** md5 signature: 902673da58471421f95b5ccf0bdee6a3 ****/
		%feature("compactdefaultargs") XCAFDoc_VisMaterialCommon;
		%feature("autodoc", "Empty constructor.

Returns
-------
None
") XCAFDoc_VisMaterialCommon;
		 XCAFDoc_VisMaterialCommon();


            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** IsEqual ******************/
		/**** md5 signature: 748c01dee19e51ab592f1e9f46d94232 ****/
		%feature("compactdefaultargs") IsEqual;
		%feature("autodoc", "Compare two materials.

Parameters
----------
theOther: XCAFDoc_VisMaterialCommon

Returns
-------
bool
") IsEqual;
		Standard_Boolean IsEqual(const XCAFDoc_VisMaterialCommon & theOther);

};


%extend XCAFDoc_VisMaterialCommon {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*******************************
* class XCAFDoc_VisMaterialPBR *
*******************************/
class XCAFDoc_VisMaterialPBR {
	public:
		opencascade::handle<Image_Texture > BaseColorTexture;
		opencascade::handle<Image_Texture > MetallicRoughnessTexture;
		opencascade::handle<Image_Texture > EmissiveTexture;
		opencascade::handle<Image_Texture > OcclusionTexture;
		opencascade::handle<Image_Texture > NormalTexture;
		Quantity_ColorRGBA BaseColor;
		Graphic3d_Vec3 EmissiveFactor;
		float Metallic;
		float Roughness;
		float RefractionIndex;
		bool IsDefined;
		/****************** XCAFDoc_VisMaterialPBR ******************/
		/**** md5 signature: 11ea295424c444b06892c19d880417c9 ****/
		%feature("compactdefaultargs") XCAFDoc_VisMaterialPBR;
		%feature("autodoc", "Empty constructor.

Returns
-------
None
") XCAFDoc_VisMaterialPBR;
		 XCAFDoc_VisMaterialPBR();


            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** IsEqual ******************/
		/**** md5 signature: 1789e9619decdb51bee4c1896d306145 ****/
		%feature("compactdefaultargs") IsEqual;
		%feature("autodoc", "Compare two materials.

Parameters
----------
theOther: XCAFDoc_VisMaterialPBR

Returns
-------
bool
") IsEqual;
		Standard_Boolean IsEqual(const XCAFDoc_VisMaterialPBR & theOther);

};


%extend XCAFDoc_VisMaterialPBR {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/********************************
* class XCAFDoc_VisMaterialTool *
********************************/
class XCAFDoc_VisMaterialTool : public TDF_Attribute {
	public:
		/****************** XCAFDoc_VisMaterialTool ******************/
		/**** md5 signature: 4164cee54ac875c4d3212c58ff9d1585 ****/
		%feature("compactdefaultargs") XCAFDoc_VisMaterialTool;
		%feature("autodoc", "Empty constructor.

Returns
-------
None
") XCAFDoc_VisMaterialTool;
		 XCAFDoc_VisMaterialTool();

		/****************** AddMaterial ******************/
		/**** md5 signature: dcff29fb1f77f5df10ee13363d609e28 ****/
		%feature("compactdefaultargs") AddMaterial;
		%feature("autodoc", "Adds material definition to a material table and returns its label.

Parameters
----------
theMat: XCAFDoc_VisMaterial
theName: str

Returns
-------
TDF_Label
") AddMaterial;
		TDF_Label AddMaterial(const opencascade::handle<XCAFDoc_VisMaterial> & theMat, TCollection_AsciiString theName);

		/****************** AddMaterial ******************/
		/**** md5 signature: 4f812bc5d327fe3e730676ff3e6dd617 ****/
		%feature("compactdefaultargs") AddMaterial;
		%feature("autodoc", "Adds material definition to a material table and returns its label.

Parameters
----------
theName: str

Returns
-------
TDF_Label
") AddMaterial;
		TDF_Label AddMaterial(TCollection_AsciiString theName);

		/****************** BaseLabel ******************/
		/**** md5 signature: 0fb6b1cd40875f3170cd1b9dbe0b46bd ****/
		%feature("compactdefaultargs") BaseLabel;
		%feature("autodoc", "Returns the label under which colors are stored.

Returns
-------
TDF_Label
") BaseLabel;
		TDF_Label BaseLabel();

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** GetMaterial ******************/
		/**** md5 signature: 694e93123423187642f68fe8d4e64f2a ****/
		%feature("compactdefaultargs") GetMaterial;
		%feature("autodoc", "Returns material defined by specified label, or null if the label is not in material table.

Parameters
----------
theMatLabel: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_VisMaterial>
") GetMaterial;
		static opencascade::handle<XCAFDoc_VisMaterial> GetMaterial(const TDF_Label & theMatLabel);

		/****************** GetMaterials ******************/
		/**** md5 signature: a96d68af36051bd063fefc1e10aabb79 ****/
		%feature("compactdefaultargs") GetMaterials;
		%feature("autodoc", "Returns a sequence of materials currently stored in the material table.

Parameters
----------
Labels: TDF_LabelSequence

Returns
-------
None
") GetMaterials;
		void GetMaterials(TDF_LabelSequence & Labels);

		/****************** GetShapeMaterial ******************/
		/**** md5 signature: cc2f1eaf9fd6f6a8b6ca7f4cf5294a4d ****/
		%feature("compactdefaultargs") GetShapeMaterial;
		%feature("autodoc", "Returns label with material assigned to shape label. @param theshapelabel [in] shape label @param themateriallabel [out] material label returns false if no material is assigned.

Parameters
----------
theShapeLabel: TDF_Label
theMaterialLabel: TDF_Label

Returns
-------
bool
") GetShapeMaterial;
		static Standard_Boolean GetShapeMaterial(const TDF_Label & theShapeLabel, TDF_Label & theMaterialLabel);

		/****************** GetShapeMaterial ******************/
		/**** md5 signature: 04847c1ad68cdd465933ffa2a713f244 ****/
		%feature("compactdefaultargs") GetShapeMaterial;
		%feature("autodoc", "Returns material assigned to the shape label.

Parameters
----------
theShapeLabel: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_VisMaterial>
") GetShapeMaterial;
		static opencascade::handle<XCAFDoc_VisMaterial> GetShapeMaterial(const TDF_Label & theShapeLabel);

		/****************** GetShapeMaterial ******************/
		/**** md5 signature: b4d2560c50c52f8b49c713aa67731929 ****/
		%feature("compactdefaultargs") GetShapeMaterial;
		%feature("autodoc", "Returns label with material assigned to shape. @param theshape [in] shape @param themateriallabel [out] material label returns false if no material is assigned.

Parameters
----------
theShape: TopoDS_Shape
theMaterialLabel: TDF_Label

Returns
-------
bool
") GetShapeMaterial;
		Standard_Boolean GetShapeMaterial(const TopoDS_Shape & theShape, TDF_Label & theMaterialLabel);

		/****************** GetShapeMaterial ******************/
		/**** md5 signature: 7a7f0994125f233b322cc60c2fd40844 ****/
		%feature("compactdefaultargs") GetShapeMaterial;
		%feature("autodoc", "Returns material assigned to shape or null if not assigned.

Parameters
----------
theShape: TopoDS_Shape

Returns
-------
opencascade::handle<XCAFDoc_VisMaterial>
") GetShapeMaterial;
		opencascade::handle<XCAFDoc_VisMaterial> GetShapeMaterial(const TopoDS_Shape & theShape);

		/****************** ID ******************/
		/**** md5 signature: 1f78b7b062d92028dbde1d3574326fe0 ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "Returns guid of this attribute type.

Returns
-------
Standard_GUID
") ID;
		virtual const Standard_GUID & ID();

		/****************** IsMaterial ******************/
		/**** md5 signature: 78f540787bb4888fe4fe9407c8d749b5 ****/
		%feature("compactdefaultargs") IsMaterial;
		%feature("autodoc", "Returns true if label belongs to a material table.

Parameters
----------
theLabel: TDF_Label

Returns
-------
bool
") IsMaterial;
		Standard_Boolean IsMaterial(const TDF_Label & theLabel);

		/****************** IsSetShapeMaterial ******************/
		/**** md5 signature: 7c3c0a1ab4b3b9ce755822e9dfa7a906 ****/
		%feature("compactdefaultargs") IsSetShapeMaterial;
		%feature("autodoc", "Returns true if label has a material assignment.

Parameters
----------
theLabel: TDF_Label

Returns
-------
bool
") IsSetShapeMaterial;
		Standard_Boolean IsSetShapeMaterial(const TDF_Label & theLabel);

		/****************** IsSetShapeMaterial ******************/
		/**** md5 signature: 447e89dbc52b602022fbc66a7496af76 ****/
		%feature("compactdefaultargs") IsSetShapeMaterial;
		%feature("autodoc", "Returns true if shape has a material assignment.

Parameters
----------
theShape: TopoDS_Shape

Returns
-------
bool
") IsSetShapeMaterial;
		Standard_Boolean IsSetShapeMaterial(const TopoDS_Shape & theShape);

		/****************** NewEmpty ******************/
		/**** md5 signature: 9fd03ebf4c88d0fd3efd748ca3107174 ****/
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "Creates new instance of this tool.

Returns
-------
opencascade::handle<TDF_Attribute>
") NewEmpty;
		virtual opencascade::handle<TDF_Attribute> NewEmpty();

		/****************** Paste ******************/
		/**** md5 signature: 6b821b16b349fd69b3cc5a104c81cdb0 ****/
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "Does nothing.

Parameters
----------
&: TDF_Attribute
&: TDF_RelocationTable

Returns
-------
None
") Paste;
		virtual void Paste(const opencascade::handle<TDF_Attribute > &, const opencascade::handle<TDF_RelocationTable > &);

		/****************** RemoveMaterial ******************/
		/**** md5 signature: 775c769efa33703b71d57b14aad1c668 ****/
		%feature("compactdefaultargs") RemoveMaterial;
		%feature("autodoc", "Removes material from the material table.

Parameters
----------
theLabel: TDF_Label

Returns
-------
None
") RemoveMaterial;
		void RemoveMaterial(const TDF_Label & theLabel);

		/****************** Restore ******************/
		/**** md5 signature: 2caa509340d7b0f9339dec9716f9637c ****/
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "Does nothing.

Parameters
----------
&: TDF_Attribute

Returns
-------
None
") Restore;
		virtual void Restore(const opencascade::handle<TDF_Attribute > &);

		/****************** Set ******************/
		/**** md5 signature: d22b33d6563c5e4e2eb49ebdf3751fdb ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Creates (if not exist) colortool.

Parameters
----------
L: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_VisMaterialTool>
") Set;
		static opencascade::handle<XCAFDoc_VisMaterialTool> Set(const TDF_Label & L);

		/****************** SetShapeMaterial ******************/
		/**** md5 signature: c02461a59f71e755a5f9e57497ad3b7b ****/
		%feature("compactdefaultargs") SetShapeMaterial;
		%feature("autodoc", "Sets new material to the shape.

Parameters
----------
theShapeLabel: TDF_Label
theMaterialLabel: TDF_Label

Returns
-------
None
") SetShapeMaterial;
		void SetShapeMaterial(const TDF_Label & theShapeLabel, const TDF_Label & theMaterialLabel);

		/****************** SetShapeMaterial ******************/
		/**** md5 signature: 05e3210e021dcd62b991927ee495997d ****/
		%feature("compactdefaultargs") SetShapeMaterial;
		%feature("autodoc", "Sets a link with guid xcafdoc::vismaterialrefguid() from shape label to material label. @param theshape [in] shape @param themateriallabel [in] material label returns false if cannot find a label for shape.

Parameters
----------
theShape: TopoDS_Shape
theMaterialLabel: TDF_Label

Returns
-------
bool
") SetShapeMaterial;
		Standard_Boolean SetShapeMaterial(const TopoDS_Shape & theShape, const TDF_Label & theMaterialLabel);

		/****************** ShapeTool ******************/
		/**** md5 signature: f3b52ea6763fc2a237d4ce7351722eb2 ****/
		%feature("compactdefaultargs") ShapeTool;
		%feature("autodoc", "Returns internal xcafdoc_shapetool tool.

Returns
-------
opencascade::handle<XCAFDoc_ShapeTool>
") ShapeTool;
		const opencascade::handle<XCAFDoc_ShapeTool> & ShapeTool();

		/****************** UnSetShapeMaterial ******************/
		/**** md5 signature: b6124abd7d901d59c49fc99b537e31d6 ****/
		%feature("compactdefaultargs") UnSetShapeMaterial;
		%feature("autodoc", "Removes a link with guid xcafdoc::vismaterialrefguid() from shape label to material.

Parameters
----------
theShapeLabel: TDF_Label

Returns
-------
None
") UnSetShapeMaterial;
		void UnSetShapeMaterial(const TDF_Label & theShapeLabel);

		/****************** UnSetShapeMaterial ******************/
		/**** md5 signature: 762961cc3d6e7a135be7a3b3a11d73e3 ****/
		%feature("compactdefaultargs") UnSetShapeMaterial;
		%feature("autodoc", "Removes a link with guid xcafdoc::vismaterialrefguid() from shape label to material. returns true if such link existed.

Parameters
----------
theShape: TopoDS_Shape

Returns
-------
bool
") UnSetShapeMaterial;
		Standard_Boolean UnSetShapeMaterial(const TopoDS_Shape & theShape);

};


%make_alias(XCAFDoc_VisMaterialTool)

%extend XCAFDoc_VisMaterialTool {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/***********************
* class XCAFDoc_Volume *
***********************/
class XCAFDoc_Volume : public TDataStd_Real {
	public:
		/****************** XCAFDoc_Volume ******************/
		/**** md5 signature: dbf6d7bd9fbecc3f59a747906bf1fbdf ****/
		%feature("compactdefaultargs") XCAFDoc_Volume;
		%feature("autodoc", "Class methods =============.

Returns
-------
None
") XCAFDoc_Volume;
		 XCAFDoc_Volume();


        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };

            %feature("autodoc", "1");
            %extend{
                std::string DumpJsonToString(int depth=-1) {
                std::stringstream s;
                self->DumpJson(s, depth);
                return s.str();}
            };
		/****************** Get ******************/
		/**** md5 signature: fc841fb28cb01367762b1d75c09d001e ****/
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "No available documentation.

Returns
-------
float
") Get;
		Standard_Real Get();

		/****************** Get ******************/
		/**** md5 signature: 0308c68cdf207a8ba32cf620a55566fe ****/
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "Returns volume as argument returns false if no such attribute at the <label>.

Parameters
----------
label: TDF_Label

Returns
-------
vol: float
") Get;
		static Standard_Boolean Get(const TDF_Label & label, Standard_Real &OutValue);

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** Set ******************/
		/**** md5 signature: 17ac24e76c81dc3dd9e0c71d510d3f0f ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Sets a value of volume.

Parameters
----------
vol: float

Returns
-------
None
") Set;
		void Set(const Standard_Real vol);

		/****************** Set ******************/
		/**** md5 signature: 04b36235e2900fb9027e28cf6a91dfc8 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Find, or create, an volume attribute and set its value.

Parameters
----------
label: TDF_Label
vol: float

Returns
-------
opencascade::handle<XCAFDoc_Volume>
") Set;
		static opencascade::handle<XCAFDoc_Volume> Set(const TDF_Label & label, const Standard_Real vol);

};


%make_alias(XCAFDoc_Volume)

%extend XCAFDoc_Volume {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/****************************
* class XCAFDoc_NoteBinData *
****************************/
class XCAFDoc_NoteBinData : public XCAFDoc_Note {
	public:
		/****************** XCAFDoc_NoteBinData ******************/
		/**** md5 signature: f25e08a0f55dc8c306751fc7d98a29d0 ****/
		%feature("compactdefaultargs") XCAFDoc_NoteBinData;
		%feature("autodoc", "Creates an empty binary data note.

Returns
-------
None
") XCAFDoc_NoteBinData;
		 XCAFDoc_NoteBinData();

		/****************** Data ******************/
		/**** md5 signature: 395b58c4da32414cb2a48f375b446c38 ****/
		%feature("compactdefaultargs") Data;
		%feature("autodoc", "Returns byte data array.

Returns
-------
opencascade::handle<TColStd_HArray1OfByte>
") Data;
		const opencascade::handle<TColStd_HArray1OfByte> & Data();


        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
		/****************** Get ******************/
		/**** md5 signature: 02af6bbbdbedcc1ca4399ebdbd529b59 ****/
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "Finds a binary data attribute on the given label and returns it, if it is found.

Parameters
----------
theLabel: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_NoteBinData>
") Get;
		static opencascade::handle<XCAFDoc_NoteBinData> Get(const TDF_Label & theLabel);

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "Returns default attribute guid.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** MIMEtype ******************/
		/**** md5 signature: fe48efd490314a06c0046b11090ff48d ****/
		%feature("compactdefaultargs") MIMEtype;
		%feature("autodoc", "Returns data mime type.

Returns
-------
TCollection_AsciiString
") MIMEtype;
		const TCollection_AsciiString & MIMEtype();

		/****************** NewEmpty ******************/
		/**** md5 signature: c6d13c9ecc64c6c803b6e119e8216934 ****/
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TDF_Attribute>
") NewEmpty;
		opencascade::handle<TDF_Attribute> NewEmpty();

		/****************** Paste ******************/
		/**** md5 signature: f98a67c4f327c9d7cceaa72c60db3f31 ****/
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "No available documentation.

Parameters
----------
theAttrInto: TDF_Attribute
theRT: TDF_RelocationTable

Returns
-------
None
") Paste;
		void Paste(const opencascade::handle<TDF_Attribute> & theAttrInto, const opencascade::handle<TDF_RelocationTable> & theRT);

		/****************** Restore ******************/
		/**** md5 signature: 64974bd3177ca3958ca6f642f1c665f5 ****/
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "No available documentation.

Parameters
----------
theAttrFrom: TDF_Attribute

Returns
-------
None
") Restore;
		void Restore(const opencascade::handle<TDF_Attribute> & theAttrFrom);

		/****************** Set ******************/
		/**** md5 signature: 9c3daba24c507f0c878aceba1bebac7f ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Create (if not exist) a binary note with data loaded from a binary file. \param [in] thelabel - label to add the attribute. \param [in] theusername - the name of the user, who created the note. \param [in] thetimestamp - creation timestamp of the note. \param [in] thetitle - file title. \param [in] themimetype - mime type of the file. \param [in] thefile - input binary file. eturn a handle to the attribute instance.

Parameters
----------
theLabel: TDF_Label
theUserName: str
theTimeStamp: str
theTitle: str
theMIMEtype: str
theFile: OSD_File

Returns
-------
opencascade::handle<XCAFDoc_NoteBinData>
") Set;
		static opencascade::handle<XCAFDoc_NoteBinData> Set(const TDF_Label & theLabel, TCollection_ExtendedString theUserName, TCollection_ExtendedString theTimeStamp, TCollection_ExtendedString theTitle, TCollection_AsciiString theMIMEtype, OSD_File & theFile);

		/****************** Set ******************/
		/**** md5 signature: 2860d3c056ed0c365f58c7e7d299edb4 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Create (if not exist) a binary note byte data array. \param [in] thelabel - label to add the attribute. \param [in] theusername - the name of the user, who created the note. \param [in] thetimestamp - creation timestamp of the note. \param [in] thetitle - data title. \param [in] themimetype - mime type of data. \param [in] thedata - byte data array. eturn a handle to the attribute instance.

Parameters
----------
theLabel: TDF_Label
theUserName: str
theTimeStamp: str
theTitle: str
theMIMEtype: str
theData: TColStd_HArray1OfByte

Returns
-------
opencascade::handle<XCAFDoc_NoteBinData>
") Set;
		static opencascade::handle<XCAFDoc_NoteBinData> Set(const TDF_Label & theLabel, TCollection_ExtendedString theUserName, TCollection_ExtendedString theTimeStamp, TCollection_ExtendedString theTitle, TCollection_AsciiString theMIMEtype, const opencascade::handle<TColStd_HArray1OfByte> & theData);

		/****************** Set ******************/
		/**** md5 signature: 687dd70a71c09ae4e0a64c71d20cde3d ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Sets title, mime type and data from a binary file. \param [in] thetitle - file title. \param [in] themimetype - mime type of the file. \param [in] thefile - input binary file.

Parameters
----------
theTitle: str
theMIMEtype: str
theFile: OSD_File

Returns
-------
bool
") Set;
		Standard_Boolean Set(TCollection_ExtendedString theTitle, TCollection_AsciiString theMIMEtype, OSD_File & theFile);

		/****************** Set ******************/
		/**** md5 signature: e0cd2bd6be68eba0bd2cad88cb216750 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Sets title, mime type and data from a byte array. \param [in] thetitle - data title. \param [in] themimetype - mime type of data. \param [in] thedata - byte data array.

Parameters
----------
theTitle: str
theMIMEtype: str
theData: TColStd_HArray1OfByte

Returns
-------
None
") Set;
		void Set(TCollection_ExtendedString theTitle, TCollection_AsciiString theMIMEtype, const opencascade::handle<TColStd_HArray1OfByte> & theData);

		/****************** Size ******************/
		/**** md5 signature: fe6e16e0f1e86558dd017c7384c76cd6 ****/
		%feature("compactdefaultargs") Size;
		%feature("autodoc", "Size of data in bytes.

Returns
-------
int
") Size;
		Standard_Integer Size();

		/****************** Title ******************/
		/**** md5 signature: f6908c94b14b08bda1ee947ff0d8b2f6 ****/
		%feature("compactdefaultargs") Title;
		%feature("autodoc", "Returns the note title.

Returns
-------
TCollection_ExtendedString
") Title;
		const TCollection_ExtendedString & Title();

};


%make_alias(XCAFDoc_NoteBinData)

%extend XCAFDoc_NoteBinData {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/****************************
* class XCAFDoc_NoteComment *
****************************/
class XCAFDoc_NoteComment : public XCAFDoc_Note {
	public:
		/****************** XCAFDoc_NoteComment ******************/
		/**** md5 signature: 54c6854f670bb44c7c682e1361217cd3 ****/
		%feature("compactdefaultargs") XCAFDoc_NoteComment;
		%feature("autodoc", "Creates an empty comment note.

Returns
-------
None
") XCAFDoc_NoteComment;
		 XCAFDoc_NoteComment();

		/****************** Comment ******************/
		/**** md5 signature: f7f4e583b1edea4beb0abba514dedde0 ****/
		%feature("compactdefaultargs") Comment;
		%feature("autodoc", "Returns the comment text.

Returns
-------
TCollection_ExtendedString
") Comment;
		const TCollection_ExtendedString & Comment();


        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
		/****************** Get ******************/
		/**** md5 signature: 821f268035461249ad0ec3f1760ab2ea ****/
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "Finds a reference attribute on the given label and returns it, if it is found.

Parameters
----------
theLabel: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_NoteComment>
") Get;
		static opencascade::handle<XCAFDoc_NoteComment> Get(const TDF_Label & theLabel);

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "Returns default attribute guid.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** NewEmpty ******************/
		/**** md5 signature: c6d13c9ecc64c6c803b6e119e8216934 ****/
		%feature("compactdefaultargs") NewEmpty;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<TDF_Attribute>
") NewEmpty;
		opencascade::handle<TDF_Attribute> NewEmpty();

		/****************** Paste ******************/
		/**** md5 signature: f98a67c4f327c9d7cceaa72c60db3f31 ****/
		%feature("compactdefaultargs") Paste;
		%feature("autodoc", "No available documentation.

Parameters
----------
theAttrInto: TDF_Attribute
theRT: TDF_RelocationTable

Returns
-------
None
") Paste;
		void Paste(const opencascade::handle<TDF_Attribute> & theAttrInto, const opencascade::handle<TDF_RelocationTable> & theRT);

		/****************** Restore ******************/
		/**** md5 signature: 64974bd3177ca3958ca6f642f1c665f5 ****/
		%feature("compactdefaultargs") Restore;
		%feature("autodoc", "No available documentation.

Parameters
----------
theAttrFrom: TDF_Attribute

Returns
-------
None
") Restore;
		void Restore(const opencascade::handle<TDF_Attribute> & theAttrFrom);

		/****************** Set ******************/
		/**** md5 signature: 14d9ff14f0193d561e7eeee92b2ce149 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Create (if not exist) a comment note on the given label. \param [in] thelabel - note label. \param [in] theusername - the name of the user, who created the note. \param [in] thetimestamp - creation timestamp of the note. \param [in] thecomment - comment text.

Parameters
----------
theLabel: TDF_Label
theUserName: str
theTimeStamp: str
theComment: str

Returns
-------
opencascade::handle<XCAFDoc_NoteComment>
") Set;
		static opencascade::handle<XCAFDoc_NoteComment> Set(const TDF_Label & theLabel, TCollection_ExtendedString theUserName, TCollection_ExtendedString theTimeStamp, TCollection_ExtendedString theComment);

		/****************** Set ******************/
		/**** md5 signature: 3e473f226231aa9fb962779c514f560d ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Sets the comment text.

Parameters
----------
theComment: str

Returns
-------
None
") Set;
		void Set(TCollection_ExtendedString theComment);

};


%make_alias(XCAFDoc_NoteComment)

%extend XCAFDoc_NoteComment {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/****************************
* class XCAFDoc_NoteBalloon *
****************************/
class XCAFDoc_NoteBalloon : public XCAFDoc_NoteComment {
	public:
		/****************** XCAFDoc_NoteBalloon ******************/
		/**** md5 signature: 4371baf718139887204de6f06f21b14c ****/
		%feature("compactdefaultargs") XCAFDoc_NoteBalloon;
		%feature("autodoc", "Creates an empty comment note.

Returns
-------
None
") XCAFDoc_NoteBalloon;
		 XCAFDoc_NoteBalloon();

		/****************** Get ******************/
		/**** md5 signature: 0ff3bccea1458ab67896633fc610cdad ****/
		%feature("compactdefaultargs") Get;
		%feature("autodoc", "Finds a reference attribute on the given label and returns it, if it is found.

Parameters
----------
theLabel: TDF_Label

Returns
-------
opencascade::handle<XCAFDoc_NoteBalloon>
") Get;
		static opencascade::handle<XCAFDoc_NoteBalloon> Get(const TDF_Label & theLabel);

		/****************** GetID ******************/
		/**** md5 signature: afe6002d90f641ca3ea8c9ae9f8fe97c ****/
		%feature("compactdefaultargs") GetID;
		%feature("autodoc", "Returns default attribute guid.

Returns
-------
Standard_GUID
") GetID;
		static const Standard_GUID & GetID();

		/****************** ID ******************/
		/**** md5 signature: 4697ce8a095fa6dcef0217708d19718f ****/
		%feature("compactdefaultargs") ID;
		%feature("autodoc", "No available documentation.

Returns
-------
Standard_GUID
") ID;
		const Standard_GUID & ID();

		/****************** Set ******************/
		/**** md5 signature: 1a0b4c33374b4e717ff9247e5c3e3a20 ****/
		%feature("compactdefaultargs") Set;
		%feature("autodoc", "Create (if not exist) a comment note on the given label. \param [in] thelabel - note label. \param [in] theusername - the name of the user, who created the note. \param [in] thetimestamp - creation timestamp of the note. \param [in] thecomment - comment text.

Parameters
----------
theLabel: TDF_Label
theUserName: str
theTimeStamp: str
theComment: str

Returns
-------
opencascade::handle<XCAFDoc_NoteBalloon>
") Set;
		static opencascade::handle<XCAFDoc_NoteBalloon> Set(const TDF_Label & theLabel, TCollection_ExtendedString theUserName, TCollection_ExtendedString theTimeStamp, TCollection_ExtendedString theComment);

};


%make_alias(XCAFDoc_NoteBalloon)

%extend XCAFDoc_NoteBalloon {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/* python proxy for excluded classes */
%pythoncode {
@classnotwrapped
class XCAFDoc_GeomTolerance:
	pass

}
/* end python proxy for excluded classes */
/* harray1 classes */
/* harray2 classes */
/* hsequence classes */
/* class aliases */
%pythoncode {
XCAFDoc_PartId=OCC.Core.TCollection.TCollection_AsciiString
}
/* deprecated methods */
%pythoncode {
@deprecated
def xcafdoc_AssemblyGUID(*args):
	return xcafdoc.AssemblyGUID(*args)

@deprecated
def xcafdoc_AttributeInfo(*args):
	return xcafdoc.AttributeInfo(*args)

@deprecated
def xcafdoc_ColorByLayerGUID(*args):
	return xcafdoc.ColorByLayerGUID(*args)

@deprecated
def xcafdoc_ColorRefGUID(*args):
	return xcafdoc.ColorRefGUID(*args)

@deprecated
def xcafdoc_DatumRefGUID(*args):
	return xcafdoc.DatumRefGUID(*args)

@deprecated
def xcafdoc_DatumTolRefGUID(*args):
	return xcafdoc.DatumTolRefGUID(*args)

@deprecated
def xcafdoc_DimTolRefGUID(*args):
	return xcafdoc.DimTolRefGUID(*args)

@deprecated
def xcafdoc_DimensionRefFirstGUID(*args):
	return xcafdoc.DimensionRefFirstGUID(*args)

@deprecated
def xcafdoc_DimensionRefSecondGUID(*args):
	return xcafdoc.DimensionRefSecondGUID(*args)

@deprecated
def xcafdoc_ExternRefGUID(*args):
	return xcafdoc.ExternRefGUID(*args)

@deprecated
def xcafdoc_GeomToleranceRefGUID(*args):
	return xcafdoc.GeomToleranceRefGUID(*args)

@deprecated
def xcafdoc_InvisibleGUID(*args):
	return xcafdoc.InvisibleGUID(*args)

@deprecated
def xcafdoc_LayerRefGUID(*args):
	return xcafdoc.LayerRefGUID(*args)

@deprecated
def xcafdoc_LockGUID(*args):
	return xcafdoc.LockGUID(*args)

@deprecated
def xcafdoc_MaterialRefGUID(*args):
	return xcafdoc.MaterialRefGUID(*args)

@deprecated
def xcafdoc_NoteRefGUID(*args):
	return xcafdoc.NoteRefGUID(*args)

@deprecated
def xcafdoc_SHUORefGUID(*args):
	return xcafdoc.SHUORefGUID(*args)

@deprecated
def xcafdoc_ShapeRefGUID(*args):
	return xcafdoc.ShapeRefGUID(*args)

@deprecated
def xcafdoc_ViewRefAnnotationGUID(*args):
	return xcafdoc.ViewRefAnnotationGUID(*args)

@deprecated
def xcafdoc_ViewRefGDTGUID(*args):
	return xcafdoc.ViewRefGDTGUID(*args)

@deprecated
def xcafdoc_ViewRefGUID(*args):
	return xcafdoc.ViewRefGUID(*args)

@deprecated
def xcafdoc_ViewRefNoteGUID(*args):
	return xcafdoc.ViewRefNoteGUID(*args)

@deprecated
def xcafdoc_ViewRefPlaneGUID(*args):
	return xcafdoc.ViewRefPlaneGUID(*args)

@deprecated
def xcafdoc_ViewRefShapeGUID(*args):
	return xcafdoc.ViewRefShapeGUID(*args)

@deprecated
def xcafdoc_VisMaterialRefGUID(*args):
	return xcafdoc.VisMaterialRefGUID(*args)

@deprecated
def XCAFDoc_Area_Get(*args):
	return XCAFDoc_Area.Get(*args)

@deprecated
def XCAFDoc_Area_GetID(*args):
	return XCAFDoc_Area.GetID(*args)

@deprecated
def XCAFDoc_Area_Set(*args):
	return XCAFDoc_Area.Set(*args)

@deprecated
def XCAFDoc_AssemblyItemRef_Get(*args):
	return XCAFDoc_AssemblyItemRef.Get(*args)

@deprecated
def XCAFDoc_AssemblyItemRef_GetID(*args):
	return XCAFDoc_AssemblyItemRef.GetID(*args)

@deprecated
def XCAFDoc_AssemblyItemRef_Set(*args):
	return XCAFDoc_AssemblyItemRef.Set(*args)

@deprecated
def XCAFDoc_AssemblyItemRef_Set(*args):
	return XCAFDoc_AssemblyItemRef.Set(*args)

@deprecated
def XCAFDoc_AssemblyItemRef_Set(*args):
	return XCAFDoc_AssemblyItemRef.Set(*args)

@deprecated
def XCAFDoc_Centroid_Get(*args):
	return XCAFDoc_Centroid.Get(*args)

@deprecated
def XCAFDoc_Centroid_GetID(*args):
	return XCAFDoc_Centroid.GetID(*args)

@deprecated
def XCAFDoc_Centroid_Set(*args):
	return XCAFDoc_Centroid.Set(*args)

@deprecated
def XCAFDoc_ClippingPlaneTool_GetID(*args):
	return XCAFDoc_ClippingPlaneTool.GetID(*args)

@deprecated
def XCAFDoc_ClippingPlaneTool_Set(*args):
	return XCAFDoc_ClippingPlaneTool.Set(*args)

@deprecated
def XCAFDoc_Color_GetID(*args):
	return XCAFDoc_Color.GetID(*args)

@deprecated
def XCAFDoc_Color_Set(*args):
	return XCAFDoc_Color.Set(*args)

@deprecated
def XCAFDoc_Color_Set(*args):
	return XCAFDoc_Color.Set(*args)

@deprecated
def XCAFDoc_Color_Set(*args):
	return XCAFDoc_Color.Set(*args)

@deprecated
def XCAFDoc_Color_Set(*args):
	return XCAFDoc_Color.Set(*args)

@deprecated
def XCAFDoc_ColorTool_AutoNaming(*args):
	return XCAFDoc_ColorTool.AutoNaming(*args)

@deprecated
def XCAFDoc_ColorTool_GetColor(*args):
	return XCAFDoc_ColorTool.GetColor(*args)

@deprecated
def XCAFDoc_ColorTool_GetColor(*args):
	return XCAFDoc_ColorTool.GetColor(*args)

@deprecated
def XCAFDoc_ColorTool_GetColor(*args):
	return XCAFDoc_ColorTool.GetColor(*args)

@deprecated
def XCAFDoc_ColorTool_GetColor(*args):
	return XCAFDoc_ColorTool.GetColor(*args)

@deprecated
def XCAFDoc_ColorTool_GetColor(*args):
	return XCAFDoc_ColorTool.GetColor(*args)

@deprecated
def XCAFDoc_ColorTool_GetID(*args):
	return XCAFDoc_ColorTool.GetID(*args)

@deprecated
def XCAFDoc_ColorTool_IsVisible(*args):
	return XCAFDoc_ColorTool.IsVisible(*args)

@deprecated
def XCAFDoc_ColorTool_Set(*args):
	return XCAFDoc_ColorTool.Set(*args)

@deprecated
def XCAFDoc_ColorTool_SetAutoNaming(*args):
	return XCAFDoc_ColorTool.SetAutoNaming(*args)

@deprecated
def XCAFDoc_Datum_GetID(*args):
	return XCAFDoc_Datum.GetID(*args)

@deprecated
def XCAFDoc_Datum_Set(*args):
	return XCAFDoc_Datum.Set(*args)

@deprecated
def XCAFDoc_Datum_Set(*args):
	return XCAFDoc_Datum.Set(*args)

@deprecated
def XCAFDoc_DimTol_GetID(*args):
	return XCAFDoc_DimTol.GetID(*args)

@deprecated
def XCAFDoc_DimTol_Set(*args):
	return XCAFDoc_DimTol.Set(*args)

@deprecated
def XCAFDoc_DimTolTool_GetDatumOfTolerLabels(*args):
	return XCAFDoc_DimTolTool.GetDatumOfTolerLabels(*args)

@deprecated
def XCAFDoc_DimTolTool_GetDatumWithObjectOfTolerLabels(*args):
	return XCAFDoc_DimTolTool.GetDatumWithObjectOfTolerLabels(*args)

@deprecated
def XCAFDoc_DimTolTool_GetID(*args):
	return XCAFDoc_DimTolTool.GetID(*args)

@deprecated
def XCAFDoc_DimTolTool_GetRefShapeLabel(*args):
	return XCAFDoc_DimTolTool.GetRefShapeLabel(*args)

@deprecated
def XCAFDoc_DimTolTool_Set(*args):
	return XCAFDoc_DimTolTool.Set(*args)

@deprecated
def XCAFDoc_Dimension_GetID(*args):
	return XCAFDoc_Dimension.GetID(*args)

@deprecated
def XCAFDoc_Dimension_Set(*args):
	return XCAFDoc_Dimension.Set(*args)

@deprecated
def XCAFDoc_DocumentTool_CheckClippingPlaneTool(*args):
	return XCAFDoc_DocumentTool.CheckClippingPlaneTool(*args)

@deprecated
def XCAFDoc_DocumentTool_CheckColorTool(*args):
	return XCAFDoc_DocumentTool.CheckColorTool(*args)

@deprecated
def XCAFDoc_DocumentTool_CheckDimTolTool(*args):
	return XCAFDoc_DocumentTool.CheckDimTolTool(*args)

@deprecated
def XCAFDoc_DocumentTool_CheckLayerTool(*args):
	return XCAFDoc_DocumentTool.CheckLayerTool(*args)

@deprecated
def XCAFDoc_DocumentTool_CheckMaterialTool(*args):
	return XCAFDoc_DocumentTool.CheckMaterialTool(*args)

@deprecated
def XCAFDoc_DocumentTool_CheckNotesTool(*args):
	return XCAFDoc_DocumentTool.CheckNotesTool(*args)

@deprecated
def XCAFDoc_DocumentTool_CheckShapeTool(*args):
	return XCAFDoc_DocumentTool.CheckShapeTool(*args)

@deprecated
def XCAFDoc_DocumentTool_CheckViewTool(*args):
	return XCAFDoc_DocumentTool.CheckViewTool(*args)

@deprecated
def XCAFDoc_DocumentTool_CheckVisMaterialTool(*args):
	return XCAFDoc_DocumentTool.CheckVisMaterialTool(*args)

@deprecated
def XCAFDoc_DocumentTool_ClippingPlaneTool(*args):
	return XCAFDoc_DocumentTool.ClippingPlaneTool(*args)

@deprecated
def XCAFDoc_DocumentTool_ClippingPlanesLabel(*args):
	return XCAFDoc_DocumentTool.ClippingPlanesLabel(*args)

@deprecated
def XCAFDoc_DocumentTool_ColorTool(*args):
	return XCAFDoc_DocumentTool.ColorTool(*args)

@deprecated
def XCAFDoc_DocumentTool_ColorsLabel(*args):
	return XCAFDoc_DocumentTool.ColorsLabel(*args)

@deprecated
def XCAFDoc_DocumentTool_DGTsLabel(*args):
	return XCAFDoc_DocumentTool.DGTsLabel(*args)

@deprecated
def XCAFDoc_DocumentTool_DimTolTool(*args):
	return XCAFDoc_DocumentTool.DimTolTool(*args)

@deprecated
def XCAFDoc_DocumentTool_DocLabel(*args):
	return XCAFDoc_DocumentTool.DocLabel(*args)

@deprecated
def XCAFDoc_DocumentTool_GetID(*args):
	return XCAFDoc_DocumentTool.GetID(*args)

@deprecated
def XCAFDoc_DocumentTool_GetLengthUnit(*args):
	return XCAFDoc_DocumentTool.GetLengthUnit(*args)

@deprecated
def XCAFDoc_DocumentTool_GetLengthUnit(*args):
	return XCAFDoc_DocumentTool.GetLengthUnit(*args)

@deprecated
def XCAFDoc_DocumentTool_IsXCAFDocument(*args):
	return XCAFDoc_DocumentTool.IsXCAFDocument(*args)

@deprecated
def XCAFDoc_DocumentTool_LayerTool(*args):
	return XCAFDoc_DocumentTool.LayerTool(*args)

@deprecated
def XCAFDoc_DocumentTool_LayersLabel(*args):
	return XCAFDoc_DocumentTool.LayersLabel(*args)

@deprecated
def XCAFDoc_DocumentTool_MaterialTool(*args):
	return XCAFDoc_DocumentTool.MaterialTool(*args)

@deprecated
def XCAFDoc_DocumentTool_MaterialsLabel(*args):
	return XCAFDoc_DocumentTool.MaterialsLabel(*args)

@deprecated
def XCAFDoc_DocumentTool_NotesLabel(*args):
	return XCAFDoc_DocumentTool.NotesLabel(*args)

@deprecated
def XCAFDoc_DocumentTool_NotesTool(*args):
	return XCAFDoc_DocumentTool.NotesTool(*args)

@deprecated
def XCAFDoc_DocumentTool_Set(*args):
	return XCAFDoc_DocumentTool.Set(*args)

@deprecated
def XCAFDoc_DocumentTool_SetLengthUnit(*args):
	return XCAFDoc_DocumentTool.SetLengthUnit(*args)

@deprecated
def XCAFDoc_DocumentTool_SetLengthUnit(*args):
	return XCAFDoc_DocumentTool.SetLengthUnit(*args)

@deprecated
def XCAFDoc_DocumentTool_ShapeTool(*args):
	return XCAFDoc_DocumentTool.ShapeTool(*args)

@deprecated
def XCAFDoc_DocumentTool_ShapesLabel(*args):
	return XCAFDoc_DocumentTool.ShapesLabel(*args)

@deprecated
def XCAFDoc_DocumentTool_ViewTool(*args):
	return XCAFDoc_DocumentTool.ViewTool(*args)

@deprecated
def XCAFDoc_DocumentTool_ViewsLabel(*args):
	return XCAFDoc_DocumentTool.ViewsLabel(*args)

@deprecated
def XCAFDoc_DocumentTool_VisMaterialLabel(*args):
	return XCAFDoc_DocumentTool.VisMaterialLabel(*args)

@deprecated
def XCAFDoc_DocumentTool_VisMaterialTool(*args):
	return XCAFDoc_DocumentTool.VisMaterialTool(*args)

@deprecated
def XCAFDoc_Editor_CloneMetaData(*args):
	return XCAFDoc_Editor.CloneMetaData(*args)

@deprecated
def XCAFDoc_Editor_CloneShapeLabel(*args):
	return XCAFDoc_Editor.CloneShapeLabel(*args)

@deprecated
def XCAFDoc_Editor_Expand(*args):
	return XCAFDoc_Editor.Expand(*args)

@deprecated
def XCAFDoc_Editor_Expand(*args):
	return XCAFDoc_Editor.Expand(*args)

@deprecated
def XCAFDoc_Editor_Extract(*args):
	return XCAFDoc_Editor.Extract(*args)

@deprecated
def XCAFDoc_Editor_Extract(*args):
	return XCAFDoc_Editor.Extract(*args)

@deprecated
def XCAFDoc_Editor_RescaleGeometry(*args):
	return XCAFDoc_Editor.RescaleGeometry(*args)

@deprecated
def XCAFDoc_GraphNode_Find(*args):
	return XCAFDoc_GraphNode.Find(*args)

@deprecated
def XCAFDoc_GraphNode_GetDefaultGraphID(*args):
	return XCAFDoc_GraphNode.GetDefaultGraphID(*args)

@deprecated
def XCAFDoc_GraphNode_Set(*args):
	return XCAFDoc_GraphNode.Set(*args)

@deprecated
def XCAFDoc_GraphNode_Set(*args):
	return XCAFDoc_GraphNode.Set(*args)

@deprecated
def XCAFDoc_LayerTool_GetID(*args):
	return XCAFDoc_LayerTool.GetID(*args)

@deprecated
def XCAFDoc_LayerTool_GetShapesOfLayer(*args):
	return XCAFDoc_LayerTool.GetShapesOfLayer(*args)

@deprecated
def XCAFDoc_LayerTool_Set(*args):
	return XCAFDoc_LayerTool.Set(*args)

@deprecated
def XCAFDoc_LengthUnit_GetID(*args):
	return XCAFDoc_LengthUnit.GetID(*args)

@deprecated
def XCAFDoc_LengthUnit_Set(*args):
	return XCAFDoc_LengthUnit.Set(*args)

@deprecated
def XCAFDoc_LengthUnit_Set(*args):
	return XCAFDoc_LengthUnit.Set(*args)

@deprecated
def XCAFDoc_LengthUnit_Set(*args):
	return XCAFDoc_LengthUnit.Set(*args)

@deprecated
def XCAFDoc_Location_GetID(*args):
	return XCAFDoc_Location.GetID(*args)

@deprecated
def XCAFDoc_Location_Set(*args):
	return XCAFDoc_Location.Set(*args)

@deprecated
def XCAFDoc_Material_GetID(*args):
	return XCAFDoc_Material.GetID(*args)

@deprecated
def XCAFDoc_Material_Set(*args):
	return XCAFDoc_Material.Set(*args)

@deprecated
def XCAFDoc_MaterialTool_GetDensityForShape(*args):
	return XCAFDoc_MaterialTool.GetDensityForShape(*args)

@deprecated
def XCAFDoc_MaterialTool_GetID(*args):
	return XCAFDoc_MaterialTool.GetID(*args)

@deprecated
def XCAFDoc_MaterialTool_GetMaterial(*args):
	return XCAFDoc_MaterialTool.GetMaterial(*args)

@deprecated
def XCAFDoc_MaterialTool_Set(*args):
	return XCAFDoc_MaterialTool.Set(*args)

@deprecated
def XCAFDoc_Note_Get(*args):
	return XCAFDoc_Note.Get(*args)

@deprecated
def XCAFDoc_Note_IsMine(*args):
	return XCAFDoc_Note.IsMine(*args)

@deprecated
def XCAFDoc_NotesTool_GetID(*args):
	return XCAFDoc_NotesTool.GetID(*args)

@deprecated
def XCAFDoc_NotesTool_Set(*args):
	return XCAFDoc_NotesTool.Set(*args)

@deprecated
def XCAFDoc_ShapeMapTool_GetID(*args):
	return XCAFDoc_ShapeMapTool.GetID(*args)

@deprecated
def XCAFDoc_ShapeMapTool_Set(*args):
	return XCAFDoc_ShapeMapTool.Set(*args)

@deprecated
def XCAFDoc_ShapeTool_AutoNaming(*args):
	return XCAFDoc_ShapeTool.AutoNaming(*args)

@deprecated
def XCAFDoc_ShapeTool_FindSHUO(*args):
	return XCAFDoc_ShapeTool.FindSHUO(*args)

@deprecated
def XCAFDoc_ShapeTool_GetAllComponentSHUO(*args):
	return XCAFDoc_ShapeTool.GetAllComponentSHUO(*args)

@deprecated
def XCAFDoc_ShapeTool_GetComponents(*args):
	return XCAFDoc_ShapeTool.GetComponents(*args)

@deprecated
def XCAFDoc_ShapeTool_GetExternRefs(*args):
	return XCAFDoc_ShapeTool.GetExternRefs(*args)

@deprecated
def XCAFDoc_ShapeTool_GetID(*args):
	return XCAFDoc_ShapeTool.GetID(*args)

@deprecated
def XCAFDoc_ShapeTool_GetLocation(*args):
	return XCAFDoc_ShapeTool.GetLocation(*args)

@deprecated
def XCAFDoc_ShapeTool_GetOneShape(*args):
	return XCAFDoc_ShapeTool.GetOneShape(*args)

@deprecated
def XCAFDoc_ShapeTool_GetReferredShape(*args):
	return XCAFDoc_ShapeTool.GetReferredShape(*args)

@deprecated
def XCAFDoc_ShapeTool_GetSHUO(*args):
	return XCAFDoc_ShapeTool.GetSHUO(*args)

@deprecated
def XCAFDoc_ShapeTool_GetSHUONextUsage(*args):
	return XCAFDoc_ShapeTool.GetSHUONextUsage(*args)

@deprecated
def XCAFDoc_ShapeTool_GetSHUOUpperUsage(*args):
	return XCAFDoc_ShapeTool.GetSHUOUpperUsage(*args)

@deprecated
def XCAFDoc_ShapeTool_GetShape(*args):
	return XCAFDoc_ShapeTool.GetShape(*args)

@deprecated
def XCAFDoc_ShapeTool_GetShape(*args):
	return XCAFDoc_ShapeTool.GetShape(*args)

@deprecated
def XCAFDoc_ShapeTool_GetSubShapes(*args):
	return XCAFDoc_ShapeTool.GetSubShapes(*args)

@deprecated
def XCAFDoc_ShapeTool_GetUsers(*args):
	return XCAFDoc_ShapeTool.GetUsers(*args)

@deprecated
def XCAFDoc_ShapeTool_IsAssembly(*args):
	return XCAFDoc_ShapeTool.IsAssembly(*args)

@deprecated
def XCAFDoc_ShapeTool_IsComponent(*args):
	return XCAFDoc_ShapeTool.IsComponent(*args)

@deprecated
def XCAFDoc_ShapeTool_IsCompound(*args):
	return XCAFDoc_ShapeTool.IsCompound(*args)

@deprecated
def XCAFDoc_ShapeTool_IsExternRef(*args):
	return XCAFDoc_ShapeTool.IsExternRef(*args)

@deprecated
def XCAFDoc_ShapeTool_IsFree(*args):
	return XCAFDoc_ShapeTool.IsFree(*args)

@deprecated
def XCAFDoc_ShapeTool_IsReference(*args):
	return XCAFDoc_ShapeTool.IsReference(*args)

@deprecated
def XCAFDoc_ShapeTool_IsShape(*args):
	return XCAFDoc_ShapeTool.IsShape(*args)

@deprecated
def XCAFDoc_ShapeTool_IsSimpleShape(*args):
	return XCAFDoc_ShapeTool.IsSimpleShape(*args)

@deprecated
def XCAFDoc_ShapeTool_IsSubShape(*args):
	return XCAFDoc_ShapeTool.IsSubShape(*args)

@deprecated
def XCAFDoc_ShapeTool_NbComponents(*args):
	return XCAFDoc_ShapeTool.NbComponents(*args)

@deprecated
def XCAFDoc_ShapeTool_Set(*args):
	return XCAFDoc_ShapeTool.Set(*args)

@deprecated
def XCAFDoc_ShapeTool_SetAutoNaming(*args):
	return XCAFDoc_ShapeTool.SetAutoNaming(*args)

@deprecated
def XCAFDoc_View_GetID(*args):
	return XCAFDoc_View.GetID(*args)

@deprecated
def XCAFDoc_View_Set(*args):
	return XCAFDoc_View.Set(*args)

@deprecated
def XCAFDoc_ViewTool_GetID(*args):
	return XCAFDoc_ViewTool.GetID(*args)

@deprecated
def XCAFDoc_ViewTool_Set(*args):
	return XCAFDoc_ViewTool.Set(*args)

@deprecated
def XCAFDoc_VisMaterial_GetID(*args):
	return XCAFDoc_VisMaterial.GetID(*args)

@deprecated
def XCAFDoc_VisMaterialTool_GetID(*args):
	return XCAFDoc_VisMaterialTool.GetID(*args)

@deprecated
def XCAFDoc_VisMaterialTool_GetMaterial(*args):
	return XCAFDoc_VisMaterialTool.GetMaterial(*args)

@deprecated
def XCAFDoc_VisMaterialTool_GetShapeMaterial(*args):
	return XCAFDoc_VisMaterialTool.GetShapeMaterial(*args)

@deprecated
def XCAFDoc_VisMaterialTool_GetShapeMaterial(*args):
	return XCAFDoc_VisMaterialTool.GetShapeMaterial(*args)

@deprecated
def XCAFDoc_VisMaterialTool_Set(*args):
	return XCAFDoc_VisMaterialTool.Set(*args)

@deprecated
def XCAFDoc_Volume_Get(*args):
	return XCAFDoc_Volume.Get(*args)

@deprecated
def XCAFDoc_Volume_GetID(*args):
	return XCAFDoc_Volume.GetID(*args)

@deprecated
def XCAFDoc_Volume_Set(*args):
	return XCAFDoc_Volume.Set(*args)

@deprecated
def XCAFDoc_NoteBinData_Get(*args):
	return XCAFDoc_NoteBinData.Get(*args)

@deprecated
def XCAFDoc_NoteBinData_GetID(*args):
	return XCAFDoc_NoteBinData.GetID(*args)

@deprecated
def XCAFDoc_NoteBinData_Set(*args):
	return XCAFDoc_NoteBinData.Set(*args)

@deprecated
def XCAFDoc_NoteBinData_Set(*args):
	return XCAFDoc_NoteBinData.Set(*args)

@deprecated
def XCAFDoc_NoteComment_Get(*args):
	return XCAFDoc_NoteComment.Get(*args)

@deprecated
def XCAFDoc_NoteComment_GetID(*args):
	return XCAFDoc_NoteComment.GetID(*args)

@deprecated
def XCAFDoc_NoteComment_Set(*args):
	return XCAFDoc_NoteComment.Set(*args)

@deprecated
def XCAFDoc_NoteBalloon_Get(*args):
	return XCAFDoc_NoteBalloon.Get(*args)

@deprecated
def XCAFDoc_NoteBalloon_GetID(*args):
	return XCAFDoc_NoteBalloon.GetID(*args)

@deprecated
def XCAFDoc_NoteBalloon_Set(*args):
	return XCAFDoc_NoteBalloon.Set(*args)

}
