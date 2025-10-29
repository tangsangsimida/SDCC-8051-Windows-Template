#include <8051.h>

void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < 114; j++);
}

void main(void) {
    P1 = 0x00;
    while (1) {
        P1 = ~P1;      // 翻转 P1 口（LED 闪烁）
        delay_ms(500);
    }
}