#' GET allo
#'
#' @param req,res HTTP objects
#'
#' @export
#'
get_allo <- function(req, res){
    mariobox::mario_log(
        method = "GET",
        name = "allo"
    )
    mariobox::mario_try(res, get_allo_f())
}

#' GET allo internal
#'
#' @noRd
#'
get_allo_f <- function(){
    return('ok')
}
