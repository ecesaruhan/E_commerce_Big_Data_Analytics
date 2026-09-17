import sys

current_event = None
current_count = 0

for line in sys.stdin:
    line = line.strip()

    if not line:
        continue

    event_type, count = line.split("\t", 1)
    count = int(count)

    if current_event == event_type:
        current_count += count
    else:
        if current_event is not None:
            print(f"{current_event}\t{current_count}")

        current_event = event_type
        current_count = count

if current_event is not None:
    print(f"{current_event}\t{current_count}")
