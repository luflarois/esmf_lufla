module esmf
  implicit none
  private

  public :: say_hello
contains
  subroutine say_hello
    print *, "Hello, esmf!"
  end subroutine say_hello
end module esmf
