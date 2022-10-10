theme: minima
# helloWorld
helloWorld package was created to exemplify GitHub and R Studio Integration.

### Note
Please consult this [link]( https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax) for more information about formatting.


To install a GitHub Pakage in R you may need *devtools*. If so, please run the following code:
```R
if (!requireNamespace("devtools", quietly = TRUE))
    install.packages("devtools")
```

You can install an R package that is publicly available in GitHub by using the following code (replacing **GitHubName/repo** with the correct information):

```R
devtools::install_github('GitHubName/repo')
```

You can also creates links to files in your repository, for example the script ["hello.R"](R/hello.R) in the R folder 
