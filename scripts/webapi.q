\l packages/req.q
\l packages/api.q
\l scripts/sp.q

example:{select distinct p, s.city from sp}
.api.define[`example;()!();();`GET]

setcity:{[city] cty::city;"City set to: ",string cty}
.api.define[`setcity;(1#`city)!1#`;`city;`POST]

gets:{0!select from s where city=cty}
.api.define[`gets;()!();();`]

getp:{[city;color]ct:city;cl:color;0!select from p where city=ct,color=cl}
.api.define[`getp;`city`color!`london`red;`color;`]

mapval:{[input;dict] dict@input}
.api.define[`mapval;`input`dict!(`;`a`b`c!1 2 3);`input;`POST]