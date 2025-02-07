use Ex6;

select p.Nom as Nom, p.Cognoms as Cognoms, p.DNI as DNI, v.Numero as "Num vol", v.Origen as "Origen", v.Desti as Desti, r.Import as Import
from Passatger as p, Vol as v, Reserva r
where p.DNI=r.Passatger_DNI and v.idVol=r.Avio_idVol;
