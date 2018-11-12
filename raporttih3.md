# Palvelinten Hallinta: Harjoitus H3

Linkki josta kotitehtävät ovat annettu: http://terokarvinen.com/2018/aikataulu-%e2%80%93-palvelinten-hallinta-ict4tn022-3004-ti-ja-30$

**a) Opiskele yllä aikataulussa olevat artikkelit. Noissa artikkeleissa opetetaan ne asiat, joilla läksyt saa tehtyä. Tätä a-kohdan lukutehtävää ei tarvitse raportoida.** 
**Luettava materiaali on kunkin tapaamiskerran kohdalla.**

**b) MarkDown. Tee tämän tehtävän raportti MarkDownina. Helpointa on tehdä raportti samaan GitHub-varastoon kuin Salt-modulit. Tiedostoon .md-pääte.
Tyhjä rivi tekee kappalejaon, risuaita ‘#’ tekee otsikon, sisennys merkitsee koodinpätkän.**

**c) Laita /srv/salt/ gittiin. Tee uusi moduli. Kloonaa varastosi toiselle koneelle (tai poista /srv/salt ja palauta se kloonaamalla) ja jatka sillä.**

**d) Näytä omalla salt-varastollasi esimerkit komennoista 'git log', 'git diff' ja 'git blame'. Selitä tulokset.**

**e) Tee tyhmä muutos gittiin, älä tee commit:tia. Tuhoa huonot muutokset ‘git reset –hard’. Huomaa, että tässä toiminnossa ei ole peruutusnappia.**

**f) Tee uusi salt-moduli. Voit asentaa ja konfiguroida minkä vain uuden ohjelman: demonin, työpöytäohjelman tai komentokehotteesta toimivan ohjelman.
Käytä tarvittaessa ‘find -printf “%T+ %p\n”|sort’ löytääksesi uudet asetustiedostot.**

Käytän tehtävien suorittamiseen pöytäkonettani, sekä virtuaalipalvelinta DigitalOceanista. Koneiden rauta löytyy listattuna [blogistani](https://miikazitting.wordpress.com/2018/10/30/palvelinten-hallinta-viikko-1/)

Pöytäkoneessani pyörii linux livetikulta, johon on annettu ainoastaan seuraavat komennot:

	setxkbmapfi
	sudo apt-get update
	sudo apt-get -y install shutter

Virtuaalipalvelinta käytän ssh yhteydellä pöytäkoneeltani.

## c) Laita /srv/salt/ gittiin. Tee uusi moduli. Kloonaa varastosi toiselle koneelle (tai poista /srv/salt ja palauta se kloonaamalla) ja jatka sillä.

Kerkesimme jo torstain tunneilla laittamaan /srv/salt gittiin joten kloonasin sen virtuaalipalvelimelleni.
Palvelimella oli jo salt-master asennettuna, joten poistin saltin ensimmäisenä
	
	sudo apt-get purge salt-master 

Sitten aloitin saltin lataamisen nollista

	sudo apt-get -y install salt-master
	cd /srv/
	sudo git clone https://github.com/MiikaZitting/salt.git
	git config --global user.name "Miika Zitting"
	git config --global user.email "a1704460@myy.haaga-helia.fi"
	git config --global credential.helper "cache --timeout=3600"
	
Sain kloonattua gittini salt tiedoston palvelimelleni githubista ja kirjoitin tämänkin raportin Markdownilla gittiin.

## d) Näytä omalla salt-varastollasi esimerkit komennoista 'git log', 'git diff' ja 'git blame'. Selitä tulokset.

Alla kopioituna tuloksia git log komennolla: 

	commit c8cc7e27b3ca92bf9df47dfe9e4e476166d0790d (HEAD -> master, origin/master, origin/HEAD)
	Author: Miika Zitting <a1704460@myy.haaga-helia.fi>
	Date:   Mon Nov 12 15:33:23 2018 +0000

	Add text

	commit 97ed7cc3670068d8ba143468bf83da46319daf38
	Author: Miika Zitting <a1704460@myy.haaga-helia.fi>
	Date:   Mon Nov 12 15:29:59 2018 +0000

	Write report

	commit 859f749a9e3133485b09fc5e66ceb5570c3ef93d
	Author: Miika Zitting <a1704460@myy.haaga-helia.fi>
	Date:   Mon Nov 12 15:26:18 2018 +0000

	Write report

**git log** näyttää siis lokin gitistä,päivämäärä ja kellonaika (UTC), kuka muokannut ja kuvaus mitä tehnyt.
Lokitapahtumat tulevat jokaisen **git commit** komennon jälkeen. 
Commitin jälkeinen tiiviste sisältää tiedot mitä muokattu, tiivistettä voidaan käyttää diff komennon kanssa kuten seuraavassa kohdassa tein.

**git diff** komennolla voidaan verrata kahden eri lokitapahtuman suhdetta toisiinsa. Tulos näyttää mitä eroa näiden kahden tiivisteen välillä on tapahtunut.
Tiivisteet voivat olla pitkältä aikaväliltä toisistaan, voidaan katsoa vaikka mitä eroa tunti sitten aiheutuneella lokitapahtumalla on viimeisimmän commitin kanssa. 

	git diff 859f749a9e3133485b09fc5e66ceb5570c3ef93d c8cc7e27b3ca92bf9df47dfe9e4e476166d0790d

