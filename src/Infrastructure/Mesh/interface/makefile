# $Id$

ALL: build_here 

# Workaround an MPICH(2) issue
ESMF_CXXCOMPILECPPFLAGS += -DMPICH_IGNORE_CXX_SEEK

SOURCEC	  = ESMCI_Mesh_F.C ESMC_Mesh.C
SOURCEF	  = ESMF_Mesh.F90 ESMF_Mesh_C.F90
SOURCEH	  = 

# list .h files to be copied to higher level common include directory
STOREH	  = ESMC_Mesh.h

OBJSC     = $(addsuffix .o, $(basename $(SOURCEC)))
OBJSF     = $(addsuffix .o, $(basename $(SOURCEF)))

LIBBASE	  = libesmf
LOCDIR	  = src/Infrastructure/Mesh/interface

CLEANDIRS   =
CLEANFILES  =
CLOBBERDIRS =

include $(ESMF_DIR)/makefile

ifeq ($(ESMF_MOAB),internal)
ESMF_CXXCOMPILECPPFLAGS += -I$(ESMF_DIR)/src/Infrastructure/Mesh/src/Moab
endif

DIRS	  = 