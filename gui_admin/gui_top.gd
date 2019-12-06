# gui_top.gd
# This file is part of I, Voyager
# https://ivoyager.dev
# Copyright (c) 2017-2019 Charlie Whitfield
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
# GUITop is current scene on launch (before system build) and again on exit.
#
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !!!!!!!!          Developers! The place to start is:                 !!!!!!!!
# !!!!!!!!          ivoyager/singletons/project_builder.gd             !!!!!!!!
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

extends Control
class_name GUITop

const PERSIST_AS_PROCEDURAL_OBJECT := false

func _ready():
	set_anchors_and_margins_preset(PRESET_WIDE)
	mouse_filter = MOUSE_FILTER_IGNORE
	pause_mode = PAUSE_MODE_PROCESS
