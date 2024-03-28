from enum import IntEnum
from typing import overload, NewType, Optional, Tuple

from OCC.Core.Standard import *
from OCC.Core.NCollection import *
from OCC.Core.TCollection import *

# the following typedef cannot be wrapped as is
TColStd_Array2OfBoolean = NewType("TColStd_Array2OfBoolean", Any)
# the following typedef cannot be wrapped as is
TColStd_Array2OfCharacter = NewType("TColStd_Array2OfCharacter", Any)
# the following typedef cannot be wrapped as is
TColStd_Array2OfInteger = NewType("TColStd_Array2OfInteger", Any)
# the following typedef cannot be wrapped as is
TColStd_Array2OfReal = NewType("TColStd_Array2OfReal", Any)
# the following typedef cannot be wrapped as is
TColStd_Array2OfTransient = NewType("TColStd_Array2OfTransient", Any)
# the following typedef cannot be wrapped as is
TColStd_IndexedDataMapOfStringString = NewType("TColStd_IndexedDataMapOfStringString", Any)
# the following typedef cannot be wrapped as is
TColStd_IndexedDataMapOfTransientTransient = NewType("TColStd_IndexedDataMapOfTransientTransient", Any)
# the following typedef cannot be wrapped as is
TColStd_IndexedMapOfInteger = NewType("TColStd_IndexedMapOfInteger", Any)
# the following typedef cannot be wrapped as is
TColStd_IndexedMapOfReal = NewType("TColStd_IndexedMapOfReal", Any)
# the following typedef cannot be wrapped as is
TColStd_IndexedMapOfTransient = NewType("TColStd_IndexedMapOfTransient", Any)
# the following typedef cannot be wrapped as is
TColStd_MapIntegerHasher = NewType("TColStd_MapIntegerHasher", Any)
# the following typedef cannot be wrapped as is
TColStd_MapIteratorOfMapOfAsciiString = NewType("TColStd_MapIteratorOfMapOfAsciiString", Any)
# the following typedef cannot be wrapped as is
TColStd_MapIteratorOfMapOfInteger = NewType("TColStd_MapIteratorOfMapOfInteger", Any)
# the following typedef cannot be wrapped as is
TColStd_MapIteratorOfMapOfReal = NewType("TColStd_MapIteratorOfMapOfReal", Any)
# the following typedef cannot be wrapped as is
TColStd_MapIteratorOfMapOfTransient = NewType("TColStd_MapIteratorOfMapOfTransient", Any)
# the following typedef cannot be wrapped as is
TColStd_MapIteratorOfPackedMapOfInteger = NewType("TColStd_MapIteratorOfPackedMapOfInteger", Any)
# the following typedef cannot be wrapped as is
TColStd_MapOfAsciiString = NewType("TColStd_MapOfAsciiString", Any)
# the following typedef cannot be wrapped as is
TColStd_MapOfInteger = NewType("TColStd_MapOfInteger", Any)
# the following typedef cannot be wrapped as is
TColStd_MapOfReal = NewType("TColStd_MapOfReal", Any)
# the following typedef cannot be wrapped as is
TColStd_MapOfTransient = NewType("TColStd_MapOfTransient", Any)
# the following typedef cannot be wrapped as is
TColStd_MapRealHasher = NewType("TColStd_MapRealHasher", Any)
# the following typedef cannot be wrapped as is
TColStd_MapTransientHasher = NewType("TColStd_MapTransientHasher", Any)

class TColStd_Array1OfAsciiString:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def __getitem__(self, index: int) -> str: ...
    def __setitem__(self, index: int, value: str) -> None: ...
    def __len__(self) -> int: ...
    def __iter__(self) -> Iterator[str]: ...
    def next(self) -> str: ...
    __next__ = next
    def Init(self, theValue: str) -> None: ...
    def Size(self) -> int: ...
    def Length(self) -> int: ...
    def IsEmpty(self) -> bool: ...
    def Lower(self) -> int: ...
    def Upper(self) -> int: ...
    def IsDetectable(self) -> bool: ...
    def IsAllocated(self) -> bool: ...
    def First(self) -> str: ...
    def Last(self) -> str: ...
    def Value(self, theIndex: int) -> str: ...
    def SetValue(self, theIndex: int, theValue: str) -> None: ...

class TColStd_Array1OfBoolean:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def __getitem__(self, index: int) -> bool: ...
    def __setitem__(self, index: int, value: bool) -> None: ...
    def __len__(self) -> int: ...
    def __iter__(self) -> Iterator[bool]: ...
    def next(self) -> bool: ...
    __next__ = next
    def Init(self, theValue: bool) -> None: ...
    def Size(self) -> int: ...
    def Length(self) -> int: ...
    def IsEmpty(self) -> bool: ...
    def Lower(self) -> int: ...
    def Upper(self) -> int: ...
    def IsDetectable(self) -> bool: ...
    def IsAllocated(self) -> bool: ...
    def First(self) -> bool: ...
    def Last(self) -> bool: ...
    def Value(self, theIndex: int) -> bool: ...
    def SetValue(self, theIndex: int, theValue: bool) -> None: ...

class TColStd_Array1OfByte:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def __getitem__(self, index: int) -> str: ...
    def __setitem__(self, index: int, value: str) -> None: ...
    def __len__(self) -> int: ...
    def __iter__(self) -> Iterator[str]: ...
    def next(self) -> str: ...
    __next__ = next
    def Init(self, theValue: str) -> None: ...
    def Size(self) -> int: ...
    def Length(self) -> int: ...
    def IsEmpty(self) -> bool: ...
    def Lower(self) -> int: ...
    def Upper(self) -> int: ...
    def IsDetectable(self) -> bool: ...
    def IsAllocated(self) -> bool: ...
    def First(self) -> str: ...
    def Last(self) -> str: ...
    def Value(self, theIndex: int) -> str: ...
    def SetValue(self, theIndex: int, theValue: str) -> None: ...

class TColStd_Array1OfCharacter:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def __getitem__(self, index: int) -> str: ...
    def __setitem__(self, index: int, value: str) -> None: ...
    def __len__(self) -> int: ...
    def __iter__(self) -> Iterator[str]: ...
    def next(self) -> str: ...
    __next__ = next
    def Init(self, theValue: str) -> None: ...
    def Size(self) -> int: ...
    def Length(self) -> int: ...
    def IsEmpty(self) -> bool: ...
    def Lower(self) -> int: ...
    def Upper(self) -> int: ...
    def IsDetectable(self) -> bool: ...
    def IsAllocated(self) -> bool: ...
    def First(self) -> str: ...
    def Last(self) -> str: ...
    def Value(self, theIndex: int) -> str: ...
    def SetValue(self, theIndex: int, theValue: str) -> None: ...

class TColStd_Array1OfExtendedString:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def __getitem__(self, index: int) -> str: ...
    def __setitem__(self, index: int, value: str) -> None: ...
    def __len__(self) -> int: ...
    def __iter__(self) -> Iterator[str]: ...
    def next(self) -> str: ...
    __next__ = next
    def Init(self, theValue: str) -> None: ...
    def Size(self) -> int: ...
    def Length(self) -> int: ...
    def IsEmpty(self) -> bool: ...
    def Lower(self) -> int: ...
    def Upper(self) -> int: ...
    def IsDetectable(self) -> bool: ...
    def IsAllocated(self) -> bool: ...
    def First(self) -> str: ...
    def Last(self) -> str: ...
    def Value(self, theIndex: int) -> str: ...
    def SetValue(self, theIndex: int, theValue: str) -> None: ...

class TColStd_Array1OfInteger:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def __getitem__(self, index: int) -> int: ...
    def __setitem__(self, index: int, value: int) -> None: ...
    def __len__(self) -> int: ...
    def __iter__(self) -> Iterator[int]: ...
    def next(self) -> int: ...
    __next__ = next
    def Init(self, theValue: int) -> None: ...
    def Size(self) -> int: ...
    def Length(self) -> int: ...
    def IsEmpty(self) -> bool: ...
    def Lower(self) -> int: ...
    def Upper(self) -> int: ...
    def IsDetectable(self) -> bool: ...
    def IsAllocated(self) -> bool: ...
    def First(self) -> int: ...
    def Last(self) -> int: ...
    def Value(self, theIndex: int) -> int: ...
    def SetValue(self, theIndex: int, theValue: int) -> None: ...

class TColStd_Array1OfListOfInteger:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def __getitem__(self, index: int) -> TColStd_ListOfInteger: ...
    def __setitem__(self, index: int, value: TColStd_ListOfInteger) -> None: ...
    def __len__(self) -> int: ...
    def __iter__(self) -> Iterator[TColStd_ListOfInteger]: ...
    def next(self) -> TColStd_ListOfInteger: ...
    __next__ = next
    def Init(self, theValue: TColStd_ListOfInteger) -> None: ...
    def Size(self) -> int: ...
    def Length(self) -> int: ...
    def IsEmpty(self) -> bool: ...
    def Lower(self) -> int: ...
    def Upper(self) -> int: ...
    def IsDetectable(self) -> bool: ...
    def IsAllocated(self) -> bool: ...
    def First(self) -> TColStd_ListOfInteger: ...
    def Last(self) -> TColStd_ListOfInteger: ...
    def Value(self, theIndex: int) -> TColStd_ListOfInteger: ...
    def SetValue(self, theIndex: int, theValue: TColStd_ListOfInteger) -> None: ...

class TColStd_Array1OfReal:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def __getitem__(self, index: int) -> float: ...
    def __setitem__(self, index: int, value: float) -> None: ...
    def __len__(self) -> int: ...
    def __iter__(self) -> Iterator[float]: ...
    def next(self) -> float: ...
    __next__ = next
    def Init(self, theValue: float) -> None: ...
    def Size(self) -> int: ...
    def Length(self) -> int: ...
    def IsEmpty(self) -> bool: ...
    def Lower(self) -> int: ...
    def Upper(self) -> int: ...
    def IsDetectable(self) -> bool: ...
    def IsAllocated(self) -> bool: ...
    def First(self) -> float: ...
    def Last(self) -> float: ...
    def Value(self, theIndex: int) -> float: ...
    def SetValue(self, theIndex: int, theValue: float) -> None: ...

class TColStd_Array1OfTransient:
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def __getitem__(self, index: int) -> False: ...
    def __setitem__(self, index: int, value: False) -> None: ...
    def __len__(self) -> int: ...
    def __iter__(self) -> Iterator[False]: ...
    def next(self) -> False: ...
    __next__ = next
    def Init(self, theValue: False) -> None: ...
    def Size(self) -> int: ...
    def Length(self) -> int: ...
    def IsEmpty(self) -> bool: ...
    def Lower(self) -> int: ...
    def Upper(self) -> int: ...
    def IsDetectable(self) -> bool: ...
    def IsAllocated(self) -> bool: ...
    def First(self) -> False: ...
    def Last(self) -> False: ...
    def Value(self, theIndex: int) -> False: ...
    def SetValue(self, theIndex: int, theValue: False) -> None: ...

class TColStd_ListOfAsciiString:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> str: ...
    def Last(self) -> str: ...
    def Append(self, theItem: str) -> str: ...
    def Prepend(self, theItem: str) -> str: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> str: ...
    def SetValue(self, theIndex: int, theValue: str) -> None: ...

class TColStd_ListOfInteger:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> int: ...
    def Last(self) -> int: ...
    def Append(self, theItem: int) -> int: ...
    def Prepend(self, theItem: int) -> int: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> int: ...
    def SetValue(self, theIndex: int, theValue: int) -> None: ...

class TColStd_ListOfReal:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> float: ...
    def Last(self) -> float: ...
    def Append(self, theItem: float) -> float: ...
    def Prepend(self, theItem: float) -> float: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> float: ...
    def SetValue(self, theIndex: int, theValue: float) -> None: ...

class TColStd_ListOfTransient:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> False: ...
    def Last(self) -> False: ...
    def Append(self, theItem: False) -> False: ...
    def Prepend(self, theItem: False) -> False: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> False: ...
    def SetValue(self, theIndex: int, theValue: False) -> None: ...

class TColStd_SequenceOfAddress:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> None: ...
    def Last(self) -> None: ...
    def Length(self) -> int: ...
    def Append(self, theItem: None) -> None: ...
    def Prepend(self, theItem: None) -> None: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> None: ...
    def SetValue(self, theIndex: int, theValue: None) -> None: ...

class TColStd_SequenceOfAsciiString:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> str: ...
    def Last(self) -> str: ...
    def Length(self) -> int: ...
    def Append(self, theItem: str) -> str: ...
    def Prepend(self, theItem: str) -> str: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> str: ...
    def SetValue(self, theIndex: int, theValue: str) -> None: ...

class TColStd_SequenceOfBoolean:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> bool: ...
    def Last(self) -> bool: ...
    def Length(self) -> int: ...
    def Append(self, theItem: bool) -> bool: ...
    def Prepend(self, theItem: bool) -> bool: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> bool: ...
    def SetValue(self, theIndex: int, theValue: bool) -> None: ...

class TColStd_SequenceOfExtendedString:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> str: ...
    def Last(self) -> str: ...
    def Length(self) -> int: ...
    def Append(self, theItem: str) -> str: ...
    def Prepend(self, theItem: str) -> str: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> str: ...
    def SetValue(self, theIndex: int, theValue: str) -> None: ...

class TColStd_SequenceOfHAsciiString:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> False: ...
    def Last(self) -> False: ...
    def Length(self) -> int: ...
    def Append(self, theItem: False) -> False: ...
    def Prepend(self, theItem: False) -> False: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> False: ...
    def SetValue(self, theIndex: int, theValue: False) -> None: ...

class TColStd_SequenceOfHExtendedString:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> False: ...
    def Last(self) -> False: ...
    def Length(self) -> int: ...
    def Append(self, theItem: False) -> False: ...
    def Prepend(self, theItem: False) -> False: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> False: ...
    def SetValue(self, theIndex: int, theValue: False) -> None: ...

class TColStd_SequenceOfInteger:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> int: ...
    def Last(self) -> int: ...
    def Length(self) -> int: ...
    def Append(self, theItem: int) -> int: ...
    def Prepend(self, theItem: int) -> int: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> int: ...
    def SetValue(self, theIndex: int, theValue: int) -> None: ...

class TColStd_SequenceOfReal:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> float: ...
    def Last(self) -> float: ...
    def Length(self) -> int: ...
    def Append(self, theItem: float) -> float: ...
    def Prepend(self, theItem: float) -> float: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> float: ...
    def SetValue(self, theIndex: int, theValue: float) -> None: ...

class TColStd_SequenceOfTransient:
    def __init__(self) -> None: ...
    def __len__(self) -> int: ...
    def Size(self) -> int: ...
    def Clear(self) -> None: ...
    def First(self) -> False: ...
    def Last(self) -> False: ...
    def Length(self) -> int: ...
    def Append(self, theItem: False) -> False: ...
    def Prepend(self, theItem: False) -> False: ...
    def RemoveFirst(self) -> None: ...
    def Reverse(self) -> None: ...
    def Value(self, theIndex: int) -> False: ...
    def SetValue(self, theIndex: int, theValue: False) -> None: ...

class TColStd_HPackedMapOfInteger(Standard_Transient):
    @overload
    def __init__(self, NbBuckets: Optional[int] = 1) -> None: ...
    @overload
    def __init__(self, theOther: TColStd_PackedMapOfInteger) -> None: ...
    def ChangeMap(self) -> TColStd_PackedMapOfInteger: ...
    def Map(self) -> TColStd_PackedMapOfInteger: ...

class TColStd_PackedMapOfInteger:
    @overload
    def __init__(self, theNbBuckets: Optional[int] = 1) -> None: ...
    @overload
    def __init__(self, theOther: TColStd_PackedMapOfInteger) -> None: ...
    def Add(self, aKey: int) -> bool: ...
    def Clear(self) -> None: ...
    def Contains(self, aKey: int) -> bool: ...
    def Extent(self) -> int: ...
    def GetMaximalMapped(self) -> int: ...
    def GetMinimalMapped(self) -> int: ...
    def IsEmpty(self) -> bool: ...
    def NbBuckets(self) -> int: ...
    def ReSize(self, NbBuckets: int) -> None: ...
    def Remove(self, aKey: int) -> bool: ...
    def Statistics(self) -> str: ...

# harray1 classes

class TColStd_HArray1OfAsciiString(TColStd_Array1OfAsciiString, Standard_Transient):
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def Array1(self) -> TColStd_Array1OfAsciiString: ...


class TColStd_HArray1OfByte(TColStd_Array1OfByte, Standard_Transient):
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def Array1(self) -> TColStd_Array1OfByte: ...


class TColStd_HArray1OfInteger(TColStd_Array1OfInteger, Standard_Transient):
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def Array1(self) -> TColStd_Array1OfInteger: ...


class TColStd_HArray1OfBoolean(TColStd_Array1OfBoolean, Standard_Transient):
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def Array1(self) -> TColStd_Array1OfBoolean: ...


class TColStd_HArray1OfListOfInteger(TColStd_Array1OfListOfInteger, Standard_Transient):
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def Array1(self) -> TColStd_Array1OfListOfInteger: ...


class TColStd_HArray1OfTransient(TColStd_Array1OfTransient, Standard_Transient):
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def Array1(self) -> TColStd_Array1OfTransient: ...


class TColStd_HArray1OfCharacter(TColStd_Array1OfCharacter, Standard_Transient):
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def Array1(self) -> TColStd_Array1OfCharacter: ...


class TColStd_HArray1OfExtendedString(TColStd_Array1OfExtendedString, Standard_Transient):
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def Array1(self) -> TColStd_Array1OfExtendedString: ...


class TColStd_HArray1OfReal(TColStd_Array1OfReal, Standard_Transient):
    def __init__(self, theLower: int, theUpper: int) -> None: ...
    def Array1(self) -> TColStd_Array1OfReal: ...

# harray2 classes

class TColStd_HArray2OfInteger(TColStd_Array2OfInteger, Standard_Transient):
    @overload
    def __init__(self, theRowLow: int, theRowUpp: int, theColLow: int, theColUpp: int) -> None: ...
    @overload
    def __init__(self, theOther: TColStd_Array2OfInteger) -> None: ...
    def Array2(self) -> TColStd_Array2OfInteger: ...


class TColStd_HArray2OfTransient(TColStd_Array2OfTransient, Standard_Transient):
    @overload
    def __init__(self, theRowLow: int, theRowUpp: int, theColLow: int, theColUpp: int) -> None: ...
    @overload
    def __init__(self, theOther: TColStd_Array2OfTransient) -> None: ...
    def Array2(self) -> TColStd_Array2OfTransient: ...


class TColStd_HArray2OfBoolean(TColStd_Array2OfBoolean, Standard_Transient):
    @overload
    def __init__(self, theRowLow: int, theRowUpp: int, theColLow: int, theColUpp: int) -> None: ...
    @overload
    def __init__(self, theOther: TColStd_Array2OfBoolean) -> None: ...
    def Array2(self) -> TColStd_Array2OfBoolean: ...


class TColStd_HArray2OfReal(TColStd_Array2OfReal, Standard_Transient):
    @overload
    def __init__(self, theRowLow: int, theRowUpp: int, theColLow: int, theColUpp: int) -> None: ...
    @overload
    def __init__(self, theOther: TColStd_Array2OfReal) -> None: ...
    def Array2(self) -> TColStd_Array2OfReal: ...


class TColStd_HArray2OfCharacter(TColStd_Array2OfCharacter, Standard_Transient):
    @overload
    def __init__(self, theRowLow: int, theRowUpp: int, theColLow: int, theColUpp: int) -> None: ...
    @overload
    def __init__(self, theOther: TColStd_Array2OfCharacter) -> None: ...
    def Array2(self) -> TColStd_Array2OfCharacter: ...

# hsequence classes

class TColStd_HSequenceOfInteger(TColStd_SequenceOfInteger, Standard_Transient):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, other: TColStd_SequenceOfInteger) -> None: ...
    def Sequence(self) -> TColStd_SequenceOfInteger: ...
    def Append(self, theSequence: TColStd_SequenceOfInteger) -> None: ...


class TColStd_HSequenceOfExtendedString(TColStd_SequenceOfExtendedString, Standard_Transient):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, other: TColStd_SequenceOfExtendedString) -> None: ...
    def Sequence(self) -> TColStd_SequenceOfExtendedString: ...
    def Append(self, theSequence: TColStd_SequenceOfExtendedString) -> None: ...


class TColStd_HSequenceOfTransient(TColStd_SequenceOfTransient, Standard_Transient):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, other: TColStd_SequenceOfTransient) -> None: ...
    def Sequence(self) -> TColStd_SequenceOfTransient: ...
    def Append(self, theSequence: TColStd_SequenceOfTransient) -> None: ...


class TColStd_HSequenceOfHAsciiString(TColStd_SequenceOfHAsciiString, Standard_Transient):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, other: TColStd_SequenceOfHAsciiString) -> None: ...
    def Sequence(self) -> TColStd_SequenceOfHAsciiString: ...
    def Append(self, theSequence: TColStd_SequenceOfHAsciiString) -> None: ...


class TColStd_HSequenceOfHExtendedString(TColStd_SequenceOfHExtendedString, Standard_Transient):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, other: TColStd_SequenceOfHExtendedString) -> None: ...
    def Sequence(self) -> TColStd_SequenceOfHExtendedString: ...
    def Append(self, theSequence: TColStd_SequenceOfHExtendedString) -> None: ...


class TColStd_HSequenceOfReal(TColStd_SequenceOfReal, Standard_Transient):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, other: TColStd_SequenceOfReal) -> None: ...
    def Sequence(self) -> TColStd_SequenceOfReal: ...
    def Append(self, theSequence: TColStd_SequenceOfReal) -> None: ...


class TColStd_HSequenceOfAsciiString(TColStd_SequenceOfAsciiString, Standard_Transient):
    @overload
    def __init__(self) -> None: ...
    @overload
    def __init__(self, other: TColStd_SequenceOfAsciiString) -> None: ...
    def Sequence(self) -> TColStd_SequenceOfAsciiString: ...
    def Append(self, theSequence: TColStd_SequenceOfAsciiString) -> None: ...


