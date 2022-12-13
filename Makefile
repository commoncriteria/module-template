-include ~/commoncriteria/User.make
-include User.make
DIFF_TAGS="v1.0"
TRANS?=transforms

defaulty:
	python3 $(TRANS)/py/retrieve-included-docs.py input/module-template.xml output && cd transforms/py && python3 mod2main.py ../../input/module-template.xml && cp /tmp/abc.xml /tmp/abc.html #&& daisydiff /home/kg/commoncriteria/module-template/output/module-template-release.html /tmp/abc.html --file=/home/kg/opt/daisydiff/ExecuteDaisy-master/daisydiff.html


include $(TRANS)/module/Module.make


