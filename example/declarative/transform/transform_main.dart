/*
  Copyright (C) 2013 John McCutchan

  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

library transform_main;

import 'dart:async';
import 'dart:html';
import 'dart:math' as Math;
import 'dart:typed_data';

import 'package:asset_pack/asset_pack.dart';
import 'package:game_loop/game_loop_html.dart';

import 'package:spectre/spectre.dart';
import 'package:spectre/spectre_asset_pack.dart';
import 'package:spectre/spectre_declarative.dart';
import 'package:spectre/spectre_example_ui.dart';
import 'package:spectre/spectre_declarative_main.dart' as declarative;
import 'package:vector_math/vector_math.dart';


void main() {
  declarative.main('#backBuffer', '#spectre');

  double t = 0.0;
  // Query the dom for the transform element.
  SpectreTransformElement ste = query('#tform').xtag;

  // Once every 16 milliseconds, adjust the transform node.
  new Timer.periodic(const Duration(milliseconds: 16), (_) {
    ste.T.setIdentity();
    double h = Math.sin(t);
    ste.T.translate(0.0, h * 3.0, 0.0);
    t += 0.016;
  });
}