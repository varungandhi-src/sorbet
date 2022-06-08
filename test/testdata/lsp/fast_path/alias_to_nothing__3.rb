# typed: true
# Spacer to allow for exclude from file update assertion

A.new.from
A.new.from_new # error: Method `from_new` does not exist on `A`
A.new.to
A.new.to_new # error: Method `to_new` does not exist on `A`
