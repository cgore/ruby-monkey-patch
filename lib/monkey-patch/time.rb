# -*- coding: utf-8 -*-

# Copyright © 2013-2014, Christopher Mark Gore,
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

require 'active_support/core_ext'

class Time
  def start_of_second
    Time.parse strftime "%Y-%m-%d %H:%M:%S %z"
  end

  def start_of_minute
    Time.parse strftime "%Y-%m-%d %H:%M:00 %z"
  end

  def start_of_half_hour
    if min < 30
      Time.parse strftime "%Y-%m-%d %H:00:00 %z"
    else
      Time.parse strftime "%Y-%m-%d %H:30:00 %z"
    end
  end

  def start_of_hour
    Time.parse strftime "%Y-%m-%d %H:00:00 %z"
  end

  def start_of_half_day
    if hour < 12
      Time.parse strftime "%Y-%m-%d 00:00:00 %z"
    else
      Time.parse strftime "%Y-%m-%d 12:00:00 %z"
    end
  end

  def start_of_day
    Time.parse strftime "%Y-%m-%d 00:00:00 %z"
  end

  def start_of_week
    start_of_day - wday.days
  end

  def start_of_month
    Time.parse strftime "%Y-%m-01 00:00:00 %z"
  end

  def start_of_year
    Time.parse strftime "%Y-01-01 00:00:00 %z"
  end

  def start_of_decade
    Time.parse strftime "#{year - year % 10}-01-01 00:00:00 %z"
  end

  def start_of_full_decade
    decade = if year % 10 == 0
               year - 9
             else
               year - year % 10 + 1
             end
    Time.parse strftime "#{decade}-01-01 00:00:00 %z"
  end

  def start_of_century
    Time.parse strftime "#{year - year % 100}-01-01 00:00:00 %z"
  end

  def start_of_full_century
    century = if year % 100 == 0
                year - 99
              else
                year - year % 100 + 1
              end
    Time.parse strftime "#{century}-01-01 00:00:00 %z"
  end

  class << self
    %w(commercial england gregorian italy jd jisx0301 julian ld mjd ordinal today yesterday)
    .each do |method|
      class_eval %{
        def #{method}(*rest)
          Date.#{method}(*rest).to_time
        end
      }
    end
  end
end
