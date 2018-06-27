# Don't save projects automatically

## Description
Sometimes you don't want to save your projects because you just want to try things out. Per default Visual Studio saves every new project automatically. You might realize this if you take a look at your default project directory and find a bunch of folders called Project1, Project2, ..., Project42. You can change this.

## Guidance
1. Go to Tools --> Options --> Projects and Solutions --> General
1. Disable the setting "Save new projects when created".
1. Next time you create a new project you have to explicitly save it (by clicking the Save Project button), otherwise it will be discarded.

![Disable auto-safe for projects.](DontSaveProjectsAutomatically/images/dontsave.png)

