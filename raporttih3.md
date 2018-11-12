# Palvelinten Hallinta: Harjoitus H3

Linkki josta kotitehtävät ovat annettu: http://terokarvinen.com/2018/aikataulu-%e2%80%93-palvelinten-hallinta-ict4tn022-3004-ti-ja-30$

**a) Opiskele yllä aikataulussa olevat artikkelit. Noissa artikkeleissa opetetaan ne asiat, joilla läksyt saa tehtyä. Tätä a-kohdan lukutehtävää ei tarvitse raportoida.** 
**Luettava materiaali on kunkin tapaamiskerran kohdalla.**

**b) MarkDown. Tee tämän tehtävän raportti MarkDownina. Helpointa on tehdä raportti samaan GitHub-varastoon kuin Salt-modulit. Tiedostoon .md-pääte.
Tyhjä rivi tekee kappalejaon, risuaita ‘#’ tekee otsikon, sisennys merkitsee koodinpätkän.**

**c) Laita /srv/salt/ gittiin. Tee uusi moduli. Kloonaa varastosi toiselle koneelle (tai poista /srv/salt ja palauta se kloonaamalla) ja jatka sillä.**

**d) Näytä omalla salt-varastollasi esimerkit komennoista ‘git log’, ‘git diff’ ja ‘git blame’. Selitä tulokset.**

**e) Tee tyhmä muutos gittiin, älä tee commit:tia. Tuhoa huonot muutokset ‘git reset –hard’. Huomaa, että tässä toiminnossa ei ole peruutusnappia.**

**f) Tee uusi salt-moduli. Voit asentaa ja konfiguroida minkä vain uuden ohjelman: demonin, työpöytäohjelman tai komentokehotteesta toimivan ohjelman.
Käytä tarvittaessa ‘find -printf “%T+ %p\n”|sort’ löytääksesi uudet asetustiedostot.**

Käytän tehtävien suorittamiseen pöytäkonettani, sekä virtuaalipalvelinta DigitalOceanista. Koneiden rauta löytyy listattuna [blogistani](https://miikazitting.wordpress.com/2018/10/30/palvelinten-hallinta-viikko-1/)

## c) Laita /srv/salt/ gittiin. Tee uusi moduli. Kloonaa varastosi toiselle koneelle (tai poista /srv/salt ja palauta se kloonaamalla) ja jatka sillä.

Palvelimella oli jo salt-master asennettuna, joten poistin saltin ensimmäisenä
	
	sudo apt-get purge salt

