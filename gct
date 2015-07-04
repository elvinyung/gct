branch_name=$(git branch | sed -n '/\* /s///p')
commit_msg=$1

# will correctly grab ticket name from these formats:
# * something/THING-6666...
# * THING-6666...
# * THING_6666...
# * lowercase variations of the above
# and format the ticket name to THING-6666.
ticket_name=$(echo $branch_name | sed "s/\(.*\/\)*\([a-zA-Z]*[_-][0-9]*\).*/\2/")
ticket_code=$(echo $ticket_name | sed "s/\([a-zA-Z]*\)[_-]\([0-9]*\)/\1/" | tr [a-z] [A-Z])
ticket_number=$(echo $ticket_name | sed "s/\([a-zA-Z]*\)[_-]\([0-9]*\)/\2/")
formatted_ticket="[$ticket_code-$ticket_number]"

# make the actual commit
if [ $ticket_name == $branch_name ]; then
  echo "Can't find ticket name! Committing normally."
  git commit -m "$commit_msg"
  exit 0
fi
git commit -m "$formatted_ticket $commit_msg"
