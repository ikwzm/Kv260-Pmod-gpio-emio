import gpiod
import time

class PmodLEDx8:
    def __init__(self, chip_path, line_list):
        self.line_settings = gpiod.LineSettings(
            direction    = gpiod.line.Direction.OUTPUT,
            output_value = gpiod.line.Value.INACTIVE,
            active_low   = True
        )
        self.line_list   = line_list
        self.line_config = {line: self.line_settings for line in line_list}
        self.lines       = gpiod.request_lines(
            chip_path,
            consumer     = "pmod-ledx8",
            config       = self.line_config
        )

    def turn_on(self, index):
        line = self.line_list[index]
        self.lines.set_value(line, gpiod.line.Value.ACTIVE)

    def turn_off(self, index):
        line = self.line_list[index]
        self.lines.set_value(line, gpiod.line.Value.INACTIVE)

    def turn_all(self, value):
        for i in range(len(self.line_list)):
            if value & (1 << i):
                self.turn_on(i)
            else:
                self.turn_off(i)
            
        
if __name__ == '__main__':
    pmod_led     = PmodLEDx8('/dev/gpiochip1', [78,82,79,83,80,84,81,85])

    pattern_list = [0x03,0x06,0x0c,0x18,0x30,0x60,0xc0,0x60,0x30,0x18,0x06]
    for count in range(4):
        for pattern in pattern_list:
            pmod_led.turn_all(pattern)
            time.sleep(0.1)

    pattern_list = [0x00,0x18,0x3C,0x66,0xC3,0x81,0xC3,0x66,0x3C,0x18]
    for count in range(4):
        for pattern in pattern_list:
            pmod_led.turn_all(pattern)
            time.sleep(0.1)
    pmod_led.turn_all(0)

