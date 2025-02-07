use Ex5;
select c.idCita as num, c.Data as dia, c.Hora as hora, v.Marca as marca, v.Medelo as model, cl.Nom as Client
from Cita as c, Vehicle as v, Client as cl
where v.Matricula=c.Vehicle_Matricula and cl.idClient=v.Client_idClient and c.DATA>='21/2/2025';
