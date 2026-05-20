
-- ΚΛΙΝΙΚΗ
INSERT INTO KLINIKI (ONOMA, DIEYTHYNTIS, ARITHMOS_KLINWN, ARITHMOS_ASTHENWN)
VALUES ('Παθολογική', 'Δρ. Στέφανος Μάνος', 40, 32);

INSERT INTO KLINIKI (ONOMA, DIEYTHYNTIS, ARITHMOS_KLINWN, ARITHMOS_ASTHENWN)
VALUES ('Χειρουργική', 'Δρ. Ανδρέας Θεοδωρίδης', 30, 25);

INSERT INTO KLINIKI (ONOMA, DIEYTHYNTIS, ARITHMOS_KLINWN, ARITHMOS_ASTHENWN)
VALUES ('Παιδιατρική', 'Δρ. Αικατερίνη Νικολάου', 20, 15);

INSERT INTO KLINIKI (ONOMA, DIEYTHYNTIS, ARITHMOS_KLINWN, ARITHMOS_ASTHENWN)
VALUES ('Καρδιολογική', 'Δρ. Γεώργιος Παπαστεργίου', 25, 18);


-- ΝΟΣΗΛΕΥΤΗΣ
INSERT INTO NOSILEYTIS (AT, ONOMA, EPWNYMO, EMAIL, TILEFONO, POLI, DIEYTHINSI, EIDIKOTITA)
VALUES ('Ν001', 'Άννα', 'Σωτηρίου', 'anna.sotiriou@example.gr', '2101111111', 'Αθήνα', 'Πατησίων 10', 'Γενική Νοσηλευτική');

INSERT INTO NOSILEYTIS (AT, ONOMA, EPWNYMO, EMAIL, TILEFONO, POLI, DIEYTHINSI, EIDIKOTITA)
VALUES ('Ν002', 'Δημήτρης', 'Καραγιάννης', 'd.karagiannis@example.gr', '2102222222', 'Αθήνα', 'Σταδίου 25', 'Χειρουργική Νοσηλευτική');

INSERT INTO NOSILEYTIS (AT, ONOMA, EPWNYMO, EMAIL, TILEFONO, POLI, DIEYTHINSI, EIDIKOTITA)
VALUES ('Ν003', 'Ελένη', 'Παπακωνσταντίνου', 'e.papakons@example.gr', '2310123456', 'Θεσσαλονίκη', 'Τσιμισκή 88', 'Παιδιατρική Νοσηλευτική');

INSERT INTO NOSILEYTIS (AT, ONOMA, EPWNYMO, EMAIL, TILEFONO, POLI, DIEYTHINSI, EIDIKOTITA)
VALUES ('Ν004', 'Γιώργος', 'Μιχαηλίδης', 'g.michailidis@example.gr', '2103333333', 'Αθήνα', 'Αμφείας 12', 'Καρδιολογική Νοσηλευτική');


-- ΠΑΡΑΪΑΤΡΙΚΟ ΠΡΟΣΩΠΙΚΟ
INSERT INTO PARAIATRIKO_PROSOPIKO (AT, AFM, ONOMA, EPWNYMO, EIDIKOTITA, ONOMA_ERGASTIRIOU)
VALUES ('Π001', '123456789', 'Μαρίνα', 'Αλεξίου', 'Τεχνολόγος Ιατρικών Εργαστηρίων', 'Μικροβιολογικό');

INSERT INTO PARAIATRIKO_PROSOPIKO (AT, AFM, ONOMA, EPWNYMO, EIDIKOTITA, ONOMA_ERGASTIRIOU)
VALUES ('Π002', '234567891', 'Κώστας', 'Δημητρίου', 'Ακτινογράφος', 'Ακτινολογικό');

INSERT INTO PARAIATRIKO_PROSOPIKO (AT, AFM, ONOMA, EPWNYMO, EIDIKOTITA, ONOMA_ERGASTIRIOU)
VALUES ('Π003', '345678912', 'Σπύρος', 'Ιωάννου', 'Τεχνολόγος Αιματολογικού', 'Αιματολογικό');

INSERT INTO PARAIATRIKO_PROSOPIKO (AT, AFM, ONOMA, EPWNYMO, EIDIKOTITA, ONOMA_ERGASTIRIOU)
VALUES ('Π004', '456789123', 'Λένα', 'Χατζή', 'Τεχνικός Καρδιολογικού', 'Καρδιολογικό Εργαστήριο');


-- ΙΑΤΡΟΣ
INSERT INTO IATROS (AT, EPWNYMO, ONOMA, EIDIKOTITA, DIEYTHINSI, POLI, TILEFONO, EMAIL, ONOMA_ERGASTIRIOU, ONOMA_KLINIKIS)
VALUES ('Ι001', 'Παπαδόπουλος', 'Νίκος', 'Παθολόγος', 'Ακαδημίας 15', 'Αθήνα', '2104444444', 'n.papadopoulos@example.gr', 'Αιματολογικό', 'Παθολογική');

INSERT INTO IATROS (AT, EPWNYMO, ONOMA, EIDIKOTITA, DIEYTHINSI, POLI, TILEFONO, EMAIL, ONOMA_ERGASTIRIOU, ONOMA_KLINIKIS)
VALUES ('Ι002', 'Θεοδωρίδης', 'Ανδρέας', 'Χειρουργός', 'Σόλωνος 50', 'Αθήνα', '2105555555', 'a.theodoridis@example.gr', 'Ακτινολογικό', 'Χειρουργική');

INSERT INTO IATROS (AT, EPWNYMO, ONOMA, EIDIKOTITA, DIEYTHINSI, POLI, TILEFONO, EMAIL, ONOMA_ERGASTIRIOU, ONOMA_KLINIKIS)
VALUES ('Ι003', 'Νικολάου', 'Αικατερίνη', 'Παιδίατρος', 'Εγνατία 12', 'Θεσσαλονίκη', '2310555555', 'a.nikolaou@example.gr', 'Μικροβιολογικό', 'Παιδιατρική');

INSERT INTO IATROS (AT, EPWNYMO, ONOMA, EIDIKOTITA, DIEYTHINSI, POLI, TILEFONO, EMAIL, ONOMA_ERGASTIRIOU, ONOMA_KLINIKIS)
VALUES ('Ι004', 'Παπαστεργίου', 'Γιώργος', 'Καρδιολόγος', 'Κηφισίας 120', 'Αθήνα', '2106666666', 'g.papastergiou@example.gr', 'Καρδιολογικό Εργαστήριο', 'Καρδιολογική');


-- ΤΗΛΕΦΩΝΑ ΕΡΓΑΣΤΗΡΙΩΝ (1:N)
INSERT INTO TILEFONO_ERGASTIRIOU (TILEFONO, ONOMA_ERGASTIRIOU)
VALUES ('2107000001', 'Μικροβιολογικό');
INSERT INTO TILEFONO_ERGASTIRIOU (TILEFONO, ONOMA_ERGASTIRIOU)
VALUES ('2107000002', 'Μικροβιολογικό');

INSERT INTO TILEFONO_ERGASTIRIOU (TILEFONO, ONOMA_ERGASTIRIOU)
VALUES ('2108000001', 'Ακτινολογικό');
INSERT INTO TILEFONO_ERGASTIRIOU (TILEFONO, ONOMA_ERGASTIRIOU)
VALUES ('2108000002', 'Ακτινολογικό');

INSERT INTO TILEFONO_ERGASTIRIOU (TILEFONO, ONOMA_ERGASTIRIOU)
VALUES ('2109000001', 'Αιματολογικό');

INSERT INTO TILEFONO_ERGASTIRIOU (TILEFONO, ONOMA_ERGASTIRIOU)
VALUES ('2110000001', 'Καρδιολογικό Εργαστήριο');

-- ΕΡΓΑΖΕΤΑΙ (συσχετισμοί νοσηλευτών-κλινικών)
INSERT INTO ERGAZETAI (ONOMA_KLINIKIS, AT_NOSILEYTI) VALUES ('Παθολογική', 'Ν001');
INSERT INTO ERGAZETAI (ONOMA_KLINIKIS, AT_NOSILEYTI) VALUES ('Χειρουργική', 'Ν002');
INSERT INTO ERGAZETAI (ONOMA_KLINIKIS, AT_NOSILEYTI) VALUES ('Παιδιατρική', 'Ν003');
INSERT INTO ERGAZETAI (ONOMA_KLINIKIS, AT_NOSILEYTI) VALUES ('Καρδιολογική', 'Ν004');

-- Επιπλέον τοποθετήσεις (ίδιος νοσηλευτής σε 2 κλινικές)
INSERT INTO ERGAZETAI (ONOMA_KLINIKIS, AT_NOSILEYTI) VALUES ('Παθολογική', 'Ν002');
INSERT INTO ERGAZETAI (ONOMA_KLINIKIS, AT_NOSILEYTI) VALUES ('Καρδιολογική', 'Ν001');


