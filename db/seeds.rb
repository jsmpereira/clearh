# Add Some companies
company = Company.create name: 'Acme', address: 'Acme Street', city: 'Coimbra', country: 'PT',
               email: 'admin@acme.com', phone_number: '912345678'

# People
john = Person.create name: 'John'
mary = Person.create name: 'Mary'

# Occupations
company.occupations << Occupation.create(title: 'Director', person_id: john.id)
company.occupations << Occupation.create(title: 'Owner', person_id: mary.id)