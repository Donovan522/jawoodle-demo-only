# Remove entries
for ZOMBIE in $(cat zombie_names); do
  echo "<remove xpath=\"/entity_classes/entity_class[@name='${ZOMBIE}']\" />"
done

# Add entries
echo "<insertAfter xpath=\"/entity_classes/entity_class[@name='zombieTemplateDemo']\">"
for ZOMBIE in $(cat zombie_names); do
  echo "    <entity_class name=\"${ZOMBIE}\" extends=\"zombieTemplateDemo\" />"
done
echo "</insertAfter>"
