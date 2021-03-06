# -*- coding: utf-8 -*-
# -*- mode: Ruby -*-

# Copyright © 2013-2016, Christopher Mark Gore,
# Soli Deo Gloria,
# All rights reserved.
#
# 2317 South River Road, Saint Charles, Missouri 63303 USA.
# Web: http://cgore.com
# Email: cgore@cgore.com
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright
#   notice, this list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright
#   notice, this list of conditions and the following disclaimer in the
#   documentation and/or other materials provided with the distribution.
#
# * Neither the name of Christopher Mark Gore nor the names of other
#   contributors may be used to endorse or promote products derived from
#   this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

Gem::Specification.new do |s|
  s.name = 'monkey-patch'
  s.version = '0.1.0'
  s.date = '2016-08-18'
  s.summary = "A simple library with common monkey patches for the standard Ruby classes."
  s.description = "A simple library with common monkey patches for the standard Ruby classes."
  s.authors = ['Christopher Mark Gore',
               'Tom Mornini']
  s.email = 'cgore@cgore.com'
  s.required_ruby_version = ">= 2.2.2"
  s.add_dependency 'activesupport'
  s.files = ['lib/monkey-patch.rb',
             'lib/monkey_patch.rb',
             'lib/monkey-patch/array.rb',
             'lib/monkey-patch/enumerable.rb',
             'lib/monkey-patch/hash.rb',
             'lib/monkey-patch/pathname.rb',
             'lib/monkey-patch/string.rb',
             'lib/monkey-patch/time.rb']
  s.homepage = 'https://github.com/cgore/ruby-monkey-patch'
end
