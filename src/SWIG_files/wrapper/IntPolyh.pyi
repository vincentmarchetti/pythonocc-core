from enum import IntEnum
from typing import overload, NewType, Optional, Tuple

from OCC.Core.Standard import *
from OCC.Core.NCollection import *
from OCC.Core.Adaptor3d import *
from OCC.Core.TColStd import *
from OCC.Core.Bnd import *

#the following typedef cannot be wrapped as is
IntPolyh_ArrayOfEdges = NewType('IntPolyh_ArrayOfEdges', Any)
#the following typedef cannot be wrapped as is
IntPolyh_ArrayOfPointNormal = NewType('IntPolyh_ArrayOfPointNormal', Any)
#the following typedef cannot be wrapped as is
IntPolyh_ArrayOfPoints = NewType('IntPolyh_ArrayOfPoints', Any)
#the following typedef cannot be wrapped as is
IntPolyh_ArrayOfSectionLines = NewType('IntPolyh_ArrayOfSectionLines', Any)
#the following typedef cannot be wrapped as is
IntPolyh_ArrayOfTangentZones = NewType('IntPolyh_ArrayOfTangentZones', Any)
#the following typedef cannot be wrapped as is
IntPolyh_ArrayOfTriangles = NewType('IntPolyh_ArrayOfTriangles', Any)
#the following typedef cannot be wrapped as is
IntPolyh_ListIteratorOfListOfCouples = NewType('IntPolyh_ListIteratorOfListOfCouples', Any)
IntPolyh_PMaillageAffinage = NewType('IntPolyh_PMaillageAffinage', IntPolyh_MaillageAffinage)

class IntPolyh_ListOfCouples:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> IntPolyh_Couple: ...
    def Last(self) -> IntPolyh_Couple: ...
    def Append(self, theItem: IntPolyh_Couple) -> IntPolyh_Couple: ...
    def Prepend(self, theItem: IntPolyh_Couple) -> IntPolyh_Couple: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> IntPolyh_Couple: ...
    def SetValue(self, theIndex: int, theValue: IntPolyh_Couple) -> None: ...

class IntPolyh_SeqOfStartPoints:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> IntPolyh_StartPoint: ...
    def Last(self) -> IntPolyh_StartPoint: ...
    def Length(self) -> int: ...
    def Append(self, theItem: IntPolyh_StartPoint) -> IntPolyh_StartPoint: ...
    def Prepend(self, theItem: IntPolyh_StartPoint) -> IntPolyh_StartPoint: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> IntPolyh_StartPoint: ...
    def SetValue(self, theIndex: int, theValue: IntPolyh_StartPoint) -> None: ...

class IntPolyh_Couple:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, theTriangle1: int, theTriangle2: int, theAngle: Optional[float] = -2.0) -> None: ...
    def Angle(self) -> float: ...
    def Dump(self, v: int) -> None: ...
    def FirstValue(self) -> int: ...
    def HashCode(self, theUpperBound: int) -> int: ...
    def IsAnalyzed(self) -> bool: ...
    def IsEqual(self, theOther: IntPolyh_Couple) -> bool: ...
    def SecondValue(self) -> int: ...
    def SetAnalyzed(self, theAnalyzed: bool) -> None: ...
    def SetAngle(self, theAngle: float) -> None: ...
    def SetCoupleValue(self, theInd1: int, theInd2: int) -> None: ...

class IntPolyh_CoupleMapHasher:
    @staticmethod
    def HashCode(theCouple: IntPolyh_Couple, theUpperBound: int) -> int: ...
    @staticmethod
    def IsEqual(theCouple1: IntPolyh_Couple, theCouple2: IntPolyh_Couple) -> bool: ...

class IntPolyh_Edge:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, thePoint1: int, thePoint2: int, theTriangle1: int, theTriangle2: int) -> None: ...
    def Dump(self, v: int) -> None: ...
    def FirstPoint(self) -> int: ...
    def FirstTriangle(self) -> int: ...
    def SecondPoint(self) -> int: ...
    def SecondTriangle(self) -> int: ...
    def SetFirstPoint(self, thePoint: int) -> None: ...
    def SetFirstTriangle(self, theTriangle: int) -> None: ...
    def SetSecondPoint(self, thePoint: int) -> None: ...
    def SetSecondTriangle(self, theTriangle: int) -> None: ...

class IntPolyh_Intersection:
    @overload
    def __init__(self, theS1: Adaptor3d_Surface, theS2: Adaptor3d_Surface) -> None: ...
    @overload
    def __init__(self, theS1: Adaptor3d_Surface, theNbSU1: int, theNbSV1: int, theS2: Adaptor3d_Surface, theNbSU2: int, theNbSV2: int) -> None: ...
    @overload
    def __init__(self, theS1: Adaptor3d_Surface, theUPars1: TColStd_Array1OfReal, theVPars1: TColStd_Array1OfReal, theS2: Adaptor3d_Surface, theUPars2: TColStd_Array1OfReal, theVPars2: TColStd_Array1OfReal) -> None: ...
    def GetLinePoint(self, IndexLine: int, IndexPoint: int) -> Tuple[float, float, float, float, float, float, float, float]: ...
    def GetTangentZonePoint(self, IndexLine: int, IndexPoint: int) -> Tuple[float, float, float, float, float, float, float]: ...
    def IsDone(self) -> bool: ...
    def IsParallel(self) -> bool: ...
    def NbPointsInLine(self, IndexLine: int) -> int: ...
    def NbSectionLines(self) -> int: ...
    def NbTangentZones(self) -> int: ...

class IntPolyh_Point:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, x: float, y: float, z: float, u: float, v: float) -> None: ...
    def Add(self, P1: IntPolyh_Point) -> IntPolyh_Point: ...
    def Cross(self, P1: IntPolyh_Point, P2: IntPolyh_Point) -> None: ...
    def Degenerated(self) -> bool: ...
    def Divide(self, rr: float) -> IntPolyh_Point: ...
    def Dot(self, P2: IntPolyh_Point) -> float: ...
    @overload
    def Dump(self) -> None: ...
    @overload
    def Dump(self, i: int) -> None: ...
    def Middle(self, MySurface: Adaptor3d_Surface, P1: IntPolyh_Point, P2: IntPolyh_Point) -> None: ...
    def Multiplication(self, rr: float) -> IntPolyh_Point: ...
    def PartOfCommon(self) -> int: ...
    def Set(self, x: float, y: float, z: float, u: float, v: float, II: Optional[int] = 1) -> None: ...
    def SetDegenerated(self, theFlag: bool) -> None: ...
    def SetPartOfCommon(self, ii: int) -> None: ...
    def SetU(self, u: float) -> None: ...
    def SetV(self, v: float) -> None: ...
    def SetX(self, x: float) -> None: ...
    def SetY(self, y: float) -> None: ...
    def SetZ(self, z: float) -> None: ...
    def SquareDistance(self, P2: IntPolyh_Point) -> float: ...
    def SquareModulus(self) -> float: ...
    def Sub(self, P1: IntPolyh_Point) -> IntPolyh_Point: ...
    def U(self) -> float: ...
    def V(self) -> float: ...
    def X(self) -> float: ...
    def Y(self) -> float: ...
    def Z(self) -> float: ...

class IntPolyh_PointNormal:
    pass

class IntPolyh_SectionLine:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, nn: int) -> None: ...
    def ChangeValue(self, nn: int) -> IntPolyh_StartPoint: ...
    def Copy(self, Other: IntPolyh_SectionLine) -> IntPolyh_SectionLine: ...
    def Destroy(self) -> None: ...
    def Dump(self) -> None: ...
    def GetN(self) -> int: ...
    def IncrementNbStartPoints(self) -> None: ...
    def Init(self, nn: int) -> None: ...
    def NbStartPoints(self) -> int: ...
    def Prepend(self, SP: IntPolyh_StartPoint) -> None: ...
    def Value(self, nn: int) -> IntPolyh_StartPoint: ...

class IntPolyh_StartPoint:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, xx: float, yy: float, zz: float, uu1: float, vv1: float, uu2: float, vv2: float, T1: int, E1: int, LAM1: float, T2: int, E2: int, LAM2: float, List: int) -> None: ...
    def ChainList(self) -> int: ...
    def CheckSameSP(self, SP: IntPolyh_StartPoint) -> int: ...
    @overload
    def Dump(self) -> None: ...
    @overload
    def Dump(self, i: int) -> None: ...
    def E1(self) -> int: ...
    def E2(self) -> int: ...
    def GetAngle(self) -> float: ...
    def GetEdgePoints(self, Triangle: IntPolyh_Triangle) -> Tuple[int, int, int, int]: ...
    def Lambda1(self) -> float: ...
    def Lambda2(self) -> float: ...
    def SetAngle(self, ang: float) -> None: ...
    def SetChainList(self, ChList: int) -> None: ...
    def SetCoupleValue(self, IT1: int, IT2: int) -> None: ...
    def SetEdge1(self, IE1: int) -> None: ...
    def SetEdge2(self, IE2: int) -> None: ...
    def SetLambda1(self, LAM1: float) -> None: ...
    def SetLambda2(self, LAM2: float) -> None: ...
    def SetUV1(self, UU1: float, VV1: float) -> None: ...
    def SetUV2(self, UU2: float, VV2: float) -> None: ...
    def SetXYZ(self, XX: float, YY: float, ZZ: float) -> None: ...
    def T1(self) -> int: ...
    def T2(self) -> int: ...
    def U1(self) -> float: ...
    def U2(self) -> float: ...
    def V1(self) -> float: ...
    def V2(self) -> float: ...
    def X(self) -> float: ...
    def Y(self) -> float: ...
    def Z(self) -> float: ...

class IntPolyh_Tools:
    @staticmethod
    def ComputeDeflection(theSurf: Adaptor3d_Surface, theUPars: TColStd_Array1OfReal, theVPars: TColStd_Array1OfReal) -> float: ...
    @staticmethod
    def FillArrayOfPointNormal(theSurf: Adaptor3d_Surface, theUPars: TColStd_Array1OfReal, theVPars: TColStd_Array1OfReal, thePoints: IntPolyh_ArrayOfPointNormal) -> None: ...
    @staticmethod
    def IsEnlargePossible(theSurf: Adaptor3d_Surface) -> Tuple[bool, bool]: ...
    @staticmethod
    def MakeSampling(theSurf: Adaptor3d_Surface, theNbSU: int, theNbSV: int, theEnlargeZone: bool, theUPars: TColStd_Array1OfReal, theVPars: TColStd_Array1OfReal) -> None: ...

class IntPolyh_Triangle:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, thePoint1: int, thePoint2: int, thePoint3: int) -> None: ...
    def BoundingBox(self, thePoints: IntPolyh_ArrayOfPoints) -> Bnd_Box: ...
    def ComputeDeflection(self, theSurface: Adaptor3d_Surface, thePoints: IntPolyh_ArrayOfPoints) -> float: ...
    def Deflection(self) -> float: ...
    def Dump(self, v: int) -> None: ...
    def FirstEdge(self) -> int: ...
    def FirstEdgeOrientation(self) -> int: ...
    def FirstPoint(self) -> int: ...
    def GetEdgeNumber(self, theEdgeIndex: int) -> int: ...
    def GetEdgeOrientation(self, theEdgeIndex: int) -> int: ...
    def GetNextTriangle(self, theTriangle: int, theEdgeNum: int, TEdges: IntPolyh_ArrayOfEdges) -> int: ...
    def HasIntersection(self) -> bool: ...
    def IsDegenerated(self) -> bool: ...
    def IsIntersectionPossible(self) -> bool: ...
    def LinkEdges2Triangle(self, TEdges: IntPolyh_ArrayOfEdges, theEdge1: int, theEdge2: int, theEdge3: int) -> None: ...
    def MiddleRefinement(self, theTriangleNumber: int, theSurface: Adaptor3d_Surface, TPoints: IntPolyh_ArrayOfPoints, TTriangles: IntPolyh_ArrayOfTriangles, TEdges: IntPolyh_ArrayOfEdges) -> None: ...
    def MultipleMiddleRefinement(self, theRefineCriterion: float, theBox: Bnd_Box, theTriangleNumber: int, theSurface: Adaptor3d_Surface, TPoints: IntPolyh_ArrayOfPoints, TTriangles: IntPolyh_ArrayOfTriangles, TEdges: IntPolyh_ArrayOfEdges) -> None: ...
    def SecondEdge(self) -> int: ...
    def SecondEdgeOrientation(self) -> int: ...
    def SecondPoint(self) -> int: ...
    def SetDeflection(self, theDeflection: float) -> None: ...
    def SetDegenerated(self, theDegFlag: bool) -> None: ...
    def SetEdge(self, theEdgeIndex: int, theEdgeNumber: int) -> None: ...
    def SetEdgeAndOrientation(self, theEdge: IntPolyh_Edge, theEdgeIndex: int) -> None: ...
    def SetEdgeOrientation(self, theEdgeIndex: int, theEdgeOrientation: int) -> None: ...
    def SetFirstEdge(self, theEdge: int, theEdgeOrientation: int) -> None: ...
    def SetFirstPoint(self, thePoint: int) -> None: ...
    def SetIntersection(self, theInt: bool) -> None: ...
    def SetIntersectionPossible(self, theIP: bool) -> None: ...
    def SetSecondEdge(self, theEdge: int, theEdgeOrientation: int) -> None: ...
    def SetSecondPoint(self, thePoint: int) -> None: ...
    def SetThirdEdge(self, theEdge: int, theEdgeOrientation: int) -> None: ...
    def SetThirdPoint(self, thePoint: int) -> None: ...
    def ThirdEdge(self) -> int: ...
    def ThirdEdgeOrientation(self) -> int: ...
    def ThirdPoint(self) -> int: ...

#classnotwrapped
class IntPolyh_Array: ...

#classnotwrapped
class IntPolyh_MaillageAffinage: ...

# harray1 classes
# harray2 classes
# hsequence classes

IntPolyh_CoupleMapHasher_HashCode = IntPolyh_CoupleMapHasher.HashCode
IntPolyh_CoupleMapHasher_IsEqual = IntPolyh_CoupleMapHasher.IsEqual
IntPolyh_Tools_ComputeDeflection = IntPolyh_Tools.ComputeDeflection
IntPolyh_Tools_FillArrayOfPointNormal = IntPolyh_Tools.FillArrayOfPointNormal
IntPolyh_Tools_IsEnlargePossible = IntPolyh_Tools.IsEnlargePossible
IntPolyh_Tools_MakeSampling = IntPolyh_Tools.MakeSampling
