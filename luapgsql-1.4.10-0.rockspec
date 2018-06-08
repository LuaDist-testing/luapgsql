-- This file was automatically generated for the LuaDist project.

package = "luapgsql"
version = "1.4.10-0"

-- LuaDist source
source = {
  tag = "1.4.10-0",
  url = "git://github.com/LuaDist-testing/luapgsql.git"
}
-- Original source
-- source = {
-- 	url = "http://github.com/mbalmer/luapgsql/archive/1.4.10.zip";
-- 	md5 = "58adc9511c40368766f702f47fa9c8e7";
-- 	dir = "luapgsql-1.4.10";
-- }

description = {
	summary = "A Lua Binding for PostgreSQL";
	homepage = "http://github.com/mbalmer/luapgsql";
	license = "3-clause BSD";
}

dependencies = {
	"lua >= 5.1, < 5.4";
}

external_dependencies = {
	PQ = {
		header = "libpq-fe.h";
		library = "pq";
	};
}

build = {
	type = "builtin";
	modules = {
		pgsql = {
			sources = "luapgsql.c";
			incdirs = { "$(PQ_INCDIR)" };
			libdirs = { "$(PQ_LIBDIR)" };
			libraries = { "pq" };
		};
	};
}