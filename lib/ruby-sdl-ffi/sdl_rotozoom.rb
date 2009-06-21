#--
#
# This file is one part of:
#
# Ruby-SDL-FFI - Ruby-FFI bindings to SDL
#
# Copyright (c) 2009 John Croisant
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
#++


need { 'nicestruct' }


module SDL
  module Gfx

    SMOOTHING_OFF = 0
    SMOOTHING_ON  = 1


    class TColorRGBA < NiceStruct
      layout( :r, :uint8,
              :g, :uint8,
              :b, :uint8,
              :a, :uint8 )
    end


    class TColorY < NiceStruct
      layout( :y, :uint8 )
    end


    attach_function :rotozoomSurface,
                    [ :pointer, :double, :double, :int ], :pointer

    attach_function :rotozoomSurfaceXY,
                    [ :pointer, :double, :double, :double, :int ], :pointer

    attach_function :rotozoomSurfaceSize,
                    [ :int, :int, :double,
                      :double, :pointer, :pointer ], :void

    attach_function :rotozoomSurfaceSizeXY,
                    [ :int, :int, :double, :double,
                      :double, :pointer, :pointer ], :void


    attach_function :zoomSurface,
                    [ :pointer, :double, :double, :int ], :pointer

    attach_function :zoomSurfaceSize,
                    [ :int, :int, :double, 
                      :double, :pointer, :pointer ], :void

    attach_function :shrinkSurface, [ :pointer, :int, :int ], :pointer


    attach_function :rotateSurface90Degrees, [ :pointer, :int ], :pointer

  end
end