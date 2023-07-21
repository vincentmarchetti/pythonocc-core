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
%define BREPTOOLSDOCSTRING
"BRepTools module, see official documentation at
https://www.opencascade.com/doc/occt-7.6.0/refman/html/package_breptools.html"
%enddef
%module (package="OCC.Core", docstring=BREPTOOLSDOCSTRING) BRepTools


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
#include<BRepTools_module.hxx>

//Dependencies
#include<Standard_module.hxx>
#include<NCollection_module.hxx>
#include<TopoDS_module.hxx>
#include<Bnd_module.hxx>
#include<TopTools_module.hxx>
#include<Geom_module.hxx>
#include<Geom2d_module.hxx>
#include<OSD_module.hxx>
#include<TopAbs_module.hxx>
#include<BRep_module.hxx>
#include<Message_module.hxx>
#include<GeomAbs_module.hxx>
#include<TopLoc_module.hxx>
#include<gp_module.hxx>
#include<Poly_module.hxx>
#include<TShort_module.hxx>
#include<Poly_module.hxx>
#include<TColgp_module.hxx>
#include<TColStd_module.hxx>
#include<TCollection_module.hxx>
#include<Storage_module.hxx>
%};
%import Standard.i
%import NCollection.i
%import TopoDS.i
%import Bnd.i
%import TopTools.i
%import Geom.i
%import Geom2d.i
%import OSD.i
%import TopAbs.i
%import BRep.i
%import Message.i
%import GeomAbs.i
%import TopLoc.i
%import gp.i
%import Poly.i

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
%wrap_handle(BRepTools_History)
%wrap_handle(BRepTools_Modification)
%wrap_handle(BRepTools_ReShape)
%wrap_handle(BRepTools_CopyModification)
%wrap_handle(BRepTools_GTrsfModification)
%wrap_handle(BRepTools_TrsfModification)
%wrap_handle(BRepTools_NurbsConvertModification)
/* end handles declaration */

/* templates */
%template(BRepTools_MapOfVertexPnt2d) NCollection_DataMap<TopoDS_Shape,TColgp_SequenceOfPnt2d,TopTools_ShapeMapHasher>;
/* end templates declaration */

/* typedefs */
typedef NCollection_DataMap<TopoDS_Shape, TColgp_SequenceOfPnt2d, TopTools_ShapeMapHasher>::Iterator BRepTools_DataMapIteratorOfMapOfVertexPnt2d;
typedef NCollection_DataMap<TopoDS_Shape, TColgp_SequenceOfPnt2d, TopTools_ShapeMapHasher> BRepTools_MapOfVertexPnt2d;
/* end typedefs declaration */

/******************
* class BRepTools *
******************/
%rename(breptools) BRepTools;
class BRepTools {
	public:
		/****************** ActivateTriangulation ******************/
		/**** md5 signature: 39a3be4a36dcd05759204a5ec0fdc5af ****/
		%feature("compactdefaultargs") ActivateTriangulation;
		%feature("autodoc", "Activates triangulation data for each face of the shape from some deferred storage using specified shared input file system @param theshape  [in] shape to activate triangulations @param thetriangulationidx [in] index defining what triangulation should be activated. starts from 0. exception will be thrown in case of invalid negative index @param thetoactivatestrictly [in] flag to activate exactly triangulation with defined thetriangulationidx index. in true case if some face doesn't contain triangulation with this index, active triangulation will not be changed for it. else the last available triangulation will be activated. returns true if at least one active triangulation was changed.

Parameters
----------
theShape: TopoDS_Shape
theTriangulationIdx: int
theToActivateStrictly: bool,optional
	default value is false

Returns
-------
bool
") ActivateTriangulation;
		static Standard_Boolean ActivateTriangulation(const TopoDS_Shape & theShape, const Standard_Integer theTriangulationIdx, const Standard_Boolean theToActivateStrictly = false);

		/****************** AddUVBounds ******************/
		/**** md5 signature: 0f0b092c5bc0e661a6c685d5c94ea9dd ****/
		%feature("compactdefaultargs") AddUVBounds;
		%feature("autodoc", "Adds to the box <b> the bounding values in the parametric space of f.

Parameters
----------
F: TopoDS_Face
B: Bnd_Box2d

Returns
-------
None
") AddUVBounds;
		static void AddUVBounds(const TopoDS_Face & F, Bnd_Box2d & B);

		/****************** AddUVBounds ******************/
		/**** md5 signature: b2e0e63879ee2bdf9d6eb8f583eef486 ****/
		%feature("compactdefaultargs") AddUVBounds;
		%feature("autodoc", "Adds to the box <b> the bounding values of the wire in the parametric space of f.

Parameters
----------
F: TopoDS_Face
W: TopoDS_Wire
B: Bnd_Box2d

Returns
-------
None
") AddUVBounds;
		static void AddUVBounds(const TopoDS_Face & F, const TopoDS_Wire & W, Bnd_Box2d & B);

		/****************** AddUVBounds ******************/
		/**** md5 signature: ef861e4c373c52fcf2272133b9ef615f ****/
		%feature("compactdefaultargs") AddUVBounds;
		%feature("autodoc", "Adds to the box <b> the bounding values of the edge in the parametric space of f.

Parameters
----------
F: TopoDS_Face
E: TopoDS_Edge
B: Bnd_Box2d

Returns
-------
None
") AddUVBounds;
		static void AddUVBounds(const TopoDS_Face & F, const TopoDS_Edge & E, Bnd_Box2d & B);

		/****************** CheckLocations ******************/
		/**** md5 signature: 1df4d13b8eb09af8c12c5590b0f17a8c ****/
		%feature("compactdefaultargs") CheckLocations;
		%feature("autodoc", "Check all locations of shape according criterium: atrsf.isnegative() || (abs(abs(atrsf.scalefactor()) - 1.) > toploc_location::scaleprec()) all sub-shapes having such locations are put in list theproblemshapes.

Parameters
----------
theS: TopoDS_Shape
theProblemShapes: TopTools_ListOfShape

Returns
-------
None
") CheckLocations;
		static void CheckLocations(const TopoDS_Shape & theS, TopTools_ListOfShape & theProblemShapes);

		/****************** Clean ******************/
		/**** md5 signature: e69d53fa65ed6662d92131db242c5024 ****/
		%feature("compactdefaultargs") Clean;
		%feature("autodoc", "Removes all cached polygonal representation of the shape, i.e. the triangulations of the faces of <s> and polygons on triangulations and polygons 3d of the edges. in case polygonal representation is the only available representation for the shape (shape does not have geometry) it is not removed. @param theshape [in] the shape to clean @param theforce [in] allows removing all polygonal representations from the shape,  including polygons on triangulations irrelevant for the faces of the given shape.

Parameters
----------
theShape: TopoDS_Shape
theForce: bool,optional
	default value is Standard_False

Returns
-------
None
") Clean;
		static void Clean(const TopoDS_Shape & theShape, const Standard_Boolean theForce = Standard_False);

		/****************** CleanGeometry ******************/
		/**** md5 signature: ce6b6e89067b44b9c151c1e43c8e50e5 ****/
		%feature("compactdefaultargs") CleanGeometry;
		%feature("autodoc", "Removes geometry (curves and surfaces) from all edges and faces of the shape.

Parameters
----------
theShape: TopoDS_Shape

Returns
-------
None
") CleanGeometry;
		static void CleanGeometry(const TopoDS_Shape & theShape);

		/****************** Compare ******************/
		/**** md5 signature: d9864c743fdc9bb7b025a48b72edcbec ****/
		%feature("compactdefaultargs") Compare;
		%feature("autodoc", "Returns true if the distance between the two vertices is lower than their tolerance.

Parameters
----------
V1: TopoDS_Vertex
V2: TopoDS_Vertex

Returns
-------
bool
") Compare;
		static Standard_Boolean Compare(const TopoDS_Vertex & V1, const TopoDS_Vertex & V2);

		/****************** Compare ******************/
		/**** md5 signature: ea251f6848a69bbeaf8009fee744c62d ****/
		%feature("compactdefaultargs") Compare;
		%feature("autodoc", "Returns true if the distance between the two edges is lower than their tolerance.

Parameters
----------
E1: TopoDS_Edge
E2: TopoDS_Edge

Returns
-------
bool
") Compare;
		static Standard_Boolean Compare(const TopoDS_Edge & E1, const TopoDS_Edge & E2);

		/****************** DetectClosedness ******************/
		/**** md5 signature: 6f98ec688487f1becf2d69d2cb328f32 ****/
		%feature("compactdefaultargs") DetectClosedness;
		%feature("autodoc", "Detect closedness of face in u and v directions.

Parameters
----------
theFace: TopoDS_Face

Returns
-------
theUclosed: bool
theVclosed: bool
") DetectClosedness;
		static void DetectClosedness(const TopoDS_Face & theFace, Standard_Boolean &OutValue, Standard_Boolean &OutValue);

		/****************** EvalAndUpdateTol ******************/
		/**** md5 signature: d6d4ad99cb2d41e3fccbdfa94d99e988 ****/
		%feature("compactdefaultargs") EvalAndUpdateTol;
		%feature("autodoc", "Evals real tolerance of edge <thee>. <thec3d>, <thec2d>, <thes>, <thef>, <thel> are correspondently 3d curve of edge, 2d curve on surface <thes> and rang of edge if calculated tolerance is more then current edge tolerance, edge is updated. method returns actual tolerance of edge.

Parameters
----------
theE: TopoDS_Edge
theC3d: Geom_Curve
theC2d: Geom2d_Curve
theS: Geom_Surface
theF: float
theL: float

Returns
-------
float
") EvalAndUpdateTol;
		static Standard_Real EvalAndUpdateTol(const TopoDS_Edge & theE, const opencascade::handle<Geom_Curve> & theC3d, const opencascade::handle<Geom2d_Curve > theC2d, const opencascade::handle<Geom_Surface> & theS, const Standard_Real theF, const Standard_Real theL);

		/****************** IsReallyClosed ******************/
		/**** md5 signature: d361112f12ce86c3a572783eb22c3dcb ****/
		%feature("compactdefaultargs") IsReallyClosed;
		%feature("autodoc", "Verifies that the edge <e> is found two times on the face <f> before calling brep_tool::isclosed.

Parameters
----------
E: TopoDS_Edge
F: TopoDS_Face

Returns
-------
bool
") IsReallyClosed;
		static Standard_Boolean IsReallyClosed(const TopoDS_Edge & E, const TopoDS_Face & F);

		/****************** LoadAllTriangulations ******************/
		/**** md5 signature: 1466fd44e74f80d49ab3905c6d611afa ****/
		%feature("compactdefaultargs") LoadAllTriangulations;
		%feature("autodoc", "Loads all available triangulations for each face of the shape from some deferred storage using specified shared input file system @param theshape [in] shape to load triangulations @param thefilesystem [in] shared file system returns true if at least one triangulation is loaded.

Parameters
----------
theShape: TopoDS_Shape
theFileSystem: OSD_FileSystem,optional
	default value is opencascade::handle<OSD_FileSystem>()

Returns
-------
bool
") LoadAllTriangulations;
		static Standard_Boolean LoadAllTriangulations(const TopoDS_Shape & theShape, const opencascade::handle<OSD_FileSystem> & theFileSystem = opencascade::handle<OSD_FileSystem>());

		/****************** LoadTriangulation ******************/
		/**** md5 signature: 2b46d2fac9cc1acb805e26246d213be8 ****/
		%feature("compactdefaultargs") LoadTriangulation;
		%feature("autodoc", "Loads triangulation data for each face of the shape from some deferred storage using specified shared input file system @param theshape [in] shape to load triangulations @param thetriangulationidx [in] index defining what triangulation should be loaded. starts from 0. -1 is used in specific case to load currently already active triangulation. if some face doesn't contain triangulation with this index, nothing will be loaded for it. exception will be thrown in case of invalid negative index @param thetosetasactive [in] flag to activate triangulation after its loading @param thefilesystem [in] shared file system returns true if at least one triangulation is loaded.

Parameters
----------
theShape: TopoDS_Shape
theTriangulationIdx: int,optional
	default value is -1
theToSetAsActive: bool,optional
	default value is Standard_False
theFileSystem: OSD_FileSystem,optional
	default value is opencascade::handle<OSD_FileSystem>()

Returns
-------
bool
") LoadTriangulation;
		static Standard_Boolean LoadTriangulation(const TopoDS_Shape & theShape, const Standard_Integer theTriangulationIdx = -1, const Standard_Boolean theToSetAsActive = Standard_False, const opencascade::handle<OSD_FileSystem> & theFileSystem = opencascade::handle<OSD_FileSystem>());

		/****************** Map3DEdges ******************/
		/**** md5 signature: affe8cc83d005936d51c3385b6fc5c16 ****/
		%feature("compactdefaultargs") Map3DEdges;
		%feature("autodoc", "Stores in the map <m> all the 3d topology edges of <s>.

Parameters
----------
S: TopoDS_Shape
M: TopTools_IndexedMapOfShape

Returns
-------
None
") Map3DEdges;
		static void Map3DEdges(const TopoDS_Shape & S, TopTools_IndexedMapOfShape & M);

		/****************** OriEdgeInFace ******************/
		/**** md5 signature: 87c7eb8c9c51ee951fa03577413800d5 ****/
		%feature("compactdefaultargs") OriEdgeInFace;
		%feature("autodoc", "Returns the cumul of the orientation of <edge> and thc containing wire in <face>.

Parameters
----------
theEdge: TopoDS_Edge
theFace: TopoDS_Face

Returns
-------
TopAbs_Orientation
") OriEdgeInFace;
		static TopAbs_Orientation OriEdgeInFace(const TopoDS_Edge & theEdge, const TopoDS_Face & theFace);

		/****************** OuterWire ******************/
		/**** md5 signature: 34752d857d2c349cc92d685bc3ac944f ****/
		%feature("compactdefaultargs") OuterWire;
		%feature("autodoc", "Returns the outer most wire of <f>. returns a null wire if <f> has no wires.

Parameters
----------
F: TopoDS_Face

Returns
-------
TopoDS_Wire
") OuterWire;
		static TopoDS_Wire OuterWire(const TopoDS_Face & F);

		/****************** Read ******************/
		/**** md5 signature: 5e5d6e702af29b2284954f484072b531 ****/
		%feature("compactdefaultargs") Read;
		%feature("autodoc", "Reads a shape from <file>, returns it in <sh>. <b> is used to build the shape.

Parameters
----------
Sh: TopoDS_Shape
File: str
B: BRep_Builder
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Read;
		static Standard_Boolean Read(TopoDS_Shape & Sh, Standard_CString File, const BRep_Builder & B, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** RemoveInternals ******************/
		/**** md5 signature: fb7d53f36648eea1919fdf6c0fb177b1 ****/
		%feature("compactdefaultargs") RemoveInternals;
		%feature("autodoc", "Removes internal sub-shapes from the shape. the check on internal status is based on orientation of sub-shapes, classification is not performed. before removal of internal sub-shapes the algorithm checks if such removal is not going to break topological connectivity between sub-shapes. the flag <theforce> if set to true disables the connectivity check and clears the given shape from all sub-shapes with internal orientation.

Parameters
----------
theS: TopoDS_Shape
theForce: bool,optional
	default value is Standard_False

Returns
-------
None
") RemoveInternals;
		static void RemoveInternals(TopoDS_Shape & theS, const Standard_Boolean theForce = Standard_False);

		/****************** RemoveUnusedPCurves ******************/
		/**** md5 signature: eda361bf0d5c24ff50f23619c0d11b07 ****/
		%feature("compactdefaultargs") RemoveUnusedPCurves;
		%feature("autodoc", "Removes all the pcurves of the edges of <s> that refer to surfaces not belonging to any face of <s>.

Parameters
----------
S: TopoDS_Shape

Returns
-------
None
") RemoveUnusedPCurves;
		static void RemoveUnusedPCurves(const TopoDS_Shape & S);

		/****************** Triangulation ******************/
		/**** md5 signature: 972fc5cfded2376997f1670bb657d434 ****/
		%feature("compactdefaultargs") Triangulation;
		%feature("autodoc", "Verifies that each face from the shape has got a triangulation with a deflection smaller or equal to specified one and the edges a discretization on this triangulation. @param theshape [in] shape to verify @param thelindefl [in] maximum allowed linear deflection @param thetocheckfreeedges [in] if true, then free edges are required to have 3d polygon returns false if input shape contains faces without triangulation, or that triangulation has worse (greater) deflection than specified one, or edges in shape lack polygons on triangulation or free edges in shape lack 3d polygons.

Parameters
----------
theShape: TopoDS_Shape
theLinDefl: float
theToCheckFreeEdges: bool,optional
	default value is Standard_False

Returns
-------
bool
") Triangulation;
		static Standard_Boolean Triangulation(const TopoDS_Shape & theShape, const Standard_Real theLinDefl, const Standard_Boolean theToCheckFreeEdges = Standard_False);

		/****************** UVBounds ******************/
		/**** md5 signature: 0269b57f10dffa44e1c436bbfecc00b6 ****/
		%feature("compactdefaultargs") UVBounds;
		%feature("autodoc", "Returns in umin, umax, vmin, vmax the bounding values in the parametric space of f.

Parameters
----------
F: TopoDS_Face

Returns
-------
UMin: float
UMax: float
VMin: float
VMax: float
") UVBounds;
		static void UVBounds(const TopoDS_Face & F, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

		/****************** UVBounds ******************/
		/**** md5 signature: cf2651b439566177e86079e036f0f456 ****/
		%feature("compactdefaultargs") UVBounds;
		%feature("autodoc", "Returns in umin, umax, vmin, vmax the bounding values of the wire in the parametric space of f.

Parameters
----------
F: TopoDS_Face
W: TopoDS_Wire

Returns
-------
UMin: float
UMax: float
VMin: float
VMax: float
") UVBounds;
		static void UVBounds(const TopoDS_Face & F, const TopoDS_Wire & W, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

		/****************** UVBounds ******************/
		/**** md5 signature: 391e5b8ffac33b45d944cc1daf0ae4d7 ****/
		%feature("compactdefaultargs") UVBounds;
		%feature("autodoc", "Returns in umin, umax, vmin, vmax the bounding values of the edge in the parametric space of f.

Parameters
----------
F: TopoDS_Face
E: TopoDS_Edge

Returns
-------
UMin: float
UMax: float
VMin: float
VMax: float
") UVBounds;
		static void UVBounds(const TopoDS_Face & F, const TopoDS_Edge & E, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

		/****************** UnloadAllTriangulations ******************/
		/**** md5 signature: 8efc2f1bae963a37e143369fac101307 ****/
		%feature("compactdefaultargs") UnloadAllTriangulations;
		%feature("autodoc", "Releases all available triangulations for each face of the shape if there is deferred storage to load them later @param theshape [in] shape to unload triangulations returns true if at least one triangulation is unloaded.

Parameters
----------
theShape: TopoDS_Shape

Returns
-------
bool
") UnloadAllTriangulations;
		static Standard_Boolean UnloadAllTriangulations(const TopoDS_Shape & theShape);

		/****************** UnloadTriangulation ******************/
		/**** md5 signature: 4cba1ffb2b2a96847b88c3a4736d9bea ****/
		%feature("compactdefaultargs") UnloadTriangulation;
		%feature("autodoc", "Releases triangulation data for each face of the shape if there is deferred storage to load it later @param theshape [in] shape to unload triangulations @param thetriangulationidx [in] index defining what triangulation should be unloaded. starts from 0. -1 is used in specific case to unload currently already active triangulation. if some face doesn't contain triangulation with this index, nothing will be unloaded for it. exception will be thrown in case of invalid negative index returns true if at least one triangulation is unloaded.

Parameters
----------
theShape: TopoDS_Shape
theTriangulationIdx: int,optional
	default value is -1

Returns
-------
bool
") UnloadTriangulation;
		static Standard_Boolean UnloadTriangulation(const TopoDS_Shape & theShape, const Standard_Integer theTriangulationIdx = -1);

		/****************** Update ******************/
		/**** md5 signature: 7afb8b0a0ac818d408265e5c3ffb8146 ****/
		%feature("compactdefaultargs") Update;
		%feature("autodoc", "Update a vertex (nothing is done).

Parameters
----------
V: TopoDS_Vertex

Returns
-------
None
") Update;
		static void Update(const TopoDS_Vertex & V);

		/****************** Update ******************/
		/**** md5 signature: 75c7d58dbc644899f41cf6f457451a08 ****/
		%feature("compactdefaultargs") Update;
		%feature("autodoc", "Update an edge, compute 2d bounding boxes.

Parameters
----------
E: TopoDS_Edge

Returns
-------
None
") Update;
		static void Update(const TopoDS_Edge & E);

		/****************** Update ******************/
		/**** md5 signature: e94ec159f4082b5b4f1a0f416dd78ef6 ****/
		%feature("compactdefaultargs") Update;
		%feature("autodoc", "Update a wire (nothing is done).

Parameters
----------
W: TopoDS_Wire

Returns
-------
None
") Update;
		static void Update(const TopoDS_Wire & W);

		/****************** Update ******************/
		/**** md5 signature: 193444ef19754736bfcad5d390c79b81 ****/
		%feature("compactdefaultargs") Update;
		%feature("autodoc", "Update a face, update uv points.

Parameters
----------
F: TopoDS_Face

Returns
-------
None
") Update;
		static void Update(const TopoDS_Face & F);

		/****************** Update ******************/
		/**** md5 signature: cd320ec7b49cbbb658b6ae7b12c77502 ****/
		%feature("compactdefaultargs") Update;
		%feature("autodoc", "Update a shell (nothing is done).

Parameters
----------
S: TopoDS_Shell

Returns
-------
None
") Update;
		static void Update(const TopoDS_Shell & S);

		/****************** Update ******************/
		/**** md5 signature: bdc63e26362e00a362c3b8c586bfa0bc ****/
		%feature("compactdefaultargs") Update;
		%feature("autodoc", "Update a solid (nothing is done).

Parameters
----------
S: TopoDS_Solid

Returns
-------
None
") Update;
		static void Update(const TopoDS_Solid & S);

		/****************** Update ******************/
		/**** md5 signature: 6ae6e8f41b41837e6e3794345f0c75eb ****/
		%feature("compactdefaultargs") Update;
		%feature("autodoc", "Update a composite solid (nothing is done).

Parameters
----------
C: TopoDS_CompSolid

Returns
-------
None
") Update;
		static void Update(const TopoDS_CompSolid & C);

		/****************** Update ******************/
		/**** md5 signature: c12942ef044e979c45933c3cc101f35a ****/
		%feature("compactdefaultargs") Update;
		%feature("autodoc", "Update a compound (nothing is done).

Parameters
----------
C: TopoDS_Compound

Returns
-------
None
") Update;
		static void Update(const TopoDS_Compound & C);

		/****************** Update ******************/
		/**** md5 signature: 9df60fcab5eff3782584302cfec917cf ****/
		%feature("compactdefaultargs") Update;
		%feature("autodoc", "Update a shape, call the correct update.

Parameters
----------
S: TopoDS_Shape

Returns
-------
None
") Update;
		static void Update(const TopoDS_Shape & S);

		/****************** UpdateFaceUVPoints ******************/
		/**** md5 signature: e8c9eb4d0ff9126a91f4898669b73d9f ****/
		%feature("compactdefaultargs") UpdateFaceUVPoints;
		%feature("autodoc", "For each edge of the face <f> reset the uv points to the bounding points of the parametric curve of the edge on the face.

Parameters
----------
theF: TopoDS_Face

Returns
-------
None
") UpdateFaceUVPoints;
		static void UpdateFaceUVPoints(const TopoDS_Face & theF);

		/****************** Write ******************/
		/**** md5 signature: 2b0742433c64d0c04f4d2d4d98afcfa2 ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes the shape to the file in an ascii format toptools_formatversion_version_1. this alias writes shape with triangulation data. @param theshape [in] the shape to write @param thefile [in] the path to file to output shape into @param theprogress the range of progress indicator to fill in.

Parameters
----------
theShape: TopoDS_Shape
theFile: str
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Write;
		static Standard_Boolean Write(const TopoDS_Shape & theShape, Standard_CString theFile, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** Write ******************/
		/**** md5 signature: 094fc04abd54fdb9dea8b811e19f6844 ****/
		%feature("compactdefaultargs") Write;
		%feature("autodoc", "Writes the shape to the file in an ascii format of specified version. @param theshape [in] the shape to write @param thefile [in] the path to file to output shape into @param thewithtriangles [in] flag which specifies whether to save shape with (true) or without (false) triangles;  has no effect on triangulation-only geometry @param thewithnormals [in] flag which specifies whether to save triangulation with (true) or without (false) normals;  has no effect on triangulation-only geometry @param theversion [in] the toptools format version @param theprogress the range of progress indicator to fill in.

Parameters
----------
theShape: TopoDS_Shape
theFile: str
theWithTriangles: bool
theWithNormals: bool
theVersion: TopTools_FormatVersion
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
bool
") Write;
		static Standard_Boolean Write(const TopoDS_Shape & theShape, Standard_CString theFile, const Standard_Boolean theWithTriangles, const Standard_Boolean theWithNormals, const TopTools_FormatVersion theVersion, const Message_ProgressRange & theProgress = Message_ProgressRange());


                    %feature("autodoc", "Serializes TopoDS_Shape to string. If full_precision is False, the default precision of std::stringstream is used which regularly causes rounding.") WriteToString;
                    %extend{
                        static std::string WriteToString(const TopoDS_Shape & shape, bool full_precision = true) {
                        std::stringstream s;
                        if(full_precision) {
                            s.precision(17);
                            s.setf(std::ios::scientific);
                        }
                        BRepTools::Write(shape, s);
                        return s.str();}
                    };
                    %feature("autodoc", "Deserializes TopoDS_Shape from string") ReadFromString;
                    %extend{
                        static TopoDS_Shape ReadFromString(const std::string & src) {
                        std::stringstream s(src);
                        TopoDS_Shape shape;
                        BRep_Builder b;
                        BRepTools::Read(shape, s, b);
                        return shape;}
                    };
            };


%extend BRepTools {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**************************
* class BRepTools_History *
**************************/
class BRepTools_History : public Standard_Transient {
	public:
/* public enums */
enum TRelationType {
	TRelationType_Removed = 0,
	TRelationType_Generated = 1,
	TRelationType_Modified = 2,
};

/* end public enums declaration */

/* python proxy classes for enums */
%pythoncode {

class TRelationType(IntEnum):
	TRelationType_Removed = 0
	TRelationType_Generated = 1
	TRelationType_Modified = 2
TRelationType_Removed = TRelationType.TRelationType_Removed
TRelationType_Generated = TRelationType.TRelationType_Generated
TRelationType_Modified = TRelationType.TRelationType_Modified
};
/* end python proxy for enums */

		/****************** AddGenerated ******************/
		/**** md5 signature: a7f4c29c6486250bd1401110ad1490c1 ****/
		%feature("compactdefaultargs") AddGenerated;
		%feature("autodoc", "Set the second shape as generated one from the first shape.

Parameters
----------
theInitial: TopoDS_Shape
theGenerated: TopoDS_Shape

Returns
-------
None
") AddGenerated;
		void AddGenerated(const TopoDS_Shape & theInitial, const TopoDS_Shape & theGenerated);

		/****************** AddModified ******************/
		/**** md5 signature: d31865ed0e0ff3990c9c3d0d7d986449 ****/
		%feature("compactdefaultargs") AddModified;
		%feature("autodoc", "Set the second shape as modified one from the first shape.

Parameters
----------
theInitial: TopoDS_Shape
theModified: TopoDS_Shape

Returns
-------
None
") AddModified;
		void AddModified(const TopoDS_Shape & theInitial, const TopoDS_Shape & theModified);

		/****************** Clear ******************/
		/**** md5 signature: 75abd67f132413fc11c19201aabf1126 ****/
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "Clears the history.

Returns
-------
None
") Clear;
		void Clear();


        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
		/****************** Generated ******************/
		/**** md5 signature: 308ecbb5e9f94e72f26d5a5fd518be68 ****/
		%feature("compactdefaultargs") Generated;
		%feature("autodoc", "No available documentation.

Parameters
----------
theInitial: TopoDS_Shape

Returns
-------
TopTools_ListOfShape
") Generated;
		const TopTools_ListOfShape & Generated(const TopoDS_Shape & theInitial);

		/****************** HasGenerated ******************/
		/**** md5 signature: ff1185ae4caf1307e4399403e704df0a ****/
		%feature("compactdefaultargs") HasGenerated;
		%feature("autodoc", "Returns 'true' if there any shapes with generated elements present.

Returns
-------
bool
") HasGenerated;
		Standard_Boolean HasGenerated();

		/****************** HasModified ******************/
		/**** md5 signature: 5aa09ad744ac71dd47a6ec381a33bc9b ****/
		%feature("compactdefaultargs") HasModified;
		%feature("autodoc", "Returns 'true' if there any modified shapes present.

Returns
-------
bool
") HasModified;
		Standard_Boolean HasModified();

		/****************** HasRemoved ******************/
		/**** md5 signature: 1f7754be1a6483911c8c9a17053ce192 ****/
		%feature("compactdefaultargs") HasRemoved;
		%feature("autodoc", "Returns 'true' if there any removed shapes present.

Returns
-------
bool
") HasRemoved;
		Standard_Boolean HasRemoved();

		/****************** IsRemoved ******************/
		/**** md5 signature: bc824baa664531040b00c34aff9af72f ****/
		%feature("compactdefaultargs") IsRemoved;
		%feature("autodoc", "No available documentation.

Parameters
----------
theInitial: TopoDS_Shape

Returns
-------
bool
") IsRemoved;
		Standard_Boolean IsRemoved(const TopoDS_Shape & theInitial);

		/****************** IsSupportedType ******************/
		/**** md5 signature: 3c207fad38f59a2d3b9937a047c347e9 ****/
		%feature("compactdefaultargs") IsSupportedType;
		%feature("autodoc", "Returns 'true' if the type of the shape is supported by the history.

Parameters
----------
theShape: TopoDS_Shape

Returns
-------
bool
") IsSupportedType;
		static Standard_Boolean IsSupportedType(const TopoDS_Shape & theShape);

		/****************** Modified ******************/
		/**** md5 signature: ea431397963162255277d1bdbac78ef8 ****/
		%feature("compactdefaultargs") Modified;
		%feature("autodoc", "No available documentation.

Parameters
----------
theInitial: TopoDS_Shape

Returns
-------
TopTools_ListOfShape
") Modified;
		const TopTools_ListOfShape & Modified(const TopoDS_Shape & theInitial);

		/****************** Remove ******************/
		/**** md5 signature: a8343648976f365b1287e3131759ecb4 ****/
		%feature("compactdefaultargs") Remove;
		%feature("autodoc", "Set the shape as removed one.

Parameters
----------
theRemoved: TopoDS_Shape

Returns
-------
None
") Remove;
		void Remove(const TopoDS_Shape & theRemoved);

		/****************** ReplaceGenerated ******************/
		/**** md5 signature: 25c9bb6bb06d4ed50a5e744f0c6faf57 ****/
		%feature("compactdefaultargs") ReplaceGenerated;
		%feature("autodoc", "Set the second shape as the only generated one from the first one.

Parameters
----------
theInitial: TopoDS_Shape
theGenerated: TopoDS_Shape

Returns
-------
None
") ReplaceGenerated;
		void ReplaceGenerated(const TopoDS_Shape & theInitial, const TopoDS_Shape & theGenerated);

		/****************** ReplaceModified ******************/
		/**** md5 signature: ac9575b491e5181e9890ae4864af94fd ****/
		%feature("compactdefaultargs") ReplaceModified;
		%feature("autodoc", "Set the second shape as the only modified one from the first one.

Parameters
----------
theInitial: TopoDS_Shape
theModified: TopoDS_Shape

Returns
-------
None
") ReplaceModified;
		void ReplaceModified(const TopoDS_Shape & theInitial, const TopoDS_Shape & theModified);

};


%make_alias(BRepTools_History)

%extend BRepTools_History {
	%pythoncode {
	__repr__ = _dumps_object

	@methodnotwrapped
	def BRepTools_History(self):
		pass

	@methodnotwrapped
	def Merge(self):
		pass
	}
};

/*******************************
* class BRepTools_Modification *
*******************************/
%nodefaultctor BRepTools_Modification;
class BRepTools_Modification : public Standard_Transient {
	public:
		/****************** Continuity ******************/
		/**** md5 signature: 327dab83ea17f6338d19fb9f7a784f74 ****/
		%feature("compactdefaultargs") Continuity;
		%feature("autodoc", "Returns the continuity of <newe> between <newf1> and <newf2>. <newe> is the new edge created from <e>. <newf1> (resp. <newf2>) is the new face created from <f1> (resp. <f2>).

Parameters
----------
E: TopoDS_Edge
F1: TopoDS_Face
F2: TopoDS_Face
NewE: TopoDS_Edge
NewF1: TopoDS_Face
NewF2: TopoDS_Face

Returns
-------
GeomAbs_Shape
") Continuity;
		virtual GeomAbs_Shape Continuity(const TopoDS_Edge & E, const TopoDS_Face & F1, const TopoDS_Face & F2, const TopoDS_Edge & NewE, const TopoDS_Face & NewF1, const TopoDS_Face & NewF2);

		/****************** NewCurve ******************/
		/**** md5 signature: e731ccfa98ea2d1f88ad9904cdb8580b ****/
		%feature("compactdefaultargs") NewCurve;
		%feature("autodoc", "Returns true if the edge, e, has been modified. if the edge has been modified: - c is the new geometry associated with the edge, - l is its new location, and - tol is the new tolerance. if the edge has not been modified, this function returns false, and the values of c, l and tol are not significant.

Parameters
----------
E: TopoDS_Edge
C: Geom_Curve
L: TopLoc_Location

Returns
-------
Tol: float
") NewCurve;
		virtual Standard_Boolean NewCurve(const TopoDS_Edge & E, opencascade::handle<Geom_Curve> & C, TopLoc_Location & L, Standard_Real &OutValue);

		/****************** NewCurve2d ******************/
		/**** md5 signature: 0af12e9360877e2b67306368eb4ae813 ****/
		%feature("compactdefaultargs") NewCurve2d;
		%feature("autodoc", "Returns true if the edge, e, has a new curve on surface on the face, f. if a new curve exists: - c is the new geometry of the edge, - l is the new location, and - tol is the new tolerance. newe is the new edge created from e, and newf is the new face created from f. if there is no new curve on the face, this function returns false, and the values of c, l and tol are not significant.

Parameters
----------
E: TopoDS_Edge
F: TopoDS_Face
NewE: TopoDS_Edge
NewF: TopoDS_Face
C: Geom2d_Curve

Returns
-------
Tol: float
") NewCurve2d;
		virtual Standard_Boolean NewCurve2d(const TopoDS_Edge & E, const TopoDS_Face & F, const TopoDS_Edge & NewE, const TopoDS_Face & NewF, opencascade::handle<Geom2d_Curve> & C, Standard_Real &OutValue);

		/****************** NewParameter ******************/
		/**** md5 signature: 0c5e9b0fefa1a6f700191b9504565426 ****/
		%feature("compactdefaultargs") NewParameter;
		%feature("autodoc", "Returns true if the vertex v has a new parameter on the edge e. if a new parameter exists: - p is the parameter, and - tol is the new tolerance. if there is no new parameter this function returns false, and the values of p and tol are not significant.

Parameters
----------
V: TopoDS_Vertex
E: TopoDS_Edge

Returns
-------
P: float
Tol: float
") NewParameter;
		virtual Standard_Boolean NewParameter(const TopoDS_Vertex & V, const TopoDS_Edge & E, Standard_Real &OutValue, Standard_Real &OutValue);

		/****************** NewPoint ******************/
		/**** md5 signature: 2fb046cddcce6758637c814e34a55748 ****/
		%feature("compactdefaultargs") NewPoint;
		%feature("autodoc", "Returns true if the vertex v has been modified. if v has been modified: - p is the new geometry of the vertex, and - tol is the new tolerance. if the vertex has not been modified this function returns false, and the values of p and tol are not significant.

Parameters
----------
V: TopoDS_Vertex
P: gp_Pnt

Returns
-------
Tol: float
") NewPoint;
		virtual Standard_Boolean NewPoint(const TopoDS_Vertex & V, gp_Pnt & P, Standard_Real &OutValue);

		/****************** NewPolygon ******************/
		/**** md5 signature: b0c2343155499ca0843ae489f5327afa ****/
		%feature("compactdefaultargs") NewPolygon;
		%feature("autodoc", "Returns true if the edge has been modified according to changed polygon. if the edge has been modified: - p is a new polygon.

Parameters
----------
E: TopoDS_Edge
P: Poly_Polygon3D

Returns
-------
bool
") NewPolygon;
		virtual Standard_Boolean NewPolygon(const TopoDS_Edge & E, opencascade::handle<Poly_Polygon3D> & P);

		/****************** NewPolygonOnTriangulation ******************/
		/**** md5 signature: 08792ffffa027e5d1a6d02cffa1e25ed ****/
		%feature("compactdefaultargs") NewPolygonOnTriangulation;
		%feature("autodoc", "Returns true if the edge has been modified according to changed polygon on triangulation. if the edge has been modified: - p is a new polygon on triangulation.

Parameters
----------
E: TopoDS_Edge
F: TopoDS_Face
P: Poly_PolygonOnTriangulation

Returns
-------
bool
") NewPolygonOnTriangulation;
		virtual Standard_Boolean NewPolygonOnTriangulation(const TopoDS_Edge & E, const TopoDS_Face & F, opencascade::handle<Poly_PolygonOnTriangulation> & P);

		/****************** NewSurface ******************/
		/**** md5 signature: dd73e38c6b05808e5cd8b3f3a16d1622 ****/
		%feature("compactdefaultargs") NewSurface;
		%feature("autodoc", "Returns true if the face, f, has been modified. if the face has been modified: - s is the new geometry of the face, - l is its new location, and - tol is the new tolerance. the flag, revwires, is set to true when the modification reverses the normal of the surface, (i.e. the wires have to be reversed). the flag, revface, is set to true if the orientation of the modified face changes in the shells which contain it. if the face has not been modified this function returns false, and the values of s, l, tol, revwires and revface are not significant.

Parameters
----------
F: TopoDS_Face
S: Geom_Surface
L: TopLoc_Location

Returns
-------
Tol: float
RevWires: bool
RevFace: bool
") NewSurface;
		virtual Standard_Boolean NewSurface(const TopoDS_Face & F, opencascade::handle<Geom_Surface> & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean &OutValue, Standard_Boolean &OutValue);

		/****************** NewTriangulation ******************/
		/**** md5 signature: f0901b76e1a62f62904c45437e3ce1ec ****/
		%feature("compactdefaultargs") NewTriangulation;
		%feature("autodoc", "Returns true if the face has been modified according to changed triangulation. if the face has been modified: - t is a new triangulation on the face.

Parameters
----------
F: TopoDS_Face
T: Poly_Triangulation

Returns
-------
bool
") NewTriangulation;
		virtual Standard_Boolean NewTriangulation(const TopoDS_Face & F, opencascade::handle<Poly_Triangulation> & T);

};


%make_alias(BRepTools_Modification)

%extend BRepTools_Modification {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/***************************
* class BRepTools_Modifier *
***************************/
class BRepTools_Modifier {
	public:
		class NewCurveInfo {};
		class NewSurfaceInfo {};
		/****************** BRepTools_Modifier ******************/
		/**** md5 signature: b7f2e5942eb530b143535b1aab4117b4 ****/
		%feature("compactdefaultargs") BRepTools_Modifier;
		%feature("autodoc", "Creates an empty modifier.

Parameters
----------
theMutableInput: bool,optional
	default value is Standard_False

Returns
-------
None
") BRepTools_Modifier;
		 BRepTools_Modifier(Standard_Boolean theMutableInput = Standard_False);

		/****************** BRepTools_Modifier ******************/
		/**** md5 signature: 584542a473e07d531ee3f85adf59a3c0 ****/
		%feature("compactdefaultargs") BRepTools_Modifier;
		%feature("autodoc", "Creates a modifier on the shape <s>.

Parameters
----------
S: TopoDS_Shape

Returns
-------
None
") BRepTools_Modifier;
		 BRepTools_Modifier(const TopoDS_Shape & S);

		/****************** BRepTools_Modifier ******************/
		/**** md5 signature: e44fe225e6258049e6038d3b00ddfe6a ****/
		%feature("compactdefaultargs") BRepTools_Modifier;
		%feature("autodoc", "Creates a modifier on the shape <s>, and performs the modifications described by <m>.

Parameters
----------
S: TopoDS_Shape
M: BRepTools_Modification

Returns
-------
None
") BRepTools_Modifier;
		 BRepTools_Modifier(const TopoDS_Shape & S, const opencascade::handle<BRepTools_Modification> & M);

		/****************** Init ******************/
		/**** md5 signature: 5b69b32485b3d9f82ae4abb9c853c3c7 ****/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "Initializes the modifier with the shape <s>.

Parameters
----------
S: TopoDS_Shape

Returns
-------
None
") Init;
		void Init(const TopoDS_Shape & S);

		/****************** IsDone ******************/
		/**** md5 signature: ec0624071ec7da54b3d9dacc7bcb05f9 ****/
		%feature("compactdefaultargs") IsDone;
		%feature("autodoc", "Returns standard_true if the modification has been computed successfully.

Returns
-------
bool
") IsDone;
		Standard_Boolean IsDone();

		/****************** IsMutableInput ******************/
		/**** md5 signature: 2df16e5a957577cfce65832aa2d90512 ****/
		%feature("compactdefaultargs") IsMutableInput;
		%feature("autodoc", "Returns the current mutable input state.

Returns
-------
bool
") IsMutableInput;
		Standard_Boolean IsMutableInput();

		/****************** ModifiedShape ******************/
		/**** md5 signature: 545825cbb62be8a9e387c35da6258fdd ****/
		%feature("compactdefaultargs") ModifiedShape;
		%feature("autodoc", "Returns the modified shape corresponding to <s>.

Parameters
----------
S: TopoDS_Shape

Returns
-------
TopoDS_Shape
") ModifiedShape;
		const TopoDS_Shape ModifiedShape(const TopoDS_Shape & S);

		/****************** Perform ******************/
		/**** md5 signature: b63519215f9ace048cd4db5238b4ba74 ****/
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "Performs the modifications described by <m>.

Parameters
----------
M: BRepTools_Modification
theProgress: Message_ProgressRange,optional
	default value is Message_ProgressRange()

Returns
-------
None
") Perform;
		void Perform(const opencascade::handle<BRepTools_Modification> & M, const Message_ProgressRange & theProgress = Message_ProgressRange());

		/****************** SetMutableInput ******************/
		/**** md5 signature: 6c32097d8325b4484ad8639e59aae59a ****/
		%feature("compactdefaultargs") SetMutableInput;
		%feature("autodoc", "Sets the mutable input state if true then the input (original) shape can be modified during modification process.

Parameters
----------
theMutableInput: bool

Returns
-------
None
") SetMutableInput;
		void SetMutableInput(Standard_Boolean theMutableInput);

};


%extend BRepTools_Modifier {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*********************************
* class BRepTools_PurgeLocations *
*********************************/
class BRepTools_PurgeLocations {
	public:
		/****************** BRepTools_PurgeLocations ******************/
		/**** md5 signature: 9513db51b5a43ee1b3299e06ca1ed72b ****/
		%feature("compactdefaultargs") BRepTools_PurgeLocations;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") BRepTools_PurgeLocations;
		 BRepTools_PurgeLocations();

		/****************** GetResult ******************/
		/**** md5 signature: 644080adee2e79b6fe88d2909c00da36 ****/
		%feature("compactdefaultargs") GetResult;
		%feature("autodoc", "Returns shape with removed locations.

Returns
-------
TopoDS_Shape
") GetResult;
		const TopoDS_Shape GetResult();

		/****************** IsDone ******************/
		/**** md5 signature: ec0624071ec7da54b3d9dacc7bcb05f9 ****/
		%feature("compactdefaultargs") IsDone;
		%feature("autodoc", "No available documentation.

Returns
-------
bool
") IsDone;
		Standard_Boolean IsDone();

		/****************** Perform ******************/
		/**** md5 signature: 786dd7c6d1fd4e873da2af6e25b6f283 ****/
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "Removes all locations correspodingly to criterium from theshape.

Parameters
----------
theShape: TopoDS_Shape

Returns
-------
bool
") Perform;
		Standard_Boolean Perform(const TopoDS_Shape & theShape);

};


%extend BRepTools_PurgeLocations {
	%pythoncode {
	__repr__ = _dumps_object

	@methodnotwrapped
	def ModifiedShape(self):
		pass
	}
};

/************************
* class BRepTools_Quilt *
************************/
class BRepTools_Quilt {
	public:
		/****************** BRepTools_Quilt ******************/
		/**** md5 signature: 0d7bfddd3eabfea30683c76c0547365b ****/
		%feature("compactdefaultargs") BRepTools_Quilt;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") BRepTools_Quilt;
		 BRepTools_Quilt();

		/****************** Add ******************/
		/**** md5 signature: e50695db6dd8df4df414a026111dbdd9 ****/
		%feature("compactdefaultargs") Add;
		%feature("autodoc", "Add the faces of <s> to the quilt, the faces containing bounded edges are copied.

Parameters
----------
S: TopoDS_Shape

Returns
-------
None
") Add;
		void Add(const TopoDS_Shape & S);

		/****************** Bind ******************/
		/**** md5 signature: ec618fc1d65b8960608254ca79c51ea1 ****/
		%feature("compactdefaultargs") Bind;
		%feature("autodoc", "Binds <enew> to be the new edge instead of <eold>. //! the faces of the added shape containing <eold> will be copied to substitute <eold> by <enew>. //! the vertices of <eold> will be bound to the vertices of <enew> with the same orientation. //! if <eold> and <enew> have different orientations the curves are considered to be opposite and the pcurves of <eold> will be copied and reversed in the new faces. //! <eold> must belong to the next added shape, <enew> must belong to a shape added before.

Parameters
----------
Eold: TopoDS_Edge
Enew: TopoDS_Edge

Returns
-------
None
") Bind;
		void Bind(const TopoDS_Edge & Eold, const TopoDS_Edge & Enew);

		/****************** Bind ******************/
		/**** md5 signature: e5a47ea3d24dd96178dafba218ae9801 ****/
		%feature("compactdefaultargs") Bind;
		%feature("autodoc", "Binds <vnew> to be a new vertex instead of <vold>. //! the faces of the added shape containing <vold> will be copied to substitute <vold> by <vnew>.

Parameters
----------
Vold: TopoDS_Vertex
Vnew: TopoDS_Vertex

Returns
-------
None
") Bind;
		void Bind(const TopoDS_Vertex & Vold, const TopoDS_Vertex & Vnew);

		/****************** Copy ******************/
		/**** md5 signature: e9cf9778b56b3dc4375f50a8fb82f016 ****/
		%feature("compactdefaultargs") Copy;
		%feature("autodoc", "Returns the shape substituted to <s> in the quilt.

Parameters
----------
S: TopoDS_Shape

Returns
-------
TopoDS_Shape
") Copy;
		const TopoDS_Shape Copy(const TopoDS_Shape & S);

		/****************** IsCopied ******************/
		/**** md5 signature: 700aa9864844136ce24021c380aa2705 ****/
		%feature("compactdefaultargs") IsCopied;
		%feature("autodoc", "Returns true if <s> has been copied (<s> is a vertex, an edge or a face).

Parameters
----------
S: TopoDS_Shape

Returns
-------
bool
") IsCopied;
		Standard_Boolean IsCopied(const TopoDS_Shape & S);

		/****************** Shells ******************/
		/**** md5 signature: 9d6052389d3b198b83d490121f90cf0d ****/
		%feature("compactdefaultargs") Shells;
		%feature("autodoc", "Returns a compound of shells made from the current set of faces. the shells will be flagged as closed or not closed.

Returns
-------
TopoDS_Shape
") Shells;
		TopoDS_Shape Shells();

};


%extend BRepTools_Quilt {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**************************
* class BRepTools_ReShape *
**************************/
class BRepTools_ReShape : public Standard_Transient {
	public:
		class TReplacement {};
		/****************** BRepTools_ReShape ******************/
		/**** md5 signature: aa9561a4d5bc7ab12692c5c25b0f20fb ****/
		%feature("compactdefaultargs") BRepTools_ReShape;
		%feature("autodoc", "Returns an empty reshape.

Returns
-------
None
") BRepTools_ReShape;
		 BRepTools_ReShape();

		/****************** Apply ******************/
		/**** md5 signature: 48965752374805b76b32c4d1ffbb713b ****/
		%feature("compactdefaultargs") Apply;
		%feature("autodoc", "Applies the substitutions requests to a shape. //! theuntil gives the level of type until which requests are taken into account. for subshapes of the type <until> no rebuild and further exploring are done. //! note: each subshape can be replaced by shape of the same type or by shape containing only shapes of that type (for example, topods_edge can be replaced by topods_edge, topods_wire or topods_compound containing topods_edges). if incompatible shape type is encountered, it is ignored and flag fail1 is set in status.

Parameters
----------
theShape: TopoDS_Shape
theUntil: TopAbs_ShapeEnum,optional
	default value is TopAbs_SHAPE

Returns
-------
TopoDS_Shape
") Apply;
		virtual TopoDS_Shape Apply(const TopoDS_Shape & theShape, const TopAbs_ShapeEnum theUntil = TopAbs_SHAPE);

		/****************** Clear ******************/
		/**** md5 signature: 1badd2d119b64dbdb177834e510c3af9 ****/
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "Clears all substitutions requests.

Returns
-------
None
") Clear;
		virtual void Clear();

		/****************** CopyVertex ******************/
		/**** md5 signature: 838d38640335aa32a1ea9ebb59e57f7b ****/
		%feature("compactdefaultargs") CopyVertex;
		%feature("autodoc", "Returns modified copy of vertex if original one is not recorded or returns modified original vertex otherwise.

Parameters
----------
theV: TopoDS_Vertex
theTol: float,optional
	default value is -1.0

Returns
-------
TopoDS_Vertex
") CopyVertex;
		TopoDS_Vertex CopyVertex(const TopoDS_Vertex & theV, const Standard_Real theTol = -1.0);

		/****************** CopyVertex ******************/
		/**** md5 signature: fdb0a72ad6a04ff2d668de1e997a5b36 ****/
		%feature("compactdefaultargs") CopyVertex;
		%feature("autodoc", "Returns modified copy of vertex if original one is not recorded or returns modified original vertex otherwise.

Parameters
----------
theV: TopoDS_Vertex
theNewPos: gp_Pnt
aTol: float

Returns
-------
TopoDS_Vertex
") CopyVertex;
		TopoDS_Vertex CopyVertex(const TopoDS_Vertex & theV, const gp_Pnt & theNewPos, const Standard_Real aTol);

		/****************** History ******************/
		/**** md5 signature: e896eaef669d2669cca4958a811f4ae5 ****/
		%feature("compactdefaultargs") History;
		%feature("autodoc", "Returns the history of the substituted shapes.

Returns
-------
opencascade::handle<BRepTools_History>
") History;
		opencascade::handle<BRepTools_History> History();

		/****************** IsNewShape ******************/
		/**** md5 signature: 8bc75716e49666835740977e4499fb70 ****/
		%feature("compactdefaultargs") IsNewShape;
		%feature("autodoc", "Checks if shape has been recorded by reshaper as a value.

Parameters
----------
theShape: TopoDS_Shape

Returns
-------
bool
") IsNewShape;
		Standard_Boolean IsNewShape(const TopoDS_Shape & theShape);

		/****************** IsRecorded ******************/
		/**** md5 signature: c1ee5aa687f1d8b624ca216fb43759f0 ****/
		%feature("compactdefaultargs") IsRecorded;
		%feature("autodoc", "Tells if a shape is recorded for replace/remove.

Parameters
----------
shape: TopoDS_Shape

Returns
-------
bool
") IsRecorded;
		virtual Standard_Boolean IsRecorded(const TopoDS_Shape & shape);

		/****************** ModeConsiderLocation ******************/
		/**** md5 signature: 39137eddab476802cb299ec6bc783168 ****/
		%feature("compactdefaultargs") ModeConsiderLocation;
		%feature("autodoc", "Returns (modifiable) the flag which defines whether location of shape take into account during replacing shapes.

Returns
-------
bool
") ModeConsiderLocation;
		virtual Standard_Boolean & ModeConsiderLocation();

		/****************** Remove ******************/
		/**** md5 signature: 5e9c4c0797baa65786d2ea2540e5d010 ****/
		%feature("compactdefaultargs") Remove;
		%feature("autodoc", "Sets a request to remove a shape whatever the orientation.

Parameters
----------
shape: TopoDS_Shape

Returns
-------
None
") Remove;
		virtual void Remove(const TopoDS_Shape & shape);

		/****************** Replace ******************/
		/**** md5 signature: 1fac527602005e8dc4ab218205bef2c0 ****/
		%feature("compactdefaultargs") Replace;
		%feature("autodoc", "Sets a request to replace a shape by a new one.

Parameters
----------
shape: TopoDS_Shape
newshape: TopoDS_Shape

Returns
-------
None
") Replace;
		virtual void Replace(const TopoDS_Shape & shape, const TopoDS_Shape & newshape);

		/****************** Status ******************/
		/**** md5 signature: ecedd5404c4720d2ba941edafa6ac006 ****/
		%feature("compactdefaultargs") Status;
		%feature("autodoc", "Returns a complete substitution status for a shape 0 : not recorded, <newsh> = original <shape> < 0: to be removed, <newsh> is null > 0: to be replaced, <newsh> is a new item if <last> is false, returns status and new shape recorded in the map directly for the shape, if true and status > 0 then recursively searches for the last status and new shape.

Parameters
----------
shape: TopoDS_Shape
newsh: TopoDS_Shape
last: bool,optional
	default value is Standard_False

Returns
-------
int
") Status;
		virtual Standard_Integer Status(const TopoDS_Shape & shape, TopoDS_Shape & newsh, const Standard_Boolean last = Standard_False);

		/****************** Value ******************/
		/**** md5 signature: 1e40f89fc51e3c423fbe545e07ca6a4f ****/
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "Returns the new value for an individual shape if not recorded, returns the original shape itself if to be removed, returns a null shape else, returns the replacing item.

Parameters
----------
shape: TopoDS_Shape

Returns
-------
TopoDS_Shape
") Value;
		virtual TopoDS_Shape Value(const TopoDS_Shape & shape);

};


%make_alias(BRepTools_ReShape)

%extend BRepTools_ReShape {
	%pythoncode {
	__repr__ = _dumps_object

	@methodnotwrapped
	def Merge(self):
		pass
	}
};

/***************************
* class BRepTools_ShapeSet *
***************************/
class BRepTools_ShapeSet : public TopTools_ShapeSet {
	public:
		/****************** BRepTools_ShapeSet ******************/
		/**** md5 signature: 4d2cf984c56b6805e641ce99645be1bb ****/
		%feature("compactdefaultargs") BRepTools_ShapeSet;
		%feature("autodoc", "Builds an empty shapeset. @param thewithtriangles flag to write triangulation data.

Parameters
----------
theWithTriangles: bool,optional
	default value is Standard_True
theWithNormals: bool,optional
	default value is Standard_False

Returns
-------
None
") BRepTools_ShapeSet;
		 BRepTools_ShapeSet(const Standard_Boolean theWithTriangles = Standard_True, const Standard_Boolean theWithNormals = Standard_False);

		/****************** BRepTools_ShapeSet ******************/
		/**** md5 signature: b9669c92273c65400f84c106bd21ec2f ****/
		%feature("compactdefaultargs") BRepTools_ShapeSet;
		%feature("autodoc", "Builds an empty shapeset. @param thewithtriangles flag to write triangulation data.

Parameters
----------
theBuilder: BRep_Builder
theWithTriangles: bool,optional
	default value is Standard_True
theWithNormals: bool,optional
	default value is Standard_False

Returns
-------
None
") BRepTools_ShapeSet;
		 BRepTools_ShapeSet(const BRep_Builder & theBuilder, const Standard_Boolean theWithTriangles = Standard_True, const Standard_Boolean theWithNormals = Standard_False);

		/****************** AddGeometry ******************/
		/**** md5 signature: 31352593ecfcc12beb7b28447eee7b70 ****/
		%feature("compactdefaultargs") AddGeometry;
		%feature("autodoc", "Stores the goemetry of <s>.

Parameters
----------
S: TopoDS_Shape

Returns
-------
None
") AddGeometry;
		virtual void AddGeometry(const TopoDS_Shape & S);

		/****************** AddShapes ******************/
		/**** md5 signature: c04ea93dd727f553f9a7d57810d34b97 ****/
		%feature("compactdefaultargs") AddShapes;
		%feature("autodoc", "Inserts the shape <s2> in the shape <s1>. this method must be redefined to use the correct builder.

Parameters
----------
S1: TopoDS_Shape
S2: TopoDS_Shape

Returns
-------
None
") AddShapes;
		virtual void AddShapes(TopoDS_Shape & S1, const TopoDS_Shape & S2);

		/****************** Check ******************/
		/**** md5 signature: 41cb0f904ceceb5af010cc64bc1f91df ****/
		%feature("compactdefaultargs") Check;
		%feature("autodoc", "No available documentation.

Parameters
----------
T: TopAbs_ShapeEnum
S: TopoDS_Shape

Returns
-------
None
") Check;
		virtual void Check(const TopAbs_ShapeEnum T, TopoDS_Shape & S);

		/****************** Clear ******************/
		/**** md5 signature: f671931d03948860d0ead34afbe920aa ****/
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "Clears the content of the set.

Returns
-------
None
") Clear;
		virtual void Clear();


        %feature("autodoc", "1");
        %extend{
            std::string DumpGeometryToString() {
            std::stringstream s;
            self->DumpGeometry(s);
            return s.str();}
        };

        %feature("autodoc", "1");
        %extend{
            std::string DumpPolygon3DToString() {
            std::stringstream s;
            self->DumpPolygon3D(s);
            return s.str();}
        };

        %feature("autodoc", "1");
        %extend{
            std::string DumpPolygonOnTriangulationToString() {
            std::stringstream s;
            self->DumpPolygonOnTriangulation(s);
            return s.str();}
        };

        %feature("autodoc", "1");
        %extend{
            std::string DumpTriangulationToString() {
            std::stringstream s;
            self->DumpTriangulation(s);
            return s.str();}
        };
		/****************** IsWithNormals ******************/
		/**** md5 signature: 49f5baecd893691e08f163fb559d8b06 ****/
		%feature("compactdefaultargs") IsWithNormals;
		%feature("autodoc", "Return true if shape should be stored triangulation with normals.

Returns
-------
bool
") IsWithNormals;
		Standard_Boolean IsWithNormals();

		/****************** IsWithTriangles ******************/
		/**** md5 signature: 2adacf1f8e5d4c926108b4db84751e9a ****/
		%feature("compactdefaultargs") IsWithTriangles;
		%feature("autodoc", "Return true if shape should be stored with triangles.

Returns
-------
bool
") IsWithTriangles;
		Standard_Boolean IsWithTriangles();


            %feature("autodoc", "1");
            %extend{
                void ReadGeometryFromString(std::string src) {
                std::stringstream s(src);
                self->ReadGeometry(s);}
            };

            %feature("autodoc", "1");
            %extend{
                void ReadPolygon3DFromString(std::string src) {
                std::stringstream s(src);
                self->ReadPolygon3D(s);}
            };

            %feature("autodoc", "1");
            %extend{
                void ReadPolygonOnTriangulationFromString(std::string src) {
                std::stringstream s(src);
                self->ReadPolygonOnTriangulation(s);}
            };

            %feature("autodoc", "1");
            %extend{
                void ReadTriangulationFromString(std::string src) {
                std::stringstream s(src);
                self->ReadTriangulation(s);}
            };
		/****************** SetWithNormals ******************/
		/**** md5 signature: 9f03f91e56766f46bd17d99a089a0a21 ****/
		%feature("compactdefaultargs") SetWithNormals;
		%feature("autodoc", "Define if shape will be stored triangulation with normals. ignored (always written) if face defines only triangulation (no surface).

Parameters
----------
theWithNormals: bool

Returns
-------
None
") SetWithNormals;
		void SetWithNormals(const Standard_Boolean theWithNormals);

		/****************** SetWithTriangles ******************/
		/**** md5 signature: 7b7f7b1dd0aaac0992d59e75b5df79e1 ****/
		%feature("compactdefaultargs") SetWithTriangles;
		%feature("autodoc", "Define if shape will be stored with triangles. ignored (always written) if face defines only triangulation (no surface).

Parameters
----------
theWithTriangles: bool

Returns
-------
None
") SetWithTriangles;
		void SetWithTriangles(const Standard_Boolean theWithTriangles);


        %feature("autodoc", "1");
        %extend{
            std::string WriteGeometryToString() {
            std::stringstream s;
            self->WriteGeometry(s);
            return s.str();}
        };
};


%extend BRepTools_ShapeSet {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*******************************
* class BRepTools_Substitution *
*******************************/
class BRepTools_Substitution {
	public:
		/****************** BRepTools_Substitution ******************/
		/**** md5 signature: a93abe08e3dbab886a3e597a2409bb79 ****/
		%feature("compactdefaultargs") BRepTools_Substitution;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") BRepTools_Substitution;
		 BRepTools_Substitution();

		/****************** Build ******************/
		/**** md5 signature: 81af4c8bd81bf79c30f34ea72f3743c3 ****/
		%feature("compactdefaultargs") Build;
		%feature("autodoc", "Build newshape from <s> if its subshapes has modified. //! the methods <iscopied> and <copy> allows you to keep the resul of <build>.

Parameters
----------
S: TopoDS_Shape

Returns
-------
None
") Build;
		void Build(const TopoDS_Shape & S);

		/****************** Clear ******************/
		/**** md5 signature: ae54be580b423a6eadbe062e0bdb44c2 ****/
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "Reset all the fields.

Returns
-------
None
") Clear;
		void Clear();

		/****************** Copy ******************/
		/**** md5 signature: 58a8930506a5b25067aaf63bebb04b61 ****/
		%feature("compactdefaultargs") Copy;
		%feature("autodoc", "Returns the set of shapes substituted to <s>.

Parameters
----------
S: TopoDS_Shape

Returns
-------
TopTools_ListOfShape
") Copy;
		const TopTools_ListOfShape & Copy(const TopoDS_Shape & S);

		/****************** IsCopied ******************/
		/**** md5 signature: 700aa9864844136ce24021c380aa2705 ****/
		%feature("compactdefaultargs") IsCopied;
		%feature("autodoc", "Returns true if <s> has been replaced .

Parameters
----------
S: TopoDS_Shape

Returns
-------
bool
") IsCopied;
		Standard_Boolean IsCopied(const TopoDS_Shape & S);

		/****************** Substitute ******************/
		/**** md5 signature: a4cbae62f6a963c3eab0e606e98de3c2 ****/
		%feature("compactdefaultargs") Substitute;
		%feature("autodoc", "<oldshape> will be replaced by <newshapes>. //! <newshapes> can be empty , in this case <oldshape> will disparate from its ancestors. //! if an item of <newshapes> is oriented forward. it will be oriented as <oldshape> in its ancestors. else it will be reversed.

Parameters
----------
OldShape: TopoDS_Shape
NewShapes: TopTools_ListOfShape

Returns
-------
None
") Substitute;
		void Substitute(const TopoDS_Shape & OldShape, const TopTools_ListOfShape & NewShapes);

};


%extend BRepTools_Substitution {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*******************************
* class BRepTools_WireExplorer *
*******************************/
class BRepTools_WireExplorer {
	public:
		/****************** BRepTools_WireExplorer ******************/
		/**** md5 signature: c01ce9eb3dd0f911d033ede7ab166cc9 ****/
		%feature("compactdefaultargs") BRepTools_WireExplorer;
		%feature("autodoc", "Constructs an empty explorer (which can be initialized using init).

Returns
-------
None
") BRepTools_WireExplorer;
		 BRepTools_WireExplorer();

		/****************** BRepTools_WireExplorer ******************/
		/**** md5 signature: 12a015d52386240d1135d923827c579a ****/
		%feature("compactdefaultargs") BRepTools_WireExplorer;
		%feature("autodoc", "Iinitializes an exploration of the wire <w>.

Parameters
----------
W: TopoDS_Wire

Returns
-------
None
") BRepTools_WireExplorer;
		 BRepTools_WireExplorer(const TopoDS_Wire & W);

		/****************** BRepTools_WireExplorer ******************/
		/**** md5 signature: 71491b0c48a6d7a95f0181294fd0f36b ****/
		%feature("compactdefaultargs") BRepTools_WireExplorer;
		%feature("autodoc", "Initializes an exploration of the wire <w>. f is used to select the edge connected to the previous in the parametric representation of <f>.

Parameters
----------
W: TopoDS_Wire
F: TopoDS_Face

Returns
-------
None
") BRepTools_WireExplorer;
		 BRepTools_WireExplorer(const TopoDS_Wire & W, const TopoDS_Face & F);

		/****************** Clear ******************/
		/**** md5 signature: ae54be580b423a6eadbe062e0bdb44c2 ****/
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "Clears the content of the explorer.

Returns
-------
None
") Clear;
		void Clear();

		/****************** Current ******************/
		/**** md5 signature: 13d38f330bd5edb3fa9d2a05a41adda5 ****/
		%feature("compactdefaultargs") Current;
		%feature("autodoc", "Returns the current edge.

Returns
-------
TopoDS_Edge
") Current;
		const TopoDS_Edge Current();

		/****************** CurrentVertex ******************/
		/**** md5 signature: b76f05d6c3d7cad0ee0de4c1edcf342b ****/
		%feature("compactdefaultargs") CurrentVertex;
		%feature("autodoc", "Returns the vertex connecting the current edge to the previous one.

Returns
-------
TopoDS_Vertex
") CurrentVertex;
		const TopoDS_Vertex CurrentVertex();

		/****************** Init ******************/
		/**** md5 signature: 1b008bb762428c969d10a2c51ed2db58 ****/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "Initializes an exploration of the wire <w>.

Parameters
----------
W: TopoDS_Wire

Returns
-------
None
") Init;
		void Init(const TopoDS_Wire & W);

		/****************** Init ******************/
		/**** md5 signature: 3e8360537c94fa55830ac518b5a25259 ****/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "Initializes an exploration of the wire <w>. f is used to select the edge connected to the previous in the parametric representation of <f>.

Parameters
----------
W: TopoDS_Wire
F: TopoDS_Face

Returns
-------
None
") Init;
		void Init(const TopoDS_Wire & W, const TopoDS_Face & F);

		/****************** Init ******************/
		/**** md5 signature: a0834e948e42cf446078176bb382a7e5 ****/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "Initializes an exploration of the wire <w>. f is used to select the edge connected to the previous in the parametric representation of <f>. <umin>, <umax>, <vmin>, <vmax> - the uv bounds of the face <f>.

Parameters
----------
W: TopoDS_Wire
F: TopoDS_Face
UMin: float
UMax: float
VMin: float
VMax: float

Returns
-------
None
") Init;
		void Init(const TopoDS_Wire & W, const TopoDS_Face & F, const Standard_Real UMin, const Standard_Real UMax, const Standard_Real VMin, const Standard_Real VMax);

		/****************** More ******************/
		/**** md5 signature: 6f6e915c9a3dca758c059d9e8af02dff ****/
		%feature("compactdefaultargs") More;
		%feature("autodoc", "Returns true if there is a current edge.

Returns
-------
bool
") More;
		Standard_Boolean More();

		/****************** Next ******************/
		/**** md5 signature: f35c0df5f1d7c877986db18081404532 ****/
		%feature("compactdefaultargs") Next;
		%feature("autodoc", "Proceeds to the next edge.

Returns
-------
None
") Next;
		void Next();

		/****************** Orientation ******************/
		/**** md5 signature: 328242fe19b1f80489d8169681ebc029 ****/
		%feature("compactdefaultargs") Orientation;
		%feature("autodoc", "Returns an orientation for the current edge.

Returns
-------
TopAbs_Orientation
") Orientation;
		TopAbs_Orientation Orientation();

};


%extend BRepTools_WireExplorer {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/***********************************
* class BRepTools_CopyModification *
***********************************/
class BRepTools_CopyModification : public BRepTools_Modification {
	public:
		/****************** BRepTools_CopyModification ******************/
		/**** md5 signature: dc62d9d01ecf0817e4b2bc548f32af61 ****/
		%feature("compactdefaultargs") BRepTools_CopyModification;
		%feature("autodoc", "Constructor. \param[in] thecopygeom indicates that the geomtery (surfaces and curves) should be copied \param[in] thecopymesh indicates that the triangulation should be copied.

Parameters
----------
theCopyGeom: bool,optional
	default value is Standard_True
theCopyMesh: bool,optional
	default value is Standard_True

Returns
-------
None
") BRepTools_CopyModification;
		 BRepTools_CopyModification(const Standard_Boolean theCopyGeom = Standard_True, const Standard_Boolean theCopyMesh = Standard_True);

		/****************** Continuity ******************/
		/**** md5 signature: 2c4d2ed85cbf31d94ccd5731f137e724 ****/
		%feature("compactdefaultargs") Continuity;
		%feature("autodoc", "Returns the continuity of thenewedge between thenewface1 and thenewface2. //! thenewedge is the new edge created from theedge. thenewface1 (resp. thenewface2) is the new face created from theface1 (resp. theface2).

Parameters
----------
theEdge: TopoDS_Edge
theFace1: TopoDS_Face
theFace2: TopoDS_Face
theNewEdge: TopoDS_Edge
theNewFace1: TopoDS_Face
theNewFace2: TopoDS_Face

Returns
-------
GeomAbs_Shape
") Continuity;
		GeomAbs_Shape Continuity(const TopoDS_Edge & theEdge, const TopoDS_Face & theFace1, const TopoDS_Face & theFace2, const TopoDS_Edge & theNewEdge, const TopoDS_Face & theNewFace1, const TopoDS_Face & theNewFace2);

		/****************** NewCurve ******************/
		/**** md5 signature: c3400f68c675ff3dd16614251d9da49c ****/
		%feature("compactdefaultargs") NewCurve;
		%feature("autodoc", "Returns true if theedge has been modified. if the edge has been modified: - thecurve is the new geometric support of the edge, - theloc is the new location, and - thetol is the new tolerance. if the edge has not been modified, this function returns false, and the values of thecurve, theloc and thetol are not significant.

Parameters
----------
theEdge: TopoDS_Edge
theCurve: Geom_Curve
theLoc: TopLoc_Location

Returns
-------
theTol: float
") NewCurve;
		Standard_Boolean NewCurve(const TopoDS_Edge & theEdge, opencascade::handle<Geom_Curve> & theCurve, TopLoc_Location & theLoc, Standard_Real &OutValue);

		/****************** NewCurve2d ******************/
		/**** md5 signature: 12d59de8232d43bec7de37a5392a1df4 ****/
		%feature("compactdefaultargs") NewCurve2d;
		%feature("autodoc", "Returns true if theedge has a new curve on surface on theface. if a new curve exists: - thecurve is the new geometric support of the edge, - thetol the new tolerance. if no new curve exists, this function returns false, and the values of thecurve and thetol are not significant.

Parameters
----------
theEdge: TopoDS_Edge
theFace: TopoDS_Face
theNewEdge: TopoDS_Edge
theNewFace: TopoDS_Face
theCurve: Geom2d_Curve

Returns
-------
theTol: float
") NewCurve2d;
		Standard_Boolean NewCurve2d(const TopoDS_Edge & theEdge, const TopoDS_Face & theFace, const TopoDS_Edge & theNewEdge, const TopoDS_Face & theNewFace, opencascade::handle<Geom2d_Curve> & theCurve, Standard_Real &OutValue);

		/****************** NewParameter ******************/
		/**** md5 signature: 54289ac8d83b6313663826ffc529a180 ****/
		%feature("compactdefaultargs") NewParameter;
		%feature("autodoc", "Returns true if thevertex has a new parameter on theedge. if a new parameter exists: - thepnt is the parameter, and - thetol is the new tolerance. if no new parameter exists, this function returns false, and the values of thepnt and thetol are not significant.

Parameters
----------
theVertex: TopoDS_Vertex
theEdge: TopoDS_Edge

Returns
-------
thePnt: float
theTol: float
") NewParameter;
		Standard_Boolean NewParameter(const TopoDS_Vertex & theVertex, const TopoDS_Edge & theEdge, Standard_Real &OutValue, Standard_Real &OutValue);

		/****************** NewPoint ******************/
		/**** md5 signature: a51d29c30c50c9cb108e5c5ea9b12a8b ****/
		%feature("compactdefaultargs") NewPoint;
		%feature("autodoc", "Returns true if thevertex has been modified. if the vertex has been modified: - thepnt is the new geometry of the vertex, and - thetol is the new tolerance. if the vertex has not been modified this function returns false, and the values of thepnt and thetol are not significant.

Parameters
----------
theVertex: TopoDS_Vertex
thePnt: gp_Pnt

Returns
-------
theTol: float
") NewPoint;
		Standard_Boolean NewPoint(const TopoDS_Vertex & theVertex, gp_Pnt & thePnt, Standard_Real &OutValue);

		/****************** NewPolygon ******************/
		/**** md5 signature: 4badeef9050bef8cef3639edbc9b0271 ****/
		%feature("compactdefaultargs") NewPolygon;
		%feature("autodoc", "Returns true if the edge has been modified according to changed polygon. if the edge has been modified: - thepoly is a new polygon.

Parameters
----------
theEdge: TopoDS_Edge
thePoly: Poly_Polygon3D

Returns
-------
bool
") NewPolygon;
		Standard_Boolean NewPolygon(const TopoDS_Edge & theEdge, opencascade::handle<Poly_Polygon3D> & thePoly);

		/****************** NewPolygonOnTriangulation ******************/
		/**** md5 signature: 362332d5c0a2020b059e4552360631f4 ****/
		%feature("compactdefaultargs") NewPolygonOnTriangulation;
		%feature("autodoc", "Returns true if the edge has been modified according to changed polygon on triangulation. if the edge has been modified: - thepoly is a new polygon on triangulation.

Parameters
----------
theEdge: TopoDS_Edge
theFace: TopoDS_Face
thePoly: Poly_PolygonOnTriangulation

Returns
-------
bool
") NewPolygonOnTriangulation;
		Standard_Boolean NewPolygonOnTriangulation(const TopoDS_Edge & theEdge, const TopoDS_Face & theFace, opencascade::handle<Poly_PolygonOnTriangulation> & thePoly);

		/****************** NewSurface ******************/
		/**** md5 signature: 005f5309703e67a2221655e2f7ff6568 ****/
		%feature("compactdefaultargs") NewSurface;
		%feature("autodoc", "Returns true if theface has been modified. if the face has been modified: - thesurf is the new geometry of the face, - theloc is its new location, and - thetol is the new tolerance. therevwires, therevface are always set to false, because the orientaion is not changed.

Parameters
----------
theFace: TopoDS_Face
theSurf: Geom_Surface
theLoc: TopLoc_Location

Returns
-------
theTol: float
theRevWires: bool
theRevFace: bool
") NewSurface;
		Standard_Boolean NewSurface(const TopoDS_Face & theFace, opencascade::handle<Geom_Surface> & theSurf, TopLoc_Location & theLoc, Standard_Real &OutValue, Standard_Boolean &OutValue, Standard_Boolean &OutValue);

		/****************** NewTriangulation ******************/
		/**** md5 signature: c34f0504d87cfa075d0a16293a0a824a ****/
		%feature("compactdefaultargs") NewTriangulation;
		%feature("autodoc", "Returns true if the face has been modified according to changed triangulation. if the face has been modified: - thetri is a new triangulation on the face.

Parameters
----------
theFace: TopoDS_Face
theTri: Poly_Triangulation

Returns
-------
bool
") NewTriangulation;
		Standard_Boolean NewTriangulation(const TopoDS_Face & theFace, opencascade::handle<Poly_Triangulation> & theTri);

};


%make_alias(BRepTools_CopyModification)

%extend BRepTools_CopyModification {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/************************************
* class BRepTools_GTrsfModification *
************************************/
class BRepTools_GTrsfModification : public BRepTools_Modification {
	public:
		/****************** BRepTools_GTrsfModification ******************/
		/**** md5 signature: f443bf58acd21d37a3040336d9faf5f2 ****/
		%feature("compactdefaultargs") BRepTools_GTrsfModification;
		%feature("autodoc", "No available documentation.

Parameters
----------
T: gp_GTrsf

Returns
-------
None
") BRepTools_GTrsfModification;
		 BRepTools_GTrsfModification(const gp_GTrsf & T);

		/****************** Continuity ******************/
		/**** md5 signature: a3c3d5a955b90f2e1cefb3c12dc67277 ****/
		%feature("compactdefaultargs") Continuity;
		%feature("autodoc", "Returns the continuity of <newe> between <newf1> and <newf2>. //! <newe> is the new edge created from <e>. <newf1> (resp. <newf2>) is the new face created from <f1> (resp. <f2>).

Parameters
----------
E: TopoDS_Edge
F1: TopoDS_Face
F2: TopoDS_Face
NewE: TopoDS_Edge
NewF1: TopoDS_Face
NewF2: TopoDS_Face

Returns
-------
GeomAbs_Shape
") Continuity;
		GeomAbs_Shape Continuity(const TopoDS_Edge & E, const TopoDS_Face & F1, const TopoDS_Face & F2, const TopoDS_Edge & NewE, const TopoDS_Face & NewF1, const TopoDS_Face & NewF2);

		/****************** GTrsf ******************/
		/**** md5 signature: a4c293d50b1ee2fc7d0625bf3a6c1811 ****/
		%feature("compactdefaultargs") GTrsf;
		%feature("autodoc", "Gives an access on the gtrsf.

Returns
-------
gp_GTrsf
") GTrsf;
		gp_GTrsf GTrsf();

		/****************** NewCurve ******************/
		/**** md5 signature: fae0c201ae8f07a170a1eb576572768a ****/
		%feature("compactdefaultargs") NewCurve;
		%feature("autodoc", "Returns standard_true if the edge <e> has been modified. in this case, <c> is the new geometric support of the edge, <l> the new location, <tol> the new tolerance. otherwise, returns standard_false, and <c>, <l>, <tol> are not significant.

Parameters
----------
E: TopoDS_Edge
C: Geom_Curve
L: TopLoc_Location

Returns
-------
Tol: float
") NewCurve;
		Standard_Boolean NewCurve(const TopoDS_Edge & E, opencascade::handle<Geom_Curve> & C, TopLoc_Location & L, Standard_Real &OutValue);

		/****************** NewCurve2d ******************/
		/**** md5 signature: ea858177828b71b789a2564d89f64210 ****/
		%feature("compactdefaultargs") NewCurve2d;
		%feature("autodoc", "Returns standard_true if the edge <e> has a new curve on surface on the face <f>.in this case, <c> is the new geometric support of the edge, <l> the new location, <tol> the new tolerance. otherwise, returns standard_false, and <c>, <l>, <tol> are not significant.

Parameters
----------
E: TopoDS_Edge
F: TopoDS_Face
NewE: TopoDS_Edge
NewF: TopoDS_Face
C: Geom2d_Curve

Returns
-------
Tol: float
") NewCurve2d;
		Standard_Boolean NewCurve2d(const TopoDS_Edge & E, const TopoDS_Face & F, const TopoDS_Edge & NewE, const TopoDS_Face & NewF, opencascade::handle<Geom2d_Curve> & C, Standard_Real &OutValue);

		/****************** NewParameter ******************/
		/**** md5 signature: e14926b54c8548936ba9a49d140b8da3 ****/
		%feature("compactdefaultargs") NewParameter;
		%feature("autodoc", "Returns standard_true if the vertex <v> has a new parameter on the edge <e>. in this case, <p> is the parameter, <tol> the new tolerance. otherwise, returns standard_false, and <p>, <tol> are not significant.

Parameters
----------
V: TopoDS_Vertex
E: TopoDS_Edge

Returns
-------
P: float
Tol: float
") NewParameter;
		Standard_Boolean NewParameter(const TopoDS_Vertex & V, const TopoDS_Edge & E, Standard_Real &OutValue, Standard_Real &OutValue);

		/****************** NewPoint ******************/
		/**** md5 signature: 936cfe13f9c774f9038d7f0e2f3e521b ****/
		%feature("compactdefaultargs") NewPoint;
		%feature("autodoc", "Returns standard_true if the vertex <v> has been modified. in this case, <p> is the new geometric support of the vertex, <tol> the new tolerance. otherwise, returns standard_false, and <p>, <tol> are not significant.

Parameters
----------
V: TopoDS_Vertex
P: gp_Pnt

Returns
-------
Tol: float
") NewPoint;
		Standard_Boolean NewPoint(const TopoDS_Vertex & V, gp_Pnt & P, Standard_Real &OutValue);

		/****************** NewPolygon ******************/
		/**** md5 signature: 4badeef9050bef8cef3639edbc9b0271 ****/
		%feature("compactdefaultargs") NewPolygon;
		%feature("autodoc", "Returns true if the edge has been modified according to changed polygon. if the edge has been modified: - thepoly is a new polygon.

Parameters
----------
theEdge: TopoDS_Edge
thePoly: Poly_Polygon3D

Returns
-------
bool
") NewPolygon;
		Standard_Boolean NewPolygon(const TopoDS_Edge & theEdge, opencascade::handle<Poly_Polygon3D> & thePoly);

		/****************** NewPolygonOnTriangulation ******************/
		/**** md5 signature: 362332d5c0a2020b059e4552360631f4 ****/
		%feature("compactdefaultargs") NewPolygonOnTriangulation;
		%feature("autodoc", "Returns true if the edge has been modified according to changed polygon on triangulation. if the edge has been modified: - thepoly is a new polygon on triangulation.

Parameters
----------
theEdge: TopoDS_Edge
theFace: TopoDS_Face
thePoly: Poly_PolygonOnTriangulation

Returns
-------
bool
") NewPolygonOnTriangulation;
		Standard_Boolean NewPolygonOnTriangulation(const TopoDS_Edge & theEdge, const TopoDS_Face & theFace, opencascade::handle<Poly_PolygonOnTriangulation> & thePoly);

		/****************** NewSurface ******************/
		/**** md5 signature: 001097e1d949f85581f605ce49276ada ****/
		%feature("compactdefaultargs") NewSurface;
		%feature("autodoc", "Returns standard_true if the face <f> has been modified. in this case, <s> is the new geometric support of the face, <l> the new location,<tol> the new tolerance.<revwires> has to be set to standard_true when the modification reverses the normal of the surface.(the wires have to be reversed). <revface> has to be set to standard_true if the orientation of the modified face changes in the shells which contain it. -- here, <revface> will return standard_true if the -- gp_trsf is negative.

Parameters
----------
F: TopoDS_Face
S: Geom_Surface
L: TopLoc_Location

Returns
-------
Tol: float
RevWires: bool
RevFace: bool
") NewSurface;
		Standard_Boolean NewSurface(const TopoDS_Face & F, opencascade::handle<Geom_Surface> & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean &OutValue, Standard_Boolean &OutValue);

		/****************** NewTriangulation ******************/
		/**** md5 signature: c34f0504d87cfa075d0a16293a0a824a ****/
		%feature("compactdefaultargs") NewTriangulation;
		%feature("autodoc", "Returns true if the face has been modified according to changed triangulation. if the face has been modified: - thetri is a new triangulation on the face.

Parameters
----------
theFace: TopoDS_Face
theTri: Poly_Triangulation

Returns
-------
bool
") NewTriangulation;
		Standard_Boolean NewTriangulation(const TopoDS_Face & theFace, opencascade::handle<Poly_Triangulation> & theTri);

};


%make_alias(BRepTools_GTrsfModification)

%extend BRepTools_GTrsfModification {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/***********************************
* class BRepTools_TrsfModification *
***********************************/
class BRepTools_TrsfModification : public BRepTools_Modification {
	public:
		/****************** BRepTools_TrsfModification ******************/
		/**** md5 signature: 184d5436193d6786b8b2f10f95528e71 ****/
		%feature("compactdefaultargs") BRepTools_TrsfModification;
		%feature("autodoc", "No available documentation.

Parameters
----------
T: gp_Trsf

Returns
-------
None
") BRepTools_TrsfModification;
		 BRepTools_TrsfModification(const gp_Trsf & T);

		/****************** Continuity ******************/
		/**** md5 signature: a3c3d5a955b90f2e1cefb3c12dc67277 ****/
		%feature("compactdefaultargs") Continuity;
		%feature("autodoc", "Returns the continuity of <newe> between <newf1> and <newf2>. //! <newe> is the new edge created from <e>. <newf1> (resp. <newf2>) is the new face created from <f1> (resp. <f2>).

Parameters
----------
E: TopoDS_Edge
F1: TopoDS_Face
F2: TopoDS_Face
NewE: TopoDS_Edge
NewF1: TopoDS_Face
NewF2: TopoDS_Face

Returns
-------
GeomAbs_Shape
") Continuity;
		GeomAbs_Shape Continuity(const TopoDS_Edge & E, const TopoDS_Face & F1, const TopoDS_Face & F2, const TopoDS_Edge & NewE, const TopoDS_Face & NewF1, const TopoDS_Face & NewF2);


        %feature("autodoc","1");
        %extend {
            Standard_Boolean GetIsCopyMesh() {
            return (Standard_Boolean) $self->IsCopyMesh();
            }
        };
        %feature("autodoc","1");
        %extend {
            void SetIsCopyMesh(Standard_Boolean value) {
            $self->IsCopyMesh()=value;
            }
        };
		/****************** NewCurve ******************/
		/**** md5 signature: fae0c201ae8f07a170a1eb576572768a ****/
		%feature("compactdefaultargs") NewCurve;
		%feature("autodoc", "Returns true if the edge e has been modified. if the edge has been modified: - c is the new geometric support of the edge, - l is the new location, and - tol is the new tolerance. if the edge has not been modified, this function returns false, and the values of c, l and tol are not significant.

Parameters
----------
E: TopoDS_Edge
C: Geom_Curve
L: TopLoc_Location

Returns
-------
Tol: float
") NewCurve;
		Standard_Boolean NewCurve(const TopoDS_Edge & E, opencascade::handle<Geom_Curve> & C, TopLoc_Location & L, Standard_Real &OutValue);

		/****************** NewCurve2d ******************/
		/**** md5 signature: ea858177828b71b789a2564d89f64210 ****/
		%feature("compactdefaultargs") NewCurve2d;
		%feature("autodoc", "Returns true if the edge e has a new curve on surface on the face f. if a new curve exists: - c is the new geometric support of the edge, - l is the new location, and - tol the new tolerance. if no new curve exists, this function returns false, and the values of c, l and tol are not significant.

Parameters
----------
E: TopoDS_Edge
F: TopoDS_Face
NewE: TopoDS_Edge
NewF: TopoDS_Face
C: Geom2d_Curve

Returns
-------
Tol: float
") NewCurve2d;
		Standard_Boolean NewCurve2d(const TopoDS_Edge & E, const TopoDS_Face & F, const TopoDS_Edge & NewE, const TopoDS_Face & NewF, opencascade::handle<Geom2d_Curve> & C, Standard_Real &OutValue);

		/****************** NewParameter ******************/
		/**** md5 signature: e14926b54c8548936ba9a49d140b8da3 ****/
		%feature("compactdefaultargs") NewParameter;
		%feature("autodoc", "Returns true if the vertex v has a new parameter on the edge e. if a new parameter exists: - p is the parameter, and - tol is the new tolerance. if no new parameter exists, this function returns false, and the values of p and tol are not significant.

Parameters
----------
V: TopoDS_Vertex
E: TopoDS_Edge

Returns
-------
P: float
Tol: float
") NewParameter;
		Standard_Boolean NewParameter(const TopoDS_Vertex & V, const TopoDS_Edge & E, Standard_Real &OutValue, Standard_Real &OutValue);

		/****************** NewPoint ******************/
		/**** md5 signature: 936cfe13f9c774f9038d7f0e2f3e521b ****/
		%feature("compactdefaultargs") NewPoint;
		%feature("autodoc", "Returns true if the vertex v has been modified. if the vertex has been modified: - p is the new geometry of the vertex, and - tol is the new tolerance. if the vertex has not been modified this function returns false, and the values of p and tol are not significant.

Parameters
----------
V: TopoDS_Vertex
P: gp_Pnt

Returns
-------
Tol: float
") NewPoint;
		Standard_Boolean NewPoint(const TopoDS_Vertex & V, gp_Pnt & P, Standard_Real &OutValue);

		/****************** NewPolygon ******************/
		/**** md5 signature: 7f7c60619bea4afc74b068fbbb3cfa88 ****/
		%feature("compactdefaultargs") NewPolygon;
		%feature("autodoc", "Returns true if the edge has been modified according to changed polygon. if the edge has been modified: - p is a new polygon.

Parameters
----------
E: TopoDS_Edge
P: Poly_Polygon3D

Returns
-------
bool
") NewPolygon;
		Standard_Boolean NewPolygon(const TopoDS_Edge & E, opencascade::handle<Poly_Polygon3D> & P);

		/****************** NewPolygonOnTriangulation ******************/
		/**** md5 signature: 3725a7293cb8d43db5ec36c08ebcc7d9 ****/
		%feature("compactdefaultargs") NewPolygonOnTriangulation;
		%feature("autodoc", "Returns true if the edge has been modified according to changed polygon on triangulation. if the edge has been modified: - p is a new polygon on triangulation.

Parameters
----------
E: TopoDS_Edge
F: TopoDS_Face
P: Poly_PolygonOnTriangulation

Returns
-------
bool
") NewPolygonOnTriangulation;
		Standard_Boolean NewPolygonOnTriangulation(const TopoDS_Edge & E, const TopoDS_Face & F, opencascade::handle<Poly_PolygonOnTriangulation> & P);

		/****************** NewSurface ******************/
		/**** md5 signature: 001097e1d949f85581f605ce49276ada ****/
		%feature("compactdefaultargs") NewSurface;
		%feature("autodoc", "Returns true if the face f has been modified. if the face has been modified: - s is the new geometry of the face, - l is its new location, and - tol is the new tolerance. revwires is set to true when the modification reverses the normal of the surface (the wires have to be reversed). revface is set to true if the orientation of the modified face changes in the shells which contain it. for this class, revface returns true if the gp_trsf associated with this modification is negative.

Parameters
----------
F: TopoDS_Face
S: Geom_Surface
L: TopLoc_Location

Returns
-------
Tol: float
RevWires: bool
RevFace: bool
") NewSurface;
		Standard_Boolean NewSurface(const TopoDS_Face & F, opencascade::handle<Geom_Surface> & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean &OutValue, Standard_Boolean &OutValue);

		/****************** NewTriangulation ******************/
		/**** md5 signature: cdec58f103b48ecf1d9ad0fd3b8c73cc ****/
		%feature("compactdefaultargs") NewTriangulation;
		%feature("autodoc", "Returns true if the face has been modified according to changed triangulation. if the face has been modified: - t is a new triangulation on the face.

Parameters
----------
F: TopoDS_Face
T: Poly_Triangulation

Returns
-------
bool
") NewTriangulation;
		Standard_Boolean NewTriangulation(const TopoDS_Face & F, opencascade::handle<Poly_Triangulation> & T);

		/****************** Trsf ******************/
		/**** md5 signature: 162ba6693c622bc37c4b2d05c6f93a56 ****/
		%feature("compactdefaultargs") Trsf;
		%feature("autodoc", "Provides access to the gp_trsf associated with this modification. the transformation can be changed.

Returns
-------
gp_Trsf
") Trsf;
		gp_Trsf Trsf();

};


%make_alias(BRepTools_TrsfModification)

%extend BRepTools_TrsfModification {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*******************************************
* class BRepTools_NurbsConvertModification *
*******************************************/
class BRepTools_NurbsConvertModification : public BRepTools_CopyModification {
	public:
		/****************** BRepTools_NurbsConvertModification ******************/
		/**** md5 signature: 96ade83e8786f855501767969892ed98 ****/
		%feature("compactdefaultargs") BRepTools_NurbsConvertModification;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") BRepTools_NurbsConvertModification;
		 BRepTools_NurbsConvertModification();

		/****************** Continuity ******************/
		/**** md5 signature: a3c3d5a955b90f2e1cefb3c12dc67277 ****/
		%feature("compactdefaultargs") Continuity;
		%feature("autodoc", "Returns the continuity of <newe> between <newf1> and <newf2>. //! <newe> is the new edge created from <e>. <newf1> (resp. <newf2>) is the new face created from <f1> (resp. <f2>).

Parameters
----------
E: TopoDS_Edge
F1: TopoDS_Face
F2: TopoDS_Face
NewE: TopoDS_Edge
NewF1: TopoDS_Face
NewF2: TopoDS_Face

Returns
-------
GeomAbs_Shape
") Continuity;
		GeomAbs_Shape Continuity(const TopoDS_Edge & E, const TopoDS_Face & F1, const TopoDS_Face & F2, const TopoDS_Edge & NewE, const TopoDS_Face & NewF1, const TopoDS_Face & NewF2);

		/****************** GetUpdatedEdges ******************/
		/**** md5 signature: 98174620d3d94393e9e27b34a96f4740 ****/
		%feature("compactdefaultargs") GetUpdatedEdges;
		%feature("autodoc", "No available documentation.

Returns
-------
TopTools_ListOfShape
") GetUpdatedEdges;
		const TopTools_ListOfShape & GetUpdatedEdges();

		/****************** NewCurve ******************/
		/**** md5 signature: fae0c201ae8f07a170a1eb576572768a ****/
		%feature("compactdefaultargs") NewCurve;
		%feature("autodoc", "Returns standard_true if the edge <e> has been modified. in this case, <c> is the new geometric support of the edge, <l> the new location, <tol> the new tolerance. otherwise, returns standard_false, and <c>, <l>, <tol> are not significant.

Parameters
----------
E: TopoDS_Edge
C: Geom_Curve
L: TopLoc_Location

Returns
-------
Tol: float
") NewCurve;
		Standard_Boolean NewCurve(const TopoDS_Edge & E, opencascade::handle<Geom_Curve> & C, TopLoc_Location & L, Standard_Real &OutValue);

		/****************** NewCurve2d ******************/
		/**** md5 signature: ea858177828b71b789a2564d89f64210 ****/
		%feature("compactdefaultargs") NewCurve2d;
		%feature("autodoc", "Returns standard_true if the edge <e> has a new curve on surface on the face <f>.in this case, <c> is the new geometric support of the edge, <l> the new location, <tol> the new tolerance. otherwise, returns standard_false, and <c>, <l>, <tol> are not significant.

Parameters
----------
E: TopoDS_Edge
F: TopoDS_Face
NewE: TopoDS_Edge
NewF: TopoDS_Face
C: Geom2d_Curve

Returns
-------
Tol: float
") NewCurve2d;
		Standard_Boolean NewCurve2d(const TopoDS_Edge & E, const TopoDS_Face & F, const TopoDS_Edge & NewE, const TopoDS_Face & NewF, opencascade::handle<Geom2d_Curve> & C, Standard_Real &OutValue);

		/****************** NewParameter ******************/
		/**** md5 signature: e14926b54c8548936ba9a49d140b8da3 ****/
		%feature("compactdefaultargs") NewParameter;
		%feature("autodoc", "Returns standard_true if the vertex <v> has a new parameter on the edge <e>. in this case, <p> is the parameter, <tol> the new tolerance. otherwise, returns standard_false, and <p>, <tol> are not significant.

Parameters
----------
V: TopoDS_Vertex
E: TopoDS_Edge

Returns
-------
P: float
Tol: float
") NewParameter;
		Standard_Boolean NewParameter(const TopoDS_Vertex & V, const TopoDS_Edge & E, Standard_Real &OutValue, Standard_Real &OutValue);

		/****************** NewPoint ******************/
		/**** md5 signature: 936cfe13f9c774f9038d7f0e2f3e521b ****/
		%feature("compactdefaultargs") NewPoint;
		%feature("autodoc", "Returns standard_true if the vertex <v> has been modified. in this case, <p> is the new geometric support of the vertex, <tol> the new tolerance. otherwise, returns standard_false, and <p>, <tol> are not significant.

Parameters
----------
V: TopoDS_Vertex
P: gp_Pnt

Returns
-------
Tol: float
") NewPoint;
		Standard_Boolean NewPoint(const TopoDS_Vertex & V, gp_Pnt & P, Standard_Real &OutValue);

		/****************** NewPolygon ******************/
		/**** md5 signature: 4badeef9050bef8cef3639edbc9b0271 ****/
		%feature("compactdefaultargs") NewPolygon;
		%feature("autodoc", "Returns true if the edge has been modified according to changed polygon. if the edge has been modified: - thepoly is a new polygon.

Parameters
----------
theEdge: TopoDS_Edge
thePoly: Poly_Polygon3D

Returns
-------
bool
") NewPolygon;
		Standard_Boolean NewPolygon(const TopoDS_Edge & theEdge, opencascade::handle<Poly_Polygon3D> & thePoly);

		/****************** NewPolygonOnTriangulation ******************/
		/**** md5 signature: 362332d5c0a2020b059e4552360631f4 ****/
		%feature("compactdefaultargs") NewPolygonOnTriangulation;
		%feature("autodoc", "Returns true if the edge has been modified according to changed polygon on triangulation. if the edge has been modified: - thepoly is a new polygon on triangulation.

Parameters
----------
theEdge: TopoDS_Edge
theFace: TopoDS_Face
thePoly: Poly_PolygonOnTriangulation

Returns
-------
bool
") NewPolygonOnTriangulation;
		Standard_Boolean NewPolygonOnTriangulation(const TopoDS_Edge & theEdge, const TopoDS_Face & theFace, opencascade::handle<Poly_PolygonOnTriangulation> & thePoly);

		/****************** NewSurface ******************/
		/**** md5 signature: 001097e1d949f85581f605ce49276ada ****/
		%feature("compactdefaultargs") NewSurface;
		%feature("autodoc", "Returns standard_true if the face <f> has been modified. in this case, <s> is the new geometric support of the face, <l> the new location,<tol> the new tolerance.<revwires> has to be set to standard_true when the modification reverses the normal of the surface.(the wires have to be reversed). <revface> has to be set to standard_true if the orientation of the modified face changes in the shells which contain it. -- here, <revface> will return standard_true if the -- gp_trsf is negative.

Parameters
----------
F: TopoDS_Face
S: Geom_Surface
L: TopLoc_Location

Returns
-------
Tol: float
RevWires: bool
RevFace: bool
") NewSurface;
		Standard_Boolean NewSurface(const TopoDS_Face & F, opencascade::handle<Geom_Surface> & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean &OutValue, Standard_Boolean &OutValue);

		/****************** NewTriangulation ******************/
		/**** md5 signature: c34f0504d87cfa075d0a16293a0a824a ****/
		%feature("compactdefaultargs") NewTriangulation;
		%feature("autodoc", "Returns true if the face has been modified according to changed triangulation. if the face has been modified: - thetri is a new triangulation on the face.

Parameters
----------
theFace: TopoDS_Face
theTri: Poly_Triangulation

Returns
-------
bool
") NewTriangulation;
		Standard_Boolean NewTriangulation(const TopoDS_Face & theFace, opencascade::handle<Poly_Triangulation> & theTri);

};


%make_alias(BRepTools_NurbsConvertModification)

%extend BRepTools_NurbsConvertModification {
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
def breptools_ActivateTriangulation(*args):
	return breptools.ActivateTriangulation(*args)

@deprecated
def breptools_AddUVBounds(*args):
	return breptools.AddUVBounds(*args)

@deprecated
def breptools_AddUVBounds(*args):
	return breptools.AddUVBounds(*args)

@deprecated
def breptools_AddUVBounds(*args):
	return breptools.AddUVBounds(*args)

@deprecated
def breptools_CheckLocations(*args):
	return breptools.CheckLocations(*args)

@deprecated
def breptools_Clean(*args):
	return breptools.Clean(*args)

@deprecated
def breptools_CleanGeometry(*args):
	return breptools.CleanGeometry(*args)

@deprecated
def breptools_Compare(*args):
	return breptools.Compare(*args)

@deprecated
def breptools_Compare(*args):
	return breptools.Compare(*args)

@deprecated
def breptools_DetectClosedness(*args):
	return breptools.DetectClosedness(*args)

@deprecated
def breptools_EvalAndUpdateTol(*args):
	return breptools.EvalAndUpdateTol(*args)

@deprecated
def breptools_IsReallyClosed(*args):
	return breptools.IsReallyClosed(*args)

@deprecated
def breptools_LoadAllTriangulations(*args):
	return breptools.LoadAllTriangulations(*args)

@deprecated
def breptools_LoadTriangulation(*args):
	return breptools.LoadTriangulation(*args)

@deprecated
def breptools_Map3DEdges(*args):
	return breptools.Map3DEdges(*args)

@deprecated
def breptools_OriEdgeInFace(*args):
	return breptools.OriEdgeInFace(*args)

@deprecated
def breptools_OuterWire(*args):
	return breptools.OuterWire(*args)

@deprecated
def breptools_Read(*args):
	return breptools.Read(*args)

@deprecated
def breptools_RemoveInternals(*args):
	return breptools.RemoveInternals(*args)

@deprecated
def breptools_RemoveUnusedPCurves(*args):
	return breptools.RemoveUnusedPCurves(*args)

@deprecated
def breptools_Triangulation(*args):
	return breptools.Triangulation(*args)

@deprecated
def breptools_UVBounds(*args):
	return breptools.UVBounds(*args)

@deprecated
def breptools_UVBounds(*args):
	return breptools.UVBounds(*args)

@deprecated
def breptools_UVBounds(*args):
	return breptools.UVBounds(*args)

@deprecated
def breptools_UnloadAllTriangulations(*args):
	return breptools.UnloadAllTriangulations(*args)

@deprecated
def breptools_UnloadTriangulation(*args):
	return breptools.UnloadTriangulation(*args)

@deprecated
def breptools_Update(*args):
	return breptools.Update(*args)

@deprecated
def breptools_Update(*args):
	return breptools.Update(*args)

@deprecated
def breptools_Update(*args):
	return breptools.Update(*args)

@deprecated
def breptools_Update(*args):
	return breptools.Update(*args)

@deprecated
def breptools_Update(*args):
	return breptools.Update(*args)

@deprecated
def breptools_Update(*args):
	return breptools.Update(*args)

@deprecated
def breptools_Update(*args):
	return breptools.Update(*args)

@deprecated
def breptools_Update(*args):
	return breptools.Update(*args)

@deprecated
def breptools_Update(*args):
	return breptools.Update(*args)

@deprecated
def breptools_UpdateFaceUVPoints(*args):
	return breptools.UpdateFaceUVPoints(*args)

@deprecated
def breptools_Write(*args):
	return breptools.Write(*args)

@deprecated
def breptools_Write(*args):
	return breptools.Write(*args)

@deprecated
def BRepTools_History_IsSupportedType(*args):
	return BRepTools_History.IsSupportedType(*args)

}
