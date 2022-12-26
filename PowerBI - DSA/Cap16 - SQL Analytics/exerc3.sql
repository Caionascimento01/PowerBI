select round(avg(salario_hora)) as media_salario_hora, estado 
from cap16."TB_FUNC" as TBF
inner join cap16."TB_ENDERECO" as TBE
on TBF.id = TBE.id_func
group by estado