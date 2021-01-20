# demo code for projectDir

## 'main' branch

### layout
```
.
├── local_modules
│   ├── hello.nf
│   ├── public_modules -> ../public_modules
│   └── tests
│       ├── checker.nf
│       └── public_modules -> ../public_modules
├── main.nf
├── nextflow.config
└── public_modules
    └── utilities.nf
```

### testing commands
```
nextflow run junjun-zhang/demo-projectDir -r main  # works
# projectDir: /Users/junjun/.nextflow/assets/junjun-zhang/demo-projectDir

nextflow run junjun-zhang/demo-projectDir/local_modules/hello.nf -r main  # works
# projectDir: /Users/junjun/.nextflow/assets/junjun-zhang/demo-projectDir/local_modules

nextflow run junjun-zhang/demo-projectDir/local_modules/tests/checker.nf -r main  # works
# projectDir: /Users/junjun/.nextflow/assets/junjun-zhang/demo-projectDir/local_modules/tests
```


## 'no-symlinks' branch:

### layout
```
.
├── local_modules
│   ├── hello.nf
│   └── tests
│       └── checker.nf
├── main.nf
├── nextflow.config
└── public_modules
    └── utilities.nf
```

### testing commands
```
nextflow run junjun-zhang/demo-projectDir -r no-symlinks  # works
# projectDir: /Users/junjun/.nextflow/assets/junjun-zhang/demo-projectDir

nextflow run junjun-zhang/demo-projectDir/local_modules/hello.nf -r no-symlinks  # doesn't work, module include fails

nextflow run junjun-zhang/demo-projectDir/local_modules/tests/checker.nf -r no-symlinks  # doesn't work, module include fails
```
