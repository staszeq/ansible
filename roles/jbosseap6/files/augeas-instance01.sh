augtool -LA -e <<EOF
set /augeas/load/Xml/lens Xml.lns
set /augeas/load/Xml/incl[2] /opt/jboss/instances/jboss6/instance01/configuration/standalone-full.xml
load
set /files/opt/jboss/instances/jboss6/instance01/configuration/standalone-full.xml/server/interfaces/interface[#attribute/name='management']/inet-address/#attribute/value "0.0.0.0"
set /files/opt/jboss/instances/jboss6/instance01/configuration/standalone-full.xml/server/interfaces/interface[#attribute/name='public']/inet-address/#attribute/value "0.0.0.0"
save
print /augeas//error
EOF
