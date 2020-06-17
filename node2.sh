mkdir -p ${DATADIR}
cp -f /Genesis.json ${DATADIR}/Genesis.json
sed -i "s~%ChainID%~$ChainID~g" "${DATADIR}/Genesis.json"
geth --datadir ${DATADIR} init ${DATADIR}/Genesis.json
geth --networkid $ChainID --nodiscover --datadir ${DATADIR} --port 30305 console 2>> ${DATADIR}/geth_err.log
