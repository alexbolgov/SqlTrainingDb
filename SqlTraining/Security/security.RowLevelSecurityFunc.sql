CREATE FUNCTION [security].[RowLevelSecurityFunc] ( @id1 int, @id2 int, @id3 int, @id4 int, @id5 int, @id6 int)
RETURNS TABLE as return 
	select 1 as fn_securitypredicate_result
	where @id1 >= 0 and @id2 >= 0 and @id3 >= 0 and @id3 >= 0 and @id4 >= 0 and @id5 >= 0 and @id6 >= 0 or user_name() = 'QueryChecker'