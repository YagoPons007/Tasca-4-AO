use Ex7;
select p.idProducte as Codi, p.Nom as Producte, p.Descripcio as Descripcio, p.Preu as 'Preu Unitari', p.IVA as IVA, p.CodiBarres as 'Codi de Barres'
from Producte as p
where p.IVA="21" and p.CodiBarres like "84%";
