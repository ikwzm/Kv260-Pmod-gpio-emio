import gpiod
import time

class PmodLEDx8:
    def __init__(self, chip_path, lo, hi):
        self.line_settings = gpiod.LineSettings(
            direction    = gpiod.line.Direction.OUTPUT,
            output_value = gpiod.line.Value.INACTIVE,
            active_low   = True
        )
        self.line_low    = lo
        self.line_high   = hi
        self.line_config = {i: self.line_settings for i in range(lo,hi)}
        self.lines       = gpiod.request_lines(
            chip_path,
            consumer     = "pmod-ledx8",
            config       = self.line_config
        )

    def set_value(self, line, value):
        if value == 0:
            self.lines.set_value(line+self.line_low, gpiod.line.Value.INACTIVE)
        else:
            self.lines.set_value(line+self.line_low, gpiod.line.Value.ACTIVE)
            
        
if __name__ == '__main__':
    pmod_led = PmodLEDx8('/dev/gpiochip1', 78, 85)
    pmod_led.set_value(0,1)
    time.sleep(2)
    pmod_led.set_value(0,0)

