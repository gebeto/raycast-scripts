#!/usr/bin/env python3

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Timer for
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder" }

# Documentation:
# @raycast.author Slavik Nychkalo
# @raycast.authorURL https://github.com/gebeto


import datetime as dt
import dateparser
import rumps
import sys
import os


now = dt.datetime.now()
end_time = dt.datetime.now().replace(microsecond=0, second=0, minute=0, hour=0)
parsed = dateparser.parse(sys.argv[1])
diff = now - parsed + dt.timedelta(seconds=1)


class AwesomeStatusBarApp(rumps.App):
	_timer = end_time + diff

	@rumps.timer(1)
	def timer(self, _):
		self._timer -= dt.timedelta(seconds=1)
		self.title = self._timer.strftime("%M:%S")
		if self._timer <= end_time:
			self.title = "⛔️ Done! ⛔️"
			os.system('say "Timer is done"')
			rumps.quit_application()


if __name__ == "__main__":
	AwesomeStatusBarApp("00:00").run()


