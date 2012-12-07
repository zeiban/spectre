part of spectre;

/*

  Copyright (C) 2012 John McCutchan <john@johnmccutchan.com>

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

/// SamplerState defines how a texture is sampled
/// Create using [Device.createSamplerState]
/// Set using [immediateContext.setSamplerStates]
class SamplerState extends DeviceChild {
  static final int TextureWrapClampToEdge = WebGLRenderingContext.CLAMP_TO_EDGE;
  static final int TextureWrapMirroredRepeat = WebGLRenderingContext.MIRRORED_REPEAT;
  static final int TextureWrapRepeat = WebGLRenderingContext.REPEAT;

  static final int TextureMagFilterLinear = WebGLRenderingContext.LINEAR;
  static final int TextureMagFilterNearest = WebGLRenderingContext.NEAREST;

  static final int TextureMinFilterLinear = WebGLRenderingContext.LINEAR;
  static final int TextureMinFilterNearest = WebGLRenderingContext.NEAREST;
  static final int TextureMinFilterNearestMipmapNearest = WebGLRenderingContext.NEAREST_MIPMAP_NEAREST;
  static final int TextureMinFilterNearestMipmapLinear = WebGLRenderingContext.NEAREST_MIPMAP_LINEAR;
  static final int TextureMinFilterLinearMipmapNearest = WebGLRenderingContext.LINEAR_MIPMAP_NEAREST;
  static final int TextureMinFilterLinearMipmapLinear = WebGLRenderingContext.LINEAR_MIPMAP_LINEAR;

  int wrapS;
  int wrapT;
  int magFilter;
  int minFilter;

  SamplerState(String name, GraphicsDevice device) : super._internal(name, device) {
    wrapS = TextureWrapRepeat;
    wrapT = TextureWrapRepeat;
    minFilter = TextureMinFilterNearestMipmapLinear;
    magFilter = TextureMagFilterLinear;
  }

  void _createDeviceState() {
    super._createDeviceState();
  }

  dynamic filter(dynamic o) {
    if (o is String) {
      var table = {
        "TextureWrapClampToEdge": WebGLRenderingContext.CLAMP_TO_EDGE,
        "TextureWrapMirroredRepeat": WebGLRenderingContext.MIRRORED_REPEAT,
        "TextureWrapRepeat": WebGLRenderingContext.REPEAT,
        "TextureMagFilterLinear": WebGLRenderingContext.LINEAR,
        "TextureMagFilterNearest": WebGLRenderingContext.NEAREST,
        "TextureMinFilterLinear": WebGLRenderingContext.LINEAR,
        "TextureMinFilterNearest": WebGLRenderingContext.NEAREST,
        "TextureMinFilterNearestMipmapNearest": WebGLRenderingContext.NEAREST_MIPMAP_NEAREST,
        "TextureMinFilterNearestMipmapLinear": WebGLRenderingContext.NEAREST_MIPMAP_LINEAR,
        "TextureMinFilterLinearMipmapNearest": WebGLRenderingContext.LINEAR_MIPMAP_NEAREST,
        "TextureMinFilterLinearMipmapLinear": WebGLRenderingContext.LINEAR_MIPMAP_LINEAR
      };
      return table[o];
    }
    return o;
  }

  void _configDeviceState(Map props) {
    if (props != null) {
      dynamic o;
      o = props['wrapS'];
      wrapS = o != null ? filter(o) : wrapS;
      o = props['wrapT'];
      wrapT = o != null ? filter(o) : wrapT;
      o = props['minFilter'];
      minFilter = o != null ? filter(o) : minFilter;
      o = props['magFilter'];
      magFilter = o != null ? filter(o) : magFilter;
    }

  }

  void _destroyDeviceState() {
  }
}