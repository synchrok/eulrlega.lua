# eulrlega.lua

Simple Korean Stemming Module for find appropriate Particle.
Lua에서 문자열 뒤에 붙을 말이 을(이/은)인지 를(가/는)인지 알려줍니다.
(Corona SDK 용 예제도 포함되어 있습니다.)

## Usage & Examples

First, Import eulrlega.
    
    require("eulrlega")

Second, Just Use!

eulrlega(word) : return true if it have syllable
    
    t(eulrlega(word), "을", "를")

get_eulrl(word), get_ega(word), get_eunnn(word) : return appropriate Particle
    
    local a, b = "테스트", "타겟"
    print(a .. get_ega(a) .. " " .. b .. get_eulrl(b) .. " 공격했습니다!")
    => 테스트가 타겟을 공격했습니다!
    
    print(string.format("오늘%s 치킨%s 시켜먹었는데 맛%s.. 치느님%s 역시 날 실망시키지 않으셨다.", 
    get_eunnn("오늘"), get_eulrl("치킨"), get_ega("맛"), get_eunnn("치느님")))
    => 오늘은 치킨을 시켜먹었는데 맛이.. 치느님은 역시 날 실망시키지 않으셨다.

## License

WTFPL(Do What the Fuck You Want to Public License)

DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
Version 2, December 2004

Copyright (C) 2004 Azur3Sky <admin@steelheartdev.me>

Everyone is permitted to copy and distribute verbatim or modified
copies of this license document, and changing it is allowed as long
as the name is changed.

DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

0. You just DO WHAT THE FUCK YOU WANT TO.

