# Hold-out method
# Like a Python generator returns data frame row by row in `one` but all other rows in `rest`.
# For cross-validation useful.
# @param df A data-frame
hold_out <- function(df) {
    i <- 0
    imax <- nrow(df)
    function() {
        i <<- i + 1
        if(i > imax) {
            return(NA)
        } else {
            return(list(one=df[i,],rest=df[-i,]))
        }
    }
}
