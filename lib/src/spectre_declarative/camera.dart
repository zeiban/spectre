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

library spectre_declarative_camera;

import 'package:polymer/polymer.dart';
import 'package:spectre/spectre.dart';
import 'package:spectre/src/spectre_declarative/element.dart';

/**
 * <s-camera id="mainCamera"></s-camera>
 *
 * Attributes:
 *
 * * fieldOfViewY (double, radians)
 * * position (Vector3)
 * * eyeDirection (Vector3)
 * * upDirection (Vector3)
 * * zNear (double)
 * * zfar (double)
 * * yaw
 * * pitch
 */
class SpectreCameraElement extends SpectreElement {
  Camera camera;

  void created() {
    super.created();
  }

  void inserted() {
    super.inserted();
  }

  void removed() {
    super.removed();
  }

  void apply() {
  }

  void render() {
  }

  void unapply() {
  }
}
