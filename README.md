# 🐳 Dockerized App

## 🚀 Deployment

1. Build and push docker image to GitHub.

```
./docker/build-and-push.sh [VERSION_TAG]
```

2. Create and push tag to GitHub.

```
git tag --sign -a "v[VERSION_TAG]" -m "[RELEASE_HEADER]"

git push origin "v[VERSION_TAG]"
```

3. Create a release on GitHub.

## 🤝 Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## ⚖️ License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
