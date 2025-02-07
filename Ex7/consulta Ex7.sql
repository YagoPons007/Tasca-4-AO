Use Ex7;
select count(lt.idLiniaTicket) as "Numero de linies de tickets"
from LiniaTicket as lt, Empleat as e, Ticket as t
where t.Empleat_idEmpleat = e.idEmpleat and t.idTicket = lt.Ticket_idTicket and e.Nom like "%";





