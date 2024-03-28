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
%define GEOMLIBDOCSTRING
"GeomLib module, see official documentation at
https://www.opencascade.com/doc/occt-7.7.0/refman/html/package_geomlib.html"
%enddef
%module (package="OCC.Core", docstring=GEOMLIBDOCSTRING) GeomLib


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
#include<GeomLib_module.hxx>

//Dependencies
#include<Standard_module.hxx>
#include<NCollection_module.hxx>
#include<Geom_module.hxx>
#include<gp_module.hxx>
#include<TColgp_module.hxx>
#include<Adaptor3d_module.hxx>
#include<GeomAbs_module.hxx>
#include<TColStd_module.hxx>
#include<Geom2d_module.hxx>
#include<Adaptor2d_module.hxx>
#include<math_module.hxx>
#include<AdvApprox_module.hxx>
#include<Geom2dAdaptor_module.hxx>
#include<PLib_module.hxx>
#include<Adaptor2d_module.hxx>
#include<Precision_module.hxx>
#include<Message_module.hxx>
#include<TColgp_module.hxx>
#include<TColStd_module.hxx>
#include<TCollection_module.hxx>
#include<Storage_module.hxx>
%};
%import Standard.i
%import NCollection.i
%import Geom.i
%import gp.i
%import TColgp.i
%import Adaptor3d.i
%import GeomAbs.i
%import TColStd.i
%import Geom2d.i
%import Adaptor2d.i
%import math.i
%import AdvApprox.i
%import Geom2dAdaptor.i

%pythoncode {
from enum import IntEnum
from OCC.Core.Exception import *
};

/* public enums */
enum GeomLib_InterpolationErrors {
	GeomLib_NoError = 0,
	GeomLib_NotEnoughtPoints = 1,
	GeomLib_DegreeSmallerThan3 = 2,
	GeomLib_InversionProblem = 3,
};

/* end public enums declaration */

/* python proxy classes for enums */
%pythoncode {

class GeomLib_InterpolationErrors(IntEnum):
	GeomLib_NoError = 0
	GeomLib_NotEnoughtPoints = 1
	GeomLib_DegreeSmallerThan3 = 2
	GeomLib_InversionProblem = 3
GeomLib_NoError = GeomLib_InterpolationErrors.GeomLib_NoError
GeomLib_NotEnoughtPoints = GeomLib_InterpolationErrors.GeomLib_NotEnoughtPoints
GeomLib_DegreeSmallerThan3 = GeomLib_InterpolationErrors.GeomLib_DegreeSmallerThan3
GeomLib_InversionProblem = GeomLib_InterpolationErrors.GeomLib_InversionProblem
};
/* end python proxy for enums */

/* handles */
/* end handles declaration */

/* templates */
%template(GeomLib_Array1OfMat) NCollection_Array1<gp_Mat>;

%extend NCollection_Array1<gp_Mat> {
    %pythoncode {
    def __getitem__(self, index):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            return self.Value(index + self.Lower())

    def __setitem__(self, index, value):
        if index + self.Lower() > self.Upper():
            raise IndexError("index out of range")
        else:
            self.SetValue(index + self.Lower(), value)

    def __len__(self):
        return self.Length()

    def __iter__(self):
        self.low = self.Lower()
        self.up = self.Upper()
        self.current = self.Lower() - 1
        return self

    def next(self):
        if self.current >= self.Upper():
            raise StopIteration
        else:
            self.current += 1
        return self.Value(self.current)

    __next__ = next
    }
};
/* end templates declaration */

/* typedefs */
typedef class Adaptor2d_Curve2d Adaptor2d_Curve2d;
typedef NCollection_Array1<gp_Mat> GeomLib_Array1OfMat;
typedef GeomLib_DenominatorMultiplier * GeomLib_DenominatorMultiplierPtr;
/* end typedefs declaration */

/****************
* class GeomLib *
****************/
%rename(geomlib) GeomLib;
class GeomLib {
	public:
		/****************** AdjustExtremity ******************/
		/**** md5 signature: 9a3ee1a8642d7491cdc212f08decd57b ****/
		%feature("compactdefaultargs") AdjustExtremity;
		%feature("autodoc", "
Parameters
----------
Curve: Geom_BoundedCurve
P1: gp_Pnt
P2: gp_Pnt
T1: gp_Vec
T2: gp_Vec

Return
-------
None

Description
-----------
No available documentation.
") AdjustExtremity;
		static void AdjustExtremity(opencascade::handle<Geom_BoundedCurve> & Curve, const gp_Pnt & P1, const gp_Pnt & P2, const gp_Vec & T1, const gp_Vec & T2);

		/****************** AxeOfInertia ******************/
		/**** md5 signature: d1005fa9351323938f45502f282f13ad ****/
		%feature("compactdefaultargs") AxeOfInertia;
		%feature("autodoc", "
Parameters
----------
Points: TColgp_Array1OfPnt
Axe: gp_Ax2
Tol: float (optional, default to 1.0e-7)

Return
-------
IsSingular: bool

Description
-----------
Compute axes of inertia, of some points -- -- -- <axe>.location() is the barycentre -- -- -- -- -- <axe>.xdirection is the axe of upper inertia -- -- -- -- <axe>.direction is the normal to the average plane -- -- -- issingular is true if points are on line -- tol is used to determine singular cases.
") AxeOfInertia;
		static void AxeOfInertia(const TColgp_Array1OfPnt & Points, gp_Ax2 & Axe, Standard_Boolean &OutValue, const Standard_Real Tol = 1.0e-7);

		/****************** BuildCurve3d ******************/
		/**** md5 signature: 83a1a963be2cecc38bea1c9d7b4cd7f1 ****/
		%feature("compactdefaultargs") BuildCurve3d;
		%feature("autodoc", "
Parameters
----------
Tolerance: float
CurvePtr: Adaptor3d_CurveOnSurface
FirstParameter: float
LastParameter: float
NewCurvePtr: Geom_Curve
Continuity: GeomAbs_Shape (optional, default to GeomAbs_C1)
MaxDegree: int (optional, default to 14)
MaxSegment: int (optional, default to 30)

Return
-------
MaxDeviation: float
AverageDeviation: float

Description
-----------
No available documentation.
") BuildCurve3d;
		static void BuildCurve3d(const Standard_Real Tolerance, Adaptor3d_CurveOnSurface & CurvePtr, const Standard_Real FirstParameter, const Standard_Real LastParameter, opencascade::handle<Geom_Curve> & NewCurvePtr, Standard_Real &OutValue, Standard_Real &OutValue, const GeomAbs_Shape Continuity = GeomAbs_C1, const Standard_Integer MaxDegree = 14, const Standard_Integer MaxSegment = 30);

		/****************** CancelDenominatorDerivative ******************/
		/**** md5 signature: b1394cc1fa88b83b1e70a1006cce9d30 ****/
		%feature("compactdefaultargs") CancelDenominatorDerivative;
		%feature("autodoc", "
Parameters
----------
BSurf: Geom_BSplineSurface
UDirection: bool
VDirection: bool

Return
-------
None

Description
-----------
Cancel,on the boundaries,the denominator first derivative in the directions wished by the user and set its value to 1.
") CancelDenominatorDerivative;
		static void CancelDenominatorDerivative(opencascade::handle<Geom_BSplineSurface> & BSurf, const Standard_Boolean UDirection, const Standard_Boolean VDirection);

		/****************** DensifyArray1OfReal ******************/
		/**** md5 signature: 43f11ff73c38c46e4086373efbc332b9 ****/
		%feature("compactdefaultargs") DensifyArray1OfReal;
		%feature("autodoc", "
Parameters
----------
MinNumPoints: int
InParameters: TColStd_Array1OfReal
OutParameters: TColStd_HArray1OfReal

Return
-------
None

Description
-----------
This makes sure that there is at least minnumpoints in outparameters taking into account the parameters in the inparameters array provided those are in order, that is the sequence of real in the inparameter is strictly non decreasing.
") DensifyArray1OfReal;
		static void DensifyArray1OfReal(const Standard_Integer MinNumPoints, const TColStd_Array1OfReal & InParameters, opencascade::handle<TColStd_HArray1OfReal> & OutParameters);

		/****************** EvalMaxDistanceAlongParameter ******************/
		/**** md5 signature: de42bb38ce6c9358ba871ec80228c62c ****/
		%feature("compactdefaultargs") EvalMaxDistanceAlongParameter;
		%feature("autodoc", "
Parameters
----------
Curve: Adaptor3d_Curve
AReferenceCurve: Adaptor3d_Curve
Tolerance: float
Parameters: TColStd_Array1OfReal

Return
-------
MaxDistance: float

Description
-----------
This will compute the maximum distance at the parameters given in the parameters array by projecting from the curve to the reference curve and taking the minimum distance than the maximum will be taken on those minimas.
") EvalMaxDistanceAlongParameter;
		static void EvalMaxDistanceAlongParameter(const Adaptor3d_Curve & Curve, const Adaptor3d_Curve & AReferenceCurve, const Standard_Real Tolerance, const TColStd_Array1OfReal & Parameters, Standard_Real &OutValue);

		/****************** EvalMaxParametricDistance ******************/
		/**** md5 signature: 61958b9521312ed5aa01cd3d4a2eb797 ****/
		%feature("compactdefaultargs") EvalMaxParametricDistance;
		%feature("autodoc", "
Parameters
----------
Curve: Adaptor3d_Curve
AReferenceCurve: Adaptor3d_Curve
Tolerance: float
Parameters: TColStd_Array1OfReal

Return
-------
MaxDistance: float

Description
-----------
This will compute the maximum distance at the parameters given in the parameters array by evaluating each parameter the two curves and taking the maximum of the evaluated distance.
") EvalMaxParametricDistance;
		static void EvalMaxParametricDistance(const Adaptor3d_Curve & Curve, const Adaptor3d_Curve & AReferenceCurve, const Standard_Real Tolerance, const TColStd_Array1OfReal & Parameters, Standard_Real &OutValue);

		/****************** ExtendCurveToPoint ******************/
		/**** md5 signature: da917893f09b866ded14d5fbb4b8b091 ****/
		%feature("compactdefaultargs") ExtendCurveToPoint;
		%feature("autodoc", "
Parameters
----------
Curve: Geom_BoundedCurve
Point: gp_Pnt
Cont: int
After: bool

Return
-------
None

Description
-----------
Extends the bounded curve curve to the point point. the extension is built: - at the end of the curve if after equals true, or - at the beginning of the curve if after equals false. the extension is performed according to a degree of continuity equal to cont, which in its turn must be equal to 1, 2 or 3. this function converts the bounded curve curve into a bspline curve. warning - nothing is done, and curve is not modified if cont is not equal to 1, 2 or 3. - it is recommended that the extension should not be too large with respect to the size of the bounded curve curve: point must not be located too far from one of the extremities of curve.
") ExtendCurveToPoint;
		static void ExtendCurveToPoint(opencascade::handle<Geom_BoundedCurve> & Curve, const gp_Pnt & Point, const Standard_Integer Cont, const Standard_Boolean After);

		/****************** ExtendSurfByLength ******************/
		/**** md5 signature: b0a546ee9afa07835a329d655769cce9 ****/
		%feature("compactdefaultargs") ExtendSurfByLength;
		%feature("autodoc", "
Parameters
----------
Surf: Geom_BoundedSurface
Length: float
Cont: int
InU: bool
After: bool

Return
-------
None

Description
-----------
Extends the bounded surface surf along one of its boundaries. the chord length of the extension is equal to length. the direction of the extension is given as: - the u parametric direction of surf, if inu equals true, or - the v parametric direction of surf, if inu equals false. in this parametric direction, the extension is built on the side of: - the last parameter of surf, if after equals true, or - the first parameter of surf, if after equals false. the extension is performed according to a degree of continuity equal to cont, which in its turn must be equal to 1, 2 or 3. this function converts the bounded surface surf into a bspline surface. warning - nothing is done, and surf is not modified if cont is not equal to 1, 2 or 3. - it is recommended that length, the size of the extension should not be too large with respect to the size of the bounded surface surf. - surf must not be a periodic bspline surface in the parametric direction corresponding to the direction of extension.
") ExtendSurfByLength;
		static void ExtendSurfByLength(opencascade::handle<Geom_BoundedSurface> & Surf, const Standard_Real Length, const Standard_Integer Cont, const Standard_Boolean InU, const Standard_Boolean After);

		/****************** FuseIntervals ******************/
		/**** md5 signature: efc42f578764e9ffd35ac0aa960924c5 ****/
		%feature("compactdefaultargs") FuseIntervals;
		%feature("autodoc", "
Parameters
----------
Interval1: TColStd_Array1OfReal
Interval2: TColStd_Array1OfReal
Fusion: TColStd_SequenceOfReal
Confusion: float (optional, default to 1.0e-9)
IsAdjustToFirstInterval: bool (optional, default to Standard_False)

Return
-------
None

Description
-----------
This method fuse intervals interval1 and interval2 with specified confusion @param interval1 [in] first interval to fuse @param interval2 [in] second interval to fuse @param confision [in] tolerance to compare intervals @param isadjusttofirstinterval [in] flag to set method of fusion, if intervals are close  if false, intervals are fusing by half-division methdod  if true, intervals are fusing by selecting value from interval1 @param fusion [out] output interval .
") FuseIntervals;
		static void FuseIntervals(const TColStd_Array1OfReal & Interval1, const TColStd_Array1OfReal & Interval2, TColStd_SequenceOfReal & Fusion, const Standard_Real Confusion = 1.0e-9, const Standard_Boolean IsAdjustToFirstInterval = Standard_False);

		/****************** GTransform ******************/
		/**** md5 signature: 8e793303845ac7edd4a76bb5abc12d5f ****/
		%feature("compactdefaultargs") GTransform;
		%feature("autodoc", "
Parameters
----------
Curve: Geom2d_Curve
GTrsf: gp_GTrsf2d

Return
-------
opencascade::handle<Geom2d_Curve>

Description
-----------
Computes the curve 3d from package geom corresponding to the curve 3d from package geom, transformed with the transformation <gtrsf> warning: this method may return a null handle if it's impossible to compute the transformation of a curve. it's not implemented when: 1) the curve is an infinite parabola or hyperbola 2) the curve is an offsetcurve.
") GTransform;
		static opencascade::handle<Geom2d_Curve> GTransform(const opencascade::handle<Geom2d_Curve> & Curve, const gp_GTrsf2d & GTrsf);

		/****************** Inertia ******************/
		/**** md5 signature: 0cfbab9df00372ef7059361fbb0e5866 ****/
		%feature("compactdefaultargs") Inertia;
		%feature("autodoc", "
Parameters
----------
Points: TColgp_Array1OfPnt
Bary: gp_Pnt
XDir: gp_Dir
YDir: gp_Dir

Return
-------
Xgap: float
YGap: float
ZGap: float

Description
-----------
Compute principale axes of inertia, and dispersion value of some points.
") Inertia;
		static void Inertia(const TColgp_Array1OfPnt & Points, gp_Pnt & Bary, gp_Dir & XDir, gp_Dir & YDir, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

		/****************** IsBSplUClosed ******************/
		/**** md5 signature: ff53cf2ed314b37ae0c8810e5f20c1db ****/
		%feature("compactdefaultargs") IsBSplUClosed;
		%feature("autodoc", "
Parameters
----------
S: Geom_BSplineSurface
U1: float
U2: float
Tol: float

Return
-------
bool

Description
-----------
Returns true if the poles of u1 isoline and the poles of u2 isoline of surface are identical according to tolerance criterion. for rational surfaces weights(i)*poles(i) are checked.
") IsBSplUClosed;
		static Standard_Boolean IsBSplUClosed(const opencascade::handle<Geom_BSplineSurface> & S, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);

		/****************** IsBSplVClosed ******************/
		/**** md5 signature: 27d3f9e218ca02cb67fbe5765b1e6e4d ****/
		%feature("compactdefaultargs") IsBSplVClosed;
		%feature("autodoc", "
Parameters
----------
S: Geom_BSplineSurface
V1: float
V2: float
Tol: float

Return
-------
bool

Description
-----------
Returns true if the poles of v1 isoline and the poles of v2 isoline of surface are identical according to tolerance criterion. for rational surfaces weights(i)*poles(i) are checked.
") IsBSplVClosed;
		static Standard_Boolean IsBSplVClosed(const opencascade::handle<Geom_BSplineSurface> & S, const Standard_Real V1, const Standard_Real V2, const Standard_Real Tol);

		/****************** IsBzUClosed ******************/
		/**** md5 signature: 622a3ffc08d564a3d521505e9171bf7b ****/
		%feature("compactdefaultargs") IsBzUClosed;
		%feature("autodoc", "
Parameters
----------
S: Geom_BezierSurface
U1: float
U2: float
Tol: float

Return
-------
bool

Description
-----------
Returns true if the poles of u1 isoline and the poles of u2 isoline of surface are identical according to tolerance criterion.
") IsBzUClosed;
		static Standard_Boolean IsBzUClosed(const opencascade::handle<Geom_BezierSurface> & S, const Standard_Real U1, const Standard_Real U2, const Standard_Real Tol);

		/****************** IsBzVClosed ******************/
		/**** md5 signature: f3942c28915b201c6d1f21053e42bc4a ****/
		%feature("compactdefaultargs") IsBzVClosed;
		%feature("autodoc", "
Parameters
----------
S: Geom_BezierSurface
V1: float
V2: float
Tol: float

Return
-------
bool

Description
-----------
Returns true if the poles of v1 isoline and the poles of v2 isoline of surface are identical according to tolerance criterion.
") IsBzVClosed;
		static Standard_Boolean IsBzVClosed(const opencascade::handle<Geom_BezierSurface> & S, const Standard_Real V1, const Standard_Real V2, const Standard_Real Tol);

		/****************** IsClosed ******************/
		/**** md5 signature: 9d1b9e6c496f79dac31915c0b30131a1 ****/
		%feature("compactdefaultargs") IsClosed;
		%feature("autodoc", "
Parameters
----------
S: Geom_Surface
Tol: float

Return
-------
isUClosed: bool
isVClosed: bool

Description
-----------
This method defines if opposite boundaries of surface coincide with given tolerance.
") IsClosed;
		static void IsClosed(const opencascade::handle<Geom_Surface> & S, const Standard_Real Tol, Standard_Boolean &OutValue, Standard_Boolean &OutValue);

		/****************** NormEstim ******************/
		/**** md5 signature: 6b4a62ec9e633686c228abf462c66161 ****/
		%feature("compactdefaultargs") NormEstim;
		%feature("autodoc", "
Parameters
----------
theSurf: Geom_Surface
theUV: gp_Pnt2d
theTol: float
theNorm: gp_Dir

Return
-------
int

Description
-----------
Estimate surface normal at the given (u, v) point. @param[in] thesurf input surface @param[in] theuv (u, v) point coordinates on the surface @param[in] thetol estimation tolerance @param[out] thenorm computed normal return 0 if normal estimated from d1, 1 if estimated from d2 (quasysingular), >=2 in case of failure (undefined or infinite solutions).
") NormEstim;
		static Standard_Integer NormEstim(const opencascade::handle<Geom_Surface> & theSurf, const gp_Pnt2d & theUV, const Standard_Real theTol, gp_Dir & theNorm);

		/****************** RemovePointsFromArray ******************/
		/**** md5 signature: 8ab10cabc9f24666f30aef7fc0f14871 ****/
		%feature("compactdefaultargs") RemovePointsFromArray;
		%feature("autodoc", "
Parameters
----------
NumPoints: int
InParameters: TColStd_Array1OfReal
OutParameters: TColStd_HArray1OfReal

Return
-------
None

Description
-----------
Warning! this assume that the inparameter is an increasing sequence of real number and it will not check for that: unpredictable result can happen if this is not satisfied. it is the caller responsibility to check for that property. //! this method makes uniform numpoints segments s1,...snumpoints out of the segment defined by the first parameter and the last parameter of the inparameter ; keeps only one point of the inparameters set of parameter in each of the uniform segments taking care of the first and the last parameters. for the ith segment the element of the inparameter is the one that is the first to exceed the midpoint of the segment and to fall before the midpoint of the next segment there will be at the end at most numpoints + 1 if numpoints > 2 in the outparameters array.
") RemovePointsFromArray;
		static void RemovePointsFromArray(const Standard_Integer NumPoints, const TColStd_Array1OfReal & InParameters, opencascade::handle<TColStd_HArray1OfReal> & OutParameters);

		/****************** SameRange ******************/
		/**** md5 signature: 5224cc3d504836cd2430879e51a366ed ****/
		%feature("compactdefaultargs") SameRange;
		%feature("autodoc", "
Parameters
----------
Tolerance: float
Curve2dPtr: Geom2d_Curve
First: float
Last: float
RequestedFirst: float
RequestedLast: float
NewCurve2dPtr: Geom2d_Curve

Return
-------
None

Description
-----------
Make the curve curve2dptr have the imposed range first to list the most economic way, that is if it can change the range without changing the nature of the curve it will try to do that. otherwise it will produce a bspline curve that has the required range.
") SameRange;
		static void SameRange(const Standard_Real Tolerance, const opencascade::handle<Geom2d_Curve> & Curve2dPtr, const Standard_Real First, const Standard_Real Last, const Standard_Real RequestedFirst, const Standard_Real RequestedLast, opencascade::handle<Geom2d_Curve> & NewCurve2dPtr);

		/****************** To3d ******************/
		/**** md5 signature: 78eb89724aa4a24596b24e79e15854e5 ****/
		%feature("compactdefaultargs") To3d;
		%feature("autodoc", "
Parameters
----------
Position: gp_Ax2
Curve2d: Geom2d_Curve

Return
-------
opencascade::handle<Geom_Curve>

Description
-----------
Computes the curve 3d from package geom corresponding to curve 2d from package geom2d, on the plan defined with the local coordinate system position.
") To3d;
		static opencascade::handle<Geom_Curve> To3d(const gp_Ax2 & Position, const opencascade::handle<Geom2d_Curve> & Curve2d);

		/****************** buildC3dOnIsoLine ******************/
		/**** md5 signature: 34e2ad2e5f3a1fe4703a9a1af3a8cfec ****/
		%feature("compactdefaultargs") buildC3dOnIsoLine;
		%feature("autodoc", "
Parameters
----------
theC2D: Adaptor2d_Curve2d
theSurf: Adaptor3d_Surface
theFirst: float
theLast: float
theTolerance: float
theIsU: bool
theParam: float
theIsForward: bool

Return
-------
opencascade::handle<Geom_Curve>

Description
-----------
Builds 3d curve for a isoline. this method takes corresponding isoline from the input surface. @param thec2d trimmed curve to be approximated. @param theisu flag indicating that line is u const. @param theparam line parameter. @param theisforward flag indicating forward parameterization on a isoline. return standard_true when 3d curve is built and standard_false otherwise.
") buildC3dOnIsoLine;
		static opencascade::handle<Geom_Curve> buildC3dOnIsoLine(const opencascade::handle<Adaptor2d_Curve2d> & theC2D, const opencascade::handle<Adaptor3d_Surface> & theSurf, const Standard_Real theFirst, const Standard_Real theLast, const Standard_Real theTolerance, const Standard_Boolean theIsU, const Standard_Real theParam, const Standard_Boolean theIsForward);

		/****************** isIsoLine ******************/
		/**** md5 signature: d9205192a6bfd2810fdf8805b39a01e7 ****/
		%feature("compactdefaultargs") isIsoLine;
		%feature("autodoc", "
Parameters
----------
theC2D: Adaptor2d_Curve2d

Return
-------
theIsU: bool
theParam: float
theIsForward: bool

Description
-----------
Checks whether the 2d curve is a isoline. it can be represented by b-spline, bezier, or geometric line. this line should have natural parameterization. @param thec2d trimmed curve to be checked. @param theisu flag indicating that line is u const. @param theparam line parameter. @param theisforward flag indicating forward parameterization on a isoline. return standard_true when 2d curve is a line and standard_false otherwise.
") isIsoLine;
		static Standard_Boolean isIsoLine(const opencascade::handle<Adaptor2d_Curve2d> & theC2D, Standard_Boolean &OutValue, Standard_Real &OutValue, Standard_Boolean &OutValue);

};


%extend GeomLib {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/************************************
* class GeomLib_Check2dBSplineCurve *
************************************/
class GeomLib_Check2dBSplineCurve {
	public:
		/****************** GeomLib_Check2dBSplineCurve ******************/
		/**** md5 signature: e40a7c98ea15f40179291778f21678d8 ****/
		%feature("compactdefaultargs") GeomLib_Check2dBSplineCurve;
		%feature("autodoc", "
Parameters
----------
Curve: Geom2d_BSplineCurve
Tolerance: float
AngularTolerance: float

Return
-------
None

Description
-----------
No available documentation.
") GeomLib_Check2dBSplineCurve;
		 GeomLib_Check2dBSplineCurve(const opencascade::handle<Geom2d_BSplineCurve> & Curve, const Standard_Real Tolerance, const Standard_Real AngularTolerance);

		/****************** FixTangent ******************/
		/**** md5 signature: aba9c8b737c142e5e7fde1f0d372589b ****/
		%feature("compactdefaultargs") FixTangent;
		%feature("autodoc", "
Parameters
----------
FirstFlag: bool
LastFlag: bool

Return
-------
None

Description
-----------
No available documentation.
") FixTangent;
		void FixTangent(const Standard_Boolean FirstFlag, const Standard_Boolean LastFlag);

		/****************** FixedTangent ******************/
		/**** md5 signature: 5dc05cb83b7c97b49b407c4343893b91 ****/
		%feature("compactdefaultargs") FixedTangent;
		%feature("autodoc", "
Parameters
----------
FirstFlag: bool
LastFlag: bool

Return
-------
opencascade::handle<Geom2d_BSplineCurve>

Description
-----------
Modifies the curve by fixing the first or the last tangencies //! if index3d not in the range [1,nb3dspaces] if the approx is not done.
") FixedTangent;
		opencascade::handle<Geom2d_BSplineCurve> FixedTangent(const Standard_Boolean FirstFlag, const Standard_Boolean LastFlag);

		/****************** IsDone ******************/
		/**** md5 signature: ec0624071ec7da54b3d9dacc7bcb05f9 ****/
		%feature("compactdefaultargs") IsDone;
		%feature("autodoc", "Return
-------
bool

Description
-----------
No available documentation.
") IsDone;
		Standard_Boolean IsDone();

		/****************** NeedTangentFix ******************/
		/**** md5 signature: 13f77634737df6d7a42a0d49fb74f641 ****/
		%feature("compactdefaultargs") NeedTangentFix;
		%feature("autodoc", "
Parameters
----------

Return
-------
FirstFlag: bool
SecondFlag: bool

Description
-----------
No available documentation.
") NeedTangentFix;
		void NeedTangentFix(Standard_Boolean &OutValue, Standard_Boolean &OutValue);

};


%extend GeomLib_Check2dBSplineCurve {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**********************************
* class GeomLib_CheckBSplineCurve *
**********************************/
class GeomLib_CheckBSplineCurve {
	public:
		/****************** GeomLib_CheckBSplineCurve ******************/
		/**** md5 signature: 9f45243dc9a3f3b8ce0bef4793d52f9f ****/
		%feature("compactdefaultargs") GeomLib_CheckBSplineCurve;
		%feature("autodoc", "
Parameters
----------
Curve: Geom_BSplineCurve
Tolerance: float
AngularTolerance: float

Return
-------
None

Description
-----------
No available documentation.
") GeomLib_CheckBSplineCurve;
		 GeomLib_CheckBSplineCurve(const opencascade::handle<Geom_BSplineCurve> & Curve, const Standard_Real Tolerance, const Standard_Real AngularTolerance);

		/****************** FixTangent ******************/
		/**** md5 signature: aba9c8b737c142e5e7fde1f0d372589b ****/
		%feature("compactdefaultargs") FixTangent;
		%feature("autodoc", "
Parameters
----------
FirstFlag: bool
LastFlag: bool

Return
-------
None

Description
-----------
No available documentation.
") FixTangent;
		void FixTangent(const Standard_Boolean FirstFlag, const Standard_Boolean LastFlag);

		/****************** FixedTangent ******************/
		/**** md5 signature: ed8852a7619ceea7dcb33d8ad51d6808 ****/
		%feature("compactdefaultargs") FixedTangent;
		%feature("autodoc", "
Parameters
----------
FirstFlag: bool
LastFlag: bool

Return
-------
opencascade::handle<Geom_BSplineCurve>

Description
-----------
Modifies the curve by fixing the first or the last tangencies //! if index3d not in the range [1,nb3dspaces] if the approx is not done.
") FixedTangent;
		opencascade::handle<Geom_BSplineCurve> FixedTangent(const Standard_Boolean FirstFlag, const Standard_Boolean LastFlag);

		/****************** IsDone ******************/
		/**** md5 signature: ec0624071ec7da54b3d9dacc7bcb05f9 ****/
		%feature("compactdefaultargs") IsDone;
		%feature("autodoc", "Return
-------
bool

Description
-----------
No available documentation.
") IsDone;
		Standard_Boolean IsDone();

		/****************** NeedTangentFix ******************/
		/**** md5 signature: 13f77634737df6d7a42a0d49fb74f641 ****/
		%feature("compactdefaultargs") NeedTangentFix;
		%feature("autodoc", "
Parameters
----------

Return
-------
FirstFlag: bool
SecondFlag: bool

Description
-----------
No available documentation.
") NeedTangentFix;
		void NeedTangentFix(Standard_Boolean &OutValue, Standard_Boolean &OutValue);

};


%extend GeomLib_CheckBSplineCurve {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/************************************
* class GeomLib_CheckCurveOnSurface *
************************************/
class GeomLib_CheckCurveOnSurface {
	public:
		/****************** GeomLib_CheckCurveOnSurface ******************/
		/**** md5 signature: f411d7e872ddc970370879b04bbfec4d ****/
		%feature("compactdefaultargs") GeomLib_CheckCurveOnSurface;
		%feature("autodoc", "Return
-------
None

Description
-----------
Default constructor.
") GeomLib_CheckCurveOnSurface;
		 GeomLib_CheckCurveOnSurface();

		/****************** GeomLib_CheckCurveOnSurface ******************/
		/**** md5 signature: 4c10043862b08450260b336d9ad8391b ****/
		%feature("compactdefaultargs") GeomLib_CheckCurveOnSurface;
		%feature("autodoc", "
Parameters
----------
theCurve: Adaptor3d_Curve
theTolRange: float (optional, default to Precision::PConfusion())

Return
-------
None

Description
-----------
No available documentation.
") GeomLib_CheckCurveOnSurface;
		 GeomLib_CheckCurveOnSurface(const opencascade::handle<Adaptor3d_Curve> & theCurve, const Standard_Real theTolRange = Precision::PConfusion());

		/****************** ErrorStatus ******************/
		/**** md5 signature: 23ccaf4f25108c0b871675cdf964cbf6 ****/
		%feature("compactdefaultargs") ErrorStatus;
		%feature("autodoc", "Return
-------
int

Description
-----------
Returns error status the possible values are: 0 - ok; 1 - null curve or surface or 2d curve; 2 - invalid parametric range; 3 - error in calculations.
") ErrorStatus;
		Standard_Integer ErrorStatus();

		/****************** Init ******************/
		/**** md5 signature: dbe821d8ad3f25ebee5e4d4b5428201c ****/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "
Parameters
----------
theCurve: Adaptor3d_Curve
theTolRange: float (optional, default to Precision::PConfusion())

Return
-------
None

Description
-----------
Sets the data for the algorithm.
") Init;
		void Init(const opencascade::handle<Adaptor3d_Curve> & theCurve, const Standard_Real theTolRange = Precision::PConfusion());

		/****************** Init ******************/
		/**** md5 signature: 0de93ef32c53d091768788dca0e281fd ****/
		%feature("compactdefaultargs") Init;
		%feature("autodoc", "Return
-------
None

Description
-----------
Initializes all members by default values.
") Init;
		void Init();

		/****************** IsDone ******************/
		/**** md5 signature: e385477ab1bec806154173d4a550fd68 ****/
		%feature("compactdefaultargs") IsDone;
		%feature("autodoc", "Return
-------
bool

Description
-----------
Returns true if the max distance has been found.
") IsDone;
		Standard_Boolean IsDone();

		/****************** IsParallel ******************/
		/**** md5 signature: fc1de18a583c6aa3b3d9897c80aa553e ****/
		%feature("compactdefaultargs") IsParallel;
		%feature("autodoc", "Return
-------
bool

Description
-----------
Returns true if parallel flag is set.
") IsParallel;
		Standard_Boolean IsParallel();

		/****************** MaxDistance ******************/
		/**** md5 signature: eb56c1d1489e07dddfaf89c1bd00ff56 ****/
		%feature("compactdefaultargs") MaxDistance;
		%feature("autodoc", "Return
-------
float

Description
-----------
Returns max distance.
") MaxDistance;
		Standard_Real MaxDistance();

		/****************** MaxParameter ******************/
		/**** md5 signature: 23a45560d6d0376bf4b799705df1e0c0 ****/
		%feature("compactdefaultargs") MaxParameter;
		%feature("autodoc", "Return
-------
float

Description
-----------
Returns parameter in which the distance is maximal.
") MaxParameter;
		Standard_Real MaxParameter();

		/****************** Perform ******************/
		/**** md5 signature: c9a9d63797e176cee0499468eb03150c ****/
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "
Parameters
----------
theCurveOnSurface: Adaptor3d_CurveOnSurface

Return
-------
None

Description
-----------
Computes the max distance for the 3d curve <mycurve> and 2d curve <thecurveonsurface> if ismultithread == standard_true then computation will be performed in parallel.
") Perform;
		void Perform(const opencascade::handle<Adaptor3d_CurveOnSurface> & theCurveOnSurface);

		/****************** SetParallel ******************/
		/**** md5 signature: 91c6328a8c6135d4f1f1da7db8aee28f ****/
		%feature("compactdefaultargs") SetParallel;
		%feature("autodoc", "
Parameters
----------
theIsParallel: bool

Return
-------
None

Description
-----------
Sets parallel flag.
") SetParallel;
		void SetParallel(const Standard_Boolean theIsParallel);

};


%extend GeomLib_CheckCurveOnSurface {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**************************************
* class GeomLib_DenominatorMultiplier *
**************************************/
class GeomLib_DenominatorMultiplier {
	public:
		/****************** GeomLib_DenominatorMultiplier ******************/
		/**** md5 signature: 73e22a819881cb9911d7705448642fd5 ****/
		%feature("compactdefaultargs") GeomLib_DenominatorMultiplier;
		%feature("autodoc", "
Parameters
----------
Surface: Geom_BSplineSurface
KnotVector: TColStd_Array1OfReal

Return
-------
None

Description
-----------
If the surface is rational this will define the evaluator of a real function of 2 variables a(u,v) such that if we define a new surface by: a(u,v) * n(u,v) newf(u,v) = ---------------- a(u,v) * d(u,v).
") GeomLib_DenominatorMultiplier;
		 GeomLib_DenominatorMultiplier(const opencascade::handle<Geom_BSplineSurface> & Surface, const TColStd_Array1OfReal & KnotVector);

		/****************** Value ******************/
		/**** md5 signature: 0339676d276c5c3d31d1d9d2fc252cf7 ****/
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "
Parameters
----------
UParameter: float
VParameter: float

Return
-------
float

Description
-----------
Returns the value of a(uparameter,vparameter)= //! h0(uparameter)/denominator(umin,vparameter) //! d denominator(umin,vparameter) - ------------------------------[h1(u)]/(denominator(umin,vparameter)^2) d u //! + h3(uparameter)/denominator(umax,vparameter) //! d denominator(umax,vparameter) - ------------------------------[h2(u)]/(denominator(umax,vparameter)^2) d u.
") Value;
		Standard_Real Value(const Standard_Real UParameter, const Standard_Real VParameter);

};


%extend GeomLib_DenominatorMultiplier {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/****************************
* class GeomLib_Interpolate *
****************************/
class GeomLib_Interpolate {
	public:
		/****************** GeomLib_Interpolate ******************/
		/**** md5 signature: c496f832abfbb89729f6a89aba639f4d ****/
		%feature("compactdefaultargs") GeomLib_Interpolate;
		%feature("autodoc", "
Parameters
----------
Degree: int
NumPoints: int
Points: TColgp_Array1OfPnt
Parameters: TColStd_Array1OfReal

Return
-------
None

Description
-----------
No available documentation.
") GeomLib_Interpolate;
		 GeomLib_Interpolate(const Standard_Integer Degree, const Standard_Integer NumPoints, const TColgp_Array1OfPnt & Points, const TColStd_Array1OfReal & Parameters);

		/****************** Curve ******************/
		/**** md5 signature: 8f61eb8bebb31bbd1fd75a7da450accd ****/
		%feature("compactdefaultargs") Curve;
		%feature("autodoc", "Return
-------
opencascade::handle<Geom_BSplineCurve>

Description
-----------
Returns the interpolated curve of the requested degree.
") Curve;
		opencascade::handle<Geom_BSplineCurve> Curve();

		/****************** Error ******************/
		/**** md5 signature: 53080d5e62dd98fe7c343b04a4237efb ****/
		%feature("compactdefaultargs") Error;
		%feature("autodoc", "Return
-------
GeomLib_InterpolationErrors

Description
-----------
Returns the error type if any.
") Error;
		GeomLib_InterpolationErrors Error();

		/****************** IsDone ******************/
		/**** md5 signature: ec0624071ec7da54b3d9dacc7bcb05f9 ****/
		%feature("compactdefaultargs") IsDone;
		%feature("autodoc", "Return
-------
bool

Description
-----------
Returns if everything went ok.
") IsDone;
		Standard_Boolean IsDone();

};


%extend GeomLib_Interpolate {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/********************************
* class GeomLib_IsPlanarSurface *
********************************/
class GeomLib_IsPlanarSurface {
	public:
		/****************** GeomLib_IsPlanarSurface ******************/
		/**** md5 signature: 07855bbe7af975a9b55076d3f3c62078 ****/
		%feature("compactdefaultargs") GeomLib_IsPlanarSurface;
		%feature("autodoc", "
Parameters
----------
S: Geom_Surface
Tol: float (optional, default to 1.0e-7)

Return
-------
None

Description
-----------
No available documentation.
") GeomLib_IsPlanarSurface;
		 GeomLib_IsPlanarSurface(const opencascade::handle<Geom_Surface> & S, const Standard_Real Tol = 1.0e-7);

		/****************** IsPlanar ******************/
		/**** md5 signature: c4cb6ad82acdd7a7d12e9af1bea21482 ****/
		%feature("compactdefaultargs") IsPlanar;
		%feature("autodoc", "Return
-------
bool

Description
-----------
Return if the surface is a plan.
") IsPlanar;
		Standard_Boolean IsPlanar();

		/****************** Plan ******************/
		/**** md5 signature: 8661274665886e6b8fffe3482c12561c ****/
		%feature("compactdefaultargs") Plan;
		%feature("autodoc", "Return
-------
gp_Pln

Description
-----------
Return the plan definition.
") Plan;
		const gp_Pln Plan();

};


%extend GeomLib_IsPlanarSurface {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/**************************
* class GeomLib_LogSample *
**************************/
class GeomLib_LogSample : public math_FunctionSample {
	public:
		/****************** GeomLib_LogSample ******************/
		/**** md5 signature: 94a57c7775103410d9195f25f3423791 ****/
		%feature("compactdefaultargs") GeomLib_LogSample;
		%feature("autodoc", "
Parameters
----------
A: float
B: float
N: int

Return
-------
None

Description
-----------
No available documentation.
") GeomLib_LogSample;
		 GeomLib_LogSample(const Standard_Real A, const Standard_Real B, const Standard_Integer N);

		/****************** GetParameter ******************/
		/**** md5 signature: 79fe4751892cd989f89d2195c56b4006 ****/
		%feature("compactdefaultargs") GetParameter;
		%feature("autodoc", "
Parameters
----------
Index: int

Return
-------
float

Description
-----------
Returns the value of parameter of the point of range index: a + ((index-1)/(nbpoints-1))*b. an exception is raised if index<=0 or index>nbpoints.
") GetParameter;
		virtual Standard_Real GetParameter(const Standard_Integer Index);

};


%extend GeomLib_LogSample {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/************************************
* class GeomLib_MakeCurvefromApprox *
************************************/
class GeomLib_MakeCurvefromApprox {
	public:
		/****************** GeomLib_MakeCurvefromApprox ******************/
		/**** md5 signature: c60e5ef4c2db5758751274de0fbd9c5b ****/
		%feature("compactdefaultargs") GeomLib_MakeCurvefromApprox;
		%feature("autodoc", "
Parameters
----------
Approx: AdvApprox_ApproxAFunction

Return
-------
None

Description
-----------
No available documentation.
") GeomLib_MakeCurvefromApprox;
		 GeomLib_MakeCurvefromApprox(const AdvApprox_ApproxAFunction & Approx);

		/****************** Curve ******************/
		/**** md5 signature: 0adbc1f1d9ee01063ad1d08469430891 ****/
		%feature("compactdefaultargs") Curve;
		%feature("autodoc", "
Parameters
----------
Index3d: int

Return
-------
opencascade::handle<Geom_BSplineCurve>

Description
-----------
Returns a polynomial curve whose poles correspond to the index3d 3d space if index3d not in the range [1,nb3dspaces] if the approx is not done.
") Curve;
		opencascade::handle<Geom_BSplineCurve> Curve(const Standard_Integer Index3d);

		/****************** Curve ******************/
		/**** md5 signature: e80524fd6c782e74335ae7e1bbbbd0c9 ****/
		%feature("compactdefaultargs") Curve;
		%feature("autodoc", "
Parameters
----------
Index1D: int
Index3D: int

Return
-------
opencascade::handle<Geom_BSplineCurve>

Description
-----------
Returns a rational curve whose poles correspond to the index3d of the 3d space and whose weights correspond to the index1d 1d space. if index1d not in the range [1,nb1dspaces] if index3d not in the range [1,nb3dspaces] if the approx is not done.
") Curve;
		opencascade::handle<Geom_BSplineCurve> Curve(const Standard_Integer Index1D, const Standard_Integer Index3D);

		/****************** Curve2d ******************/
		/**** md5 signature: 52c9a9ff227fd49316ad9acd8af2ca5c ****/
		%feature("compactdefaultargs") Curve2d;
		%feature("autodoc", "
Parameters
----------
Index2d: int

Return
-------
opencascade::handle<Geom2d_BSplineCurve>

Description
-----------
Returns a polynomial curve whose poles correspond to the index2d 2d space if index2d not in the range [1,nb2dspaces] if the approx is not done.
") Curve2d;
		opencascade::handle<Geom2d_BSplineCurve> Curve2d(const Standard_Integer Index2d);

		/****************** Curve2d ******************/
		/**** md5 signature: 34689ae7327a17862fcfa36503d561a5 ****/
		%feature("compactdefaultargs") Curve2d;
		%feature("autodoc", "
Parameters
----------
Index1d: int
Index2d: int

Return
-------
opencascade::handle<Geom2d_BSplineCurve>

Description
-----------
Returns a rational curve whose poles correspond to the index2d of the 2d space and whose weights correspond to one dimensional space of index 1d if index1d not in the range [1,nb1dspaces] if index2d not in the range [1,nb2dspaces] if the approx is not done.
") Curve2d;
		opencascade::handle<Geom2d_BSplineCurve> Curve2d(const Standard_Integer Index1d, const Standard_Integer Index2d);

		/****************** Curve2dFromTwo1d ******************/
		/**** md5 signature: 62adb876cd0bbeb40ba51592cfe27046 ****/
		%feature("compactdefaultargs") Curve2dFromTwo1d;
		%feature("autodoc", "
Parameters
----------
Index1d: int
Index2d: int

Return
-------
opencascade::handle<Geom2d_BSplineCurve>

Description
-----------
Returns a 2d curve building it from the 1d curve in x at index1d and y at index2d amongst the 1d curves if index1d not in the range [1,nb1dspaces] if index2d not in the range [1,nb1dspaces] if the approx is not done.
") Curve2dFromTwo1d;
		opencascade::handle<Geom2d_BSplineCurve> Curve2dFromTwo1d(const Standard_Integer Index1d, const Standard_Integer Index2d);

		/****************** IsDone ******************/
		/**** md5 signature: ec0624071ec7da54b3d9dacc7bcb05f9 ****/
		%feature("compactdefaultargs") IsDone;
		%feature("autodoc", "Return
-------
bool

Description
-----------
No available documentation.
") IsDone;
		Standard_Boolean IsDone();

		/****************** Nb1DSpaces ******************/
		/**** md5 signature: 20e9c03c3e3894ae8182260f8e62ebe4 ****/
		%feature("compactdefaultargs") Nb1DSpaces;
		%feature("autodoc", "Return
-------
int

Description
-----------
Returns the number of 1d spaces of the approx.
") Nb1DSpaces;
		Standard_Integer Nb1DSpaces();

		/****************** Nb2DSpaces ******************/
		/**** md5 signature: eb40d73664d916039da3c040649e7f4f ****/
		%feature("compactdefaultargs") Nb2DSpaces;
		%feature("autodoc", "Return
-------
int

Description
-----------
Returns the number of 3d spaces of the approx.
") Nb2DSpaces;
		Standard_Integer Nb2DSpaces();

		/****************** Nb3DSpaces ******************/
		/**** md5 signature: 040275d26f13096ccf449e37d89095a6 ****/
		%feature("compactdefaultargs") Nb3DSpaces;
		%feature("autodoc", "Return
-------
int

Description
-----------
Returns the number of 3d spaces of the approx.
") Nb3DSpaces;
		Standard_Integer Nb3DSpaces();

};


%extend GeomLib_MakeCurvefromApprox {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*************************
* class GeomLib_PolyFunc *
*************************/
class GeomLib_PolyFunc : public math_FunctionWithDerivative {
	public:
		/****************** GeomLib_PolyFunc ******************/
		/**** md5 signature: 1f1b47ba96c9af6c23cce7ddb96d7c9e ****/
		%feature("compactdefaultargs") GeomLib_PolyFunc;
		%feature("autodoc", "
Parameters
----------
Coeffs: math_Vector

Return
-------
None

Description
-----------
No available documentation.
") GeomLib_PolyFunc;
		 GeomLib_PolyFunc(const math_Vector & Coeffs);

		/****************** Derivative ******************/
		/**** md5 signature: db0dcd567f64073c6f81e974e7fd2624 ****/
		%feature("compactdefaultargs") Derivative;
		%feature("autodoc", "
Parameters
----------
X: float

Return
-------
D: float

Description
-----------
Computes the derivative <d> of the function for the variable <x>. returns true if the calculation were successfully done, false otherwise.
") Derivative;
		virtual Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);

		/****************** Value ******************/
		/**** md5 signature: 15617dca721c4472bfb7ee7933f04bce ****/
		%feature("compactdefaultargs") Value;
		%feature("autodoc", "
Parameters
----------
X: float

Return
-------
F: float

Description
-----------
Computes the value <f>of the function for the variable <x>. returns true if the calculation were successfully done, false otherwise.
") Value;
		virtual Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);

		/****************** Values ******************/
		/**** md5 signature: 6f2163d9b7f09d24e575a61101ce4492 ****/
		%feature("compactdefaultargs") Values;
		%feature("autodoc", "
Parameters
----------
X: float

Return
-------
F: float
D: float

Description
-----------
Computes the value <f> and the derivative <d> of the function for the variable <x>. returns true if the calculation were successfully done, false otherwise.
") Values;
		virtual Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);

};


%extend GeomLib_PolyFunc {
	%pythoncode {
	__repr__ = _dumps_object
	}
};

/*********************
* class GeomLib_Tool *
*********************/
class GeomLib_Tool {
	public:
		/****************** ComputeDeviation ******************/
		/**** md5 signature: 01d2c301872142ad511ab53d75993ed5 ****/
		%feature("compactdefaultargs") ComputeDeviation;
		%feature("autodoc", "
Parameters
----------
theCurve: Geom2dAdaptor_Curve
theFPar: float
theLPar: float
theStartParameter: float
theNbIters: int (optional, default to 100)
thePrmOnCurve: float * (optional, default to NULL)
thePtOnCurve: gp_Pnt2d * (optional, default to NULL)
theVecCurvLine: gp_Vec2d * (optional, default to NULL)
theLine: gp_Lin2d * (optional, default to NULL)

Return
-------
float

Description
-----------
Computes parameter in thecurve (*theprmoncurve) where maximal deviation between thecurve and the linear segment joining its points with the parameters thefpar and thelpar is obtained. returns the (positive) value of deviation. returns negative value if the deviation cannot be computed. the returned parameter (in case of successful) will always be in the range [thefpar, thelpar]. iterative method is used for computation. so, thestartparameter is needed to be set. recommend value of thestartparameter can be found with the overloaded method. additionally, following values can be returned (optionally): @param theptoncurve - the point on curve where maximal deviation is achieved; @param theprmoncurve - the parameter of theptoncurve; @param theveccurvline - the vector along which is computed (this vector is always  perpendicular theline); @param theline - the linear segment joining the point of thecurve having parameters thefpar and thelpar.
") ComputeDeviation;
		static Standard_Real ComputeDeviation(const Geom2dAdaptor_Curve & theCurve, const Standard_Real theFPar, const Standard_Real theLPar, const Standard_Real theStartParameter, const Standard_Integer theNbIters = 100, Standard_Real * const thePrmOnCurve = NULL, gp_Pnt2d * const thePtOnCurve = NULL, gp_Vec2d * const theVecCurvLine = NULL, gp_Lin2d * const theLine = NULL);

		/****************** ComputeDeviation ******************/
		/**** md5 signature: bc135083861ec4aa4d15fd2159b269a6 ****/
		%feature("compactdefaultargs") ComputeDeviation;
		%feature("autodoc", "
Parameters
----------
theCurve: Geom2dAdaptor_Curve
theFPar: float
theLPar: float
theNbSubIntervals: int
theNbIters: int (optional, default to 10)
thePrmOnCurve: float * (optional, default to NULL)

Return
-------
float

Description
-----------
Computes parameter in thecurve (*theprmoncurve) where maximal deviation between thecurve and the linear segment joining its points with the parameters thefpar and thelpar is obtained. returns the (positive) value of deviation. returns negative value if the deviation cannot be computed. the returned parameter (in case of successful) will always be in the range [thefpar, thelpar]. thenbsubintervals defines discretization of the given interval [thefpar, thelpar] to provide better search condition. this value should be chosen taking into account complexity of the curve in considered interval. e.g. if there are many oscillations of the curve in the interval then thenbsubintervals mus be great number. however, the greater value of thenbsubintervals the slower the algorithm will compute. thenbiters sets number of iterations. attention!!! this algorithm cannot compute deviation precisely (so, there is no point in setting big value of thenbiters). but it can give some start point for the overloaded method.
") ComputeDeviation;
		static Standard_Real ComputeDeviation(const Geom2dAdaptor_Curve & theCurve, const Standard_Real theFPar, const Standard_Real theLPar, const Standard_Integer theNbSubIntervals, const Standard_Integer theNbIters = 10, Standard_Real * const thePrmOnCurve = NULL);

		/****************** Parameter ******************/
		/**** md5 signature: d9fbd7bbd865805d2fa18829af3689c1 ****/
		%feature("compactdefaultargs") Parameter;
		%feature("autodoc", "
Parameters
----------
Curve: Geom_Curve
Point: gp_Pnt
MaxDist: float

Return
-------
U: float

Description
-----------
Extracts the parameter of a 3d point lying on a 3d curve or at a distance less than the maxdist value.
") Parameter;
		static Standard_Boolean Parameter(const opencascade::handle<Geom_Curve> & Curve, const gp_Pnt & Point, const Standard_Real MaxDist, Standard_Real &OutValue);

		/****************** Parameter ******************/
		/**** md5 signature: b2fe60060067da100901feddb5a5475a ****/
		%feature("compactdefaultargs") Parameter;
		%feature("autodoc", "
Parameters
----------
Curve: Geom2d_Curve
Point: gp_Pnt2d
MaxDist: float

Return
-------
U: float

Description
-----------
Extracts the parameter of a 2d point lying on a 2d curve or at a distance less than the maxdist value.
") Parameter;
		static Standard_Boolean Parameter(const opencascade::handle<Geom2d_Curve> & Curve, const gp_Pnt2d & Point, const Standard_Real MaxDist, Standard_Real &OutValue);

		/****************** Parameters ******************/
		/**** md5 signature: d7a699c6350b3febd45e75c48db41718 ****/
		%feature("compactdefaultargs") Parameters;
		%feature("autodoc", "
Parameters
----------
Surface: Geom_Surface
Point: gp_Pnt
MaxDist: float

Return
-------
U: float
V: float

Description
-----------
Extracts the parameter of a 3d point lying on a surface or at a distance less than the maxdist value.
") Parameters;
		static Standard_Boolean Parameters(const opencascade::handle<Geom_Surface> & Surface, const gp_Pnt & Point, const Standard_Real MaxDist, Standard_Real &OutValue, Standard_Real &OutValue);

};


%extend GeomLib_Tool {
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
def geomlib_AdjustExtremity(*args):
	return geomlib.AdjustExtremity(*args)

@deprecated
def geomlib_AxeOfInertia(*args):
	return geomlib.AxeOfInertia(*args)

@deprecated
def geomlib_BuildCurve3d(*args):
	return geomlib.BuildCurve3d(*args)

@deprecated
def geomlib_CancelDenominatorDerivative(*args):
	return geomlib.CancelDenominatorDerivative(*args)

@deprecated
def geomlib_DensifyArray1OfReal(*args):
	return geomlib.DensifyArray1OfReal(*args)

@deprecated
def geomlib_EvalMaxDistanceAlongParameter(*args):
	return geomlib.EvalMaxDistanceAlongParameter(*args)

@deprecated
def geomlib_EvalMaxParametricDistance(*args):
	return geomlib.EvalMaxParametricDistance(*args)

@deprecated
def geomlib_ExtendCurveToPoint(*args):
	return geomlib.ExtendCurveToPoint(*args)

@deprecated
def geomlib_ExtendSurfByLength(*args):
	return geomlib.ExtendSurfByLength(*args)

@deprecated
def geomlib_FuseIntervals(*args):
	return geomlib.FuseIntervals(*args)

@deprecated
def geomlib_GTransform(*args):
	return geomlib.GTransform(*args)

@deprecated
def geomlib_Inertia(*args):
	return geomlib.Inertia(*args)

@deprecated
def geomlib_IsBSplUClosed(*args):
	return geomlib.IsBSplUClosed(*args)

@deprecated
def geomlib_IsBSplVClosed(*args):
	return geomlib.IsBSplVClosed(*args)

@deprecated
def geomlib_IsBzUClosed(*args):
	return geomlib.IsBzUClosed(*args)

@deprecated
def geomlib_IsBzVClosed(*args):
	return geomlib.IsBzVClosed(*args)

@deprecated
def geomlib_IsClosed(*args):
	return geomlib.IsClosed(*args)

@deprecated
def geomlib_NormEstim(*args):
	return geomlib.NormEstim(*args)

@deprecated
def geomlib_RemovePointsFromArray(*args):
	return geomlib.RemovePointsFromArray(*args)

@deprecated
def geomlib_SameRange(*args):
	return geomlib.SameRange(*args)

@deprecated
def geomlib_To3d(*args):
	return geomlib.To3d(*args)

@deprecated
def geomlib_buildC3dOnIsoLine(*args):
	return geomlib.buildC3dOnIsoLine(*args)

@deprecated
def geomlib_isIsoLine(*args):
	return geomlib.isIsoLine(*args)

@deprecated
def GeomLib_Tool_ComputeDeviation(*args):
	return GeomLib_Tool.ComputeDeviation(*args)

@deprecated
def GeomLib_Tool_ComputeDeviation(*args):
	return GeomLib_Tool.ComputeDeviation(*args)

@deprecated
def GeomLib_Tool_Parameter(*args):
	return GeomLib_Tool.Parameter(*args)

@deprecated
def GeomLib_Tool_Parameter(*args):
	return GeomLib_Tool.Parameter(*args)

@deprecated
def GeomLib_Tool_Parameters(*args):
	return GeomLib_Tool.Parameters(*args)

}
