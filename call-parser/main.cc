#include <stdio.h>
#include <string.h>

#include "sql_class.h"
#include "sql_digest.h"
#include "sql_lex.h"
#include "sql_parse.h"
#include "table.h"

int main() {
  THD thd(true /*enable plugin*/);
  const char *query_text = "select * from a_table";
  uint query_length = strlen(query_text);
  Object_creation_ctx ctx;
  bool rc;

  Parser_state parser_state;
  if (parser_state.init(&thd, query_text, query_length)) {
    printf("Cannot initialize parser state\n");
  }

  parser_state.m_input.m_compute_digest = true;

  rc = parse_sql(the, &parser_state, &ctx);
  if (!rc) {
    unsigned char md5[MD5_HASH_SIZE];
    char digest_text[1024];
    bool truncated;
    const sql_digest_storage *digest = &thd.m_digest->m_digest_storage;

    compute_digest_md5(digest, &md5[0]);
    compute_digest_text(digest, &digest_text[0], sizeof(digest_text),
                        &truncated);
  }
}
