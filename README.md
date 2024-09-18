# Banco Pichincha - DevOps Technical Assessment

Skills required:

```
● GNU/Linux Advanced Administration
● Proficiency in: Python, Java, Go, Ruby or Node (anyof these programming languages)
● Advanced GIT knowledge
● CI/CD pipelines knowledge is a must. (Any on-premiseor cloud platform)
● Use of IaC (Infrastructure as Code) (With any desiredprovider)
● Kubernetes Administration
● Docker Administration
```
Desirable Skills:
● Cloud Computing administration ( Microsoft Azure,Amazon AWS, Google Cloud Platform, etc.)

**DevOps Exercise**
Rules and requirements

● There is no internet usage limit
● All generated code must be versioned using a public **GitHub** Repo created by the candidate.
Requirements:
Build a microservice that must have a REST endpointlanguage or framework). named: /DevOps (use any preferred programming

This is the JSON payload for the endpoint. Pleaseuse a HTTP POST method:
{
“message” : “This is a test”,“to”: “Juan Perez”,
“from”: “Rita Asturia”,“timeToLifeSec” : 45
}
This is the JSON payload the endpoint must return:
{“message” : “Hello Juan Perez your message will besend”
}


Other HTTP Methods calls must return the string “ERROR”
The EndPoint must be secured with this APIKey:
2f5ae96c-b558-4c7b-a590-a501ae1c3f6c
The APIKey must be included in HTTP Headers
In our side, we will use this command to test yourendPoint
curl -X POST \-H "X-Parse-REST-API-Key: 2f5ae96c-b558-4c7b-a590-a501ae1c3f6c"\
-H "X-JWT-KWY: ${JWT}" \-H "Content-Type: application/json" \
-d '{ “message” : “This is a test”, “to”: “Juanhttps://${HOST}/DevOps Perez”, “from”: “Rita Asturia”, “timeToLifeSec” :45 }' \

Where the HOST variable is the URL sent by each participant(you), the JWT must be supplied to us (by
any means) and it has to be unique per transaction.
You must comply with the following requirements:● The microservice must be containerized and can bedeployed on any machine or in the cloud.
●● It is required to use a load balancer with a minimumThe infrastructure code must be versionated. of two nodes with the same microservice.
● The pipeline should be configured as a code and needsto be stored in a repository.
Minimum requirements for the pipeline:
●● Use of Dependency ManagementIt should have two stages at minimum: “build” and“test”, and can have the stages that you want.
● Must be automatic and can be executed by any branch,production environment. If it is required you cancreate more environments: development orthe master branch always deploys to the
testing. Additionally you could execute the pipelinethe microservice (In the case that more than one versionon demand and you can deploy any version ofexists)
● The pipeline should be configured as a code and needsto be stored in a repository.
The project must include:
●● Automatic testing of any type.Static code revision.
●● Dynamic grow.API Manager for API key and JWT

The revision is going to focus on the pipeline andwe expect you to use "Clean Code" and "TDD" for the
development of the microservice (which implies a requiredcoverage that will be analyzed).


