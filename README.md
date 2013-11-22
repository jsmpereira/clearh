## Heroku
	http://limitless-tundra-1502.herokuapp.com
	# Test
	http://limitless-tundra-1502.herokuapp.com/companies/1
	# AngularJS client
	https://github.com/jsmpereira/clearh-ajs
	http://gentle-brushlands-9342.herokuapp.com/

### #index
	curl -i http://localhost:3000/companies

### #create
	curl -X POST -i -d 'company[name]=Apple&company[address]=Addr&company[city]=thecity&company[country]=thecountry' http://localhost:3000/companies

### #show
	curl -i http://localhost:3000/companies/1

### #update
	curl -X PUT -i -d 'company[name]=Apple2&company[address]=Addr2&company[city]=thecity2' http://localhost:3000/companies/1

### POST #passport
	curl -X POST -i -F passport[pdf]=@/path/to/file.pdf -F passport[person_id]=1 http://localhost:3000/companies/1/passports

### GET #passport
	curl -X GET http://localhost:3000/companies/1/passports/1 -o passport