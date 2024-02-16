class ColoredRectangle
    def initialize(r, g, b, s1, s2) # вызывается автоматически из new
        @r, @g, @b, @s1, @s2 = r, g, b, s1, s2
    end
    def self.white_rect(s1, s2) # альтернативный “конструктор”
        new(0xff, 0xff, 0xff, s1, s2)
    end
    def ColoredRectangle.red_square(s) # альтернативный “конструктор”
        new(0xff, 0, 0, s, s)
    end
    def inspect; 
        "#{@r} #{@g} #{@b} #{@s1} #{@s2}" 
    end
end

a = ColoredRectangle.new(0x88, 0xaa, 0xff, 20, 30)
b = ColoredRectangle.white_rect(15, 25)
c = ColoredRectangle.red_square(40)
p a, b, c
puts a.inspect