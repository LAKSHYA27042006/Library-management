SELECT * FROM library.books_issued;

ALTER TABLE library.books
DROP COLUMN quantity,
DROP COLUMN genre;

ALTER DATABASE library MODIFY NAME = library_old;

ALTER TABLE library.books
CHANGE COLUMN `check` status VARCHAR(255);

ALTER TABLE library.issue_history
MODIFY COLUMN dateofissue DATETIME;

RENAME TABLE library.issuehistory TO library.issue_history;

ALTER TABLE library.issue_history
ADD COLUMN dateofreturn DATETIME,
ADD COLUMN fine int;








