#include <iostream>
using namespace std;

int stack[5];
int top = -1;

void push(int x) {
    if (top < 4) {
        stack[++top] = x;
    }
}

int main() {
    push(10);
    push(20);

    cout << stack[top];
}
