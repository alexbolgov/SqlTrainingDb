merge into dbo.SourceSystem as target_data
using 
(
	values ('DIASOFT'),('EKS_CORPLOANS'),('EKS_CORPDEPOSITS'),('EKS_RETAILLOANS'),('EKS_RETAILDEPOSITS'),('MUREX')
) source_data(SourceSystemName)
on source_data.SourceSystemName = target_data.SourceSystemName
when not matched by target then insert (SourceSystemName) values (source_data.SourceSystemName)
when not matched by source then delete;