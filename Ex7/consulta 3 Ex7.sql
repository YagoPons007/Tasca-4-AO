use Ex7;
select t.NumFactura as Factura, t.Dia as Data, t.Hora as Hora, e.Nom as Empleat, SUM(lt.ImportTotal*p.IVA)
from Ticket as t, Empleat as e, LiniaTicket as lt, Producte as p
where e.idEmpleat = t.Empleat_idEmpleat and t.idTicket=lt.Ticket_idTicket and p.idProducte=lt.Producte_idProducte
Group by t.NumFactura, t.Dia, t.Hora, e.Nom;
