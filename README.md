# Demo Check if the user has permission.

- Run project with command ...
```
docker-compose -f docker-compose.yml up
```

- Activate env in directory "env" with command ...

MacOS
```
source env/bin/activate   
```

- Open New terminal and input data "input.json" for test check permission with command ...
```
python3 py-opa.py
```
## Overview
### This Project have consists of 3 files
- input.json # Request POST to input data 
- data.json # is resemble Database
- example.rego # is Policy 

Ref : https://github.com/open-policy-agent/contrib/tree/main/api_authz

![alt text](https://d33wubrfki0l68.cloudfront.net/b394f524e15a67457b85fdfeed02ff3f2764eb9e/6ac2b/docs/latest/images/opa-service.svg)

