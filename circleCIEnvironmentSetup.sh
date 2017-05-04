function copyEnvVarsToGradleProperties {
    GRADLE_PROPERTIES=$HOME"/AndroidCircleCI/gradle.properties"
    export GRADLE_PROPERTIES
    echo "Gradle Properties should exist at $GRADLE_PROPERTIES"
        sudo chmod +x $GRADLE_PROPERTIES
        sudo chmod +x $HOME/AndroidCircleCI/.gradle
        echo "Writing key parameters to gradle.properties..."
        echo "" >> $GRADLE_PROPERTIES
        echo "RELEASE_KEY_ALIAS=$RELEASE_KEY_ALIAS" >> $GRADLE_PROPERTIES
        echo "RELEASE_KEY_PASSWORD=$RELEASE_KEY_PASSWORD" >> $GRADLE_PROPERTIES
        echo "RELEASE_STORE_FILE=$RELEASE_KEY_STORE_FILE" >> $GRADLE_PROPERTIES
        echo "RELEASE_STORE_PASSWORD=$RELEASE_KEY_STORE_PASSWORD" >> $GRADLE_PROPERTIES
        echo "" > $HOME"/AndroidCircleCI/local.properties"
}