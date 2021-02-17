{
  // Template. Has variables which need to be set.
  _allMetricsTemplate:: [
    {
      metric: '<NEEDS TO BE SET>',
      tagFilterExpression: '<NEEDS TO BE SET>',
      timeShift: 0,
      aggregation: 'MEAN',
      label: 'Mean',
      source: 'INFRASTRUCTURE_METRICS',
      type: '<NEEDS TO BE SET>',
    },
    {
      metric: '<NEEDS TO BE SET>',
      tagFilterExpression: '<NEEDS TO BE SET>',
      timeShift: 0,
      aggregation: 'P25',
      label: 'P25',
      source: 'INFRASTRUCTURE_METRICS',
      type: '<NEEDS TO BE SET>',
    },
    {
      metric: '<NEEDS TO BE SET>',
      tagFilterExpression: '<NEEDS TO BE SET>',
      timeShift: 0,
      aggregation: 'P50',
      label: 'P50',
      source: 'INFRASTRUCTURE_METRICS',
      type: '<NEEDS TO BE SET>',
    },
    {
      metric: '<NEEDS TO BE SET>',
      tagFilterExpression: '<NEEDS TO BE SET>',
      timeShift: 0,
      aggregation: 'P75',
      label: 'P75',
      source: 'INFRASTRUCTURE_METRICS',
      type: '<NEEDS TO BE SET>',
    },
    {
      metric: '<NEEDS TO BE SET>',
      tagFilterExpression: '<NEEDS TO BE SET>',
      timeShift: 0,
      aggregation: 'P90',
      label: 'P90',
      source: 'INFRASTRUCTURE_METRICS',
      type: '<NEEDS TO BE SET>',
    },
    {
      metric: '<NEEDS TO BE SET>',
      tagFilterExpression: '<NEEDS TO BE SET>',
      timeShift: 0,
      aggregation: 'P95',
      label: 'P95',
      source: 'INFRASTRUCTURE_METRICS',
      type: '<NEEDS TO BE SET>',
    },
    {
      metric: '<NEEDS TO BE SET>',
      tagFilterExpression: '<NEEDS TO BE SET>',
      timeShift: 0,
      aggregation: 'P98',
      label: 'P98',
      source: 'INFRASTRUCTURE_METRICS',
      type: '<NEEDS TO BE SET>',
    },
    {
      metric: 'TO<NEEDS TO BE SET>DO',
      tagFilterExpression: '<NEEDS TO BE SET>',
      timeShift: 0,
      aggregation: 'P99',
      label: 'P99',
      source: 'INFRASTRUCTURE_METRICS',
      type: '<NEEDS TO BE SET>',
    },
    {
      metric: '<NEEDS TO BE SET>',
      tagFilterExpression: '<NEEDS TO BE SET>',
      timeShift: 0,
      aggregation: 'MAX',
      label: 'Max',
      source: 'INFRASTRUCTURE_METRICS',
      type: '<NEEDS TO BE SET>',
    },
  ],
  dockerCpuTotalUsage:: std.map(function(o) o { metric: 'cpu.total_usage', type: 'docker' }, $._allMetricsTemplate),
  dockerCpuThrottlingCount:: std.map(function(o) o { metric: 'cpu.throttling_count', type: 'docker' }, $._allMetricsTemplate),
  dockerMemoryUsage:: std.map(function(o) o { metric: 'memory.usage', type: 'docker' }, $._allMetricsTemplate),
  
  containerdCpuTotalUsage:: std.map(function(o) o { metric: 'cpu.total_usage', type: 'containerd' }, $._allMetricsTemplate),
  containerdCpuThrottlingCount:: std.map(function(o) o { metric: 'cpu.throttling_count', type: 'containerd' }, $._allMetricsTemplate),
  containerdMemoryUsage:: std.map(function(o) o { metric: 'memory.usage', type: 'containerd' }, $._allMetricsTemplate),
}
