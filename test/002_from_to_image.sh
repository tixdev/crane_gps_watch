#! /bin/bash -xeu

pwd

$TEST_BINARY --out 002_output1.tcx --from_image ${srcdir}/image.bin --to_image 002_image2.bin
$TEST_BINARY --out 002_output2.tcx --from_image 002_image2.bin


xmllint --schema ${srcdir}/TrainingCenterDatabasev2.xsd --noout 002_output1.tcx
xmllint --schema ${srcdir}/TrainingCenterDatabasev2.xsd --noout 002_output2.tcx

