#' United Nations General Assembly voting data by country and roll call
#'
#' Information on the voting history of the United Nations General Assembly.
#' Contains one row for each country-vote pair.
#' Data and documentation are slightly modified from the \code{unvotes} package
#' by David Robinson, available at \url{https://github.com/dgrtwo/unvotes}.
#'
#' @format A data frame (specifically a tbl_df) with one row
#' for each country-vote pair, and the following columns:
#' \describe{
#'   \item{rcid}{The roll call id}
#'   \item{country}{Country name, by official English short name}
#'   \item{country_code}{2-character ISO country code}
#'   \item{vote}{Vote result as a factor of yes/abstain/no}
#'   \item{session}{Session number. The UN holds one session per year; these
#'   started in 1946}
#'   \item{importantvote}{Whether the vote was classified as important by the
#'   U.S. State Department report "Voting Practices in the United Nations".
#'   These classifications began with session 39}
#'   \item{date}{Date of the vote, as a Date vector}
#'   \item{unres}{Resolution code}
#'   \item{amend}{Whether the vote was on an amendment; coded only until
#'   1985}
#'   \item{para}{Whether the vote was only on a paragraph and not a resolution;
#'   coded only until 1985}
#'   \item{short}{Short description}
#'   \item{descr}{Longer description}
#' }
#'
#' @details The original data included cases where a country was absent
#' or was not yet a member. In this dataset these were filtered out to
#' include only votes of Yes, Abstain, and No.
#'
#' Country name can be converted to other unique country identifiers
#' (such as 2-character or 3-character ISO codes) using the
#' \link[countrycode]{countrycode} function from the countrycode
#' package.
#'
#' @source Erik Voeten "Data and Analyses of Voting in the UN General Assembly"
#'  Routledge Handbook of International Organization, edited by Bob Reinalda
#'   (published May 27, 2013)
#'   \url{https://dataverse.harvard.edu/dataset.xhtml?persistentId=hdl:1902.1/12379}
"un_votes"
