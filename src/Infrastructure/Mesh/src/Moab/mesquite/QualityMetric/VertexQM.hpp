/* *****************************************************************
    MESQUITE -- The Mesh Quality Improvement Toolkit

    Copyright 2006 Lawrence Livermore National Laboratory.  Under
    the terms of Contract B545069 with the University of Wisconsin --
    Madison, Lawrence Livermore National Laboratory retains certain
    rights in this software.

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    (lgpl.txt) along with this library; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

    (2006) kraftche@cae.wisc.edu

  ***************************************************************** */

/** \file VertexQM.hpp
 *  \brief
 *  \author Jason Kraftcheck
 */

#ifndef MSQ_VERTEX_QM_HPP
#define MSQ_VERTEX_QM_HPP

#include "Mesquite.hpp"
#include "QualityMetric.hpp"

namespace MBMesquite
{

/**\brief Base type for per-vertex quality metrics */
class VertexQM : public QualityMetric
{
  public:
    MESQUITE_EXPORT virtual ~VertexQM();

    MESQUITE_EXPORT virtual MetricType get_metric_type() const
    {
        return VERTEX_BASED;
    }

    /**\brief Returns list of vertex indices in PatchData */
    MESQUITE_EXPORT virtual void get_evaluations( PatchData& pd, std::vector< size_t >& handles,
                                                  bool free_vertices_only, MsqError& err );

    MESQUITE_EXPORT static void get_vertex_evaluations( PatchData& pd, std::vector< size_t >& handles,
                                                        bool free_vertices_only, MsqError& err );

    MESQUITE_EXPORT static void get_vertex_corner_handles( PatchData& pd, size_t vertex_index,
                                                           std::vector< size_t >& handles_out, MsqError& err );
};

}  // namespace MBMesquite

#endif
