## Update Civil War Collection ##

see the [SCO-6 ticket in Jira](https://jira.lib.utk.edu/browse/SCO-6).

### Process ###
#### Updating the file store ####
**Note:** The following examples use XMLStarlet, a command line utility for working with XML. This was simpler (maybe?) than spinning up a separate stylesheet to do this task. The binary is sometimes called different things on different systems tho so this is actually a terrible idea. 

tentative steps:
`$ xml ed -P -N tei=http://www.tei-c.org/ns/1.0 -s "/tei:TEI/tei:teiHeader/tei:profileDesc/tei:textClass/tei:keywords[@scheme='LCSH']" --type elem -n "term" --value "Civil War Letters" test/0012_000070_000207_0000.xml > test/0012_000070_000207_0000.test.xml`

and if you want the result formatted:
`$ xml fo -s 2 test/0012_000070_000207_0000.test.xml > test/0012_000070_000207_0000.test.2.xml
`