#!/usr/bin/env python

##Copyright 2009 Thomas Paviot (tpaviot@gmail.com)
##
##This file is part of pythonOCC.
##
##pythonOCC is free software: you can redistribute it and/or modify
##it under the terms of the GNU Lesser General Public License as published by
##the Free Software Foundation, either version 3 of the License, or
##(at your option) any later version.
##
##pythonOCC is distributed in the hope that it will be useful,
##but WITHOUT ANY WARRANTY; without even the implied warranty of
##MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##GNU Lesser General Public License for more details.
##
##You should have received a copy of the GNU Lesser General Public License
##along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

import os
import unittest

from OCC.Core.BRepPrimAPI import BRepPrimAPI_MakeTorus
from OCC.Core.TopoDS import TopoDS_Compound

from OCC.Extend.DataExchange import (
    read_step_file,
    read_step_file_with_names_colors,
    read_stl_file,
    read_iges_file,
    read_gltf_file,
    write_step_file,
    write_stl_file,
    write_iges_file,
    write_ply_file,
    write_obj_file,
    write_gltf_file,
    export_shape_to_svg,
)
from OCC.Extend.TopologyUtils import TopologyExplorer

SAMPLES_DIRECTORY = os.path.join(".", "test_io")


def get_test_fullname(filename):
    return os.path.join(SAMPLES_DIRECTORY, filename)


# the sample files
STEP_AP203_SAMPLE_FILE = get_test_fullname("as1_pe_203.stp")
STEP_AP214_SAMPLE_FILE = get_test_fullname("as1-oc-214.stp")
STEP_MULTIPLE_ROOT = get_test_fullname("stp_multiple_shp_at_root.stp")
IGES_SAMPLE_FILE = get_test_fullname("sunglasses_lens.igs")
IGES_45_FACES = get_test_fullname("example_45_faces.iges")
STL_ASCII_SAMPLE_FILE = get_test_fullname("bottle_ascii.stl")
STL_BINARY_SAMPLE_FILE = get_test_fullname("cube_binary.stl")
GLTF_ASCII_SAMPLE_FILE = get_test_fullname("Duck.gltf")

# the basic geometry to test exporters
A_TOPODS_SHAPE = BRepPrimAPI_MakeTorus(200, 50).Shape()

@unittest.skip("skipping until can control printing")
class TestExtendDataExchange(unittest.TestCase):
    def check_is_file(self, filename):
        self.assertTrue(os.path.isfile(filename))

    def test_read_step_file(self):
        read_step_file(STEP_AP203_SAMPLE_FILE)
        read_step_file(STEP_AP214_SAMPLE_FILE)

    def test_read_step_file_multiple_shape_as_root(self):
        t = read_step_file(STEP_MULTIPLE_ROOT, as_compound=True)
        self.assertTrue(isinstance(t, TopoDS_Compound))

        l = read_step_file(STEP_MULTIPLE_ROOT, as_compound=False)
        self.assertEqual(len(l), 3)

    def test_read_step_file_names_colors(self):
        read_step_file_with_names_colors(STEP_AP203_SAMPLE_FILE)
        read_step_file_with_names_colors(STEP_AP214_SAMPLE_FILE)

    def test_read_iges_file(self):
        read_iges_file(IGES_SAMPLE_FILE)

    def test_read_iges_45_shapes(self):
        all_shapes = read_iges_file(
            IGES_45_FACES, return_as_shapes=True, verbosity=True
        )
        self.assertEqual(len(all_shapes), 1)
        topo_explorer = TopologyExplorer(all_shapes[0])
        self.assertEqual(topo_explorer.number_of_faces(), 45)

    def test_read_stl_file(self):
        read_stl_file(STL_ASCII_SAMPLE_FILE)
        read_stl_file(STL_BINARY_SAMPLE_FILE)

    def test_export_shape_to_svg(self):
        svg_filename = get_test_fullname("sample.svg")
        export_shape_to_svg(A_TOPODS_SHAPE, svg_filename)
        self.check_is_file(svg_filename)

    def test_read_gltf_file(self):
        shp = read_gltf_file(GLTF_ASCII_SAMPLE_FILE)

    def test_write_step_ap203(self):
        ap203_filename = get_test_fullname("sample_ap_203.stp")
        write_step_file(A_TOPODS_SHAPE, ap203_filename, application_protocol="AP203")
        self.check_is_file(ap203_filename)

    def test_write_step_ap214(self):
        as214_filename = get_test_fullname("sample_214.stp")
        write_step_file(A_TOPODS_SHAPE, as214_filename, application_protocol="AP214IS")
        self.check_is_file(as214_filename)

    def test_write_step_ap242(self):
        ap242_filename = get_test_fullname("sample_242.stp")
        write_step_file(A_TOPODS_SHAPE, ap242_filename, application_protocol="AP242DIS")
        self.check_is_file(ap242_filename)

    def test_write_iges(self):
        iges_filename = get_test_fullname("sample.igs")
        write_iges_file(A_TOPODS_SHAPE, iges_filename)
        self.check_is_file(iges_filename)

    def test_stl_ascii(self):
        stl_ascii_filename = get_test_fullname("sample_ascii.stl")
        write_stl_file(A_TOPODS_SHAPE, stl_ascii_filename, mode="ascii")
        self.check_is_file(stl_ascii_filename)

    def test_stl_binary(self):
        stl_binary_filename = get_test_fullname("sample_binary.stl")
        write_stl_file(A_TOPODS_SHAPE, stl_binary_filename, mode="binary")
        self.check_is_file(stl_binary_filename)

    def test_write_ply(self):
        ply_filename = get_test_fullname("sample.ply")
        write_ply_file(A_TOPODS_SHAPE, ply_filename)
        self.check_is_file(ply_filename)

    def test_write_obj(self):
        obj_filename = get_test_fullname("sample.obj")
        write_obj_file(A_TOPODS_SHAPE, obj_filename)
        self.check_is_file(obj_filename)

    def test_write_gltf(self):
        gltf_filename = get_test_fullname("sample.gltf")
        write_gltf_file(A_TOPODS_SHAPE, gltf_filename)
        self.check_is_file(gltf_filename)


def suite():
    test_suite = unittest.TestSuite()
    test_suite.addTest(unittest.makeSuite(TestExtendDataExchange))
    return test_suite


if __name__ == "__main__":
    unittest.main()
