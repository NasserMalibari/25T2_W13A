#! /usr/bin/env dash

# ==============================================================================
# test0.sh
# Testing creating the same assignment twice
#
# Written by: Dylan Brotherston <d.brotherston@unsw.edu.au> + Nasser
# Date: 2025-06-28
# For COMP2041/9044 Assignment 1

# ==============================================================================

# add the current directory to the PATH so scripts
# can still be executed from it after we cd

PATH="$PATH:$(pwd)"

# Create a temporary directory for the test and retrieve the provided test files
test_dir="$(mktemp -d)"
cd "$test_dir" || exit 1
2041 fetch mygive

# Create a temporary directory for the referace and retrieve the provided test files
ref_dir="$(mktemp -d)"
cd "$ref_dir" || exit 1
2041 fetch mygive

# Create some files to hold output.

expected_stdout="$(mktemp)"
expected_stderr="$(mktemp)"
actual_stdout="$(mktemp)"
actual_stderr="$(mktemp)"

# Remove the temporary directory when the test is done.

trap 'rm "$expected_stdout" "$expected_stderr" "$actual_stdout" "$actual_stderr" -r "$test_dir"' INT HUP QUIT TERM EXIT


# run reference impl
cd "$ref_dir" || exit 1
2041 mygive-add lab1 multiply.tests > "$expected_stdout" 2> "$expected_stderr"

exp_status="$?"

# run mine
cd "$test_dir" || exit 1
mygive-add lab1 multiply.tests > "$actual_stdout" 2> "$actual_stderr"
actual_status="$?"

#check output is same
if ! diff "$actual_stdout" "$expected_stdout"; then
    echo "Failed: stdout outputs not the same"
    exit 1
fi

if ! diff "$actual_stderr" "$expected_stderr"; then
    echo "Failed: stderr outputs not the same"
    exit 1
fi

if [ "$exp_status" -ne "$actual_status" ]; then
    echo "Failed: status not the same"
    exit 1
fi


cd "$ref_dir" || exit 1
2041 mygive-add lab1 multiply.tests > "$expected_stdout" 2> "$expected_stderr"

exp_status="$?"

# run mine
cd "$test_dir" || exit 1
mygive-add lab1 multiply.tests > "$actual_stdout" 2> "$actual_stderr"
actual_status="$?"

#check output is same
if ! diff "$actual_stdout" "$expected_stdout"; then
    echo "Failed: stdout outputs not the same"
    exit 1
fi

if ! diff "$actual_stderr" "$expected_stderr"; then
    echo "Failed: stderr outputs not the same"
    exit 1
fi

if [ "$exp_status" -ne "$actual_status" ]; then
    echo "Failed: status not the same"
    exit 1
fi

echo "all tests passed"
