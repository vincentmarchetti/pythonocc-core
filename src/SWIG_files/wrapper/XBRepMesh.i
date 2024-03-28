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
%define XBREPMESHDOCSTRING
"XBRepMesh module, see official documentation at
https://www.opencascade.com/doc/occt-7.7.0/refman/html/package_xbrepmesh.html"
%enddef
%module (package="OCC.Core", docstring=XBREPMESHDOCSTRING) XBRepMesh


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
#include<XBRepMesh_module.hxx>

//Dependencies
#include<Standard_module.hxx>
#include<NCollection_module.hxx>
#include<TopoDS_module.hxx>
#include<BRepMesh_module.hxx>
#include<Adaptor2d_module.hxx>
#include<Geom2dAdaptor_module.hxx>
#include<Geom_module.hxx>
#include<BRepAdaptor_module.hxx>
#include<GeomAdaptor_module.hxx>
#include<Geom2d_module.hxx>
#include<TopLoc_module.hxx>
#include<Adaptor3d_module.hxx>
#include<Message_module.hxx>
#include<Bnd_module.hxx>
#include<Poly_module.hxx>
#include<TShort_module.hxx>
#include<IMeshTools_module.hxx>
#include<TColgp_module.hxx>
#include<TColStd_module.hxx>
#include<TCollection_module.hxx>
#include<Storage_module.hxx>
%};
%import Standard.i
%import NCollection.i
%import TopoDS.i
%import BRepMesh.i

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
/* end handles declaration */

/* templates */
/* end templates declaration */

/* typedefs */
/* end typedefs declaration */

/******************
* class XBRepMesh *
******************/
%rename(xbrepmesh) XBRepMesh;
class XBRepMesh {
	public:
		/****************** Discret ******************/
		/**** md5 signature: 2d40e0c47db8d58631623439c9d30c12 ****/
		%feature("compactdefaultargs") Discret;
		%feature("autodoc", "
Parameters
----------
theShape: TopoDS_Shape
theDeflection: float
theAngle: float
theAlgo: BRepMesh_DiscretRoot *

Return
-------
int

Description
-----------
No available documentation.
") Discret;
		static Standard_Integer Discret(const TopoDS_Shape & theShape, const Standard_Real theDeflection, const Standard_Real theAngle, BRepMesh_DiscretRoot * & theAlgo);

};


%extend XBRepMesh {
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
def xbrepmesh_Discret(*args):
	return xbrepmesh.Discret(*args)

}
