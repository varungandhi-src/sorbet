# typed: strict

begin
  foo = 1
ensure
  foo + 2 if foo
end
