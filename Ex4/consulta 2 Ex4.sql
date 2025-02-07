use Ex4;
SELECT Client.DNI as "DNI", Client.Nom as "Nom", Client.Cognom as "Cognoms", Polissa.NumPolissa as "Número de la Pòlissa", TipusPolissa.Nom as "Tipus Pòlissa"
From Client, Polissa, TipusPolissa
Where Client.DNI=Polissa.Client_DNI and TipusPolissa.idTipusPolissa=Polissa.TipusPolissa_idTipusPolissa and TipusPolissa.Nom like "Llar";
