use Ex6;
select r.Numero as "Número de reserva", p.Nom as Nom, p.Cognoms as Cognoms, v.Numero as "Número de vol"
from Reserva as r, Passatger as p, Vol as v
where r.Passatger_DNI=p.DNI and r.Avio_idVol=v.idVol and r.Data like "29/1/2025%";
