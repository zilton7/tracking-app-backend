# TRACKING APP API

This is backend API built for [Tracking App](https://github.com/zilton7/tracking-app-frontend).


### Built with
- Ruby
- Ruby on Rails

## Getting Started Locally

- Clone the repo `https://github.com/zilton7/tracking-app-backend.git`
- cd into the project
- Run `bundle install` to install dependencies
- In the terminal run `rails server` open up the live server
- Append one of the endpoints to `http://localhost:3000/` in order to get/post data

## API endpoints

- To get all available measurements `api/v1/measurements`
- To get data for one particular measurement `api/v1/measurements/1`
- To post new measurement data `api/v1/measurements/` 
    be sure to use POST request and provide payload in this format `{
	"measurement": {
		"id": 5
	},
	"measure": {
		"data": 69.96
	}`

## Author

**ZIL NORVILIS**

- Github: [![](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/zilton7)
- Linkedin: [![](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/zil-norvilis/)
- Twitter: [![](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/devnor7)
