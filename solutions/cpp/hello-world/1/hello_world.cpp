#include <iostream>
#include "hello_world.h"

namespace hello_world {

  std::string hello() {
    std::string greeting = "Hello, World!";
    return greeting;
  }
}