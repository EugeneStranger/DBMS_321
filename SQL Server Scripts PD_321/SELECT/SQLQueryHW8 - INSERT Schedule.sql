DECLARE @discipline			SMALLINT = 16
DECLARE @teacher			INT		 = 1
DECLARE @group				INT		 = 3
DECLARE @start_date			DATE	 = '2023-12-01'
DECLARE @date				DATE	 = @start_date
DECLARE @interval			INT		 = 3
DECLARE @day_of_week		INT      = 3			
DECLARE @time				TIME	 = '14:30'
DECLARE @number_of_lessons	TINYINT	 = (SELECT number_of_lessons FROM dbo.Disciplines WHERE discipline_id=@discipline)
DECLARE @counter			INT		 = 0

WHILE(@counter <@number_of_lessons)
BEGIN
	INSERT INTO Schedule(discipline,teacher,[date],[time],spent,[group])
	VALUES				(@discipline,@teacher,@date,@time,IIF(@date < GETDATE(),1,0),@group)
	SET @counter = @counter+1;

	INSERT INTO Schedule(discipline,teacher,[date],[time],spent,[group])
	VALUES				(@discipline,@teacher,@date,DATEADD(mi,90,@time),IIF(@date < GETDATE(),1,0),@group)
	SET  @counter = @counter+1;
	SET  @interval = IIF(@day_of_week = 3,3,2)
	SET  @date = DATEADD(dd,@interval,@date)
	SET  @day_of_week = IIF(@day_of_week = 3,1,@day_of_week+1)
END
