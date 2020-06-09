# Terraform resource with footer message

In this example we make use of a default message for resources in Datadog where we warn third parties that the monitors are created through code and that any manual modification will be lost at the time of redeployment of the code where the monitors are created.

## Message

```
  ddog_message_footer = <<-EOS
- - -
**NOTE** - This monitor is managed via [Terraform](${var.vcs_repo}). Manual modifications will be lost.

  EOS
```

## How to add it in the resource

To add it, simply call the module defined in the configuration and call ```module.datadog_labels.ddog_message_footer```, in this way:
```
message = <<-EOS

${module.datadog_labels.ddog_message_footer}

EOS
```