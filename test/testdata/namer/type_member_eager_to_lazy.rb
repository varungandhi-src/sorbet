# typed: true

module A
  extend T::Generic

  A1 = type_member()
  A2 = type_member(fixed: Integer) # error: syntax for bounds has changed
  A3 = type_member(lower: Integer) # error: syntax for bounds has changed
  A4 = type_member(upper: Integer) # error: syntax for bounds has changed
  A5 = type_member(lower: Integer, upper: Integer) # error: syntax for bounds has changed

  B1 = type_member
  B2 = type_member fixed: Integer # error: syntax for bounds has changed
  B3 = type_member lower: Integer # error: syntax for bounds has changed
  B4 = type_member upper: Integer # error: syntax for bounds has changed
  B5 = type_member lower: Integer, upper: Integer # error: syntax for bounds has changed

  C1 = type_member(:out)
  C2 = type_member(:out, fixed: Integer) # error: syntax for bounds has changed
  #                      ^^^^^^^^^^^^^^ error: Too many arguments
  C3 = type_member(:out, lower: Integer) # error: syntax for bounds has changed
  #                      ^^^^^^^^^^^^^^ error: Too many arguments
  C4 = type_member(:out, upper: Integer) # error: syntax for bounds has changed
  #                      ^^^^^^^^^^^^^^ error: Too many arguments
  C5 = type_member(:out, lower: Integer, upper: Integer) # error: syntax for bounds has changed
  #                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ error: Too many arguments

  D1 = type_member :out
  D2 = type_member :out, fixed: Integer # error: syntax for bounds has changed
  #                      ^^^^^^^^^^^^^^ error: Too many arguments
  D3 = type_member :out, lower: Integer # error: syntax for bounds has changed
  #                      ^^^^^^^^^^^^^^ error: Too many arguments
  D4 = type_member :out, upper: Integer # error: syntax for bounds has changed
  #                      ^^^^^^^^^^^^^^ error: Too many arguments
  D5 = type_member :out, lower: Integer, upper: Integer # error: syntax for bounds has changed
  #                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ error: Too many arguments
end
