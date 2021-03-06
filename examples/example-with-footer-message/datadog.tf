resource "datadog_monitor" "watchdog_monitor" {
    name               = "Watchdog Monitor TF"
    type               = "event alert"
    escalation_message = "Escalation message"
    query              = "events('priority:all sources:watchdog tags:story_type:service,env:test_env,service:test_service:_aggregate').by('service,resource_name').rollup('count').last('30m') > 0"

    message = <<-EOS

    ${module.datadog_tags.ddog_message_footer}

    EOS

    notify_no_data    = false
    renotify_interval = 60

    notify_audit      = false
    timeout_h         = 60
    include_tags      = true

    tags              = module.datadog_tags.monitor_tags
}