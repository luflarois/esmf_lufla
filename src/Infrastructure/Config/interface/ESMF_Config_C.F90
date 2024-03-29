!  $Id$
!
! Earth System Modeling Framework
! Copyright 2002-2022, University Corporation for Atmospheric Research, 
! Massachusetts Institute of Technology, Geophysical Fluid Dynamics 
! Laboratory, University of Michigan, National Centers for Environmental 
! Prediction, Los Alamos National Laboratory, Argonne National Laboratory, 
! NASA Goddard Space Flight Center.
! Licensed under the University of Illinois-NCSA License.
!
!==============================================================================
!
! F77 interface files for C++ layer calling into F90 implementation layer.
!  This cannot use any F90 syntax, including modules, or allocatable 
!   arrays, or ...
!
!==============================================================================
!
!------------------------------------------------------------------------------
! INCLUDES
#include "ESMF.h"
!==============================================================================
!------------------------------------------------------------------------------
! The following line turns the CVS identifier string into a printable variable.
!      character(*), parameter, private :: version = &
!      '$Id$'
!==============================================================================

!------------------------------------------------------------------------------
   subroutine f_esmf_configcreate(config, rc)
     use ESMF_UtilTypesMod    ! ESMF base class
     use ESMF_BaseMod    ! ESMF base class
     use ESMF_ConfigMod

     implicit none

     type(ESMF_Config) :: config
     integer, intent(out) :: rc              

     ! Initialize return code; assume routine not implemented
       rc = ESMF_RC_NOT_IMPL

     config = ESMF_ConfigCreate(rc=rc)

   end subroutine f_esmf_configcreate
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
   subroutine f_esmf_configdestroy(config, rc)
     use ESMF_UtilTypesMod    ! ESMF base class
     use ESMF_BaseMod    ! ESMF base class
     use ESMF_ConfigMod

     implicit none

     type(ESMF_Config) :: config
     integer, intent(out) :: rc     

     ! Initialize return code; assume routine not implemented
     rc = ESMF_RC_NOT_IMPL

     call ESMF_ConfigDestroy(config, rc=rc)

   end subroutine f_esmf_configdestroy
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
   subroutine f_esmf_configcreatefromsection(config, configin, olabel, clabel, rc)
     use ESMF_UtilTypesMod    ! ESMF base class
     use ESMF_BaseMod    ! ESMF base class
     use ESMF_ConfigMod

     implicit none

     type(ESMF_Config)              :: config
     type(ESMF_Config)              :: configin
     character(len=*),  intent(in)  :: olabel
     character(len=*),  intent(in)  :: clabel
     integer,           intent(out) :: rc

     ! Initialize return code; assume routine not implemented
     rc = ESMF_RC_NOT_IMPL

     config = ESMF_ConfigCreate(configin, olabel, clabel, rc=rc)

   end subroutine f_esmf_configcreatefromsection
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
   subroutine f_esmf_configloadfile(config, filename, unique, rc)
     use ESMF_UtilTypesMod    ! ESMF base class
     use ESMF_BaseMod    ! ESMF base class
     use ESMF_ConfigMod

     implicit none

     type(ESMF_Config)               :: config
     character(len=*), intent(in)    :: filename
     integer, intent(in)             :: unique
     integer, intent(out)            :: rc

     integer localrc
     logical :: lunique

     ! Initialize return code; assume routine not implemented
      rc = ESMF_RC_NOT_IMPL

     lunique = .false.
     if (unique /= 0) then
       lunique = .true. 
     endif

     call ESMF_ConfigLoadFile(config, filename, unique=lunique, rc=localrc)

     rc = localrc

   end subroutine f_esmf_configloadfile
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
   subroutine f_esmf_configfindlabel(config, label, isPresent, rc)
     use ESMF_UtilTypesMod    ! ESMF base class
     use ESMF_BaseMod    ! ESMF base class
     use ESMF_ConfigMod

     implicit none

     type(ESMF_Config)               :: config
     character(len=*),   intent(in)  :: label
     type(ESMF_Logical), intent(out) :: isPresent
     integer,            intent(out) :: rc

     logical :: lisPresent

     ! Initialize return code; assume routine not implemented
     rc = ESMF_RC_NOT_IMPL

     call ESMF_ConfigFindLabel(config, label, isPresent=lisPresent, rc=rc)
     isPresent = lisPresent

   end subroutine f_esmf_configfindlabel
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
   subroutine f_esmf_configfindnextlabel(config, label, isPresent, rc)
     use ESMF_UtilTypesMod    ! ESMF base class
     use ESMF_BaseMod    ! ESMF base class
     use ESMF_ConfigMod

     implicit none

     type(ESMF_Config)               :: config
     character(len=*),   intent(in)  :: label
     type(ESMF_Logical), intent(out) :: isPresent
     integer,            intent(out) :: rc

     logical :: lisPresent

     ! Initialize return code; assume routine not implemented
     rc = ESMF_RC_NOT_IMPL

     call ESMF_ConfigFindNextLabel(config, label, isPresent=lisPresent, rc=rc)
     isPresent = lisPresent

   end subroutine f_esmf_configfindnextlabel
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
   subroutine f_esmf_confignextline(config, tableEnd, rc)
     use ESMF_UtilTypesMod    ! ESMF base class
     use ESMF_BaseMod    ! ESMF base class
     use ESMF_ConfigMod

     implicit none

     type(ESMF_Config),  intent(inout) :: config      
     type(ESMF_Logical), intent(out)   :: tableEnd
     integer,            intent(out)   :: rc   

     logical :: ltableEnd

     ! Initialize return code; assume routine not implemented
     rc = ESMF_RC_NOT_IMPL

     call ESMF_ConfigNextLine(config, tableEnd=ltableEnd, rc=rc)
     tableEnd = ltableEnd

   end subroutine f_esmf_confignextline
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
!  subroutine f_esmf_configgetchar(config, value, label, dvalue, rc)
!    use ESMF_UtilTypesMod    ! ESMF base class
!    use ESMF_BaseMod    ! ESMF base class
!    use ESMF_ConfigMod

!     implicit none

!    type(ESMF_Config), intent(inout)       :: config 
!    character, intent(inout)               :: value
!    character(len=*), intent(in)           :: label   
!    character(len=*), intent(in)           :: dvalue
!    integer, intent(out)                   :: rc  

!    ! Initialize return code; assume routine not implemented
!    rc = ESMF_RC_NOT_IMPL

!    call ESMF_ConfigGetChar( config, value, label=label, default=dvalue, rc=rc)

!  end subroutine f_esmf_configgetchar
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
   subroutine f_esmf_configgetlen(config, wordCount, label, rc)
     use ESMF_UtilTypesMod    ! ESMF base class
     use ESMF_BaseMod    ! ESMF base class
     use ESMF_ConfigMod

     implicit none

     type(ESMF_Config), intent(inout)       :: config
     integer, intent(out)                   :: wordCount
     character(len=*), intent(in)           :: label
     integer, intent(out)                   :: rc

     ! Initialize return code; assume routine not implemented
     rc = ESMF_RC_NOT_IMPL

     wordCount = ESMF_ConfigGetLen(config, label=label,  rc=rc)

   end subroutine f_esmf_configgetlen
!------------------------------------------------------------------------------

!------------------------------------------------------------------------------
   subroutine f_esmf_configgetlennolabel(config, wordCount, rc)
     use ESMF_UtilTypesMod    ! ESMF base class
     use ESMF_BaseMod    ! ESMF base class
     use ESMF_ConfigMod

     implicit none

     type(ESMF_Config), intent(inout)       :: config
     integer, intent(out)                   :: wordCount
     integer, intent(out)                   :: rc

     ! Initialize return code; assume routine not implemented
     rc = ESMF_RC_NOT_IMPL

     wordCount = ESMF_ConfigGetLen(config,  rc=rc)

   end subroutine f_esmf_configgetlennolabel
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
   subroutine f_esmf_configgetdim(config, lineCount, columnCount, label, rc)
     use ESMF_UtilTypesMod    ! ESMF base class
     use ESMF_BaseMod    ! ESMF base class
     use ESMF_ConfigMod

     implicit none

     type(ESMF_Config), intent(inout)       :: config
     integer, intent(out)                   :: lineCount
     integer, intent(out)                   :: columnCount
     character(len=*), intent(in)           :: label
     integer, intent(out)                   :: rc

     ! Initialize return code; assume routine not implemented
     rc = ESMF_RC_NOT_IMPL

     call ESMF_ConfigGetDim(config, lineCount, columnCount, label=label,  rc=rc)

   end subroutine f_esmf_configgetdim
!------------------------------------------------------------------------------

!------------------------------------------------------------------------------
   subroutine f_esmf_configgetdimnolabel(config, lineCount, columnCount, rc)
     use ESMF_UtilTypesMod    ! ESMF base class
     use ESMF_BaseMod    ! ESMF base class
     use ESMF_ConfigMod

     implicit none

     type(ESMF_Config), intent(inout)       :: config
     integer, intent(out)                   :: lineCount
     integer, intent(out)                   :: columnCount
     integer, intent(out)                   :: rc

     ! Initialize return code; assume routine not implemented
     rc = ESMF_RC_NOT_IMPL

     call ESMF_ConfigGetDim(config, lineCount, columnCount, rc=rc)

   end subroutine f_esmf_configgetdimnolabel
!------------------------------------------------------------------------------

!------------------------------------------------------------------------------
   subroutine f_esmf_configprint(config, rc)
     use ESMF_UtilTypesMod    ! ESMF base class
     use ESMF_BaseMod    ! ESMF base class
     use ESMF_ConfigMod

     implicit none

     type(ESMF_Config), intent(inout)         :: config
     integer, intent(out)                     :: rc

     ! Initialize return code; assume routine not implemented
     rc = ESMF_RC_NOT_IMPL

     call ESMF_ConfigPrint(config, rc=rc)

   end subroutine f_esmf_configprint
!------------------------------------------------------------------------------

!------------------------------------------------------------------------------
   subroutine f_esmf_configvalidate(config, options, rc)
     use ESMF_UtilTypesMod    ! ESMF base class
     use ESMF_BaseMod    ! ESMF base class
     use ESMF_ConfigMod

     implicit none

     type(ESMF_Config), intent(inout)         :: config
     character (len=*), intent(in)            :: options
     integer, intent(out)                     :: rc

     ! Initialize return code; assume routine not implemented
     rc = ESMF_RC_NOT_IMPL

     call ESMF_ConfigValidate(config, options=options, rc=rc)

   end subroutine f_esmf_configvalidate
!------------------------------------------------------------------------------

!------------------------------------------------------------------------------
   subroutine f_esmf_configvalidatenooptions(config, rc)
     use ESMF_UtilTypesMod    ! ESMF base class
     use ESMF_BaseMod    ! ESMF base class
     use ESMF_ConfigMod

     implicit none

     type(ESMF_Config), intent(inout)         :: config
     integer, intent(out)                     :: rc

     ! Initialize return code; assume routine not implemented
     rc = ESMF_RC_NOT_IMPL

     call ESMF_ConfigValidate(config, rc=rc)

   end subroutine f_esmf_configvalidatenooptions
!------------------------------------------------------------------------------

!======================================================================
!  Subroutines with (more than 1) optional arguments are commented out.
!  "Glue" f77 code must not contain optional arguments.
!======================================================================

!------------------------------------------------------------------------------
!  subroutine f_esmf_configgetstring(config, value, label, dvalue, rc)
!    use ESMF_UtilTypesMod    ! ESMF base class
!    use ESMF_BaseMod    ! ESMF base class
!    use ESMF_ConfigMod

!    implicit none

!    type(ESMF_Config)                      :: config
!    character(len=*), intent(out)          :: value
!    character(len=*), intent(in), optional :: label
!    character(len=*), intent(in), optional :: dvalue
!    integer, intent(out), optional         :: rc

!    ! Initialize return code; assume routine not implemented
!    if (present(rc)) rc = ESMF_RC_NOT_IMPL

!    call ESMF_ConfigGetAttribute(config, value, label=label, default=dvalue, rc=rc)

!  end subroutine f_esmf_configgetstring
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
!  subroutine f_esmf_configgetinti4(config, value, label, dvalue, rc)
!    use ESMF_UtilTypesMod    ! ESMF base class
!    use ESMF_BaseMod    ! ESMF base class
!    use ESMF_ConfigMod

!    implicit none

!    type(ESMF_Config)                            :: config
!    integer(ESMF_KIND_I4), intent(out)           :: value
!    character(len=*), intent(in), optional       :: label
!    integer(ESMF_KIND_I4), intent(in), optional  :: dvalue
!    integer, intent(out), optional               :: rc     

!    ! Initialize return code; assume routine not implemented
!    if (present(rc)) rc = ESMF_RC_NOT_IMPL

!    call ESMF_ConfigGetAttribute(config, value, label=label, default=dvalue, rc=rc)

!  end subroutine f_esmf_configgetinti4
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
!  subroutine f_esmf_configgetinti8(config, value, label, dvalue, rc)
!    use ESMF_UtilTypesMod    ! ESMF base class
!    use ESMF_BaseMod    ! ESMF base class
!    use ESMF_ConfigMod

!    implicit none

!    type(ESMF_Config)                            :: config
!    integer(ESMF_KIND_I8), intent(out)           :: value
!    character(len=*), intent(in), optional       :: label
!    integer(ESMF_KIND_I8), intent(in), optional  :: dvalue
!    integer, intent(out), optional               :: rc     

!    ! Initialize return code; assume routine not implemented
!    if (present(rc)) rc = ESMF_RC_NOT_IMPL

!    call ESMF_ConfigGetAttribute(config, value, label=label, default=dvalue, rc=rc)

!  end subroutine f_esmf_configgetinti8
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
!  subroutine f_esmf_configgetfloatr4(config, value, label, dvalue, rc)
!    use ESMF_UtilTypesMod    ! ESMF base class
!    use ESMF_BaseMod    ! ESMF base class
!    use ESMF_ConfigMod

!    implicit none

!    type(ESMF_Config)                         :: config
!    real(ESMF_KIND_R4), intent(out)           :: value
!    character(len=*), intent(in), optional    :: label
!    real(ESMF_KIND_R4), intent(in), optional  :: dvalue
!    integer, intent(out), optional            :: rc     

!    ! Initialize return code; assume routine not implemented
!    if (present(rc)) rc = ESMF_RC_NOT_IMPL

!    call ESMF_ConfigGetAttribute(config, value, label=label, default=dvalue, rc=rc)

!  end subroutine f_esmf_configgetfloatr4
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
!  subroutine f_esmf_configgetfloatr8(config, value, label, dvalue, rc)
!    use ESMF_UtilTypesMod    ! ESMF base class
!    use ESMF_BaseMod    ! ESMF base class
!    use ESMF_ConfigMod

!    implicit none

!    type(ESMF_Config)                         :: config
!    real(ESMF_KIND_R8), intent(out)           :: value
!    character(len=*), intent(in), optional    :: label
!    real(ESMF_KIND_R8), intent(in), optional  :: dvalue
!    integer, intent(out), optional            :: rc     

!    ! Initialize return code; assume routine not implemented
!    if (present(rc)) rc = ESMF_RC_NOT_IMPL

!    call ESMF_ConfigGetAttribute(config, value, label=label, default=dvalue, rc=rc)

!  end subroutine f_esmf_configgetfloatr8
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
!  subroutine f_esmf_configgetlogical(config, value, label, dvalue, rc)
!    use ESMF_UtilTypesMod    ! ESMF base class
!    use ESMF_BaseMod    ! ESMF base class
!    use ESMF_ConfigMod

!    implicit none

!    type(ESMF_Config), intent(inout)             :: config
!    integer, intent(inout)                       :: value
!    character(len=*), intent(in), optional       :: label
!    integer, intent(in), optional                :: dvalue
!    integer, intent(out), optional               :: rc

!    logical :: lvalue, ldvalue
!     
!    ! Initialize return code; assume routine not implemented
!    if (present(rc)) rc = ESMF_RC_NOT_IMPL

!    if (present(dvalue)) then
!      if (dvalue /= 0) then
!        ldvalue = .true. 
!      else 
!        ldvalue = .false.
!      endif
!      call ESMF_ConfigGetAttribute(config, lvalue, label=label, default=ldvalue, rc=rc)
!    else
!      call ESMF_ConfigGetAttribute(config, lvalue, label=label, rc=rc)
!    endif

!    if (lvalue) then
!      value = 1
!    else 
!      value = 0
!    endif

!  end subroutine f_esmf_configgetlogical
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
!  subroutine f_esmf_configgetintsi4(config, count, valueList, label, dvalue, rc)
!    use ESMF_UtilTypesMod    ! ESMF base class
!    use ESMF_BaseMod    ! ESMF base class
!    use ESMF_ConfigMod

!    implicit none

!    type(ESMF_Config)                               :: config
!    integer, intent(in)                             :: count   
!    integer(ESMF_KIND_I4), intent(inout)            :: valueList(count) 
!    character(len=*), intent(in), optional          :: label
!    integer(ESMF_KIND_I4), intent(in), optional     :: dvalue
!    integer, intent(out), optional                  :: rc     

!    ! Initialize return code; assume routine not implemented
!    if (present(rc)) rc = ESMF_RC_NOT_IMPL

!    call ESMF_ConfigGetAttribute(config, valueList, count, label=label, default=dvalue, rc=rc)

!  end subroutine f_esmf_configgetintsi4
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
!  subroutine f_esmf_configgetintsi8(config, count, valueList, label, dvalue, rc)
!    use ESMF_UtilTypesMod    ! ESMF base class
!    use ESMF_BaseMod    ! ESMF base class
!    use ESMF_ConfigMod

!    implicit none

!    type(ESMF_Config)                               :: config
!    integer, intent(in)                             :: count   
!    integer(ESMF_KIND_I8), intent(inout)            :: valueList(count) 
!    character(len=*), intent(in), optional          :: label
!    integer(ESMF_KIND_I8), intent(in), optional     :: dvalue
!    integer, intent(out), optional                  :: rc     

!    ! Initialize return code; assume routine not implemented
!    if (present(rc)) rc = ESMF_RC_NOT_IMPL

!    call ESMF_ConfigGetAttribute(config, valueList, count, label=label, default=dvalue, rc=rc)

!  end subroutine f_esmf_configgetintsi8
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
!  subroutine f_esmf_configgetfloatsr4(config, count, valueList, label, dvalue, rc)
!    use ESMF_UtilTypesMod    ! ESMF base class
!    use ESMF_BaseMod    ! ESMF base class
!    use ESMF_ConfigMod

!    implicit none

!    type(ESMF_Config)                            :: config
!    integer, intent(in)                          :: count   
!    real(ESMF_KIND_R4), intent(inout)            :: valueList(count) 
!    character(len=*), intent(in), optional       :: label
!    real(ESMF_KIND_R4), intent(in), optional     :: dvalue
!    integer, intent(out), optional               :: rc     

!    ! Initialize return code; assume routine not implemented
!    if (present(rc)) rc = ESMF_RC_NOT_IMPL

!    call ESMF_ConfigGetAttribute(config, valueList, count, label=label, default=dvalue, rc=rc)

!  end subroutine f_esmf_configgetfloatsr4
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
!  subroutine f_esmf_configgetfloatsr8(config, count, valueList, label, dvalue, rc)
!    use ESMF_UtilTypesMod    ! ESMF base class
!    use ESMF_BaseMod    ! ESMF base class
!    use ESMF_ConfigMod

!    implicit none

!    type(ESMF_Config)                            :: config
!    integer, intent(in)                          :: count   
!    real(ESMF_KIND_R8), intent(inout)            :: valueList(count) 
!    character(len=*), intent(in), optional       :: label
!    real(ESMF_KIND_R8), intent(in), optional     :: dvalue
!    integer, intent(out), optional               :: rc     

!    ! Initialize return code; assume routine not implemented
!    if (present(rc)) rc = ESMF_RC_NOT_IMPL

!    call ESMF_ConfigGetAttribute(config, valueList, count, label=label, default=dvalue, rc=rc)

!  end subroutine f_esmf_configgetfloatsr8
!------------------------------------------------------------------------------


!------------------------------------------------------------------------------
!  subroutine f_esmf_configgetlogicals(config, count, valuelist, label, dvalue, rc)
!    use ESMF_UtilTypesMod    ! ESMF base class
!    use ESMF_BaseMod    ! ESMF base class
!    use ESMF_ConfigMod

!    implicit none

!    type(ESMF_Config), intent(inout)             :: config
!    integer, intent(in)                          :: count
!    integer, intent(inout)                       :: valueList(count)
!    character(len=*), intent(in), optional       :: label
!    integer, intent(in), optional                :: dvalue
!    integer, intent(out), optional               :: rc

!    logical :: lvalueList(count), ldvalue
!    integer :: i

!    ! Initialize return code; assume routine not implemented
!    if (present(rc)) rc = ESMF_RC_NOT_IMPL

!    if (present(dvalue)) then
!      if (dvalue /= 0) then
!        ldvalue = .true. 
!      else 
!        ldvalue = .false.
!      endif
!      call ESMF_ConfigGetAttribute(config, lvalueList, count, label=label, &
!                                   default=ldvalue, rc=rc)
!    else
!      call ESMF_ConfigGetAttribute(config, lvalueList, count, label=label, rc=rc)
!    endif

!    do i = 1, count
!      if (lvalueList(i)) then
!        valueList(i) = 1
!      else 
!        valueList(i) = 0
!      endif
!    enddo

!  end subroutine f_esmf_configgetlogicals
!------------------------------------------------------------------------------

