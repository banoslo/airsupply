#include "src/wiringPi.h"

#include <iostream>

enum Status {
  success = 0,
  failure = 1
};

int main() {
  if (wiringPiSetup() == -1)
    return failure;

  return success;
}
