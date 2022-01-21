################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../conv.cpp 

OBJS += \
./source/conv.o 

CPP_DEPS += \
./source/conv.d 


# Each subdirectory must supply rules for building sources it contributes
source/conv.o: F:/BEng_Project/HLS_PRJ/v2/conv/conv/conv.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -ID:/Xilinx/Vivado/2019.1/include/etc -ID:/Xilinx/Vivado/2019.1/include/ap_sysc -IF:/BEng_Project/HLS_PRJ/v2/conv -ID:/Xilinx/Vivado/2019.1/win64/tools/auto_cc/include -ID:/Xilinx/Vivado/2019.1/win64/tools/systemc/include -ID:/Xilinx/Vivado/2019.1/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


