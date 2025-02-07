use Ex4;
select count(*) as numpolisses
from Polissa, Client
where Client.DNI=Polissa.Client_DNI and Client.Nom like "%Joan%";
