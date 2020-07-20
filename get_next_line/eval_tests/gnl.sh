for f in eval_tests/*.test
do
	mv "$f" "${f%.test}"
done
make -C libft fclean && make -C libft && make -C libft clean
gcc -g -I libft/includes -o get_next_line.o -c get_next_line.c
gcc -g -Wall -Wextra -Werror -I libft/includes -o main.o -c eval_tests/main_test.c
gcc -g -o test_gnl main.o get_next_line.o -I libft/includes -L libft/ -lft
rm main.o get_next_line.o
echo "compiled executable test_gnl"
echo "\nBUFF_SIZE setting:"
cat get_next_line.h | grep -e 'BUFF_SIZE'
test_number=1
for file in eval_tests/test_files
do
	echo "\n--- test $test_number: ./test_gnl $file\t---"
	./test_gnl file > test_output
	diff test_output file > diff_output
	if [ -s diff_output ]
	then
		echo "diff test_output $file"
		cat diff_output
	else
		echo "diff test_output $file OK"
	fi
	test_number=test_number+1
	rm test_output diff_output
done
echo "\nalso check: NULL line, memory leaks, multiple fds\n"
