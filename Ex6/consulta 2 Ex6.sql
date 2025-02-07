use Ex6;
select a.Marca as Marca, a.Model as Model, a.Capacitat as Capatitat, v.Numero as NumVol, v.Origen as Origen, v.Desti as Desti, v.HSortida as "Hora de Sortida"
from Avio as a, Vol as v
where a.idAvio = v.Avio_idAvio and a.Marca like "Airbus";
