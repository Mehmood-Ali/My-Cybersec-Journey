/************************************************************
 * Fire and Metal Detection Robot
 * Microcontroller: AT89C51 (8051 family)
 * Compiler: Keil µVision (Embedded C)
 *
 * Features:
 * - Detects fire using flame sensor (digital input)
 * - Detects metal using 555 Timer-based sensor circuit
 * - Displays status on 16x2 LCD
 * - Alerts using buzzer
 * - Controls robot movement via L293D motor driver
 *
 * Author: Mehmood Ali
 ************************************************************/

#include <REGX51.H>       // Header file for AT89C51

/* Pin Definitions */
sbit FLAME_SENSOR = P1^0;   // Flame sensor input
sbit METAL_SENSOR = P1^1;   // Metal sensor input
sbit BUZZER       = P1^2;   // Buzzer output

// Motor control pins (L293D driver)
sbit MOTOR_LEFT_FWD  = P2^0;
sbit MOTOR_LEFT_BWD  = P2^1;
sbit MOTOR_RIGHT_FWD = P2^2;
sbit MOTOR_RIGHT_BWD = P2^3;

// LCD Control Pins
sbit RS = P3^0;
sbit RW = P3^1;
sbit EN = P3^2;

#define LCD_DATA P0   // LCD Data port

/**************** Function Prototypes ****************/
void delay(unsigned int ms);
void lcd_cmd(unsigned char cmd);
void lcd_data(unsigned char dat);
void lcd_init(void);
void lcd_string(char *str);
void robot_forward(void);
void robot_stop(void);

/**************** Delay Function ****************/
void delay(unsigned int ms) {
    unsigned int i, j;
    for(i=0; i<ms; i++) {
        for(j=0; j<1275; j++);  // Roughly 1 ms delay at 11.0592 MHz
    }
}

/**************** LCD Functions ****************/
void lcd_cmd(unsigned char cmd) {
    LCD_DATA = cmd;
    RS = 0;     // Command mode
    RW = 0;     // Write mode
    EN = 1;
    delay(2);
    EN = 0;
}

void lcd_data(unsigned char dat) {
    LCD_DATA = dat;
    RS = 1;     // Data mode
    RW = 0;
    EN = 1;
    delay(2);
    EN = 0;
}

void lcd_init(void) {
    lcd_cmd(0x38);   // 8-bit, 2 line, 5x7 font
    lcd_cmd(0x0C);   // Display ON, Cursor OFF
    lcd_cmd(0x06);   // Entry mode
    lcd_cmd(0x01);   // Clear display
    delay(2);
}

void lcd_string(char *str) {
    while(*str) {
        lcd_data(*str++);
    }
}

/**************** Robot Movement ****************/
void robot_forward(void) {
    MOTOR_LEFT_FWD = 1;
    MOTOR_LEFT_BWD = 0;
    MOTOR_RIGHT_FWD = 1;
    MOTOR_RIGHT_BWD = 0;
}

void robot_stop(void) {
    MOTOR_LEFT_FWD = 0;
    MOTOR_LEFT_BWD = 0;
    MOTOR_RIGHT_FWD = 0;
    MOTOR_RIGHT_BWD = 0;
}

/**************** Main Program ****************/
void main(void) {
    lcd_init();
    lcd_string("Fire & Metal");
    lcd_cmd(0xC0);
    lcd_string("Detection Robot");
    delay(2000);
    lcd_cmd(0x01);   // Clear LCD

    while(1) {
        if(FLAME_SENSOR == 1) {           // Fire detected
            robot_stop();
            BUZZER = 1;
            lcd_cmd(0x80);
            lcd_string(" Fire Detected ");
            delay(1000);
        }
        else if(METAL_SENSOR == 1) {      // Metal detected
            robot_stop();
            BUZZER = 1;
            lcd_cmd(0x80);
            lcd_string(" Metal Detected ");
            delay(1000);
        }
        else {                            // Normal condition
            robot_forward();
            BUZZER = 0;
            lcd_cmd(0x80);
            lcd_string(" Path Clear    ");
        }
    }
}
