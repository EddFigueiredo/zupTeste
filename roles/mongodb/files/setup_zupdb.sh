#!/bin/bash
echo 'db.createUser( {user:"zupadmin", pwd:"zuppass", roles:[{ role: "readWrite", db: "ZupDB"}, { role: "userAdmin", db: "ZupDB"}, { role: "dbAdmin", db: "ZupDB"}]});' | mongo ZupDB