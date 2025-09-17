
// Digital Code Lock System using AT89C51 Microcontroller
// Default password: 1234

#include <reg51.h>
#define LCD P2      // LCD connected to Port2
sbit RS = P3^0;
sbit RW = P3^1;
sbit EN = P3^2;

unsigned char password[4] = {'1','2','3','4'};
unsigned char entered[4];
int i = 0;

// Function prototypes
void lcd_cmd(unsigned char);
void lcd_data(unsigned char);
void lcd_init(void);
void delay(unsigned int);
char read_keypad(void);

void main() {
    lcd_init();
    lcd_cmd(0x80);
    lcd_data('E');
    lcd_data('N');
    lcd_data('T');
    lcd_data('E');
    lcd_data('R');
    lcd_data(':');

    while(1) {
        char key = read_keypad();
        if(key != 'N') {
            lcd_data('*'); // Show * for entered digit
            entered[i] = key;
            i++;
            if(i == 4) {
                if((entered[0]==password[0]) && 
                   (entered[1]==password[1]) &&
                   (entered[2]==password[2]) &&
                   (entered[3]==password[3])) {
                    lcd_cmd(0xC0);
                    lcd_data('U');
                    lcd_data('N');
                    lcd_data('L');
                    lcd_data('O');
                    lcd_data('C');
                    lcd_data('K');
                    // Trigger relay here
                } else {
                    lcd_cmd(0xC0);
                    lcd_data('W');
                    lcd_data('R');
                    lcd_data('O');
                    lcd_data('N');
                    lcd_data('G');
                    // Trigger buzzer here
                }
                i = 0; // Reset for next attempt
            }
        }
    }
}

// --- Supporting Functions ---
void lcd_cmd(unsigned char cmd) {
    LCD = cmd;
    RS = 0;
    RW = 0;
    EN = 1;
    delay(1);
    EN = 0;
    delay(1);
}
void lcd_data(unsigned char dat) {
    LCD = dat;
    RS = 1;
    RW = 0;
    EN = 1;
    delay(1);
    EN = 0;
    delay(1);
}
void lcd_init() {
    lcd_cmd(0x38); // 8-bit, 2 line
    lcd_cmd(0x0C); // Display ON, cursor OFF
    lcd_cmd(0x06); // Auto increment
    lcd_cmd(0x01); // Clear display
}
void delay(unsigned int ms) {
    int j,k;
    for(j=0;j<ms;j++)
        for(k=0;k<1275;k++);
}

// Dummy keypad reader (implement scanning logic as per 4x3 matrix)
char read_keypad() {
    // Replace with actual keypad scanning
    return 'N'; // 'N' means no key pressed
}
