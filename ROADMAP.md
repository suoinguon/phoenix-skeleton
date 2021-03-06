## Feature Roadmap
- [x] Basic routing
- [x] Authentication
    - [x] from Database (Ecto/Postgres)
    - [x] salted/hashed passwords (hmac_sha256)
    - [x] basic Login page
- [x] Authorization
    - [x] Userroles Ecto defintion 
    - [x] Skeleton.Helper.roles_of( user ) returns string
    - [x] Means to check for roles in controllers/actions
- [x] Memcached Session store
    - this is done via the plug gutschilla/plug-session-memcached
    - [x] make Memcached host/port configurable
- [x] Django Templates (erlyDTL) => removed, see 0.7. now using eex (running with the crowd)
- [x] Ecto models
- [x] call/process external programs via porcelain (mainly for PDF generation)
    - [ ] stream input/output instead of writing to and reading from temp files
- [x] pluggable Navigation tree
    - [x] navigation tree that depends on user roles
        - this is done via the gutschilla/phoenix_skeleton_deps_umbrella dependecy which includes then NavigationTree module
- [x] CouchDB connector, see [couchdb_client](https://github.com/gutschilla/elixir-couchdb-client)
- [ ] Hello2.Admin.RESTCrud controller
    - [ ] validate/save
    - [ ] uploads ()
    - [ ] Image resizing (will be done via dragonfly-server [using convert/ImageMagick])
- [ ] TinySite CMS
- [ ] Create mix task to boostrap components instead of copy/paste+search/replace
