#ifndef CONTROL
#define CONTROL

#include "baseHeaders.h"
#include "helpers.h"

//Has to be declared on Linux machines
union semun {
  int val;                 // Value for SETVAL 
  struct semid_ds *buf;    // Buffer for IPC_STAT, IPC_SET 
  unsigned short *array;  // Array for GETALL, SETALL 
  struct seminfo *__buf;  // Buffer for IPC_INFO
};

int main();

#endif
