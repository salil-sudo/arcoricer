static const char norm_fg[] = "#f4eac7";
static const char norm_bg[] = "#0B0D2A";
static const char norm_border[] = "#aaa38b";

static const char sel_fg[] = "#f4eac7";
static const char sel_bg[] = "#7B8458";
static const char sel_border[] = "#f4eac7";

static const char urg_fg[] = "#f4eac7";
static const char urg_bg[] = "#BD6D35";
static const char urg_border[] = "#BD6D35";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
