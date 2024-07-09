#include <stdio.h>

// 定义可变参数宏
#define PRINTF(...) do { \
    printf("File: %s, Line: %d: ", __FILE__, __LINE__); \
    printf(__VA_ARGS__); \
} while(0)

int main() {
    int value = 10;
    PRINTF("The value is %d\n", value);
    PRINTF("This is a test message without extra arguments\n");
    return 0;
}
