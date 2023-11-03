#' GET slow_juju
#'
#' @param req,res HTTP objects
#'
#' @export
#'
get_slow_juju <- function(req, res){
    mariobox::mario_log(
        method = "GET",
        name = "slow_juju"
    )
    get_slow_juju_f()
}

#' GET slow_juju internal
#'
#' @noRd
#'
get_slow_juju_f <- function(){
    Sys.sleep(10)
    return('ok')
}


