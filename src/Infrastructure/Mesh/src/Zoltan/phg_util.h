/*****************************************************************************
 * Zoltan Dynamic Load-Balancing Library for Parallel Applications           *
 * Copyright (c) 2000, Sandia National Laboratories.                         *
 * For more info, see the README file in the top-level Zoltan directory.     *
 *****************************************************************************/
/*****************************************************************************
 * CVS File Information :
 *    $RCSfile: phg_util.h,v $
 *    $Author: dneckels $
 *    $Date: 2007/11/28 16:13:53 $
 *    Revision: 1.11 $
 ****************************************************************************/

#ifndef __PHG_UTIL_H
#define __PHG_UTIL_H

#include <stdarg.h>
#include "phg_comm.h"
#include "phg_hypergraph.h"

#ifdef __cplusplus
/* if C++, define the rest of this header file as extern C */
extern "C" {
#endif

/* Definitions to allow simplicity in PHG code 
 * while protecting application namespace. 
 */
#define uMe Zoltan_PHG_uMe
#define uprintf Zoltan_PHG_uprintf
#define errexit Zoltan_PHG_errexit

/* UVC: some utility functions not particularly related to hypergraph */
extern char *Zoltan_PHG_uMe(PHGComm *);
extern void Zoltan_PHG_uprintf(PHGComm *, const char *,...);
extern void Zoltan_PHG_errexit(const char *,...);

extern int Zoltan_PHG_isPrime(int);

extern void Zoltan_PHG_Find_Root(int, int, MPI_Comm, int *, int *);

extern int Zoltan_PHG_LoadBalStat(ZZ *zz, HGraph *);

/****************************************************************************/
#define MEMORY_ERROR { \
  ZOLTAN_PRINT_ERROR(zz->Proc, yo, "Memory error."); \
  ierr = ZOLTAN_MEMERR; \
  goto End; \
}

    
#ifdef __cplusplus
} /* closing bracket for extern "C" */
#endif

#endif   /* __HG_UTIL_H */
