# light_builder.gd
# This file is part of I, Voyager (https://ivoyager.dev)
# *****************************************************************************
# Copyright (c) 2017-2020 Charlie Whitfield
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# *****************************************************************************
# Only a star's OmniLight for now.

class_name LightBuilder

const METER := UnitDefs.METER

var _table_data: Dictionary = Global.table_data
var _table_fields: Dictionary = Global.table_fields


func project_init() -> void:
	pass

func add_starlight(body: Body) -> void:
	if body.light_type != -1:
		var starlight := OmniLight.new()
		var row_data: Array = _table_data.lights[body.light_type]
		var fields: Dictionary = _table_fields.lights
		starlight.omni_range = row_data[fields.omni_range]
		starlight.name = "Starlight"
		body.add_child(starlight)
