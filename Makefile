# Here's where we'll put our Make commands

all: directories downloads freshdata

downloads:
	curl "https://www.imf.org/external/datamapper/api/v1/PCPIPCH?periods=2023" -o tmp/inflation.json
	curl "https://www.imf.org/external/datamapper/api/v1/countries" -o tmp/countries.json

directories:
	-mkdir tmp
	-mkdir data

freshdata:
	node imf_to_csv.js