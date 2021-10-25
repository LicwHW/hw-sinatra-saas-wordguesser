FEATURES_DIR="./features"
TEST_EXEC="cucumber"

features=$(ls $FEATURES_DIR | grep .feature)

for feature in $features; do
    $TEST_EXEC "$FEATURES_DIR/$feature"
done