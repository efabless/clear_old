/*
 * SPDX-FileCopyrightText: 2020 Efabless Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * SPDX-License-Identifier: Apache-2.0
 */

#include "../../defs.h"
#include "../../stub.c"

/*
 * Scan-chain Test:
 * - Configures directions for control ports
 *   +==========+===============+===========+
 *   | GPIO     | Functionality | Direction |
 *   +==========+===============+===========+
 *   | GPIO[0]  | TEST_EN       | input     |
 *   +----------+---------------+-----------+
 *   | GPIO[1]  | IO_ISOL_N     | input     |
 *   +----------+---------------+-----------+
 *   | GPIO[2]  | RESET         | input     |
 *   +----------+---------------+-----------+
 *   | GPIO[3]  | PROG_RESET    | input     |
 *   +----------+---------------+-----------+
 *   | GPIO[11] | SC_TAIL       | output    |
 *   +----------+---------------+-----------+
 *   | GPIO[12] | CCFF_HEAD     | input     |
 *   +----------+---------------+-----------+
 *   | GPIO[25] | MODE_SWITCH)  | input     |
 *   +----------+---------------+-----------+
 *   | GPIO[26] | SC_HEAD       | input     |
 *   +----------+---------------+-----------+
 *   | GPIO[35] | CCFF_TAIL     | output    |
 *   +----------+---------------+-----------+
 *   | GPIO[36] | CLK           | input     |
 *   +----------+---------------+-----------+
 *   | GPIO[37] | PROG_CLK      | input     |
 *   +----------+---------------+-----------+
 *
 * - Configure unused FPGA data I/Os to be input
 * - Configure used FPGA data I/Os
 *
 *   +==========+===============+===========+
 *   | GPIO     | Functionality | Direction |
 *   +==========+===============+===========+
 *   | GPIO[24] | a             | input     |
 *   +----------+---------------+-----------+
 *   | GPIO[27] | b             | input     |
 *   +----------+---------------+-----------+
 *   | GPIO[28] | c             | output    |
 *   +----------+---------------+-----------+
 *   | GPIO[23] | d             | output    |
 *   +----------+---------------+-----------+
*/

void main() {
  /* 
  IO Control Registers
  | DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
  | 3-bits | 1-bit | 1-bit | 1-bit  | 1-bit  | 1-bit | 1-bit   | 1-bit   | 1-bit | 1-bit | 1-bit   |
  Output: 0000_0110_0000_1110  (0x1808) = GPIO_MODE_USER_STD_OUTPUT
  | DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
  | 110    | 0     | 0     | 0      | 0      | 0     | 0       | 1       | 0     | 0     | 0       |
  
   
  Input: 0000_0001_0000_1111 (0x0402) = GPIO_MODE_USER_STD_INPUT_NOPULL
  | DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
  | 001    | 0     | 0     | 0      | 0      | 0     | 0       | 0       | 0     | 1     | 0       |
  */
  /* Set up the housekeeping SPI to be connected internally so */
  /* that external pin changes don't affect it. */
  reg_spimaster_config = 0xa002;  // Enable, prescaler = 2,
                                  // connect to housekeeping SPI
                                  // Connect the housekeeping SPI to the SPI master
                                  // so that the CSB line is not left floating.  This allows
                                  // all of the GPIO pins to be used for user functions.

  // By default all the I/Os are in input mode 
  reg_mprj_io_0 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_1 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_2 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_3 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_4 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_5 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_6 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_7 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_8 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_9 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_10 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_12 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_13 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_14 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_15 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_16 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_17 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_18 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_19 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_21 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_22 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_24 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_25 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_26 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_27 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_29 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_30 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_31 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_32 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_33 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_34 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_36 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  reg_mprj_io_37 =  GPIO_MODE_USER_STD_INPUT_NOPULL;
  // Only specify those should be in output mode
  reg_mprj_io_11 =  GPIO_MODE_USER_STD_OUTPUT;
  reg_mprj_io_35 =  GPIO_MODE_USER_STD_OUTPUT;

  // Implementation outputs
  reg_mprj_io_20 =  GPIO_MODE_USER_STD_OUTPUT;

  /* Apply configuration */
  reg_mprj_xfer = 1;
  while (reg_mprj_xfer == 1);

}
