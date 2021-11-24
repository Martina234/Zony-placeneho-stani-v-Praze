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
  A_lng = x['properties']['northeast'][0]
  A_lat = x['properties']['northeast'][1]
  B_lng = x['properties']['southwest'][0]
  B_lat = x['properties']['southwest'][1]
  info = [id, district, lng, lat, typ, kapacita, A_lng, A_lat, B_lng, B_lat]
  seznam.append(info)

print (seznam)

import csv
with open('zony3.csv', 'w', encoding='utf-8') as csvfile:
  writer = csv.writer(csvfile, delimiter=',')
  header = ['ID', 'DISTRICT', 'LNG', 'LAT', 'TYPE', 'CAPACITY', 'A_LNG', 'A_LAT', 'B_LNG', 'B_LAT']
  writer.writerow(header)
  for x in seznam:
    writer.writerow(x)
