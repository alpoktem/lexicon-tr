entries_dir=$1
output_file=$2

cat /dev/null > $output_file

set_id=1
for file in `ls $entries_dir`; do
	entryfile="$entries_dir/$file"
	sed 's/entryID = \".\"/entryID = \"'${set_id}'\"/' $entryfile >> $output_file
	echo >> $output_file
	let set_id=$set_id+1
done
