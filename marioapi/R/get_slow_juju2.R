#' GET slow_juju2
#'
#' @param req,res HTTP objects
#'
#' @export
#'
get_slow_juju2 <- function(req, res){
    mariobox::mario_log(
        method = "GET",
        name = "slow_juju2"
    )
    get_slow_juju_f2()
}

library(future)
plan(multisession)

#' GET slow_juju internal
#'
#' @noRd
#'
get_slow_juju_f2 <- function(){
    promises::future_promise({
        Sys.sleep(10)
        return('ok')
    })

}
