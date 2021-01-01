const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0B0D2A", /* black   */
  [1] = "#BD6D35", /* red     */
  [2] = "#7B8458", /* green   */
  [3] = "#ED9831", /* yellow  */
  [4] = "#AC8D4D", /* blue    */
  [5] = "#EAA64F", /* magenta */
  [6] = "#FBCD63", /* cyan    */
  [7] = "#f4eac7", /* white   */

  /* 8 bright colors */
  [8]  = "#aaa38b",  /* black   */
  [9]  = "#BD6D35",  /* red     */
  [10] = "#7B8458", /* green   */
  [11] = "#ED9831", /* yellow  */
  [12] = "#AC8D4D", /* blue    */
  [13] = "#EAA64F", /* magenta */
  [14] = "#FBCD63", /* cyan    */
  [15] = "#f4eac7", /* white   */

  /* special colors */
  [256] = "#0B0D2A", /* background */
  [257] = "#f4eac7", /* foreground */
  [258] = "#f4eac7",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
