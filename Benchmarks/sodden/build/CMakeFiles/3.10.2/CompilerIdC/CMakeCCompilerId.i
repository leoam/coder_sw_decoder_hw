# 1 "CMakeCCompilerId.c"
# 1 "/home/leonardo/Documents/Maestria/Tesis/sodden/build/CMakeFiles/3.10.2/CompilerIdC//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "CMakeCCompilerId.c"
# 295 "CMakeCCompilerId.c"
char const* info_compiler = "INFO" ":" "compiler[" "GNU" "]";
# 495 "CMakeCCompilerId.c"
char const info_version[] = {
  'I', 'N', 'F', 'O', ':',
  'c','o','m','p','i','l','e','r','_','v','e','r','s','i','o','n','[',
  ('0' + (((7) / 10000000)%10)), ('0' + (((7) / 1000000)%10)), ('0' + (((7) / 100000)%10)), ('0' + (((7) / 10000)%10)), ('0' + (((7) / 1000)%10)), ('0' + (((7) / 100)%10)), ('0' + (((7) / 10)%10)), ('0' + ((7) % 10)),

  '.', ('0' + (((5) / 10000000)%10)), ('0' + (((5) / 1000000)%10)), ('0' + (((5) / 100000)%10)), ('0' + (((5) / 10000)%10)), ('0' + (((5) / 1000)%10)), ('0' + (((5) / 100)%10)), ('0' + (((5) / 10)%10)), ('0' + ((5) % 10)),

   '.', ('0' + (((0) / 10000000)%10)), ('0' + (((0) / 1000000)%10)), ('0' + (((0) / 100000)%10)), ('0' + (((0) / 10000)%10)), ('0' + (((0) / 1000)%10)), ('0' + (((0) / 100)%10)), ('0' + (((0) / 10)%10)), ('0' + ((0) % 10)),





  ']','\0'};
# 542 "CMakeCCompilerId.c"
char const* info_platform = "INFO" ":" "platform[" "Linux" "]";
char const* info_arch = "INFO" ":" "arch[" "]";
# 561 "CMakeCCompilerId.c"
const char* info_language_dialect_default =
  "INFO" ":" "dialect_default[" "11" "]";
# 572 "CMakeCCompilerId.c"
int main(int argc, char* argv[])

{
  int require = 0;
  require += info_compiler[argc];
  require += info_platform[argc];
  require += info_arch[argc];

  require += info_version[argc];
# 594 "CMakeCCompilerId.c"
  require += info_language_dialect_default[argc];
  (void)argv;
  return require;
}
