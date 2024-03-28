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
%define INTSTARTDOCSTRING
"IntStart module, see official documentation at
https://www.opencascade.com/doc/occt-7.7.0/refman/html/package_intstart.html"
%enddef
%module (package="OCC.Core", docstring=INTSTARTDOCSTRING) IntStart


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
#include<IntStart_module.hxx>

//Dependencies
#include<Standard_module.hxx>
#include<NCollection_module.hxx>
#include<gp_module.hxx>
#include<TopAbs_module.hxx>
#include<TColgp_module.hxx>
#include<TColStd_module.hxx>
#include<TCollection_module.hxx>
#include<Storage_module.hxx>
%};
%import Standard.i
%import NCollection.i
%import gp.i
%import TopAbs.i

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
%wrap_handle(IntStart_SITopolTool)
/* end handles declaration */

/* templates */
/* end templates declaration */

/* typedefs */
/* end typedefs declaration */

/*****************************
* class IntStart_SITopolTool *
*****************************/
%nodefaultctor IntStart_SITopolTool;
class IntStart_SITopolTool : public Standard_Transient {
	public:
		/****************** Classify ******************/
		/**** md5 signature: 57cb8b2ba77b23acfa05dd678fe20285 ****/
		%feature("compactdefaultargs") Classify;
		%feature("autodoc", "
Parameters
----------
P: gp_Pnt2d
Tol: float

Return
-------
TopAbs_State

Description
-----------
No available documentation.
") Classify;
		virtual TopAbs_State Classify(const gp_Pnt2d & P, const Standard_Real Tol);

};


%make_alias(IntStart_SITopolTool)

%extend IntStart_SITopolTool {
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
