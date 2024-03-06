# The following example shows how to issue an HTTP GET request supplying
# an optional request header.
data "http" "spoke" {
  url = "http://localhost:2224/spock"      // API to send HTTP GET to

  # Optional request headers
#  request_headers = {
#    Accept = "application/json"
#  }
}
