# Introduction

Before we get started, please know that there are some little annoying tweaks that need to be done beforehand due to Fontys modifying things (everything is easy so it should be fine)

If you use Azure, that means you will be using IIS, for this case there wil be IIS web.config files left for copy pasting and quick run of backend and frontend!

If you are using IIS make sure to add iisnode extension to Azure to be able to run Node Js applications (Azure also has run Node Js app which does the same)

## Gitlab
> Difficulty: Easy 
> 
> Setup is done once you just keep the **Application ID** and **Secret Key** (do not worry you can create a new one if you loose it!)
Before we begin doing everything on this setup we need to do one of the most important thing and that is adding GitLab Auth's to the backend since a student account might get deleted and that will break the auth flow! 

To do that we go to Gitlab > Edit Profile > Applications (https://git.fhict.nl/-/profile/applications)

When creating the application here are the following things that need to be setup

```MD
Name of application: Pixel Playground
Redirect URIs:
https://<BACKEND URL>/auth/login/gitlab/callback
https://<BACKEND URL>/auth/login/gitlab/callback

Confidential: Checkmarked
Scopes: openid, profile, email
```

Once you setup your application you will receive the Application ID and Secret, by clicking on renew secret you can issue a new secret token

## Frontend
> Difficulty: Easy to Medium

Required stuff to be installed on your PC: 
- Node.js LTS (doesn't matter which version latest is best preferred)

after you copy the frontend from gitlab or any other source you need to do the following commands:

```npm install``` this will install all the node packages Vue/Vite requires

Once the installation is complete run
```npm run build``` this will create a brand new folder called **dist**(distributable), everything inside this folder is the frontend! For web-hosting it is straight forward any web server just needs to tell index.html to be public!

If you are using Azure, make sure to paste the web.config that is inside setup/frontend

## Backend
>Difficulty: Hard
>
>This requires more steps but everything should be fine


Directus has been prepared to run straight from a js file (index,cjs or app.js) some webservers cannot run the new Node js command so you just need to tell the webserver to run index.cjs which is the old school Common JS

### Setting up the Environment

The webserver needs to just have node js installed

and depending on how it is handle to do ```npm install``` to install all the necessary packages!

But before we do anything we need to setup few things in prior:

#### Postgres Database
Normally this is really easy in most environments it is few clicks and done! after that you just need to import the sql file from setup/backend

Sadly this cannot be documented since every cloud has different UI!

Make sure that database has a user with full administrative rights to the database

make sure to keep note of the database url, the database name, the username and the password

#### Environment variable file (.env)

Directus is configured with .env file, this file holds all the configs for everything! There are a few things inside it that needs to be configured

```JSON
PUBLIC_URL="https://<URL OF BACKEND>"
LOG_LEVEL="trace" #this might be changes to "debug" to see if backend is crashin

# These will be changes to the Postgres url Azure or any other service gave you
DB_HOST="127.0.0.1"
DB_PORT="5432"
DB_DATABASE="videolab"
DB_USER="videolab"
DB_PASSWORD="password"
DB_SSL="false"


AUTH_GITLAB_CLIENT_ID="Application ID"
AUTH_GITLAB_CLIENT_SECRET="Secret Key"
AUTH_GITLAB_ISSUER_URL="https://<FRONTEND URL>/.well-known/openid-configuration.json"

```

As for storage they have the official documentation that gives a great detailed doc on how to connect storage like S3 bucket, Google Cloud, Digital ocean.....

This one is for Azure https://docs.directus.io/self-hosted/config-options.html#azure-azure

#### File migration

Directus only wants to have those files back and existing so they can be simply uploaded to the cloud from the uploads folder, directus cares only if the name is matching!
