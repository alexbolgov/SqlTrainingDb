merge into dbo.SourceSystem as target_data
using 
(
	values ('DIASOFT'),('EKS_CORPLOANS'),('EKS_CORPDEPOSITS'),('EKS_RETAIL_LOANS'),('EKS_RETAIL_DEPOSITS'),('MUREX')
) source_data(SourceSystemName)
on source_data.CountryIsoAlpha2Code = target_data.CountryIsoAlpha2Code
when not matched by target then insert (SourceSystemName) values (source_data.SourceSystemName);