ALTER TABLE ASSOCIATED ADD CONSTRAINT PK_ASSOCIATED PRIMARY KEY(UID_ASSOCIATED);
ALTER TABLE SCHEDULE ADD CONSTRAINT PK_SCHEDULE PRIMARY KEY(UID_SCHEDULE);
ALTER TABLE VOTE ADD CONSTRAINT PK_VOTE PRIMARY KEY(UID_VOTE);

ALTER TABLE VOTE ADD CONSTRAINT FK_VOTE_UID_SCHEDULE FOREIGN KEY (FK_SCHEDULE_UID) REFERENCES SCHEDULE (UID_SCHEDULE);
ALTER TABLE VOTE ADD CONSTRAINT FK_VOTE_UID_ASSOCIATED FOREIGN KEY (FK_ASSOCIATED_UID) REFERENCES ASSOCIATED (UID_ASSOCIATED);