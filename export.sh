# Export all recipes in a directory
for recipe in source/*.cook; do
  basename=$(basename "$recipe" .cook)
  cook recipe -f markdown "$recipe" > "docs/${basename}.md"
done
