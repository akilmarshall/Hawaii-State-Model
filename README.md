# Hawaii State Puzzle

## Get Raw Models

Topographic STL files sourced from [terrain2stl](https://jthatch.com/Terrain2STL/).

settings:

- model details:
    - box width: 1.5
    - box height: 1.5
    - box scaling factor: 2
    - box rotation: 0
    - vertical scale: 1
- water and base settings:
    - water drop: 5
    - base height: 10

A Makefile will be utilized with a openscad module that generates each atomic part of the model and assembles it totally.

- produce individual island models with SVG boundaries
- produce island feature models:
    - town/city names
    - town/city indicator (dot, or star)
    - mauna names
    - district division (Big Island Only)
    - area/district names
- Produce complete island models via the union and or intersection of the island feature models

## Cut Raw Models

Using Prusa Slicer the raw STL files from terrain2stl were split into individual island models.
Cut all models at the same vertical height and then use the split to parts feature to select only the desired part.

## Heal Models

Cutting the models in this fashion results in holes and degenerate vertices and faces such that openscad (really CGAL underneath) cannot use it's algorithms to operate on the models.




## Model Features

An openscad module paired with a Makefile will all the models to be built procedurally, with each category of information applied to the model one step at a time.

### [Hawaii](https://www.gohawaii.com/sites/default/files/island%20of%20hawaii%20drive%20map-web.jpg)

- [district](https://geoportal.hawaii.gov/datasets/HiStateGIS::2010-census-county-divisions-districts/explore?location=19.454606%2C-155.346230%2C10.02):
    - North Kohala
    - South Kohala
    - Hamakua
    - North Kona
    - South Kona
    - North Hilo
    - South Hilo
    - Kau
    - Puna
- town:
    - Hawi
    - Waimea
    - Honoka'a
    - Laupahoehoe
    - Hilo
    - Volcano
    - Na'alehu
    - Miloli'i
    - Captain Cook (is there a Hawaii name I can use instead?)
    - Kailua Kona
    - Kea'au
    - Pahoa
    - Papaikou
    - Honomu
    - Waikoloa Village
    - Pahala
- mauna:
    - Mauna Kea
    - Mauna Loa
    - Kilauea
    - Kohala
    - Hualalai

### [Maui](https://www.gohawaii.com/sites/default/files/HVCB_Maui_0829_ADACompliant.jpg)

- town:
    - Kapalua
    - Lahaina
    - Waihe'e
    - Kahului
    - Lower Pa'ia
    - Pa'ia
    - Makawao
    - Pukalani
    - Waiakoa
    - Keokea
    - Kihei
    - Hana
- mauna:
    - Haleakala
    - Kahalawai

### [Kahoolawe](https://www.google.com/maps/place/Kaho%E2%80%98olawe/@20.5526139,-156.6863677,12z/data=!3m1!4b1!4m6!3m5!1s0x7954e0169ef1144f:0x9122298291d1f266!8m2!3d20.5580469!4d-156.6057378!16zL20vMDFibjg1)

- beach:
    - Kaulana
    - Kaukaukapapa
    - Hanakanae'a
- mauna:
    - Pu'u Moaulanui

### [Kauai]()

- mauna:
    - Wai'ale'ale
- town:
    - Hanama'ulu
    - Lihu'e
    - Koloa
    - Po'ipu
    - Kalaheo
    - Ele'ele
    - Hanapepe
    - Waimea
    - Kekaha
    - Hanalei
    - Kilauea
    - Anahola

### [Lanai](https://www.gohawaii.com/sites/default/files/HVCB_Lanai_0829_ADACompliant.jpg)

- mauna:
    - Lana'ihale
- town:
    - Lana'i City
    - Keomuku Village
    - Kaunolu Village

- beach:
    - Polihua
    - Shipwreck
    - Hulopo'e

### [Molokai](https://www.gohawaii.com/sites/default/files/HVCB_Molokai_0829_ADACompliant.jpg)

- mauna:
    - Kamakou
- town:
    - Maunaloa
    - Ho'olehua
    - Kaunakakai
    - Kalaupapa

### [Niihau](https://www.google.com/maps/place/Ni%E2%80%98ihau/@21.8927826,-160.2183748,12z/data=!3m1!4b1!4m6!3m5!1s0x7c07c5d4484575f3:0xaec934775eca0fff!8m2!3d21.8921433!4d-160.1574878!16zL20vMDl3eWQ)

- mauna:
    - Pani'au
- beach:
    - Keanahaki
    - Kamalino
    - Nonopapa
    - Pu'Uwai
    - Kauwaha
    - Keawanui
    - Ka'AkuU
    - Keamano
    - Poleho
    - Kalaoa
- lake:
    - Halali'i Lake

### [Oahu](https://www.gohawaii.com/sites/default/files/oahu_drive_map.pdf)

- mauna:
    - Wai'anae Range
    - Ko'olau Range
- capital:
    - Honolulu
- town:
    - 'Aiea
    - Pearl City
    - Waipahu
    - 'Ewa Beach
    - Kapolei
    - Makakilo
    - Mililani
    - Wahiwa
    - Nanakuli
    - Ma'ili
    - Wai'nae
    - Makaha
    - Mkule'ia
    - Waialua
    - Hale'iwa
    - Kahuku
    - La'ie
    - Hau'ula
    - Ka'a'awa
    - Kane'ohe
    - Kailua
    - Waimanalo
