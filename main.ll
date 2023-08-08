@.str = private unnamed_addr constant[4 x i8] c "foo\00", align 1

declare i32 @puts(i8*)

define i32 @main()
{
  %cast = getelementptr[4 x i8], [4 x i8] * @.str, i32 0, i32 0
  
  call i32 @puts(i8 * %cast)

  ret i32 0
}