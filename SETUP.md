### Steps for setting up new course:

* Copy the following files and folders:
	* `config.toml`
	* `.gitignore`
	* `README.md`
	* `content`
	* `data`
	* `Project`
	* `Slides`
	* `themes`
* Update `config.toml`
* Update links to Github (e.g. replace `DATA606Fall2017` to `DATA606Spring2018`)
* Create Google Sheet for presentation signup and update link on these pages:
	* `content/assignments/presentation.md`
	* `content/course-overview/meetups.md`
* Create Google Calendar.
* Update schedule on `content/course-overview/meetups.md` and `content/course-overview/schedule.md`.
* Create Slack channel.
* Update URL for past semester:
	* Change the custom domain to `XXXYYY.data606.net`
	* Add a CNAME record to Hover with host = `XXXYYY` and value = `jbryer.github.com`.
	* Update the `README.md` file to use the archived URL
* Update URL for new semester:
	* Change the custom domain to `data606.net`
