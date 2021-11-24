
import json

soubor = open('zony.json', encoding='utf-8')
text = soubor.read()
#print(text)
soubor.close()

zony = json.loads(text)   #loads ze stringu dela slovnik, s v tom loads znamena string
#print (type(zony))
print (zony['features'][0])
print (zony['features'][0]['properties']['id'])
print (zony['features'][0]['properties']['midpoint'][0])
print (zony['features'][0]['properties']['midpoint'][1])
print (zony['features'][0]['properties']['type']['description'])
print (zony['features'][0]['properties']['number_of_places'])

seznam = []
for x in zony['features']:
  id = x['properties']['id']
  district = id.split('-')[0]
  lng = x['properties']['midpoint'][0]
  lat = x['properties']['midpoint'][1]
  typ = x['properties']['type']['description']
  kapacita = x['properties']['number_of_places']
  info = [id, district, lng, lat, typ, kapacita]
  seznam.append(info)

print (seznam)

import csv
with open('zony2.csv', 'w', encoding='utf-8') as csvfile:
  writer = csv.writer(csvfile, delimiter=',')
  header = ['id', 'district', 'lng', 'lat', 'type', 'capacity']
  writer.writerow(header)
  for x in seznam:
    writer.writerow(x)
csvfile.close()
