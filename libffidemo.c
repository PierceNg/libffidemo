/*
 * This library is written to demonstrate Pharo 5's Unified FFI.
 * Copyright (c) Pierce Ng.
 * This code is published under the MIT license.
 */

#include <stdlib.h>

struct demo_thing {
  int value;
};

typedef struct demo_thing demo_thing;

int alloc_by_pointer_pointer(demo_thing **ppthing)
{
  demo_thing *thing;

  thing = malloc(sizeof(demo_thing));
  if (thing != 0) {
    thing->value = -999;
    *ppthing = thing;
    return 1;
  } else {
    return 0;
  };
}

demo_thing* alloc_by_returned_pointer(void)
{
  demo_thing *thing;

  thing = malloc(sizeof(demo_thing));
  if (thing != 0)
    thing->value = -999;
  return thing;
}

int free_thing(demo_thing *pthing)
{
  if (pthing != 0) {
    free(pthing);
    return 1; 
  } else {
    return 0;
  }
}

int set(demo_thing *pthing, int value)
{
  if (pthing != 0) {
    pthing->value = value;
    return 1;
  } else {
    return 0;
  }
}
int get_by_filling_pointer(demo_thing *pthing, int *pvalue) 
{
  if (pthing != 0) {
    *pvalue = pthing->value;
    return 1;
  } else {
    return 0;
  }
}

int get_by_returned_value(demo_thing *pthing)
{
  if (pthing != 0) {
    return pthing->value;
  } else {
    return -1000;
  }
}
