\name{get_pubmed_ids}
\alias{get_pubmed_ids}
\title{
Simple PubMed Search
}
\description{
Query PubMed (Entrez) in a simple way via the PubMed API eSearch function. Calling this function results in posting the results on the PubMed History Server. This allows later access to the resulting data via the fetch_pubmed_data() function.
}
\usage{
get_pubmed_ids(pubmed_query_string)
}

\arguments{
  \item{pubmed_query_string}{
is a character vector and is the String that is used for querying PubMed (standard PubMed synthax).
}
}
\details{
This function will use the String provided as argument for querying PubMed via the eSearch function of the PubMed API. The Query Term can include one or multiple words, as well as the standard PubMed operators (AND, OR, NOT) and tags (i.e., [AU], [PDAT], [Affiliation], and so on). ESearch will post the UIDs resulting from the search operation onto the History server so that they can be used directly in a subsequent fetchPubmedData() call.
}
\value{
The function returns a list. The list includes the number of records found on PubMed and the first 20 PubMed IDs (UID) retrieved by the query. The list also includes QueryKey and WebEnv that are required for a subsequent fetch_pubmed_data() call.
}
\references{
<"http://www.biotechworld.it/bioinf/2016/01/05/querying-pubmed-via-the-easypubmed-package-in-r/">
}
\author{
Damiano Fantini <"damiano.fantini@gmail.com">
}
\examples{
##  Search for scientific articles written by Damiano Fantini
##  and print the number of retrieved records to screen.
##  Also print the retrieved UIDs to screen.
##
dami_on_pubmed <- get_pubmed_ids("Damiano Fantini[AU]")
print(dami_on_pubmed$Count)
print(unlist(dami_on_pubmed$IdList))
}
