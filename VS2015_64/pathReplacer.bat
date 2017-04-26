SET currentDir=%cd%
find /build -name "*.vxproj" -type f -exec sed -i 's#c:\github\ApertusVR#currentDir#g' {} +