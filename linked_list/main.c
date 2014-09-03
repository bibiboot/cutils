#include <sys/queue.h>
#include <ctype.h>
#include <stdlib.h>
#include <string.h>
#include "event.h"
#include <stdio.h>

int
add_node(struct evkeyvalq *headers,
         const char * const key, const char * const value)
{
  struct evkeyval *header = calloc(1, sizeof(struct evkeyval));
  if (header == NULL) {
    printf("%s: calloc", __func__);
    return (-1);
  }
  if ((header->key = strdup(key)) == NULL) {
    free(header);
    printf("%s: strdup", __func__);
    return (-1);
  }
  if ((header->value = strdup(value)) == NULL) {
    free(header->key);
    free(header);
    printf("%s: strdup", __func__);
    return (-1);
  }
  TAILQ_INSERT_TAIL(headers, header, next);
  return (0);
}

int
print_linkedlist(const struct evkeyvalq *source)
{
  struct evkeyval *header;
  TAILQ_FOREACH(header, source, next) {
    printf("Key: %s\tValue: %s\n", header->key, header->value);
  }
  return 0;
}

int main(int argc, char *argv[]){
  struct evkeyvalq headers;
  TAILQ_INIT(&headers);
  char key[100] = "Apple";
  char value[100] = "Dog";

  add_node(&headers, key, value);
  add_node(&headers, "Banana", "Monkey");

  print_linkedlist(&headers);
  return 0;
}
