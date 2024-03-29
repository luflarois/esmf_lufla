/* *****************************************************************
    MESQUITE -- The Mesh Quality Improvement Toolkit

    Copyright 2004 Sandia Corporation and Argonne National
    Laboratory.  Under the terms of Contract DE-AC04-94AL85000
    with Sandia Corporation, the U.S. Government retains certain
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

    diachin2@llnl.gov, djmelan@sandia.gov, mbrewer@sandia.gov,
    pknupp@sandia.gov, tleurent@mcs.anl.gov, tmunson@mcs.anl.gov

  ***************************************************************** */
// -*- Mode : c++; tab-width: 3; c-tab-always-indent: t; indent-tabs-mode: nil; c-basic-offset: 3
// -*-

/*! \file LocalSizeQualityMetric.hpp

Header file for the MBMesquite::LocalSizeQualityMetric class

  \author Michael Brewer
  \date   April 9, 2003
 */

#ifndef LocalSizeQualityMetric_hpp
#define LocalSizeQualityMetric_hpp

#include "Mesquite.hpp"
#include "VertexQM.hpp"
#include "AveragingQM.hpp"

namespace MBMesquite
{
/*! \class LocalSizeQualityMetric
  \brief Computes the local size metric for a given vertex.

   LocalSizeQualityMetric is a vertex based metric which computes
   the corner volume (or area) for the element corners attached
   to a given element.  Then these volumes (or areas) are averaged
   together.  The default averaging method is QualityMetric::RMS.
*/
class LocalSizeQualityMetric : public VertexQM, public AveragingQM
{
  public:
    // Default constructor.
    LocalSizeQualityMetric() : AveragingQM( RMS ) {}

    // virtual destructor ensures use of polymorphism during destruction
    virtual ~LocalSizeQualityMetric();

    virtual std::string get_name() const;

    virtual int get_negate_flag() const;

    virtual bool evaluate( PatchData& pd, size_t handle, double& value, MsqError& err );

    virtual bool evaluate_with_indices( PatchData& pd, size_t handle, double& value, std::vector< size_t >& indices,
                                        MsqError& err );
};

}  // namespace MBMesquite

#endif  // LocalSizeQualityMetric_hpp
