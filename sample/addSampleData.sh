sleep 5
echo "Add Sample Data"
cat 
ldapadd -x -D "cn=Manager,dc=example,dc=com" -f /sample/sample.ldif -w admin
echo "verify"
ldapsearch -x -b "dc=example,dc=com" -H ldap://localhost -D "cn=Manager,dc=example,dc=com" -w admin "(objectClass=person)"