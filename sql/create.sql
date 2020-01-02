CREATE FUNCTION pljulia_call_handler()
RETURNS language_handler
AS '$libdir/pljulia'
LANGUAGE C;

CREATE LANGUAGE pljulia
HANDLER pljulia_call_handler;

COMMENT ON LANGUAGE pljulia
IS 'PL/Julia procedural language';
