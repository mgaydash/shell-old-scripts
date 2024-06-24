sed -rn 's/^\s*Host\s+(.*)\s*/\1/ip' ~/.ssh/config ~/.ssh/config.d/* \
  | sort

# This legacy config assumed Host would be a fqdn with periods (.)
# sed -rn 's/^\s*Host\s+(.*)\s*/\1/ip' ~/.ssh/config ~/.ssh/config.d/* \
#   | xargs -I '{}' sh -c 'echo {} | rev' \
#   | sort \
#   | rev \
#   | grep -E --color '\..*\..{3}'
