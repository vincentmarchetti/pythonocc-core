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
%define GEOMCONVERTDOCSTRING
"GeomConvert module, see official documentation at
https://www.opencascade.com/doc/occt-7.6.0/refman/html/package_geomconvert.html"
%enddef
%module (package="OCC.Core", docstring=GEOMCONVERTDOCSTRING) GeomConvert


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
#include<GeomConvert_module.hxx>

//Dependencies
#include<Standard_module.hxx>
#include<NCollection_module.hxx>
#include<Geom_module.hxx>
#include<TColGeom_module.hxx>
#include<TColStd_module.hxx>
#include<Convert_module.hxx>
#include<GeomAbs_module.hxx>
#include<Adaptor3d_module.hxx>
#include<TColgp_module.hxx>
#include<gp_module.hxx>
#include<math_module.hxx>
#include<Geom2d_module.hxx>
#include<Geom2d_module.hxx>
#include<Adaptor3d_module.hxx>
#include<Adaptor2d_module.hxx>
#include<Message_module.hxx>
#include<TColgp_module.hxx>
#include<TColStd_module.hxx>
#include<TCollection_module.hxx>
#include<Storage_module.hxx>
%};
%import Standard.i
%import NCollection.i
%import Geom.i
%import TColGeom.i
%import TColStd.i
%import Convert.i
%import GeomAbs.i
%import Adaptor3d.i
%import TColgp.i
%import gp.i
%import math.i
%import Geom2d.i

%pythoncode {
from enum import IntEnum
from OCC.Core.Exception import *
};

/* public enums */
enum GeomConvert_ConvType {
	GeomConvert_Target = 0,
	GeomConvert_Simplest = 1,
	GeomConvert_MinGap = 2,
};

/* end public enums declaration */

/* python proxy classes for enums */
%pythoncode {

class GeomConvert_ConvType(IntEnum):
	GeomConvert_Target = 0
	GeomConvert_Simplest = 1
	GeomConvert_MinGap = 2
GeomConvert_Target = GeomConvert_ConvType.GeomConvert_Target
GeomConvert_Simplest = GeomConvert_ConvType.GeomConvert_Simplest
GeomConvert_MinGap = GeomConvert_ConvType.GeomConvert_MinGap
};
/* end python proxy for enums */

/* handles */
/* end handles declaration */

/* templates */
/* end templates declaration */

/* typedefs */
/* end typedefs declaration */

/********************
* class GeomConvert *
********************/
%rename(geomconvert) GeomConvert;
class GeomConvert {
	public:
		/****************** C0BSplineToArrayOfC1BSplineCurve ******************/
		/**** md5 signature: 41169b66757e4cfa5f15edbf27ab0bbd ****/
		%feature("compactdefaultargs") C0BSplineToArrayOfC1BSplineCurve;
		%feature("autodoc", "This method reduces as far as it is possible the multiplicities of the knots of the bspline bs.(keeping the geometry). it returns an array of bspline c1. tolerance is a geometrical tolerance.

Parameters
----------
BS: Geom_BSplineCurve
tabBS: TColGeom_HArray1OfBSplineCurve
tolerance: float

Returns
-------
None
") C0BSplineToArrayOfC1BSplineCurve;
		static void C0BSplineToArrayOfC1BSplineCurve(const opencascade::handle<Geom_BSplineCurve> & BS, opencascade::handle<TColGeom_HArray1OfBSplineCurve> & tabBS, const Standard_Real tolerance);

		/****************** C0BSplineToArrayOfC1BSplineCurve ******************/
		/**** md5 signature: 642848ca313fd2ca0214d071305bb2e0 ****/
		%feature("compactdefaultargs") C0BSplineToArrayOfC1BSplineCurve;
		%feature("autodoc", "This method reduces as far as it is possible the multiplicities of the knots of the bspline bs.(keeping the geometry). it returns an array of bspline c1. tolerance is a geometrical tolerance : it allows for the maximum deformation the angular tolerance is in radians and measures the angle of the tangents on the left and on the right to decide if the curve is c1 or not at a given point.

Parameters
----------
BS: Geom_BSplineCurve
tabBS: TColGeom_HArray1OfBSplineCurve
AngularTolerance: float
tolerance: float

Returns
-------
None
") C0BSplineToArrayOfC1BSplineCurve;
		static void C0BSplineToArrayOfC1BSplineCurve(const opencascade::handle<Geom_BSplineCurve> & BS, opencascade::handle<TColGeom_HArray1OfBSplineCurve> & tabBS, const Standard_Real AngularTolerance, const Standard_Real tolerance);

		/****************** C0BSplineToC1BSplineCurve ******************/
		/**** md5 signature: ef882946a5c095f1fb37b97f8bd44ee6 ****/
		%feature("compactdefaultargs") C0BSplineToC1BSplineCurve;
		%feature("autodoc", "This method reduces as far as it is possible the multiplicities of the knots of the bspline bs.(keeping the geometry). it returns a new bspline which could still be c0. tolerance is a geometrical tolerance. the angular toleranceis in radians and measures the angle of the tangents on the left and on the right to decide if the curve is g1 or not at a given point.

Parameters
----------
BS: Geom_BSplineCurve
tolerance: float
AngularTolerance: float,optional
	default value is 1.0e-7

Returns
-------
None
") C0BSplineToC1BSplineCurve;
		static void C0BSplineToC1BSplineCurve(opencascade::handle<Geom_BSplineCurve> & BS, const Standard_Real tolerance, const Standard_Real AngularTolerance = 1.0e-7);

		/****************** ConcatC1 ******************/
		/**** md5 signature: 5d5e2e87942027f106ce8a17ab78a60f ****/
		%feature("compactdefaultargs") ConcatC1;
		%feature("autodoc", "This method concatenates c1 the arrayofcurves as far as it is possible. arrayofcurves[0..n-1] arrayoftoler contains the biggest tolerance of the two points shared by two consecutives curves. its dimension: [0..n-2] closedflag indicates if the arrayofcurves is closed. in this case closedtolerance contains the biggest tolerance of the two points which are at the closure. otherwise its value is 0.0 closedflag becomes false on the output if it is impossible to build closed curve.

Parameters
----------
ArrayOfCurves: TColGeom_Array1OfBSplineCurve
ArrayOfToler: TColStd_Array1OfReal
ArrayOfIndices: TColStd_HArray1OfInteger
ArrayOfConcatenated: TColGeom_HArray1OfBSplineCurve
ClosedTolerance: float

Returns
-------
ClosedFlag: bool
") ConcatC1;
		static void ConcatC1(TColGeom_Array1OfBSplineCurve & ArrayOfCurves, const TColStd_Array1OfReal & ArrayOfToler, opencascade::handle<TColStd_HArray1OfInteger> & ArrayOfIndices, opencascade::handle<TColGeom_HArray1OfBSplineCurve> & ArrayOfConcatenated, Standard_Boolean &OutValue, const Standard_Real ClosedTolerance);

		/****************** ConcatC1 ******************/
		/**** md5 signature: 1d7403130766ba9faef1b3ec1f50931f ****/
		%feature("compactdefaultargs") ConcatC1;
		%feature("autodoc", "This method concatenates c1 the arrayofcurves as far as it is possible. arrayofcurves[0..n-1] arrayoftoler contains the biggest tolerance of the two points shared by two consecutives curves. its dimension: [0..n-2] closedflag indicates if the arrayofcurves is closed. in this case closedtolerance contains the biggest tolerance of the two points which are at the closure. otherwise its value is 0.0 closedflag becomes false on the output if it is impossible to build closed curve.

Parameters
----------
ArrayOfCurves: TColGeom_Array1OfBSplineCurve
ArrayOfToler: TColStd_Array1OfReal
ArrayOfIndices: TColStd_HArray1OfInteger
ArrayOfConcatenated: TColGeom_HArray1OfBSplineCurve
ClosedTolerance: float
AngularTolerance: float

Returns
-------
ClosedFlag: bool
") ConcatC1;
		static void ConcatC1(TColGeom_Array1OfBSplineCurve & ArrayOfCurves, const TColStd_Array1OfReal & ArrayOfToler, opencascade::handle<TColStd_HArray1OfInteger> & ArrayOfIndices, opencascade::handle<TColGeom_HArray1OfBSplineCurve> & ArrayOfConcatenated, Standard_Boolean &OutValue, const Standard_Real ClosedTolerance, const Standard_Real AngularTolerance);

		/****************** ConcatG1 ******************/
		/**** md5 signature: a560c18a6b8d480c03a201b4d9829dc3 ****/
		%feature("compactdefaultargs") ConcatG1;
		%feature("autodoc", "This method concatenates g1 the arrayofcurves as far as it is possible. arrayofcurves[0..n-1] arrayoftoler contains the biggest tolerance of the two points shared by two consecutives curves. its dimension: [0..n-2] closedflag indicates if the arrayofcurves is closed. in this case closedtolerance contains the biggest tolerance of the two points which are at the closure. otherwise its value is 0.0 closedflag becomes false on the output if it is impossible to build closed curve.

Parameters
----------
ArrayOfCurves: TColGeom_Array1OfBSplineCurve
ArrayOfToler: TColStd_Array1OfReal
ArrayOfConcatenated: TColGeom_HArray1OfBSplineCurve
ClosedTolerance: float

Returns
-------
ClosedFlag: bool
") ConcatG1;
		static void ConcatG1(TColGeom_Array1OfBSplineCurve & ArrayOfCurves, const TColStd_Array1OfReal & ArrayOfToler, opencascade::handle<TColGeom_HArray1OfBSplineCurve> & ArrayOfConcatenated, Standard_Boolean &OutValue, const Standard_Real ClosedTolerance);

		/****************** CurveToBSplineCurve ******************/
		/**** md5 signature: 3e5139193c14a02aa43c1594a7f95e33 ****/
		%feature("compactdefaultargs") CurveToBSplineCurve;
		%feature("autodoc", "This function converts a non infinite curve from geom into a b-spline curve. c must be an ellipse or a circle or a trimmed conic or a trimmed line or a bezier curve or a trimmed bezier curve or a bspline curve or a trimmed bspline curve or an offsetcurve. the returned b-spline is not periodic except if c is a circle or an ellipse. if the parameterisation is quasiangular than the returned curve is not periodic in case a periodic geom_circle or geom_ellipse. for tgtthetaover2_1 and tgtthetaover2_2 the method raises an exception in case of a periodic geom_circle or a geom_ellipse parameterisationtype applies only if the curve is a circle or an ellipse : tgtthetaover2, -- tgtthetaover2_1, -- tgtthetaover2_2, -- tgtthetaover2_3, -- tgtthetaover2_4, //! purpose: this is the classical rational parameterisation 2 1 - t cos(theta) = ------ 2 1 + t //! 2t sin(theta) = ------ 2 1 + t //! t = tan (theta/2) //! with tgtthetaover2 the routine will compute the number of spans using the rule num_spans = [ (ulast - ufirst) / 1.2 ] + 1 with tgtthetaover2_n, n spans will be forced: an error will be raized if (ulast - ufirst) >= pi and n = 1, ulast - ufirst >= 2 pi and n = 2 //! quasiangular, here t is a rational function that approximates theta ----> tan(theta/2). nevetheless the composing with above function yields exact functions whose square sum up to 1 rationalc1 ; t is replaced by a polynomial function of u so as to grant c1 contiuity across knots. exceptions standard_domainerror: - if the curve c is infinite, or - if c is a (complete) circle or ellipse, and parameterisation is equal to convert_tgtthetaover2_1 or convert_tgtthetaover2_2. standard_constructionerror: - if c is a (complete) circle or ellipse, and if parameterisation is not equal to convert_tgtthetaover2, convert_rationalc1, convert_quasiangular (the curve is converted in these three cases) or to convert_tgtthetaover2_1 or convert_tgtthetaover2_2 (another exception is raised in these two cases). - if c is a trimmed circle or ellipse, if parameterisation is equal to convert_tgtthetaover2_1 and if u2 - u1 > 0.9999 * pi, where u1 and u2 are respectively the first and the last parameters of the trimmed curve (this method of parameterization cannot be used to convert a half-circle or a half-ellipse, for example), or - if c is a trimmed circle or ellipse, if parameterisation is equal to convert_tgtthetaover2_2 and u2 - u1 > 1.9999 * pi where u1 and u2 are respectively the first and the last parameters of the trimmed curve (this method of parameterization cannot be used to convert a quasi-complete circle or ellipse).

Parameters
----------
C: Geom_Curve
Parameterisation: Convert_ParameterisationType,optional
	default value is Convert_TgtThetaOver2

Returns
-------
opencascade::handle<Geom_BSplineCurve>
") CurveToBSplineCurve;
		static opencascade::handle<Geom_BSplineCurve> CurveToBSplineCurve(const opencascade::handle<Geom_Curve> & C, const Convert_ParameterisationType Parameterisation = Convert_TgtThetaOver2);

		/****************** SplitBSplineCurve ******************/
		/**** md5 signature: 7d474a7726cb1a7f866678edbe4872d6 ****/
		%feature("compactdefaultargs") SplitBSplineCurve;
		%feature("autodoc", "Convert a curve from geom by an approximation method //! this method computes the arc of b-spline curve between the two knots fromk1 and tok2. if c is periodic the arc has the same orientation as c if sameorientation = standard_true. if c is not periodic sameorientation is not used for the computation and c is oriented from the knot fromk1 to the knot tok2. we just keep the local definition of c between the knots fromk1 and tok2. the returned b-spline curve has its first and last knots with a multiplicity equal to degree + 1, where degree is the polynomial degree of c. the indexes of the knots fromk1 and tok2 doesn't include the repetition of multiple knots in their definition. raised if fromk1 = tok2 raised if fromk1 or tok2 are out of the bounds [firstuknotindex, lastuknotindex].

Parameters
----------
C: Geom_BSplineCurve
FromK1: int
ToK2: int
SameOrientation: bool,optional
	default value is Standard_True

Returns
-------
opencascade::handle<Geom_BSplineCurve>
") SplitBSplineCurve;
		static opencascade::handle<Geom_BSplineCurve> SplitBSplineCurve(const opencascade::handle<Geom_BSplineCurve> & C, const Standard_Integer FromK1, const Standard_Integer ToK2, const Standard_Boolean SameOrientation = Standard_True);

		/****************** SplitBSplineCurve ******************/
		/**** md5 signature: 2adc95e91201b6735cd34c28f58db352 ****/
		%feature("compactdefaultargs") SplitBSplineCurve;
		%feature("autodoc", "This function computes the segment of b-spline curve between the parametric values fromu1, tou2. if c is periodic the arc has the same orientation as c if sameorientation = true. if c is not periodic sameorientation is not used for the computation and c is oriented fromu1 tou2. if u1 and u2 and two parametric values we consider that u1 = u2 if abs (u1 - u2) <= parametrictolerance and parametrictolerance must be greater or equal to resolution from package gp. //! raised if fromu1 or tou2 are out of the parametric bounds of the curve (the tolerance criterion is parametrictolerance). raised if abs (fromu1 - tou2) <= parametrictolerance raised if parametrictolerance < resolution from gp.

Parameters
----------
C: Geom_BSplineCurve
FromU1: float
ToU2: float
ParametricTolerance: float
SameOrientation: bool,optional
	default value is Standard_True

Returns
-------
opencascade::handle<Geom_BSplineCurve>
") SplitBSplineCurve;
		static opencascade::handle<Geom_BSplineCurve> SplitBSplineCurve(const opencascade::handle<Geom_BSplineCurve> & C, const Standard_Real FromU1, const Standard_Real ToU2, const Standard_Real ParametricTolerance, const Standard_Boolean SameOrientation = Standard_True);

		/****************** SplitBSplineSurface ******************/
		/**** md5 signature: 0153ae151f4a629c855fafb7b085968c ****/
		%feature("compactdefaultargs") SplitBSplineSurface;
		%feature("autodoc", "Computes the b-spline surface patche between the knots values fromuk1, touk2, fromvk1, tovk2. if s is periodic in one direction the patche has the same orientation as s in this direction if the flag is true in this direction (sameuorientation, samevorientation). if s is not periodic sameuorientation and samevorientation are not used for the computation and s is oriented fromuk1 touk2 and fromvk1 tovk2. raised if fromuk1 = touk2 or fromvk1 = tovk2 fromuk1 or touk2 are out of the bounds [firstuknotindex, lastuknotindex] fromvk1 or tovk2 are out of the bounds [firstvknotindex, lastvknotindex].

Parameters
----------
S: Geom_BSplineSurface
FromUK1: int
ToUK2: int
FromVK1: int
ToVK2: int
SameUOrientation: bool,optional
	default value is Standard_True
SameVOrientation: bool,optional
	default value is Standard_True

Returns
-------
opencascade::handle<Geom_BSplineSurface>
") SplitBSplineSurface;
		static opencascade::handle<Geom_BSplineSurface> SplitBSplineSurface(const opencascade::handle<Geom_BSplineSurface> & S, const Standard_Integer FromUK1, const Standard_Integer ToUK2, const Standard_Integer FromVK1, const Standard_Integer ToVK2, const Standard_Boolean SameUOrientation = Standard_True, const Standard_Boolean SameVOrientation = Standard_True);

		/****************** SplitBSplineSurface ******************/
		/**** md5 signature: cfec6fffb32edadb3a13e059445aaa86 ****/
		%feature("compactdefaultargs") SplitBSplineSurface;
		%feature("autodoc", "This method splits a b-spline surface patche between the knots values fromk1, tok2 in one direction. if usplit = true then the splitting direction is the u parametric direction else it is the v parametric direction. if s is periodic in the considered direction the patche has the same orientation as s in this direction if sameorientation is true if s is not periodic in this direction sameorientation is not used for the computation and s is oriented fromk1 tok2. raised if fromk1 = tok2 or if fromk1 or tok2 are out of the bounds [firstuknotindex, lastuknotindex] in the considered parametric direction.

Parameters
----------
S: Geom_BSplineSurface
FromK1: int
ToK2: int
USplit: bool
SameOrientation: bool,optional
	default value is Standard_True

Returns
-------
opencascade::handle<Geom_BSplineSurface>
") SplitBSplineSurface;
		static opencascade::handle<Geom_BSplineSurface> SplitBSplineSurface(const opencascade::handle<Geom_BSplineSurface> & S, const Standard_Integer FromK1, const Standard_Integer ToK2, const Standard_Boolean USplit, const Standard_Boolean SameOrientation = Standard_True);

		/****************** SplitBSplineSurface ******************/
		/**** md5 signature: f1e357d5052b4bf97bf93e496a913147 ****/
		%feature("compactdefaultargs") SplitBSplineSurface;
		%feature("autodoc", "This method computes the b-spline surface patche between the parametric values fromu1, tou2, fromv1, tov2. if s is periodic in one direction the patche has the same orientation as s in this direction if the flag is true in this direction (sameuorientation, samevorientation). if s is not periodic sameuorientation and samevorientation are not used for the computation and s is oriented fromu1 tou2 and fromv1 tov2. if u1 and u2 and two parametric values we consider that u1 = u2 if abs (u1 - u2) <= parametrictolerance and parametrictolerance must be greater or equal to resolution from package gp. //! raised if fromu1 or tou2 or fromv1 or tou2 are out of the parametric bounds of the surface (the tolerance criterion is parametrictolerance). raised if abs (fromu1 - tou2) <= parametrictolerance or abs (fromv1 - tov2) <= parametrictolerance. raised if parametrictolerance < resolution.

Parameters
----------
S: Geom_BSplineSurface
FromU1: float
ToU2: float
FromV1: float
ToV2: float
ParametricTolerance: float
SameUOrientation: bool,optional
	default value is Standard_True
SameVOrientation: bool,optional
	default value is Standard_True

Returns
-------
opencascade::handle<Geom_BSplineSurface>
") SplitBSplineSurface;
		static opencascade::handle<Geom_BSplineSurface> SplitBSplineSurface(const opencascade::handle<Geom_BSplineSurface> & S, const Standard_Real FromU1, const Standard_Real ToU2, const Standard_Real FromV1, const Standard_Real ToV2, const Standard_Real ParametricTolerance, const Standard_Boolean SameUOrientation = Standard_True, const Standard_Boolean SameVOrientation = Standard_True);

		/****************** SplitBSplineSurface ******************/
		/**** md5 signature: 6f9b9adbfd5c02b1dfe09346c297f805 ****/
		%feature("compactdefaultargs") SplitBSplineSurface;
		%feature("autodoc", "This method splits the b-spline surface s in one direction between the parametric values fromparam1, toparam2. if usplit = true then the splitting direction is the u parametric direction else it is the v parametric direction. if s is periodic in the considered direction the patche has the same orientation as s in this direction if sameorientation is true. if s is not periodic in the considered direction sameorientation is not used for the computation and s is oriented fromparam1 toparam2. if u1 and u2 and two parametric values we consider that u1 = u2 if abs (u1 - u2) <= parametrictolerance and parametrictolerance must be greater or equal to resolution from package gp. //! raises if fromparam1 or toparam2 are out of the parametric bounds of the surface in the considered direction. raises if abs (fromparam1 - toparam2) <= parametrictolerance.

Parameters
----------
S: Geom_BSplineSurface
FromParam1: float
ToParam2: float
USplit: bool
ParametricTolerance: float
SameOrientation: bool,optional
	default value is Standard_True

Returns
-------
opencascade::handle<Geom_BSplineSurface>
") SplitBSplineSurface;
		static opencascade::handle<Geom_BSplineSurface> SplitBSplineSurface(const opencascade::handle<Geom_BSplineSurface> & S, const Standard_Real FromParam1, const Standard_Real ToParam2, const Standard_Boolean USplit, const Standard_Real ParametricTolerance, const Standard_Boolean SameOrientation = Standard_True);

		/****************** SurfaceToBSplineSurface ******************/
		/**** md5 signature: 3108125370fbb69736fb4c9452599391 ****/
		%feature("compactdefaultargs") SurfaceToBSplineSurface;
		%feature("autodoc", "This algorithm converts a non infinite surface from geom into a b-spline surface. s must be a trimmed plane or a trimmed cylinder or a trimmed cone or a trimmed sphere or a trimmed torus or a sphere or a torus or a bezier surface of a trimmed bezier surface or a trimmed swept surface with a corresponding basis curve which can be turned into a b-spline curve (see the method curvetobsplinecurve). raises domainerror if the type of the surface is not previously defined.

Parameters
----------
S: Geom_Surface

Returns
-------
opencascade::handle<Geom_BSplineSurface>
") SurfaceToBSplineSurface;
		static opencascade::handle<Geom_BSplineSurface> SurfaceToBSplineSurface(const opencascade::handle<Geom_Surface> & S);

};


%extend GeomConvert {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/********************************
* class GeomConvert_ApproxCurve *
********************************/
class GeomConvert_ApproxCurve {
	public:
		/****************** GeomConvert_ApproxCurve ******************/
		/**** md5 signature: 4a6711b694deda6cc7bbaf24ce219e32 ****/
		%feature("compactdefaultargs") GeomConvert_ApproxCurve;
		%feature("autodoc", "Constructs a curve approximation framework defined by - - the conic curve, - the tolerance value tol3d, - the degree of continuity order, - the maximum number of segments maxsegments allowed in the resulting bspline curve, and - the highest degree maxdeg which the polynomial defining the bspline curve may have.

Parameters
----------
Curve: Geom_Curve
Tol3d: float
Order: GeomAbs_Shape
MaxSegments: int
MaxDegree: int

Returns
-------
None
") GeomConvert_ApproxCurve;
		 GeomConvert_ApproxCurve(const opencascade::handle<Geom_Curve> & Curve, const Standard_Real Tol3d, const GeomAbs_Shape Order, const Standard_Integer MaxSegments, const Standard_Integer MaxDegree);

		/****************** GeomConvert_ApproxCurve ******************/
		/**** md5 signature: 07ff5ce50e6da2c21caae83805537027 ****/
		%feature("compactdefaultargs") GeomConvert_ApproxCurve;
		%feature("autodoc", "Constructs a curve approximation framework defined by - - the curve, - the tolerance value tol3d, - the degree of continuity order, - the maximum number of segments maxsegments allowed in the resulting bspline curve, and - the highest degree maxdeg which the polynomial defining the bspline curve may have.

Parameters
----------
Curve: Adaptor3d_Curve
Tol3d: float
Order: GeomAbs_Shape
MaxSegments: int
MaxDegree: int

Returns
-------
None
") GeomConvert_ApproxCurve;
		 GeomConvert_ApproxCurve(const opencascade::handle<Adaptor3d_Curve> & Curve, const Standard_Real Tol3d, const GeomAbs_Shape Order, const Standard_Integer MaxSegments, const Standard_Integer MaxDegree);

		/****************** Curve ******************/
		/**** md5 signature: 8f61eb8bebb31bbd1fd75a7da450accd ****/
		%feature("compactdefaultargs") Curve;
		%feature("autodoc", "Returns the bspline curve resulting from the approximation algorithm.

Returns
-------
opencascade::handle<Geom_BSplineCurve>
") Curve;
		opencascade::handle<Geom_BSplineCurve> Curve();


        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
		/****************** HasResult ******************/
		/**** md5 signature: 345d4b0f7e88f528928167976d8256d5 ****/
		%feature("compactdefaultargs") HasResult;
		%feature("autodoc", "Returns standard_true if the approximation did come out with a result that is not necessarely within the required tolerance.

Returns
-------
bool
") HasResult;
		Standard_Boolean HasResult();

		/****************** IsDone ******************/
		/**** md5 signature: ec0624071ec7da54b3d9dacc7bcb05f9 ****/
		%feature("compactdefaultargs") IsDone;
		%feature("autodoc", "Returns standard_true if the approximation has been done within required tolerance.

Returns
-------
bool
") IsDone;
		Standard_Boolean IsDone();

		/****************** MaxError ******************/
		/**** md5 signature: 90f2419f0b1537a77da84305579339a2 ****/
		%feature("compactdefaultargs") MaxError;
		%feature("autodoc", "Returns the greatest distance between a point on the source conic and the bspline curve resulting from the approximation. (>0 when an approximation has been done, 0 if no approximation).

Returns
-------
float
") MaxError;
		Standard_Real MaxError();

};


%extend GeomConvert_ApproxCurve {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**********************************
* class GeomConvert_ApproxSurface *
**********************************/
class GeomConvert_ApproxSurface {
	public:
		/****************** GeomConvert_ApproxSurface ******************/
		/**** md5 signature: ec8c2f80fedc48543f7557ba90584058 ****/
		%feature("compactdefaultargs") GeomConvert_ApproxSurface;
		%feature("autodoc", "Constructs a surface approximation framework defined by - the conic surf - the tolerance value tol3d - the degree of continuity ucontinuity, vcontinuity in the directions of the u and v parameters - the highest degree maxdegu, maxdegv which the polynomial defining the bspline curve may have in the directions of the u and v parameters - the maximum number of segments maxsegments allowed in the resulting bspline curve - the index of precision preciscode.

Parameters
----------
Surf: Geom_Surface
Tol3d: float
UContinuity: GeomAbs_Shape
VContinuity: GeomAbs_Shape
MaxDegU: int
MaxDegV: int
MaxSegments: int
PrecisCode: int

Returns
-------
None
") GeomConvert_ApproxSurface;
		 GeomConvert_ApproxSurface(const opencascade::handle<Geom_Surface> & Surf, const Standard_Real Tol3d, const GeomAbs_Shape UContinuity, const GeomAbs_Shape VContinuity, const Standard_Integer MaxDegU, const Standard_Integer MaxDegV, const Standard_Integer MaxSegments, const Standard_Integer PrecisCode);

		/****************** GeomConvert_ApproxSurface ******************/
		/**** md5 signature: d94294b366a492bb4f771c6129ee0101 ****/
		%feature("compactdefaultargs") GeomConvert_ApproxSurface;
		%feature("autodoc", "Constructs a surface approximation framework defined by - the surf - the tolerance value tol3d - the degree of continuity ucontinuity, vcontinuity in the directions of the u and v parameters - the highest degree maxdegu, maxdegv which the polynomial defining the bspline curve may have in the directions of the u and v parameters - the maximum number of segments maxsegments allowed in the resulting bspline curve - the index of precision preciscode.

Parameters
----------
Surf: Adaptor3d_Surface
Tol3d: float
UContinuity: GeomAbs_Shape
VContinuity: GeomAbs_Shape
MaxDegU: int
MaxDegV: int
MaxSegments: int
PrecisCode: int

Returns
-------
None
") GeomConvert_ApproxSurface;
		 GeomConvert_ApproxSurface(const opencascade::handle<Adaptor3d_Surface> & Surf, const Standard_Real Tol3d, const GeomAbs_Shape UContinuity, const GeomAbs_Shape VContinuity, const Standard_Integer MaxDegU, const Standard_Integer MaxDegV, const Standard_Integer MaxSegments, const Standard_Integer PrecisCode);


        %feature("autodoc", "1");
        %extend{
            std::string DumpToString() {
            std::stringstream s;
            self->Dump(s);
            return s.str();}
        };
		/****************** HasResult ******************/
		/**** md5 signature: 345d4b0f7e88f528928167976d8256d5 ****/
		%feature("compactdefaultargs") HasResult;
		%feature("autodoc", "Returns true if the approximation did come out with a result that is not necessarily within the required tolerance or a result that is not recognized with the wished continuities.

Returns
-------
bool
") HasResult;
		Standard_Boolean HasResult();

		/****************** IsDone ******************/
		/**** md5 signature: ec0624071ec7da54b3d9dacc7bcb05f9 ****/
		%feature("compactdefaultargs") IsDone;
		%feature("autodoc", "Returns standard_true if the approximation has be done.

Returns
-------
bool
") IsDone;
		Standard_Boolean IsDone();

		/****************** MaxError ******************/
		/**** md5 signature: 90f2419f0b1537a77da84305579339a2 ****/
		%feature("compactdefaultargs") MaxError;
		%feature("autodoc", "Returns the greatest distance between a point on the source conic surface and the bspline surface resulting from the approximation (>0 when an approximation has been done, 0 if no approximation ).

Returns
-------
float
") MaxError;
		Standard_Real MaxError();

		/****************** Surface ******************/
		/**** md5 signature: 2f50ef783efd4092d3a11c39580e031f ****/
		%feature("compactdefaultargs") Surface;
		%feature("autodoc", "Returns the bspline surface resulting from the approximation algorithm.

Returns
-------
opencascade::handle<Geom_BSplineSurface>
") Surface;
		opencascade::handle<Geom_BSplineSurface> Surface();

};


%extend GeomConvert_ApproxSurface {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**********************************************
* class GeomConvert_BSplineCurveKnotSplitting *
**********************************************/
class GeomConvert_BSplineCurveKnotSplitting {
	public:
		/****************** GeomConvert_BSplineCurveKnotSplitting ******************/
		/**** md5 signature: 7a577457113d6d98bc191e491add8706 ****/
		%feature("compactdefaultargs") GeomConvert_BSplineCurveKnotSplitting;
		%feature("autodoc", "Determines points at which the bspline curve basiscurve should be split in order to obtain arcs with a degree of continuity equal to continuityrange. these points are knot values of basiscurve. they are identified by indices in the knots table of basiscurve. use the available interrogation functions to access computed values, followed by the global function splitbsplinecurve (provided by the package geomconvert) to split the curve. exceptions standard_rangeerror if continuityrange is less than zero.

Parameters
----------
BasisCurve: Geom_BSplineCurve
ContinuityRange: int

Returns
-------
None
") GeomConvert_BSplineCurveKnotSplitting;
		 GeomConvert_BSplineCurveKnotSplitting(const opencascade::handle<Geom_BSplineCurve> & BasisCurve, const Standard_Integer ContinuityRange);

		/****************** NbSplits ******************/
		/**** md5 signature: 4531d20d48cc2f1c4ba8fba36f455258 ****/
		%feature("compactdefaultargs") NbSplits;
		%feature("autodoc", "Returns the number of points at which the analyzed bspline curve should be split, in order to obtain arcs with the continuity required by this framework. all these points correspond to knot values. note that the first and last points of the curve, which bound the first and last arcs, are counted among these splitting points.

Returns
-------
int
") NbSplits;
		Standard_Integer NbSplits();

		/****************** SplitValue ******************/
		/**** md5 signature: 721f3b88e9b98541767484bae1df7e27 ****/
		%feature("compactdefaultargs") SplitValue;
		%feature("autodoc", "Returns the split knot of index index to the split knots table computed in this framework. the returned value is an index in the knots table of the bspline curve analyzed by this algorithm. notes: - if index is equal to 1, the corresponding knot gives the first point of the curve. - if index is equal to the number of split knots computed in this framework, the corresponding point is the last point of the curve. exceptions standard_rangeerror if index is less than 1 or greater than the number of split knots computed in this framework.

Parameters
----------
Index: int

Returns
-------
int
") SplitValue;
		Standard_Integer SplitValue(const Standard_Integer Index);

		/****************** Splitting ******************/
		/**** md5 signature: 735443fa5e885793b9df881715b055c2 ****/
		%feature("compactdefaultargs") Splitting;
		%feature("autodoc", "Loads the splitvalues table with the split knots values computed in this framework. each value in the table is an index in the knots table of the bspline curve analyzed by this algorithm. the values in splitvalues are given in ascending order and comprise the indices of the knots which give the first and last points of the curve. use two consecutive values from the table as arguments of the global function splitbsplinecurve (provided by the package geomconvert) to split the curve. exceptions standard_dimensionerror if the array splitvalues was not created with the following bounds: - 1, and - the number of split points computed in this framework (as given by the function nbsplits).

Parameters
----------
SplitValues: TColStd_Array1OfInteger

Returns
-------
None
") Splitting;
		void Splitting(TColStd_Array1OfInteger & SplitValues);

};


%extend GeomConvert_BSplineCurveKnotSplitting {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**********************************************
* class GeomConvert_BSplineCurveToBezierCurve *
**********************************************/
class GeomConvert_BSplineCurveToBezierCurve {
	public:
		/****************** GeomConvert_BSplineCurveToBezierCurve ******************/
		/**** md5 signature: 02d7a7510002481ab96243add745d673 ****/
		%feature("compactdefaultargs") GeomConvert_BSplineCurveToBezierCurve;
		%feature("autodoc", "Computes all the data needed to convert the bspline curve basiscurve into a series of adjacent bezier arcs.

Parameters
----------
BasisCurve: Geom_BSplineCurve

Returns
-------
None
") GeomConvert_BSplineCurveToBezierCurve;
		 GeomConvert_BSplineCurveToBezierCurve(const opencascade::handle<Geom_BSplineCurve> & BasisCurve);

		/****************** GeomConvert_BSplineCurveToBezierCurve ******************/
		/**** md5 signature: dcc3b5187228ccadbb5f087b5a9ab184 ****/
		%feature("compactdefaultargs") GeomConvert_BSplineCurveToBezierCurve;
		%feature("autodoc", "Computes all the data needed to convert the portion of the bspline curve basiscurve limited by the two parameter values u1 and u2 into a series of adjacent bezier arcs. the result consists of a series of basiscurve arcs limited by points corresponding to knot values of the curve. use the available interrogation functions to ascertain the number of computed bezier arcs, and then to construct each individual bezier curve (or all bezier curves). note: parametrictolerance is not used. raises domainerror if u1 or u2 are out of the parametric bounds of the basis curve [firstparameter, lastparameter]. the tolerance criterion is parametrictolerance. raised if abs (u2 - u1) <= parametrictolerance.

Parameters
----------
BasisCurve: Geom_BSplineCurve
U1: float
U2: float
ParametricTolerance: float

Returns
-------
None
") GeomConvert_BSplineCurveToBezierCurve;
		 GeomConvert_BSplineCurveToBezierCurve(const opencascade::handle<Geom_BSplineCurve> & BasisCurve, const Standard_Real U1, const Standard_Real U2, const Standard_Real ParametricTolerance);

		/****************** Arc ******************/
		/**** md5 signature: 95759e24d4243410fb6f5ba187be6019 ****/
		%feature("compactdefaultargs") Arc;
		%feature("autodoc", "Constructs and returns the bezier curve of index index to the table of adjacent bezier arcs computed by this algorithm. this bezier curve has the same orientation as the bspline curve analyzed in this framework. exceptions standard_outofrange if index is less than 1 or greater than the number of adjacent bezier arcs computed by this algorithm.

Parameters
----------
Index: int

Returns
-------
opencascade::handle<Geom_BezierCurve>
") Arc;
		opencascade::handle<Geom_BezierCurve> Arc(const Standard_Integer Index);

		/****************** Arcs ******************/
		/**** md5 signature: a5f791af1537635bcd5a0666a4d6f74a ****/
		%feature("compactdefaultargs") Arcs;
		%feature("autodoc", "Constructs all the bezier curves whose data is computed by this algorithm and loads these curves into the curves table. the bezier curves have the same orientation as the bspline curve analyzed in this framework. exceptions standard_dimensionerror if the curves array was not created with the following bounds: - 1 , and - the number of adjacent bezier arcs computed by this algorithm (as given by the function nbarcs).

Parameters
----------
Curves: TColGeom_Array1OfBezierCurve

Returns
-------
None
") Arcs;
		void Arcs(TColGeom_Array1OfBezierCurve & Curves);

		/****************** Knots ******************/
		/**** md5 signature: 4ce44c7a3fc1e54d65161ad10947be07 ****/
		%feature("compactdefaultargs") Knots;
		%feature("autodoc", "This methode returns the bspline's knots associated to the converted arcs raised if the length of curves is not equal to nbarcs + 1.

Parameters
----------
TKnots: TColStd_Array1OfReal

Returns
-------
None
") Knots;
		void Knots(TColStd_Array1OfReal & TKnots);

		/****************** NbArcs ******************/
		/**** md5 signature: 5ed9ffd03d9f325b6e3f5ea37278c31f ****/
		%feature("compactdefaultargs") NbArcs;
		%feature("autodoc", "Returns the number of beziercurve arcs. if at the creation time you have decomposed the basis curve between the parametric values ufirst, ulast the number of beziercurve arcs depends on the number of knots included inside the interval [ufirst, ulast]. if you have decomposed the whole basis b-spline curve the number of beziercurve arcs nbarcs is equal to the number of knots less one.

Returns
-------
int
") NbArcs;
		Standard_Integer NbArcs();

};


%extend GeomConvert_BSplineCurveToBezierCurve {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/************************************************
* class GeomConvert_BSplineSurfaceKnotSplitting *
************************************************/
class GeomConvert_BSplineSurfaceKnotSplitting {
	public:
		/****************** GeomConvert_BSplineSurfaceKnotSplitting ******************/
		/**** md5 signature: 4f7bf866b0b663536743786ab6c49a35 ****/
		%feature("compactdefaultargs") GeomConvert_BSplineSurfaceKnotSplitting;
		%feature("autodoc", "Determines the u- and v-isoparametric curves along which the bspline surface basissurface should be split in order to obtain patches with a degree of continuity equal to ucontinuityrange in the u parametric direction, and to vcontinuityrange in the v parametric direction. these isoparametric curves are defined by parameters, which are basissurface knot values in the u or v parametric direction. they are identified by indices in the basissurface knots table in the corresponding parametric direction. use the available interrogation functions to access computed values, followed by the global function splitbsplinesurface (provided by the package geomconvert) to split the surface. exceptions standard_rangeerror if ucontinuityrange or vcontinuityrange is less than zero.

Parameters
----------
BasisSurface: Geom_BSplineSurface
UContinuityRange: int
VContinuityRange: int

Returns
-------
None
") GeomConvert_BSplineSurfaceKnotSplitting;
		 GeomConvert_BSplineSurfaceKnotSplitting(const opencascade::handle<Geom_BSplineSurface> & BasisSurface, const Standard_Integer UContinuityRange, const Standard_Integer VContinuityRange);

		/****************** NbUSplits ******************/
		/**** md5 signature: f38f51a3829bd17423f80563dd69fc89 ****/
		%feature("compactdefaultargs") NbUSplits;
		%feature("autodoc", "Returns the number of u-isoparametric curves along which the analysed bspline surface should be split in order to obtain patches with the continuity required by this framework. the parameters which define these curves are knot values in the corresponding parametric direction. note that the four curves which bound the surface are counted among these splitting curves.

Returns
-------
int
") NbUSplits;
		Standard_Integer NbUSplits();

		/****************** NbVSplits ******************/
		/**** md5 signature: dec024b23940401d121c0104e585c1c2 ****/
		%feature("compactdefaultargs") NbVSplits;
		%feature("autodoc", "Returns the number of v-isoparametric curves along which the analysed bspline surface should be split in order to obtain patches with the continuity required by this framework. the parameters which define these curves are knot values in the corresponding parametric direction. note that the four curves which bound the surface are counted among these splitting curves.

Returns
-------
int
") NbVSplits;
		Standard_Integer NbVSplits();

		/****************** Splitting ******************/
		/**** md5 signature: dc3f95db858c5376c9dc451aed4bd8fb ****/
		%feature("compactdefaultargs") Splitting;
		%feature("autodoc", "Loads the usplit and vsplit tables with the split knots values computed in this framework. each value in these tables is an index in the knots table corresponding to the u or v parametric direction of the bspline surface analysed by this algorithm. the usplit and vsplit values are given in ascending order and comprise the indices of the knots which give the first and last isoparametric curves of the surface in the corresponding parametric direction. use two consecutive values from the usplit table and two consecutive values from the vsplit table as arguments of the global function splitbsplinesurface (provided by the package geomconvert) to split the surface. exceptions standard_dimensionerror if: - the array usplit was not created with the following bounds: - 1 , and - the number of split knots in the u parametric direction computed in this framework (as given by the function nbusplits); or - the array vsplit was not created with the following bounds: - 1 , and - the number of split knots in the v parametric direction computed in this framework (as given by the function nbvsplits).

Parameters
----------
USplit: TColStd_Array1OfInteger
VSplit: TColStd_Array1OfInteger

Returns
-------
None
") Splitting;
		void Splitting(TColStd_Array1OfInteger & USplit, TColStd_Array1OfInteger & VSplit);

		/****************** USplitValue ******************/
		/**** md5 signature: 17cc2a94fd1c12d63fe91fb3ee2162e2 ****/
		%feature("compactdefaultargs") USplitValue;
		%feature("autodoc", "Returns the split knot of index uindex to the split knots table for the u parametric direction computed in this framework. the returned value is an index in the knots table relative to the u parametric direction of the bspline surface analysed by this algorithm. note: if uindex is equal to 1, or to the number of split knots for the u parametric direction computed in this framework, the corresponding knot gives the parameter of one of the bounding curves of the surface. exceptions standard_rangeerror if uindex is less than 1 or greater than the number of split knots for the u parametric direction computed in this framework.

Parameters
----------
UIndex: int

Returns
-------
int
") USplitValue;
		Standard_Integer USplitValue(const Standard_Integer UIndex);

		/****************** VSplitValue ******************/
		/**** md5 signature: f659a94c69e2fc5ded0fb9374d02b0a6 ****/
		%feature("compactdefaultargs") VSplitValue;
		%feature("autodoc", "Returns the split knot of index vindex to the split knots table for the v parametric direction computed in this framework. the returned value is an index in the knots table relative to the v parametric direction of the bspline surface analysed by this algorithm. note: if uindex is equal to 1, or to the number of split knots for the v parametric direction computed in this framework, the corresponding knot gives the parameter of one of the bounding curves of the surface. exceptions standard_rangeerror if vindex is less than 1 or greater than the number of split knots for the v parametric direction computed in this framework.

Parameters
----------
VIndex: int

Returns
-------
int
") VSplitValue;
		Standard_Integer VSplitValue(const Standard_Integer VIndex);

};


%extend GeomConvert_BSplineSurfaceKnotSplitting {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**************************************************
* class GeomConvert_BSplineSurfaceToBezierSurface *
**************************************************/
class GeomConvert_BSplineSurfaceToBezierSurface {
	public:
		/****************** GeomConvert_BSplineSurfaceToBezierSurface ******************/
		/**** md5 signature: 1183db9a4452c7fc68809ed7924171c9 ****/
		%feature("compactdefaultargs") GeomConvert_BSplineSurfaceToBezierSurface;
		%feature("autodoc", "Computes all the data needed to convert - the bspline surface basissurface into a series of adjacent bezier surfaces. the result consists of a grid of basissurface patches limited by isoparametric curves corresponding to knot values, both in the u and v parametric directions of the surface. a row in the grid corresponds to a series of adjacent patches, all limited by the same two u-isoparametric curves. a column in the grid corresponds to a series of adjacent patches, all limited by the same two v-isoparametric curves. use the available interrogation functions to ascertain the number of computed bezier patches, and then to construct each individual bezier surface (or all bezier surfaces). note: parametrictolerance is not used.

Parameters
----------
BasisSurface: Geom_BSplineSurface

Returns
-------
None
") GeomConvert_BSplineSurfaceToBezierSurface;
		 GeomConvert_BSplineSurfaceToBezierSurface(const opencascade::handle<Geom_BSplineSurface> & BasisSurface);

		/****************** GeomConvert_BSplineSurfaceToBezierSurface ******************/
		/**** md5 signature: 6c70a4683a2a0dbdb1df7d8f55283cae ****/
		%feature("compactdefaultargs") GeomConvert_BSplineSurfaceToBezierSurface;
		%feature("autodoc", "Computes all the data needed to convert the patch of the bspline surface basissurface limited by the two parameter values u1 and u2 in the u parametric direction, and by the two parameter values v1 and v2 in the v parametric direction, into a series of adjacent bezier surfaces. the result consists of a grid of basissurface patches limited by isoparametric curves corresponding to knot values, both in the u and v parametric directions of the surface. a row in the grid corresponds to a series of adjacent patches, all limited by the same two u-isoparametric curves. a column in the grid corresponds to a series of adjacent patches, all limited by the same two v-isoparametric curves. use the available interrogation functions to ascertain the number of computed bezier patches, and then to construct each individual bezier surface (or all bezier surfaces). note: parametrictolerance is not used. raises domainerror if u1 or u2 or v1 or v2 are out of the parametric bounds of the basis surface [firstuknotindex, lastuknotindex] , [firstvknotindex, lastvknotindex] the tolerance criterion is parametrictolerance. raised if u2 - u1 <= parametrictolerance or v2 - v1 <= parametrictolerance.

Parameters
----------
BasisSurface: Geom_BSplineSurface
U1: float
U2: float
V1: float
V2: float
ParametricTolerance: float

Returns
-------
None
") GeomConvert_BSplineSurfaceToBezierSurface;
		 GeomConvert_BSplineSurfaceToBezierSurface(const opencascade::handle<Geom_BSplineSurface> & BasisSurface, const Standard_Real U1, const Standard_Real U2, const Standard_Real V1, const Standard_Real V2, const Standard_Real ParametricTolerance);

		/****************** NbUPatches ******************/
		/**** md5 signature: 6b0ad1d8cd917ddafd65ec74fe6e89da ****/
		%feature("compactdefaultargs") NbUPatches;
		%feature("autodoc", "Returns the number of bezier surfaces in the u direction. if at the creation time you have decomposed the basis surface between the parametric values ufirst, ulast the number of bezier surfaces in the u direction depends on the number of knots included inside the interval [ufirst, ulast]. if you have decomposed the whole basis b-spline surface the number of bezier surfaces nbupatches is equal to the number of uknots less one.

Returns
-------
int
") NbUPatches;
		Standard_Integer NbUPatches();

		/****************** NbVPatches ******************/
		/**** md5 signature: 90a9eb7fe715a81477e403cf8ccff1b9 ****/
		%feature("compactdefaultargs") NbVPatches;
		%feature("autodoc", "Returns the number of bezier surfaces in the v direction. if at the creation time you have decomposed the basis surface between the parametric values vfirst, vlast the number of bezier surfaces in the v direction depends on the number of knots included inside the interval [vfirst, vlast]. if you have decomposed the whole basis b-spline surface the number of bezier surfaces nbvpatches is equal to the number of vknots less one.

Returns
-------
int
") NbVPatches;
		Standard_Integer NbVPatches();

		/****************** Patch ******************/
		/**** md5 signature: 9a3b705348fea48bacf1c9a8e270b260 ****/
		%feature("compactdefaultargs") Patch;
		%feature("autodoc", "Constructs and returns the bezier surface of indices (uindex, vindex) to the patch grid computed on the bspline surface analyzed by this algorithm. this bezier surface has the same orientation as the bspline surface analyzed in this framework. uindex is an index common to a row in the patch grid. a row in the grid corresponds to a series of adjacent patches, all limited by the same two u-isoparametric curves of the surface. vindex is an index common to a column in the patch grid. a column in the grid corresponds to a series of adjacent patches, all limited by the same two v-isoparametric curves of the surface. exceptions standard_outofrange if: - uindex is less than 1 or greater than the number of rows in the patch grid computed on the bspline surface analyzed by this algorithm (as returned by the function nbupatches); or if - vindex is less than 1 or greater than the number of columns in the patch grid computed on the bspline surface analyzed by this algorithm (as returned by the function nbvpatches).

Parameters
----------
UIndex: int
VIndex: int

Returns
-------
opencascade::handle<Geom_BezierSurface>
") Patch;
		opencascade::handle<Geom_BezierSurface> Patch(const Standard_Integer UIndex, const Standard_Integer VIndex);

		/****************** Patches ******************/
		/**** md5 signature: 908402b15b885f6ee3f80d400a6e9b14 ****/
		%feature("compactdefaultargs") Patches;
		%feature("autodoc", "Constructs all the bezier surfaces whose data is computed by this algorithm, and loads them into the surfaces table. these bezier surfaces have the same orientation as the bspline surface analyzed in this framework. the surfaces array is organised in the same way as the patch grid computed on the bspline surface analyzed by this algorithm. a row in the array corresponds to a series of adjacent patches, all limited by the same two u-isoparametric curves of the surface. a column in the array corresponds to a series of adjacent patches, all limited by the same two v-isoparametric curves of the surface. exceptions standard_dimensionerror if the surfaces array was not created with the following bounds: - 1, and the number of adjacent patch series in the u parametric direction of the patch grid computed on the bspline surface, analyzed by this algorithm (as given by the function nbupatches) as row bounds, - 1, and the number of adjacent patch series in the v parametric direction of the patch grid computed on the bspline surface, analyzed by this algorithm (as given by the function nbvpatches) as column bounds.

Parameters
----------
Surfaces: TColGeom_Array2OfBezierSurface

Returns
-------
None
") Patches;
		void Patches(TColGeom_Array2OfBezierSurface & Surfaces);

		/****************** UKnots ******************/
		/**** md5 signature: a1b7c3a34769a964c3e6f254c8352af4 ****/
		%feature("compactdefaultargs") UKnots;
		%feature("autodoc", "This methode returns the bspline's u-knots associated to the converted patches raised if the length of curves is not equal to nbupatches + 1.

Parameters
----------
TKnots: TColStd_Array1OfReal

Returns
-------
None
") UKnots;
		void UKnots(TColStd_Array1OfReal & TKnots);

		/****************** VKnots ******************/
		/**** md5 signature: 8977b325b44f44fd45a8ff69d707de23 ****/
		%feature("compactdefaultargs") VKnots;
		%feature("autodoc", "This methode returns the bspline's v-knots associated to the converted patches raised if the length of curves is not equal to nbvpatches + 1.

Parameters
----------
TKnots: TColStd_Array1OfReal

Returns
-------
None
") VKnots;
		void VKnots(TColStd_Array1OfReal & TKnots);

};


%extend GeomConvert_BSplineSurfaceToBezierSurface {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*******************************************************
* class GeomConvert_CompBezierSurfacesToBSplineSurface *
*******************************************************/
class GeomConvert_CompBezierSurfacesToBSplineSurface {
	public:
		/****************** GeomConvert_CompBezierSurfacesToBSplineSurface ******************/
		/**** md5 signature: d7d868206c90d8ef14dd941018c8d112 ****/
		%feature("compactdefaultargs") GeomConvert_CompBezierSurfacesToBSplineSurface;
		%feature("autodoc", "Computes all the data needed to build a 'c0' continuous bspline surface equivalent to the grid of adjacent non-rational bezier surfaces beziers. each surface in the beziers grid becomes a natural patch, limited by knots values, on the bspline surface whose data is computed. surfaces in the grid must satisfy the following conditions: - coincident bounding curves between two consecutive surfaces in a row of the beziers grid must be u-isoparametric bounding curves of these two surfaces. - coincident bounding curves between two consecutive surfaces in a column of the beziers grid must be v-isoparametric bounding curves of these two surfaces. the bspline surface whose data is computed has the following characteristics: - its degree in the u (respectively v) parametric direction is equal to that of the bezier surface which has the highest degree in the u (respectively v) parametric direction in the beziers grid. - it is a 'piecewise bezier' in both u and v parametric directions, i.e.: - the knots are regularly spaced in each parametric direction (i.e. the difference between two consecutive knots is a constant), and - all the multiplicities of the surface knots in a given parametric direction are equal to degree, which is the degree of the bspline surface in this parametric direction, except for the first and last knots for which the multiplicity is equal to degree + 1. - coincident bounding curves between two consecutive columns of bezier surfaces in the beziers grid become u-isoparametric curves, corresponding to knots values of the bspline surface. - coincident bounding curves between two consecutive rows of bezier surfaces in the beziers grid become v-isoparametric curves corresponding to knots values of the bspline surface. use the available consultation functions to access the computed data. this data may be used to construct the bspline surface. warning the surfaces in the beziers grid must be adjacent, i.e. two consecutive bezier surfaces in the grid (in a row or column) must have a coincident bounding curve. in addition, the location of the parameterization on each of these surfaces (i.e. the relative location of u and v isoparametric curves on the surface) is of importance with regard to the positioning of the surfaces in the beziers grid. care must be taken with respect to the above, as these properties are not checked and an error may occur if they are not satisfied. exceptions standard_notimplemented if one of the bezier surfaces of the beziers grid is rational.

Parameters
----------
Beziers: TColGeom_Array2OfBezierSurface

Returns
-------
None
") GeomConvert_CompBezierSurfacesToBSplineSurface;
		 GeomConvert_CompBezierSurfacesToBSplineSurface(const TColGeom_Array2OfBezierSurface & Beziers);

		/****************** GeomConvert_CompBezierSurfacesToBSplineSurface ******************/
		/**** md5 signature: e7dce0cc47287d475aec5981c18bd406 ****/
		%feature("compactdefaultargs") GeomConvert_CompBezierSurfacesToBSplineSurface;
		%feature("autodoc", "Build an ci uniform (rational) bspline surface the highest continuity ci is imposed, like the maximal deformation is lower than <tolerance>. warning: the continuity c0 is imposed without any check.

Parameters
----------
Beziers: TColGeom_Array2OfBezierSurface
Tolerance: float
RemoveKnots: bool,optional
	default value is Standard_True

Returns
-------
None
") GeomConvert_CompBezierSurfacesToBSplineSurface;
		 GeomConvert_CompBezierSurfacesToBSplineSurface(const TColGeom_Array2OfBezierSurface & Beziers, const Standard_Real Tolerance, const Standard_Boolean RemoveKnots = Standard_True);

		/****************** GeomConvert_CompBezierSurfacesToBSplineSurface ******************/
		/**** md5 signature: 9023f479b9dd7990ab8b434e132ab54b ****/
		%feature("compactdefaultargs") GeomConvert_CompBezierSurfacesToBSplineSurface;
		%feature("autodoc", "Computes all the data needed to construct a bspline surface equivalent to the adjacent non-rational bezier surfaces beziers grid. each surface in the beziers grid becomes a natural patch, limited by knots values, on the bspline surface whose data is computed. surfaces in the grid must satisfy the following conditions: - coincident bounding curves between two consecutive surfaces in a row of the beziers grid must be u-isoparametric bounding curves of these two surfaces. - coincident bounding curves between two consecutive surfaces in a column of the beziers grid must be v-isoparametric bounding curves of these two surfaces. the bspline surface whose data is computed has the following characteristics: - its degree in the u (respectively v) parametric direction is equal to that of the bezier surface which has the highest degree in the u (respectively v) parametric direction in the beziers grid. - coincident bounding curves between two consecutive columns of bezier surfaces in the beziers grid become u-isoparametric curves corresponding to knots values of the bspline surface. - coincident bounding curves between two consecutive rows of bezier surfaces in the beziers grid become v-isoparametric curves corresponding to knots values of the bspline surface. knots values of the bspline surface are given in the two tables: - uknots for the u parametric direction (which corresponds to the order of bezier surface columns in the beziers grid), and - vknots for the v parametric direction (which corresponds to the order of bezier surface rows in the beziers grid). the dimensions of uknots (respectively vknots) must be equal to the number of columns (respectively, rows) of the beziers grid, plus 1 . ucontinuity and vcontinuity, which are both defaulted to geomabs_c0, specify the required continuity on the bspline surface. if the required degree of continuity is greater than 0 in a given parametric direction, a deformation is applied locally on the initial surface (as defined by the beziers grid) to satisfy this condition. this local deformation is not applied however, if it is greater than tolerance (defaulted to 1.0 e-7). in such cases, the continuity condition is not satisfied, and the function isdone will return false. a small tolerance value prevents any modification of the surface and a large tolerance value 'smoothes' the surface. use the available consultation functions to access the computed data. this data may be used to construct the bspline surface. warning the surfaces in the beziers grid must be adjacent, i.e. two consecutive bezier surfaces in the grid (in a row or column) must have a coincident bounding curve. in addition, the location of the parameterization on each of these surfaces (i.e. the relative location of u and v isoparametric curves on the surface) is of importance with regard to the positioning of the surfaces in the beziers grid. care must be taken with respect to the above, as these properties are not checked and an error may occur if they are not satisfied. exceptions standard_dimensionmismatch: - if the number of knots in the uknots table (i.e. the length of the uknots array) is not equal to the number of columns of bezier surfaces in the beziers grid plus 1, or - if the number of knots in the vknots table (i.e. the length of the vknots array) is not equal to the number of rows of bezier surfaces in the beziers grid, plus 1. standard_constructionerror: - if ucontinuity and vcontinuity are not equal to one of the following values: geomabs_c0, geomabs_c1, geomabs_c2 and geomabs_c3; or - if the number of columns in the beziers grid is greater than 1, and the required degree of continuity in the u parametric direction is greater than that of the bezier surface with the highest degree in the u parametric direction (in the beziers grid), minus 1; or - if the number of rows in the beziers grid is greater than 1, and the required degree of continuity in the v parametric direction is greater than that of the bezier surface with the highest degree in the v parametric direction (in the beziers grid), minus 1 . standard_notimplemented if one of the bezier surfaces in the beziers grid is rational.

Parameters
----------
Beziers: TColGeom_Array2OfBezierSurface
UKnots: TColStd_Array1OfReal
VKnots: TColStd_Array1OfReal
UContinuity: GeomAbs_Shape,optional
	default value is GeomAbs_C0
VContinuity: GeomAbs_Shape,optional
	default value is GeomAbs_C0
Tolerance: float,optional
	default value is 1.0e-4

Returns
-------
None
") GeomConvert_CompBezierSurfacesToBSplineSurface;
		 GeomConvert_CompBezierSurfacesToBSplineSurface(const TColGeom_Array2OfBezierSurface & Beziers, const TColStd_Array1OfReal & UKnots, const TColStd_Array1OfReal & VKnots, const GeomAbs_Shape UContinuity = GeomAbs_C0, const GeomAbs_Shape VContinuity = GeomAbs_C0, const Standard_Real Tolerance = 1.0e-4);

		/****************** IsDone ******************/
		/**** md5 signature: ec0624071ec7da54b3d9dacc7bcb05f9 ****/
		%feature("compactdefaultargs") IsDone;
		%feature("autodoc", "Returns true if the conversion was successful. unless an exception was raised at the time of construction, the conversion of the bezier surface grid assigned to this algorithm is always carried out. isdone returns false if the constraints defined at the time of construction cannot be respected. this occurs when there is an incompatibility between a required degree of continuity on the bspline surface, and the maximum tolerance accepted for local deformations of the surface. in such a case the computed data does not satisfy all the initial constraints.

Returns
-------
bool
") IsDone;
		Standard_Boolean IsDone();

		/****************** NbUKnots ******************/
		/**** md5 signature: dad62b27d386c8d79ed8a3faddece815 ****/
		%feature("compactdefaultargs") NbUKnots;
		%feature("autodoc", "Returns the number of knots in the u direction of the bspline surface whose data is computed in this framework.

Returns
-------
int
") NbUKnots;
		Standard_Integer NbUKnots();

		/****************** NbUPoles ******************/
		/**** md5 signature: fb7c625af5aeee8be8cffdd28f1b08d5 ****/
		%feature("compactdefaultargs") NbUPoles;
		%feature("autodoc", "Returns number of poles in the u direction of the bspline surface whose data is computed in this framework.

Returns
-------
int
") NbUPoles;
		Standard_Integer NbUPoles();

		/****************** NbVKnots ******************/
		/**** md5 signature: c5483500ef062c3949009d9a2ec75b29 ****/
		%feature("compactdefaultargs") NbVKnots;
		%feature("autodoc", "Returns the number of knots in the v direction of the bspline surface whose data is computed in this framework.

Returns
-------
int
") NbVKnots;
		Standard_Integer NbVKnots();

		/****************** NbVPoles ******************/
		/**** md5 signature: 098754ae7893287e442d0a3c48b39cf0 ****/
		%feature("compactdefaultargs") NbVPoles;
		%feature("autodoc", "Returns the number of poles in the v direction of the bspline surface whose data is computed in this framework.

Returns
-------
int
") NbVPoles;
		Standard_Integer NbVPoles();

		/****************** Poles ******************/
		/**** md5 signature: 4e616536627e10a4a11def3d5743d611 ****/
		%feature("compactdefaultargs") Poles;
		%feature("autodoc", "Returns the table of poles of the bspline surface whose data is computed in this framework.

Returns
-------
opencascade::handle<TColgp_HArray2OfPnt>
") Poles;
		const opencascade::handle<TColgp_HArray2OfPnt> & Poles();

		/****************** UDegree ******************/
		/**** md5 signature: f204e5fbf1c49e3d9e4889dfead5a190 ****/
		%feature("compactdefaultargs") UDegree;
		%feature("autodoc", "Returns the degree for the u parametric direction of the bspline surface whose data is computed in this framework.

Returns
-------
int
") UDegree;
		Standard_Integer UDegree();

		/****************** UKnots ******************/
		/**** md5 signature: e4c765c1a34f73676b6a0f23e63a42f7 ****/
		%feature("compactdefaultargs") UKnots;
		%feature("autodoc", "Returns the knots table for the u parametric direction of the bspline surface whose data is computed in this framework.

Returns
-------
opencascade::handle<TColStd_HArray1OfReal>
") UKnots;
		const opencascade::handle<TColStd_HArray1OfReal> & UKnots();

		/****************** UMultiplicities ******************/
		/**** md5 signature: dd6df83c242f8c2d61f6fb2cc00d6d9a ****/
		%feature("compactdefaultargs") UMultiplicities;
		%feature("autodoc", "Returns the multiplicities table for the u parametric direction of the knots of the bspline surface whose data is computed in this framework.

Returns
-------
opencascade::handle<TColStd_HArray1OfInteger>
") UMultiplicities;
		const opencascade::handle<TColStd_HArray1OfInteger> & UMultiplicities();

		/****************** VDegree ******************/
		/**** md5 signature: 4901bdb3b29a5c2410ca93d6a7816f06 ****/
		%feature("compactdefaultargs") VDegree;
		%feature("autodoc", "Returns the degree for the v parametric direction of the bspline surface whose data is computed in this framework.

Returns
-------
int
") VDegree;
		Standard_Integer VDegree();

		/****************** VKnots ******************/
		/**** md5 signature: 56d691f001e3cbff620cca50aeeea333 ****/
		%feature("compactdefaultargs") VKnots;
		%feature("autodoc", "Returns the knots table for the v parametric direction of the bspline surface whose data is computed in this framework.

Returns
-------
opencascade::handle<TColStd_HArray1OfReal>
") VKnots;
		const opencascade::handle<TColStd_HArray1OfReal> & VKnots();

		/****************** VMultiplicities ******************/
		/**** md5 signature: 36fc4847dd11076b629833ec28b74b5a ****/
		%feature("compactdefaultargs") VMultiplicities;
		%feature("autodoc", "-- returns the multiplicities table for the v parametric direction of the knots of the bspline surface whose data is computed in this framework.

Returns
-------
opencascade::handle<TColStd_HArray1OfInteger>
") VMultiplicities;
		const opencascade::handle<TColStd_HArray1OfInteger> & VMultiplicities();

};


%extend GeomConvert_CompBezierSurfacesToBSplineSurface {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/********************************************
* class GeomConvert_CompCurveToBSplineCurve *
********************************************/
class GeomConvert_CompCurveToBSplineCurve {
	public:
		/****************** GeomConvert_CompCurveToBSplineCurve ******************/
		/**** md5 signature: a96791634acde1f55395d6866064395e ****/
		%feature("compactdefaultargs") GeomConvert_CompCurveToBSplineCurve;
		%feature("autodoc", "Initialize the algorithme - parameterisation is used to convert.

Parameters
----------
Parameterisation: Convert_ParameterisationType,optional
	default value is Convert_TgtThetaOver2

Returns
-------
None
") GeomConvert_CompCurveToBSplineCurve;
		 GeomConvert_CompCurveToBSplineCurve(const Convert_ParameterisationType Parameterisation = Convert_TgtThetaOver2);

		/****************** GeomConvert_CompCurveToBSplineCurve ******************/
		/**** md5 signature: 3aeb1eb8d2522e7e127a7c770b7a8f81 ****/
		%feature("compactdefaultargs") GeomConvert_CompCurveToBSplineCurve;
		%feature("autodoc", "Initialize the algorithme with one curve - parameterisation is used to convert.

Parameters
----------
BasisCurve: Geom_BoundedCurve
Parameterisation: Convert_ParameterisationType,optional
	default value is Convert_TgtThetaOver2

Returns
-------
None
") GeomConvert_CompCurveToBSplineCurve;
		 GeomConvert_CompCurveToBSplineCurve(const opencascade::handle<Geom_BoundedCurve> & BasisCurve, const Convert_ParameterisationType Parameterisation = Convert_TgtThetaOver2);

		/****************** Add ******************/
		/**** md5 signature: bc61762bbfef9f8aa367bbd6d1a81d53 ****/
		%feature("compactdefaultargs") Add;
		%feature("autodoc", "Append a curve in the bspline return false if the curve is not g0 with the bsplinecurve. tolerance is used to check continuity and decrease multiplicity at the common knot until minm if minm = 0, the common knot can be removed //! withratio defines whether the resulting curve should have a uniform parameterization. setting withratio to standard_false may greatly decrease the speed of algorithms like cpnts_abscissapoint::advperform when applied to the resulting curve.

Parameters
----------
NewCurve: Geom_BoundedCurve
Tolerance: float
After: bool,optional
	default value is Standard_False
WithRatio: bool,optional
	default value is Standard_True
MinM: int,optional
	default value is 0

Returns
-------
bool
") Add;
		Standard_Boolean Add(const opencascade::handle<Geom_BoundedCurve> & NewCurve, const Standard_Real Tolerance, const Standard_Boolean After = Standard_False, const Standard_Boolean WithRatio = Standard_True, const Standard_Integer MinM = 0);

		/****************** BSplineCurve ******************/
		/**** md5 signature: f990dacdae77505b5b71a450dd20ad64 ****/
		%feature("compactdefaultargs") BSplineCurve;
		%feature("autodoc", "No available documentation.

Returns
-------
opencascade::handle<Geom_BSplineCurve>
") BSplineCurve;
		opencascade::handle<Geom_BSplineCurve> BSplineCurve();

};


%extend GeomConvert_CompCurveToBSplineCurve {
	%pythoncode {
	__repr__ = _dumps_object

	@methodnotwrapped
	def Clear(self):
		pass
	}
};

/************************************
* class GeomConvert_CurveToAnaCurve *
************************************/
class GeomConvert_CurveToAnaCurve {
	public:
		/****************** GeomConvert_CurveToAnaCurve ******************/
		/**** md5 signature: ec961824468293cd902f1969c652e26c ****/
		%feature("compactdefaultargs") GeomConvert_CurveToAnaCurve;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") GeomConvert_CurveToAnaCurve;
		 GeomConvert_CurveToAnaCurve();

		/****************** GeomConvert_CurveToAnaCurve ******************/
		/**** md5 signature: b1ece9c96194a4a80262bfa8a26ee2ab ****/
		%feature("compactdefaultargs") GeomConvert_CurveToAnaCurve;
		%feature("autodoc", "No available documentation.

Parameters
----------
C: Geom_Curve

Returns
-------
None
") GeomConvert_CurveToAnaCurve;
		 GeomConvert_CurveToAnaCurve(const opencascade::handle<Geom_Curve> & C);

		/****************** ComputeCircle ******************/
		/**** md5 signature: ea256c1493cd79f11cc19a93be84040a ****/
		%feature("compactdefaultargs") ComputeCircle;
		%feature("autodoc", "Tries to convert the given curve to circle with given tolerance. returns null curve if conversion is not possible.

Parameters
----------
curve: Geom_Curve
tolerance: float
c1: float
c2: float

Returns
-------
cf: float
cl: float
Deviation: float
") ComputeCircle;
		static opencascade::handle<Geom_Curve> ComputeCircle(const opencascade::handle<Geom_Curve> & curve, const Standard_Real tolerance, const Standard_Real c1, const Standard_Real c2, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

		/****************** ComputeCurve ******************/
		/**** md5 signature: c66a84ff606c6ec09706eec6eb45f9d8 ****/
		%feature("compactdefaultargs") ComputeCurve;
		%feature("autodoc", "No available documentation.

Parameters
----------
curve: Geom_Curve
tolerance: float
c1: float
c2: float
theCurvType: GeomConvert_ConvType,optional
	default value is GeomConvert_MinGap
theTarget: GeomAbs_CurveType,optional
	default value is GeomAbs_Line

Returns
-------
cf: float
cl: float
theGap: float
") ComputeCurve;
		static opencascade::handle<Geom_Curve> ComputeCurve(const opencascade::handle<Geom_Curve> & curve, const Standard_Real tolerance, const Standard_Real c1, const Standard_Real c2, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, const GeomConvert_ConvType theCurvType = GeomConvert_MinGap, const GeomAbs_CurveType theTarget = GeomAbs_Line);

		/****************** ComputeEllipse ******************/
		/**** md5 signature: e0bb1bde95947083b93efaccf7353272 ****/
		%feature("compactdefaultargs") ComputeEllipse;
		%feature("autodoc", "Tries to convert the given curve to ellipse with given tolerance. returns null curve if conversion is not possible.

Parameters
----------
curve: Geom_Curve
tolerance: float
c1: float
c2: float

Returns
-------
cf: float
cl: float
Deviation: float
") ComputeEllipse;
		static opencascade::handle<Geom_Curve> ComputeEllipse(const opencascade::handle<Geom_Curve> & curve, const Standard_Real tolerance, const Standard_Real c1, const Standard_Real c2, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

		/****************** ComputeLine ******************/
		/**** md5 signature: bc5142fb7fe1aa589de179e14ba11de0 ****/
		%feature("compactdefaultargs") ComputeLine;
		%feature("autodoc", "Tries to convert the given curve to line with given tolerance. returns null curve if conversion is not possible.

Parameters
----------
curve: Geom_Curve
tolerance: float
c1: float
c2: float

Returns
-------
cf: float
cl: float
Deviation: float
") ComputeLine;
		static opencascade::handle<Geom_Line> ComputeLine(const opencascade::handle<Geom_Curve> & curve, const Standard_Real tolerance, const Standard_Real c1, const Standard_Real c2, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

		/****************** ConvertToAnalytical ******************/
		/**** md5 signature: 549770939dd4922960c2746330467b86 ****/
		%feature("compactdefaultargs") ConvertToAnalytical;
		%feature("autodoc", "Converts me to analytical if possible with given tolerance. the new first and last parameters are returned to newf, newl.

Parameters
----------
theTol: float
theResultCurve: Geom_Curve
F: float
L: float

Returns
-------
newF: float
newL: float
") ConvertToAnalytical;
		Standard_Boolean ConvertToAnalytical(const Standard_Real theTol, opencascade::handle<Geom_Curve> & theResultCurve, const Standard_Real F, const Standard_Real L, Standard_Real &OutValue, Standard_Real &OutValue);

		/****************** Gap ******************/
		/**** md5 signature: ff26c000138f3c6675ca82e0935201b1 ****/
		%feature("compactdefaultargs") Gap;
		%feature("autodoc", "Returns maximal deviation of converted surface from the original one computed by last call to converttoanalytical.

Returns
-------
float
") Gap;
		Standard_Real Gap();

		/****************** GetCircle ******************/
		/**** md5 signature: 54fff07540fbc3c56e68304652c6011a ****/
		%feature("compactdefaultargs") GetCircle;
		%feature("autodoc", "Creates circle on points. returns true if ok.

Parameters
----------
Circ: gp_Circ
P0: gp_Pnt
P1: gp_Pnt
P2: gp_Pnt

Returns
-------
bool
") GetCircle;
		static Standard_Boolean GetCircle(gp_Circ & Circ, const gp_Pnt & P0, const gp_Pnt & P1, const gp_Pnt & P2);

		/****************** GetConvType ******************/
		/**** md5 signature: 3380d79ecc2a38ee84684af221c8db7d ****/
		%feature("compactdefaultargs") GetConvType;
		%feature("autodoc", "Returns conversion type .

Returns
-------
GeomConvert_ConvType
") GetConvType;
		GeomConvert_ConvType GetConvType();

		/****************** GetLine ******************/
		/**** md5 signature: f5adcee8a16048ac03ea0dd1162c6076 ****/
		%feature("compactdefaultargs") GetLine;
		%feature("autodoc", "Creates line on two points. resulting parameters returned.

Parameters
----------
P1: gp_Pnt
P2: gp_Pnt

Returns
-------
cf: float
cl: float
") GetLine;
		static gp_Lin GetLine(const gp_Pnt & P1, const gp_Pnt & P2, Standard_Real &OutValue, Standard_Real &OutValue);

		/****************** GetTarget ******************/
		/**** md5 signature: 5c2574892803a79756a17ac0020a223f ****/
		%feature("compactdefaultargs") GetTarget;
		%feature("autodoc", "Returns target curve type .

Returns
-------
GeomAbs_CurveType
") GetTarget;
		GeomAbs_CurveType GetTarget();

		/****************** Init ******************/
		/**** md5 signature: 3a7fb0adde1a97c68f435539513bba2c ****/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "No available documentation.

Parameters
----------
C: Geom_Curve

Returns
-------
None
") Init;
		void Init(const opencascade::handle<Geom_Curve> & C);

		/****************** IsLinear ******************/
		/**** md5 signature: 3fffa92876acf756eec0fb545af7bee0 ****/
		%feature("compactdefaultargs") IsLinear;
		%feature("autodoc", "Returns true if the set of points is linear with given tolerance.

Parameters
----------
aPoints: TColgp_Array1OfPnt
tolerance: float

Returns
-------
Deviation: float
") IsLinear;
		static Standard_Boolean IsLinear(const TColgp_Array1OfPnt & aPoints, const Standard_Real tolerance, Standard_Real &OutValue);

		/****************** SetConvType ******************/
		/**** md5 signature: dc5b7fda06c157912253fd5c8fdcffe7 ****/
		%feature("compactdefaultargs") SetConvType;
		%feature("autodoc", "Sets type of convertion.

Parameters
----------
theConvType: GeomConvert_ConvType

Returns
-------
None
") SetConvType;
		void SetConvType(const GeomConvert_ConvType theConvType);

		/****************** SetTarget ******************/
		/**** md5 signature: ea3732f46794fadef2b53622915d7a0a ****/
		%feature("compactdefaultargs") SetTarget;
		%feature("autodoc", "Sets target curve type.

Parameters
----------
theTarget: GeomAbs_CurveType

Returns
-------
None
") SetTarget;
		void SetTarget(const GeomAbs_CurveType theTarget);

};


%extend GeomConvert_CurveToAnaCurve {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/***********************************
* class GeomConvert_FuncConeLSDist *
***********************************/
class GeomConvert_FuncConeLSDist : public math_MultipleVarFunction {
	public:
		/****************** GeomConvert_FuncConeLSDist ******************/
		/**** md5 signature: c18fa0e2e30905df7fa7d871ba339b12 ****/
		%feature("compactdefaultargs") GeomConvert_FuncConeLSDist;
		%feature("autodoc", "Constructor.

Returns
-------
None
") GeomConvert_FuncConeLSDist;
		 GeomConvert_FuncConeLSDist();

		/****************** GeomConvert_FuncConeLSDist ******************/
		/**** md5 signature: 92c3b44800588b998b0bdcce35d8c57d ****/
		%feature("compactdefaultargs") GeomConvert_FuncConeLSDist;
		%feature("autodoc", "No available documentation.

Parameters
----------
thePoints: TColgp_HArray1OfXYZ
theDir: gp_Dir

Returns
-------
None
") GeomConvert_FuncConeLSDist;
		 GeomConvert_FuncConeLSDist(const opencascade::handle<TColgp_HArray1OfXYZ> & thePoints, const gp_Dir & theDir);

		/****************** NbVariables ******************/
		/**** md5 signature: c99b0d96b9b2c7c3fd7890618502162b ****/
		%feature("compactdefaultargs") NbVariables;
		%feature("autodoc", "Number of variables.

Returns
-------
int
") NbVariables;
		Standard_Integer NbVariables();

		/****************** SetDir ******************/
		/**** md5 signature: 1d0b77c139a977d9a07e3e8f20d2c562 ****/
		%feature("compactdefaultargs") SetDir;
		%feature("autodoc", "No available documentation.

Parameters
----------
theDir: gp_Dir

Returns
-------
None
") SetDir;
		void SetDir(const gp_Dir & theDir);

		/****************** SetPoints ******************/
		/**** md5 signature: 4eab7dc5fdb6ba550172fa84344d274b ****/
		%feature("compactdefaultargs") SetPoints;
		%feature("autodoc", "No available documentation.

Parameters
----------
thePoints: TColgp_HArray1OfXYZ

Returns
-------
None
") SetPoints;
		void SetPoints(const opencascade::handle<TColgp_HArray1OfXYZ> & thePoints);

		/****************** Value ******************/
		/**** md5 signature: 785b7201af1c2abaa75ddcb4aefd5f9e ****/
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "Value.

Parameters
----------
X: math_Vector

Returns
-------
F: float
") Value;
		Standard_Boolean Value(const math_Vector & X, Standard_Real &OutValue);

};


%extend GeomConvert_FuncConeLSDist {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/***************************************
* class GeomConvert_FuncCylinderLSDist *
***************************************/
class GeomConvert_FuncCylinderLSDist : public math_MultipleVarFunctionWithGradient {
	public:
		/****************** GeomConvert_FuncCylinderLSDist ******************/
		/**** md5 signature: 9294d6c0e3d8b33feb6b8f55c7f9a765 ****/
		%feature("compactdefaultargs") GeomConvert_FuncCylinderLSDist;
		%feature("autodoc", "Constructor.

Returns
-------
None
") GeomConvert_FuncCylinderLSDist;
		 GeomConvert_FuncCylinderLSDist();

		/****************** GeomConvert_FuncCylinderLSDist ******************/
		/**** md5 signature: c28ebf082656d19dd5bbcd73e94e4d3c ****/
		%feature("compactdefaultargs") GeomConvert_FuncCylinderLSDist;
		%feature("autodoc", "No available documentation.

Parameters
----------
thePoints: TColgp_HArray1OfXYZ
theDir: gp_Dir

Returns
-------
None
") GeomConvert_FuncCylinderLSDist;
		 GeomConvert_FuncCylinderLSDist(const opencascade::handle<TColgp_HArray1OfXYZ> & thePoints, const gp_Dir & theDir);

		/****************** Gradient ******************/
		/**** md5 signature: 3c2c6e3dc1adb80c90a5b990a7bd765e ****/
		%feature("compactdefaultargs") Gradient;
		%feature("autodoc", "Gradient.

Parameters
----------
X: math_Vector
G: math_Vector

Returns
-------
bool
") Gradient;
		Standard_Boolean Gradient(const math_Vector & X, math_Vector & G);

		/****************** NbVariables ******************/
		/**** md5 signature: c99b0d96b9b2c7c3fd7890618502162b ****/
		%feature("compactdefaultargs") NbVariables;
		%feature("autodoc", "Number of variables.

Returns
-------
int
") NbVariables;
		Standard_Integer NbVariables();

		/****************** SetDir ******************/
		/**** md5 signature: 1d0b77c139a977d9a07e3e8f20d2c562 ****/
		%feature("compactdefaultargs") SetDir;
		%feature("autodoc", "No available documentation.

Parameters
----------
theDir: gp_Dir

Returns
-------
None
") SetDir;
		void SetDir(const gp_Dir & theDir);

		/****************** SetPoints ******************/
		/**** md5 signature: 4eab7dc5fdb6ba550172fa84344d274b ****/
		%feature("compactdefaultargs") SetPoints;
		%feature("autodoc", "No available documentation.

Parameters
----------
thePoints: TColgp_HArray1OfXYZ

Returns
-------
None
") SetPoints;
		void SetPoints(const opencascade::handle<TColgp_HArray1OfXYZ> & thePoints);

		/****************** Value ******************/
		/**** md5 signature: 785b7201af1c2abaa75ddcb4aefd5f9e ****/
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "Value.

Parameters
----------
X: math_Vector

Returns
-------
F: float
") Value;
		Standard_Boolean Value(const math_Vector & X, Standard_Real &OutValue);

		/****************** Values ******************/
		/**** md5 signature: f0f16d7b5e9269bb29d01310f0af0e74 ****/
		%feature("compactdefaultargs") Values;
		%feature("autodoc", "Value and gradient.

Parameters
----------
X: math_Vector
G: math_Vector

Returns
-------
F: float
") Values;
		Standard_Boolean Values(const math_Vector & X, Standard_Real &OutValue, math_Vector & G);

};


%extend GeomConvert_FuncCylinderLSDist {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*************************************
* class GeomConvert_FuncSphereLSDist *
*************************************/
class GeomConvert_FuncSphereLSDist : public math_MultipleVarFunctionWithGradient {
	public:
		/****************** GeomConvert_FuncSphereLSDist ******************/
		/**** md5 signature: ecd22e69071f4a915806374c28120477 ****/
		%feature("compactdefaultargs") GeomConvert_FuncSphereLSDist;
		%feature("autodoc", "Constructor.

Returns
-------
None
") GeomConvert_FuncSphereLSDist;
		 GeomConvert_FuncSphereLSDist();

		/****************** GeomConvert_FuncSphereLSDist ******************/
		/**** md5 signature: fda9d28bcb623805c42baa638f23890c ****/
		%feature("compactdefaultargs") GeomConvert_FuncSphereLSDist;
		%feature("autodoc", "No available documentation.

Parameters
----------
thePoints: TColgp_HArray1OfXYZ

Returns
-------
None
") GeomConvert_FuncSphereLSDist;
		 GeomConvert_FuncSphereLSDist(const opencascade::handle<TColgp_HArray1OfXYZ> & thePoints);

		/****************** Gradient ******************/
		/**** md5 signature: 3c2c6e3dc1adb80c90a5b990a7bd765e ****/
		%feature("compactdefaultargs") Gradient;
		%feature("autodoc", "Gradient.

Parameters
----------
X: math_Vector
G: math_Vector

Returns
-------
bool
") Gradient;
		Standard_Boolean Gradient(const math_Vector & X, math_Vector & G);

		/****************** NbVariables ******************/
		/**** md5 signature: c99b0d96b9b2c7c3fd7890618502162b ****/
		%feature("compactdefaultargs") NbVariables;
		%feature("autodoc", "Number of variables.

Returns
-------
int
") NbVariables;
		Standard_Integer NbVariables();

		/****************** SetPoints ******************/
		/**** md5 signature: 4eab7dc5fdb6ba550172fa84344d274b ****/
		%feature("compactdefaultargs") SetPoints;
		%feature("autodoc", "No available documentation.

Parameters
----------
thePoints: TColgp_HArray1OfXYZ

Returns
-------
None
") SetPoints;
		void SetPoints(const opencascade::handle<TColgp_HArray1OfXYZ> & thePoints);

		/****************** Value ******************/
		/**** md5 signature: 785b7201af1c2abaa75ddcb4aefd5f9e ****/
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "Value.

Parameters
----------
X: math_Vector

Returns
-------
F: float
") Value;
		Standard_Boolean Value(const math_Vector & X, Standard_Real &OutValue);

		/****************** Values ******************/
		/**** md5 signature: f0f16d7b5e9269bb29d01310f0af0e74 ****/
		%feature("compactdefaultargs") Values;
		%feature("autodoc", "Value and gradient.

Parameters
----------
X: math_Vector
G: math_Vector

Returns
-------
F: float
") Values;
		Standard_Boolean Values(const math_Vector & X, Standard_Real &OutValue, math_Vector & G);

};


%extend GeomConvert_FuncSphereLSDist {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**********************************
* class GeomConvert_SurfToAnaSurf *
**********************************/
class GeomConvert_SurfToAnaSurf {
	public:
		/****************** GeomConvert_SurfToAnaSurf ******************/
		/**** md5 signature: bdd7948b4c741cf42bf7406c87cb003b ****/
		%feature("compactdefaultargs") GeomConvert_SurfToAnaSurf;
		%feature("autodoc", "No available documentation.

Returns
-------
None
") GeomConvert_SurfToAnaSurf;
		 GeomConvert_SurfToAnaSurf();

		/****************** GeomConvert_SurfToAnaSurf ******************/
		/**** md5 signature: a26e73f3d11a0e1e50ab31901a426539 ****/
		%feature("compactdefaultargs") GeomConvert_SurfToAnaSurf;
		%feature("autodoc", "No available documentation.

Parameters
----------
S: Geom_Surface

Returns
-------
None
") GeomConvert_SurfToAnaSurf;
		 GeomConvert_SurfToAnaSurf(const opencascade::handle<Geom_Surface> & S);

		/****************** ConvertToAnalytical ******************/
		/**** md5 signature: e57ac2326fa470e5e6cce2c0710d834d ****/
		%feature("compactdefaultargs") ConvertToAnalytical;
		%feature("autodoc", "Tries to convert the surface to an analytic form returns the result in case of failure, returns a null handle //!.

Parameters
----------
InitialToler: float

Returns
-------
opencascade::handle<Geom_Surface>
") ConvertToAnalytical;
		opencascade::handle<Geom_Surface> ConvertToAnalytical(const Standard_Real InitialToler);

		/****************** ConvertToAnalytical ******************/
		/**** md5 signature: 33b00422234d22dc8293f4611ee298de ****/
		%feature("compactdefaultargs") ConvertToAnalytical;
		%feature("autodoc", "No available documentation.

Parameters
----------
InitialToler: float
Umin: float
Umax: float
Vmin: float
Vmax: float

Returns
-------
opencascade::handle<Geom_Surface>
") ConvertToAnalytical;
		opencascade::handle<Geom_Surface> ConvertToAnalytical(const Standard_Real InitialToler, const Standard_Real Umin, const Standard_Real Umax, const Standard_Real Vmin, const Standard_Real Vmax);

		/****************** Gap ******************/
		/**** md5 signature: ff26c000138f3c6675ca82e0935201b1 ****/
		%feature("compactdefaultargs") Gap;
		%feature("autodoc", "Returns maximal deviation of converted surface from the original one computed by last call to converttoanalytical.

Returns
-------
float
") Gap;
		Standard_Real Gap();

		/****************** Init ******************/
		/**** md5 signature: ae778074c5c355f705c26cfe08f002f6 ****/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "No available documentation.

Parameters
----------
S: Geom_Surface

Returns
-------
None
") Init;
		void Init(const opencascade::handle<Geom_Surface> & S);

		/****************** IsCanonical ******************/
		/**** md5 signature: 65430f5df436025e37dd842c4efa5212 ****/
		%feature("compactdefaultargs") IsCanonical;
		%feature("autodoc", "Returns true, if surface is canonical.

Parameters
----------
S: Geom_Surface

Returns
-------
bool
") IsCanonical;
		static Standard_Boolean IsCanonical(const opencascade::handle<Geom_Surface> & S);

		/****************** IsSame ******************/
		/**** md5 signature: 349e0ba479554f88945ea67ac1ab3569 ****/
		%feature("compactdefaultargs") IsSame;
		%feature("autodoc", "Returns true if surfaces is same with the given tolerance.

Parameters
----------
S1: Geom_Surface
S2: Geom_Surface
tol: float

Returns
-------
bool
") IsSame;
		static Standard_Boolean IsSame(const opencascade::handle<Geom_Surface> & S1, const opencascade::handle<Geom_Surface> & S2, const Standard_Real tol);

		/****************** SetConvType ******************/
		/**** md5 signature: 03bbc5678dadf68c699f6a038fd4fd40 ****/
		%feature("compactdefaultargs") SetConvType;
		%feature("autodoc", "No available documentation.

Parameters
----------
theConvType: GeomConvert_ConvType,optional
	default value is GeomConvert_Simplest

Returns
-------
None
") SetConvType;
		void SetConvType(const GeomConvert_ConvType theConvType = GeomConvert_Simplest);

		/****************** SetTarget ******************/
		/**** md5 signature: 78977fc6a03db0963d60bdba17618653 ****/
		%feature("compactdefaultargs") SetTarget;
		%feature("autodoc", "No available documentation.

Parameters
----------
theSurfType: GeomAbs_SurfaceType,optional
	default value is GeomAbs_Plane

Returns
-------
None
") SetTarget;
		void SetTarget(const GeomAbs_SurfaceType theSurfType = GeomAbs_Plane);

};


%extend GeomConvert_SurfToAnaSurf {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**************************
* class GeomConvert_Units *
**************************/
class GeomConvert_Units {
	public:
		/****************** DegreeToRadian ******************/
		/**** md5 signature: 69ed7e606bb67cc6d9c8165770462427 ****/
		%feature("compactdefaultargs") DegreeToRadian;
		%feature("autodoc", "Convert 2d curve for change angle unit from degree to radian.

Parameters
----------
theCurve: Geom2d_Curve
theSurface: Geom_Surface
theLengthFactor: float
theFactorRadianDegree: float

Returns
-------
opencascade::handle<Geom2d_Curve>
") DegreeToRadian;
		static opencascade::handle<Geom2d_Curve> DegreeToRadian(const opencascade::handle<Geom2d_Curve> & theCurve, const opencascade::handle<Geom_Surface> & theSurface, const Standard_Real theLengthFactor, const Standard_Real theFactorRadianDegree);

		/****************** MirrorPCurve ******************/
		/**** md5 signature: 96315e1e393b6c68ef42cbc8bec665c6 ****/
		%feature("compactdefaultargs") MirrorPCurve;
		%feature("autodoc", "Return 2d curve as 'mirror' for given.

Parameters
----------
theCurve: Geom2d_Curve

Returns
-------
opencascade::handle<Geom2d_Curve>
") MirrorPCurve;
		static opencascade::handle<Geom2d_Curve> MirrorPCurve(const opencascade::handle<Geom2d_Curve> & theCurve);

		/****************** RadianToDegree ******************/
		/**** md5 signature: 97864706bc2811ff080d2cdd739d339c ****/
		%feature("compactdefaultargs") RadianToDegree;
		%feature("autodoc", "Convert 2d curve for change angle unit from radian to degree .

Parameters
----------
theCurve: Geom2d_Curve
theSurface: Geom_Surface
theLengthFactor: float
theFactorRadianDegree: float

Returns
-------
opencascade::handle<Geom2d_Curve>
") RadianToDegree;
		static opencascade::handle<Geom2d_Curve> RadianToDegree(const opencascade::handle<Geom2d_Curve> & theCurve, const opencascade::handle<Geom_Surface> & theSurface, const Standard_Real theLengthFactor, const Standard_Real theFactorRadianDegree);

};


%extend GeomConvert_Units {
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
def geomconvert_C0BSplineToArrayOfC1BSplineCurve(*args):
	return geomconvert.C0BSplineToArrayOfC1BSplineCurve(*args)

@deprecated
def geomconvert_C0BSplineToArrayOfC1BSplineCurve(*args):
	return geomconvert.C0BSplineToArrayOfC1BSplineCurve(*args)

@deprecated
def geomconvert_C0BSplineToC1BSplineCurve(*args):
	return geomconvert.C0BSplineToC1BSplineCurve(*args)

@deprecated
def geomconvert_ConcatC1(*args):
	return geomconvert.ConcatC1(*args)

@deprecated
def geomconvert_ConcatC1(*args):
	return geomconvert.ConcatC1(*args)

@deprecated
def geomconvert_ConcatG1(*args):
	return geomconvert.ConcatG1(*args)

@deprecated
def geomconvert_CurveToBSplineCurve(*args):
	return geomconvert.CurveToBSplineCurve(*args)

@deprecated
def geomconvert_SplitBSplineCurve(*args):
	return geomconvert.SplitBSplineCurve(*args)

@deprecated
def geomconvert_SplitBSplineCurve(*args):
	return geomconvert.SplitBSplineCurve(*args)

@deprecated
def geomconvert_SplitBSplineSurface(*args):
	return geomconvert.SplitBSplineSurface(*args)

@deprecated
def geomconvert_SplitBSplineSurface(*args):
	return geomconvert.SplitBSplineSurface(*args)

@deprecated
def geomconvert_SplitBSplineSurface(*args):
	return geomconvert.SplitBSplineSurface(*args)

@deprecated
def geomconvert_SplitBSplineSurface(*args):
	return geomconvert.SplitBSplineSurface(*args)

@deprecated
def geomconvert_SurfaceToBSplineSurface(*args):
	return geomconvert.SurfaceToBSplineSurface(*args)

@deprecated
def GeomConvert_CurveToAnaCurve_ComputeCircle(*args):
	return GeomConvert_CurveToAnaCurve.ComputeCircle(*args)

@deprecated
def GeomConvert_CurveToAnaCurve_ComputeCurve(*args):
	return GeomConvert_CurveToAnaCurve.ComputeCurve(*args)

@deprecated
def GeomConvert_CurveToAnaCurve_ComputeEllipse(*args):
	return GeomConvert_CurveToAnaCurve.ComputeEllipse(*args)

@deprecated
def GeomConvert_CurveToAnaCurve_ComputeLine(*args):
	return GeomConvert_CurveToAnaCurve.ComputeLine(*args)

@deprecated
def GeomConvert_CurveToAnaCurve_GetCircle(*args):
	return GeomConvert_CurveToAnaCurve.GetCircle(*args)

@deprecated
def GeomConvert_CurveToAnaCurve_GetLine(*args):
	return GeomConvert_CurveToAnaCurve.GetLine(*args)

@deprecated
def GeomConvert_CurveToAnaCurve_IsLinear(*args):
	return GeomConvert_CurveToAnaCurve.IsLinear(*args)

@deprecated
def GeomConvert_SurfToAnaSurf_IsCanonical(*args):
	return GeomConvert_SurfToAnaSurf.IsCanonical(*args)

@deprecated
def GeomConvert_SurfToAnaSurf_IsSame(*args):
	return GeomConvert_SurfToAnaSurf.IsSame(*args)

@deprecated
def GeomConvert_Units_DegreeToRadian(*args):
	return GeomConvert_Units.DegreeToRadian(*args)

@deprecated
def GeomConvert_Units_MirrorPCurve(*args):
	return GeomConvert_Units.MirrorPCurve(*args)

@deprecated
def GeomConvert_Units_RadianToDegree(*args):
	return GeomConvert_Units.RadianToDegree(*args)

}
