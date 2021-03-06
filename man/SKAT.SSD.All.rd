 \name{SKAT.SSD.All}
 \alias{SKAT.SSD.All}
 \alias{SKATBinary.SSD.All}
 \alias{SKAT_CommonRare.SSD.All}
 \alias{SKAT_CommonRare_Robust.SSD.All}
\alias{SKATBinary_Robust.SSD.All}
 \title{SNP-set Kernel Association Test}
 \description{
	Iteratively carry out association tests with phenotypes and SNP sets in SSD file. 
 }
 \usage{

	SKAT.SSD.All(SSD.INFO, obj, \dots, obj.SNPWeight=NULL)
	
	SKATBinary.SSD.All(SSD.INFO, obj, \dots, obj.SNPWeight=NULL)
	
	SKATBinary_Robust.SSD.All(SSD.INFO, obj, \dots,obj.SNPWeight=NULL)
	
	SKAT_CommonRare.SSD.All(SSD.INFO, obj, \dots, obj.SNPWeight=NULL)

	SKAT_CommonRare_Robust.SSD.All(SSD.INFO, obj, \dots, obj.SNPWeight=NULL)

 }
\arguments{

      \item{SSD.INFO}{SSD_INFO object returned from Open_SSD.   }
      \item{obj}{output object from SKAT_Null_Model. }
      \item{\dots}{further arguments to be passed to ``SKAT'' or ``SKATBinary''. }
      \item{obj.SNPWeight}{output object from Read_SNP_WeightFile (default=NULL). 
      If NULL, the beta weight with the ``weights.beta'' parameter will be used.  }
}
\value{
	\item{results}{dataframe that contains SetID, p-values (P.value), the number of markers in the SNP sets (N.Marker.All), 
	and the number of markers to test for an association after excluding non-polymorphic or high missing rates markers (N.Marker.Test). 
	The output dataframe from SKATBinary.SSD.All (and others)  have more columns. For example, the outcome from SKATBinary.SSD.All have columns for the method to compute p-values and the minimum achievable p-values (MAP).   }
	\item{P.value.Resampling}{the matrix that contains p-values of resampled phenotypes. }
	\item{OUT.snp.mac}{each element in the list is a vector of MAC of SNPs used in the test. The names are SNP-IDs. }
}
\details{
Please see SKAT or SKATBinary for details.                     

}


\author{Seunggeun Lee}

