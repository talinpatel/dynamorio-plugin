cmake_minimum_required(VERSION 3.7)
project(instrace_main C)

# Configure with: cmake -DDynamoRIO_DIR=$DYNAMORIO_HOME/cmake <path/to/this/dir>
find_package(DynamoRIO REQUIRED)

# utils.c/utils.h come from DynamoRIO's samples/ directory (log_file_open etc.)
add_library(instrace SHARED instrace_main.c utils.c)
configure_DynamoRIO_client(instrace)

use_DynamoRIO_extension(instrace drmgr)
use_DynamoRIO_extension(instrace drreg)
use_DynamoRIO_extension(instrace drwrap)
# if using symbol lookup
# use_DynamoRIO_extension(instrace drsyms)
use_DynamoRIO_extension(instrace drx)
