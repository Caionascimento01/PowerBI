select round(avg(idade)), numero_filhos, grau_instrucao
from cap16."TB_FUNC"
where reg_procedencia = 'capital' 
	and estado_civil = 'casado'
	and salario_hora > (select avg(salario_hora) from cap16."TB_FUNC")
group by numero_filhos, grau_instrucao
order by round(avg(idade)) desc