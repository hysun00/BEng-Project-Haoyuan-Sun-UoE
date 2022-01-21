################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../pool.cpp 

OBJS += \
./source/pool.o 

CPP_DEPS += \
./source/pool.d 


# Each subdirectory must supply rules for building sources it contributes
source/pool.o: F:/BEng_Project/HLS_PRJ/v2/pool/pool.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -ID:/Xilinx/Vivado/2019.1/include/etc -ID:/Xilinx/Vivado/2019.1/include/ap_sysc -ID:/Xilinx/Vivado/2019.1/win64/tools/auto_cc/include -ID:/Xilinx/Vivado/2019.1/win64/tools/systemc/include -ID:/Xilinx/Vivado/2019.1/include -IF:/BEng_Project/HLS_PRJ/v2 -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


