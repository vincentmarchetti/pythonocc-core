from enum import IntEnum
from typing import overload, NewType, Optional, Tuple

from OCC.Core.Standard import *
from OCC.Core.NCollection import *
from OCC.Core.Transfer import *
from OCC.Core.Message import *
from OCC.Core.IGESToBRep import *
from OCC.Core.XSControl import *
from OCC.Core.Interface import *
from OCC.Core.TopoDS import *
from OCC.Core.IFSelect import *
from OCC.Core.IGESData import *


class IGESControl_ActorWrite(Transfer_ActorOfFinderProcess):
    def __init__(self) -> None: ...
    def Recognize(self, start: Transfer_Finder) -> bool: ...
    def Transfer(self, start: Transfer_Finder, FP: Transfer_FinderProcess, theProgress: Optional[Message_ProgressRange] = Message_ProgressRange()) -> Transfer_Binder: ...

class IGESControl_AlgoContainer(IGESToBRep_AlgoContainer):
    def __init__(self) -> None: ...

class IGESControl_Controller(XSControl_Controller):
    def __init__(self, modefnes: Optional[bool] = False) -> None: ...
    def ActorRead(self, model: Interface_InterfaceModel) -> Transfer_ActorOfTransientProcess: ...
    def Customise(self, WS: XSControl_WorkSession) -> None: ...
    @staticmethod
    def Init() -> bool: ...
    def NewModel(self) -> Interface_InterfaceModel: ...
    def TransferWriteShape(self, shape: TopoDS_Shape, FP: Transfer_FinderProcess, model: Interface_InterfaceModel, modetrans: Optional[int] = 0, theProgress: Optional[Message_ProgressRange] = Message_ProgressRange()) -> IFSelect_ReturnStatus: ...

class IGESControl_IGESBoundary(IGESToBRep_IGESBoundary):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, CS: IGESToBRep_CurveAndSurface) -> None: ...
    def Check(self, result: bool, checkclosure: bool, okCurve3d: bool, okCurve2d: bool) -> None: ...

class IGESControl_Reader(XSControl_Reader):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, WS: XSControl_WorkSession, scratch: Optional[bool] = True) -> None: ...
    def GetReadVisible(self) -> bool: ...
    def IGESModel(self) -> IGESData_IGESModel: ...
    def NbRootsForTransfer(self) -> int: ...
    def PrintTransferInfo(self, failwarn: IFSelect_PrintFail, mode: IFSelect_PrintCount) -> None: ...
    def SetReadVisible(self, ReadRoot: bool) -> None: ...

class IGESControl_ToolContainer(IGESToBRep_ToolContainer):
    def __init__(self) -> None: ...
    def IGESBoundary(self) -> IGESToBRep_IGESBoundary: ...

class IGESControl_Writer:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, unit: str, modecr: Optional[int] = 0) -> None: ...
    @overload
    def __init__(self, model: IGESData_IGESModel, modecr: Optional[int] = 0) -> None: ...
    def AddEntity(self, ent: IGESData_IGESEntity) -> bool: ...
    def AddGeom(self, geom: Standard_Transient) -> bool: ...
    def AddShape(self, sh: TopoDS_Shape, theProgress: Optional[Message_ProgressRange] = Message_ProgressRange()) -> bool: ...
    def ComputeModel(self) -> None: ...
    def Model(self) -> IGESData_IGESModel: ...
    def SetTransferProcess(self, TP: Transfer_FinderProcess) -> None: ...
    def TransferProcess(self) -> Transfer_FinderProcess: ...
    @overload
    def Write(self, file: str, fnes: Optional[bool] = False) -> bool: ...

# harray1 classes
# harray2 classes
# hsequence classes

