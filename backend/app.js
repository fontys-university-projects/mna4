import { startServer } from '@directus/api/server';
var pipename = process.env.PORT;
startServer(pipename);