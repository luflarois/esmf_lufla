#ifndef IMOAB_PROTOS_H
#define IMOAB_PROTOS_H

#include "moab/MOABConfig.h"

#if defined( MOAB_FC_FUNC_ )
#define IMOAB_FC_WRAPPER MOAB_FC_FUNC_
#elif defined( MOAB_FC_FUNC )
#define IMOAB_FC_WRAPPER MOAB_FC_FUNC
#else
#define IMOAB_FC_WRAPPER( name, NAME ) name
#endif

/* remove the methods that will not be called from fortran; need to expose/declare only Fortran bindings ! */
/*#define iMOAB_Initialize          IMOAB_FC_WRAPPER( imoab_initialize, IMOAB_INITIALIZE ) */
#define iMOAB_InitializeFortran   IMOAB_FC_WRAPPER( imoab_initializefortran, IMOAB_INITIALIZEFORTRAN )
#define iMOAB_Finalize            IMOAB_FC_WRAPPER( imoab_finalize, IMOAB_FINALIZE )
/*#define iMOAB_RegisterApplication IMOAB_FC_WRAPPER( imoab_registerapplication, IMOAB_REGISTERAPPLICATION ) */
#define iMOAB_RegisterApplicationFortran \
    IMOAB_FC_WRAPPER( imoab_registerapplicationfortran, IMOAB_REGISTERAPPLICATIONFORTRAN )
#define iMOAB_DeregisterApplication IMOAB_FC_WRAPPER( imoab_deregisterapplication, IMOAB_DEREGISTERAPPLICATION )
#define iMOAB_ReadHeaderInfo        IMOAB_FC_WRAPPER( imoab_readheaderinfo, IMOAB_READHEADERINFO )
#define iMOAB_LoadMesh              IMOAB_FC_WRAPPER( imoab_loadmesh, IMOAB_LOADMESH )
#define iMOAB_WriteMesh             IMOAB_FC_WRAPPER( imoab_writemesh, IMOAB_WRITEMESH )
#define iMOAB_WriteLocalMesh        IMOAB_FC_WRAPPER( imoab_writelocalmesh, IMOAB_WRITELOCALMESH )
#define iMOAB_UpdateMeshInfo        IMOAB_FC_WRAPPER( imoab_updatemeshinfo, IMOAB_UPDATEMESHINFO )
#define iMOAB_GetMeshInfo           IMOAB_FC_WRAPPER( imoab_getmeshinfo, IMOAB_GETMESHINFO )
#define iMOAB_GetVertexID           IMOAB_FC_WRAPPER( imoab_getvertexid, IMOAB_GETVERTEXID )
#define iMOAB_GetVertexOwnership    IMOAB_FC_WRAPPER( imoab_getvertexownership, IMOAB_GETVERTEXOWNERSHIP )
#define iMOAB_GetVisibleVerticesCoordinates \
    IMOAB_FC_WRAPPER( imoab_getvisibleverticescoordinates, IMOAB_GETVISIBLEVERTICESCOORDINATES )
#define iMOAB_GetBlockID             IMOAB_FC_WRAPPER( imoab_getblockid, IMOAB_GETBLOCKID )
#define iMOAB_GetBlockInfo           IMOAB_FC_WRAPPER( imoab_getblockinfo, IMOAB_GETBLOCKINFO )
#define iMOAB_GetVisibleElementsInfo IMOAB_FC_WRAPPER( imoab_getvisibleelementsinfo, IMOAB_GETVISIBLEELEMENTSINFO )
#define iMOAB_GetBlockElementConnectivities \
    IMOAB_FC_WRAPPER( imoab_getblockelementconnectivities, IMOAB_GETBLOCKELEMENTCONNECTIVITIES )
#define iMOAB_GetElementConnectivity IMOAB_FC_WRAPPER( imoab_getelementconnectivity, IMOAB_GETELEMENTCONNECTIVITY )
#define iMOAB_GetElementOwnership    IMOAB_FC_WRAPPER( imoab_getelementownership, IMOAB_GETELEMENTOWNERSHIP )
#define iMOAB_GetElementID           IMOAB_FC_WRAPPER( imoab_getelementid, IMOAB_GETELEMENTID )
#define iMOAB_GetPointerToSurfaceBC  IMOAB_FC_WRAPPER( imoab_getpointertosurfacebc, IMOAB_GETPOINTERTOSURFACEBC )
#define iMOAB_GetPointerToVertexBC   IMOAB_FC_WRAPPER( imoab_getpointertovertexbc, IMOAB_GETPOINTERTOVERTEXBC )
#define iMOAB_DefineTagStorage       IMOAB_FC_WRAPPER( imoab_definetagstorage, IMOAB_DEFINETAGSTORAGE )
#define iMOAB_SetIntTagStorage       IMOAB_FC_WRAPPER( imoab_setinttagstorage, IMOAB_SETINTTAGSTORAGE )
#define iMOAB_GetIntTagStorage       IMOAB_FC_WRAPPER( imoab_getinttagstorage, IMOAB_GETINTTAGSTORAGE )
#define iMOAB_SetDoubleTagStorage    IMOAB_FC_WRAPPER( imoab_setdoubletagstorage, IMOAB_SETDOUBLETAGSTORAGE )
#define iMOAB_GetDoubleTagStorage    IMOAB_FC_WRAPPER( imoab_getdoubletagstorage, IMOAB_GETDOUBLETAGSTORAGE )
#define iMOAB_SynchronizeTags        IMOAB_FC_WRAPPER( imoab_synchronizetags, IMOAB_SYNCHRONIZETAGS )
#define iMOAB_ReduceTagsMax          IMOAB_FC_WRAPPER( imoab_reducetagsmax, IMOAB_REDUCETAGSMAX )
#define iMOAB_GetNeighborElements    IMOAB_FC_WRAPPER( imoab_getneighborelements, IMOAB_GETNEIGHBORELEMENTS )
#define iMOAB_GetNeighborVertices    IMOAB_FC_WRAPPER( imoab_getneighborvertices, IMOAB_GETNEIGHBORVERTICES )

#define iMOAB_CreateVertices         IMOAB_FC_WRAPPER( imoab_createvertices, IMOAB_CREATEVERTICES )
#define iMOAB_CreateElements         IMOAB_FC_WRAPPER( imoab_createelements, IMOAB_CREATEELEMENTS )
#define iMOAB_ResolveSharedEntities  IMOAB_FC_WRAPPER( imoab_resolvesharedentities, IMOAB_RESOLVESHAREDENTITIES )
#define iMOAB_DetermineGhostEntities IMOAB_FC_WRAPPER( imoab_determineghostentities, IMOAB_DETERMINEGHOSTENTITIES )
#define iMOAB_SetGlobalInfo          IMOAB_FC_WRAPPER( imoab_setglobalinfo, IMOAB_SETGLOBALINFO )
#define iMOAB_GetGlobalInfo          IMOAB_FC_WRAPPER( imoab_getglobalinfo, IMOAB_GETGLOBALINFO )
/*#define iMOAB_SendMesh               IMOAB_FC_WRAPPER( imoab_sendmesh, IMOAB_SENDMESH ) */
#define iMOAB_SendMeshFortran        IMOAB_FC_WRAPPER( imoab_sendmeshfortran, IMOAB_SENDMESHFORTRAN )
#define iMOAB_FreeSenderBuffers      IMOAB_FC_WRAPPER( imoab_freesenderbuffers, IMOAB_FREESENDERBUFFERS )
/*#define iMOAB_ReceiveMesh            IMOAB_FC_WRAPPER( imoab_receivemesh, IMOAB_RECEIVEMESH ) */
#define iMOAB_ReceiveMeshFortran     IMOAB_FC_WRAPPER( imoab_receivemeshfortran, IMOAB_RECEIVEMESHFORTRAN )
/*#define iMOAB_SendElementTag         IMOAB_FC_WRAPPER( imoab_sendelementtag, IMOAB_SENDELEMENTTAG ) */
#define iMOAB_SendElementTagFortran  IMOAB_FC_WRAPPER( imoab_sendelementtagfortran, IMOAB_SENDELEMENTTAGFORTRAN )
/*#define iMOAB_ReceiveElementTag      IMOAB_FC_WRAPPER( imoab_receiveelementtag, IMOAB_RECEIVEELEMENTTAG )*/
#define iMOAB_ReceiveElementTagFortran  IMOAB_FC_WRAPPER( imoab_receiveelementtagfortran, IMOAB_RECEIVEELEMENTTAGFORTRAN )
#define iMOAB_DumpCommGraph          IMOAB_FC_WRAPPER( imoab_dumpcommgraph, IMOAB_DUMPCOMMGRAPH )
/*#define iMOAB_ComputeCommGraph       IMOAB_FC_WRAPPER( imoab_computecommgraph, IMOAB_COMPUTECOMMGRAPH )*/
#define iMOAB_ComputeCommGraphFortran   IMOAB_FC_WRAPPER( imoab_computecommgraphfortran, IMOAB_COMPUTECOMMGRAPHFORTRAN )
#define iMOAB_MergeVertices          IMOAB_FC_WRAPPER( imoab_mergevertices, IMOAB_MERGEVERTICES )

#ifdef MOAB_HAVE_TEMPESTREMAP

#define iMOAB_ComputeMeshIntersectionOnSphere \
    IMOAB_FC_WRAPPER( imoab_computemeshintersectiononsphere, IMOAB_COMPUTEMESHINTERSECTIONONSPHERE )
#define iMOAB_ComputePointDoFIntersection \
    IMOAB_FC_WRAPPER( imoab_computepointdofintersection, IMOAB_COMPUTEPOINTDOFINTERSECTION )
#define iMOAB_ComputeScalarProjectionWeights \
    IMOAB_FC_WRAPPER( imoab_computescalarprojectionweights, IMOAB_COMPUTESCALARPROJECTIONWEIGHTS )
#define iMOAB_ApplyScalarProjectionWeights \
    IMOAB_FC_WRAPPER( imoab_applyscalarprojectionweights, IMOAB_APPLYSCALARPROJECTIONWEIGHTS )

/*#define iMOAB_MigrateMapMesh IMOAB_FC_WRAPPER( imoab_migratemapmesh, IMOAB_MIGRATEMAPMESH )*/
#define iMOAB_MigrateMapMeshFortran IMOAB_FC_WRAPPER( imoab_migratemapmeshfortran, IMOAB_MIGRATEMAPMESHFORTRAN )

/* #define iMOAB_CoverageGraph IMOAB_FC_WRAPPER( imoab_coveragegraph, IMOAB_COVERAGEGRAPH )
 */
#define iMOAB_CoverageGraphFortran IMOAB_FC_WRAPPER( imoab_coveragegraphfortran, IMOAB_COVERAGEGRAPHFORTRAN )

#ifdef MOAB_HAVE_NETCDF

#define iMOAB_LoadMappingWeightsFromFile \
    IMOAB_FC_WRAPPER( imoab_loadmappingweightsfromfile, IMOAB_LOADMAPPINGWEIGHTSFROMFILE )
#define iMOAB_WriteMappingWeightsToFile \
    IMOAB_FC_WRAPPER( imoab_writemappingweightstofile, IMOAB_WRITEMAPPINGWEIGHTSTOFILE )
#endif /* MOAB_HAVE_NETCDF */

#endif /* MOAB_HAVE_TEMPESTREMAP */

#endif /*IMOAB_PROTOS_H */
