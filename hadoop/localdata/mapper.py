import sys
import csv

for line in sys.stdin:
    try:
        row = next(csv.reader([line]))

        # Skip header
        if row[0] == "event_time":
            continue

        # event_type is the second column
        event_type = row[1].strip()

        if event_type:
            print(f"{event_type}\t1")

    except Exception:
        continue
