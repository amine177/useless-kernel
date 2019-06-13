void kmain(void)
{
  const char *str = "my first kernel";
  char *vidptr = (char*)0xb8000;
  unsigned int i = 0;
  unsigned int j = 0;
  while (j < 80 * 25 * 2) {
    vidptr[j] = 0x21;
    vidptr[j+1] = 0x12;
    j = j + 2;
  }

  j = 0;

  return;
}
