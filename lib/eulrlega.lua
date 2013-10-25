function t( c, a, b ) if c then return a else return b end end

function from_utf8( utf8 )
    local b0, b1, b2 = string.byte(utf8, 1), string.byte(utf8, 2) % 0x40, string.byte(utf8, 3) % 0x40
    if math.floor(b0 / 0x10) == 0x0E then
        return (b0 % 0x10) * 0x1000 + b1 * 0x40 + b2
    end
end

function eulrlega( word )
    local v = from_utf8(string.sub(word, -3))
    if (v - 0xAC00) % 28 ~= 0 then
        return true
    else
        return false
    end
end

function get_eulrl( word )
    return t(eulrlega(word), "을", "를")
end

function get_ega( word )
    return t(eulrlega(word), "이", "가")
end

function get_eunnn( word )
    return t(eulrlega(word), "은", "는")
end
