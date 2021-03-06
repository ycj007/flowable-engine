
ALTER TABLE ACT_CO_CONTENT_ITEM ADD SCOPE_ID_ VARCHAR(255);

ALTER TABLE ACT_CO_CONTENT_ITEM ADD SCOPE_TYPE_ VARCHAR(255);

CALL SYSPROC.ADMIN_CMD ('REORG TABLE ACT_CO_CONTENT_ITEM');

CREATE INDEX idx_contitem_scope ON ACT_CO_CONTENT_ITEM(SCOPE_ID_, SCOPE_TYPE_);

INSERT INTO ACT_DMN_DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('2', 'flowable', 'changelog-xml/content/6300.xml', CURRENT TIMESTAMP, 3, '7:5aa445d140a638ee432a00c23134dd98', 'addColumn tableName=ACT_CO_CONTENT_ITEM; createIndex indexName=idx_contitem_scope, tableName=ACT_CO_CONTENT_ITEM', '', 'EXECUTED', NULL, NULL, '3.5.3', '2784593473');

