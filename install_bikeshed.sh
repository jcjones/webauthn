git clone --depth=1 --branch=master https://github.com/tabatkins/bikeshed.git ./bikeshed
pip install pygments
pip install --editable ./bikeshed
bikeshed update
