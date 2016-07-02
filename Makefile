stack=stack
basedir=test
outdir=${basedir}/output

pysc:
	${stack} build

testrun:
	@echo "run 'make testclean' first if this fails"
	${stack} exec pysc -- -o ${outdir} ${basedir}/Foo.purs ${basedir}/Data/Functor.purs

testdump:
	@cat ${outdir}/Data.Functor/__init__.py
	@echo
	@cat ${outdir}/Data.Functor/foreign.py

testclean:
	@echo "rm -rf ${outdir}/*"
