#!/bin/sh

[ $1 != '' ] && echo '#!/bin/sh\n\n ' > $1.sh && chmod 777 $1.sh && vim $1.sh
