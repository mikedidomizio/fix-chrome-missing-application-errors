# Microsoft Teams

![Image of Teams meeting missing the Teams application](assets/teams-missing-application.png)

## Automatic fix

### MacOS

Run `sh ./run.sh`

## Manual fix

### MacOS

1. Close Google Chrome

2. Go to the Chrome application directory

```shell
  cd ~/Library/Application\ Support/Google/Chrome
```

You may have multiple profiles under directories like `Profile 1` or a `Default` directory if you don't have Chrome profiles.

3. Go into one of the directories

```shell
cd "./Profile 1"
```

3b. If you want to be specific about which Google Chrome profile you are modifying, check for the "email" inside the `Preferences` file inside the profile.
If it's not the correct profile, go to the parent directory and check a different profile.

4. Modify the `Preferences` file removing the following:

```
"allowed_origin_protocol_pairs":{"https://teams.microsoft.com":{"msteams":true}}
```

found inside the `protocol_handler` key.




