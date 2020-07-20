# eval_tests

Running libft tests for macOS:<br>
```
git clone https://github.com/satukoskinen/eval_tests.git tests
mv tests/libft/eval_tests eval_tests
rm -rf tests
eval_tests/p1_test.sh
eval_tests/p2_test.sh
eval_tests/bonus_test.sh
```

To run the tests only for one part, just run the corresponding script. Functions can be left out of tests by modifying the main_test.c of the part being tested. Tests that are performed for a function f can be modified in the corresponding f_test.c file. Memory leaks can be checked by uncommenting the infinite loop at the end of the main_test.c file, running the script, and executing `leaks test_part1`, `leaks test_part2` or `leaks test_bonus` in another tab. 
