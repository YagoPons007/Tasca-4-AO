use Ex5;
Select *
from Cita, Client, Empleat, Vehicle
where Client.idClient=Vehicle.Client_idClient and Vehicle.Matricula=Cita.Vehicle_Matricula and Empleat.Telefon=Cita.Empleat_Telefon;
