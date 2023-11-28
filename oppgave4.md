## OPPGAVE 4 

##A.**Kontinuerlig Integrering**

Kontinuerlig integrasjon er en praksis i softvare utvikling hvor et team integrerer
koden deres gjevnlig. Ofte hver dag, noe som betyr at det oppdateres flere ganger
hver dag. Hver integrasjon er (forhåpentligvis) verifisert av en automatisert build 
for å forhindre feil som fort som mulig. Det er diverse platformer for dette.
Versjon-håndtering-system blir ofte gjort gjennom Git. Azure Devops - GitHub

**Fordelene med å bruke CI i et utviklingsprosjekt - hvordan CI kan forbedre kodekvaliteten og effektivisere utviklingsprosessen.**

Det er mange fordeler med å bruke Kontinuerlig integrasjon (CI). Du har muligheten 
til å oppdage bugs mye tideligere enn hva du hadde gjort om du skulle ventet på
at den ble oppdaget av fks. bruker eller en funksjon som går galt. Dette er 
spesielt merkbart om en integrerer oftere. 
Automatisering av byggeprosessen effektiviserer også byggeprosessen. Vi får heller
fokusert på koding framfor testing og manuelt arbeid. Vi slepper også problemet
med at ting kun fungerer på èn maskin, samt får vi bearbeidet og (mottatt) 
tilbakemeldinger raskere.

**Hvordan jobber vi med CI i GitHub rent praktisk? For eskempel i et utviklingsteam på fire/fem utivklere?**

Der jeg jobber, bruker vi AzureDevops for repositiry (dette er hvor koden lagres). 
Vi oppretter alltid en branchfor de casene vi jobber med. Caser kommer fra Jira, 
og casene kan være alt fra bugs vi har fått i tilbakemelding fra kunde, eller noe 
vi har planlagt å integrere i applikasjonen. Ettersom vi har egne brancher (grener) 
må vi også huske å integrere justeringene våre ofte til hoved grenen. Vi må også 
ikke glemme å trekke ofte, slik grenen vi jobber i ikke blir utdatert etc og får 
konflikter med hoved grenen når vi integrerer. Vi bruker også jira for å skrive
dokumentasjon for hva vi gjør og skal gjøre. Det skal derimot sies at ikke alt blir 
like domumentert. Du kan fort se forskjellen på hvordan en liten bug er dokumentert
versus et fremtidig prosjekt. Dokumentasjon (igjennom Jira iallefall) er også 
greit for å se status til enkelte saker (caser). Du kan somregel se hva som er 
planlagt å gjøre, samt hva som er blitt gjort.
Kodestandar er også sentralt, ettersom ting skal leses av alle, og det er et felles 
prosjekt/kodebase, er det key at ting er lettlesing og forståelig; kodestandarer! 




##B. **Sammenligning av Scrum/Smidig og DevOps fra et Utviklers Perspektiv**

**Scrum/Smidig Metodikk**
Scrum er populært rammeverk som prioriterer behovet for kunder og funksjonalitet.
Scrum tar utgangspunkt i fremgang gjennom små, inkrementelle steg (ref sprints),
vanligvis over 1-4 uker. Teamene er selvorganiserte, ansvarlige for planlegging,
evaluering, og gjennomføring av arbeidet.

Overgangen til Scum kan fort være utfordrende for større og tradisjonelle intstilte
organisasjoner. Hvorfor endre noe som "fungerer"? Som i alt, er det ikke like lett
å hoppe til noe helt nytt. Som student er det derimot lett å tro at Scrum er en 
de facto standar i kode-verden. Ettersom for oss var Scrum metodikk det første,
og da såklart eneste, rammeverket vi ble eksponert for. Scrum krever et effektivt 
sammarbeid og komunikasjon over hele teamet. Teamet må hjelpe hverandre forstå 
og kunskap må fordeles. Det kan iblant være vanskelig å holde grep over Scrums
prinsipper, spesielt når prosjektene blir store og komplekse. Scrum har som oppgave
å redusere risiko. De raske leveringene åpner opp for hurtig tilbakemeldinger, som
veileder produkforbedringen. Dette kan igjen øke produktiviteten. Ofte er folk også 
mer produktiv når de får arbeidet autonomisk.

**DevOps Metodikk**
Flyt - Tilbakemelding - Kontinuerlig Forbedring

Flyt er sentralt i DevOps. Det er fokus på å levere programvare raskt og effektivt,
ta ibruk iterativ utvikling og automatisering for å redusere manuelle oppgaver. 

Feedback er òg et hovedtema. Det bygger på å samle inn informasjon fra brukere og
folk med relasjoner til programmet for å korrigere og forbedre programvaren. Hvordan 
teams jobber med å samle tilbakemeldinger varierer såklart, men en rekke tekninner
går igjen. pilotbrukere og brukertester brukes ofte for tilbakemeldinger. Piloter ser
gjenre ting før det er utgitt, og gir da utrolig verdifull tilbakemelding. 
Analysering av statistikk er også et sentralt tema for devops. All den verdifulle
dataen de samler inn blir prossesert og studert for å finne forbedringer. Dette kan
være ting som mønstere over hvor brukere klikker ofte, og fks "journeys" brukere 
har på platformen. De kan bruke denne statistikket til å fks lage en forbedret rute
for brukere som kan spare de noen click.

Vi må ikke glemme kontinuerlig forbedringer. Dette dreier seg ikke bare om å gjøre
nye ting fort, men også å kontinuerlig idenfisere ting som kan gjøres bedre og
generelt forbedre programvaren.

Det er ikke bare bare å integrere DevOps i en organisasjon. Det kan fort kreve 
en strukturell og kulturell drastisk justering å få implementert. Samt er integreringen
av verktøy og infrastruktur ofte en utfordring. Sikkerheter er også lett å glemme
når det er mange baller i luften.




**Sammenligning og Kontrast**
Scrum prioriterer 



**C. Det Andre Prinsippet - Feedback**

