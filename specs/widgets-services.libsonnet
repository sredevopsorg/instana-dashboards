local _config = import 'config-k8s.libsonnet';
local metrics = import 'metrics-infrastructure.libsonnet';
local filter = import 'tagFilterExpressions.libsonnet';

{
  latencyForK8sNamespaceByLabel: {
    id: 'VwkQP7OxRldrlMo6',
    title: 'Latency  ("' + _config.k8s.pod.labelKey + '")',
    width: '<NEEDS TO BE SET>',
    height: '<NEEDS TO BE SET>',
    x: '<NEEDS TO BE SET>',
    y: '<NEEDS TO BE SET>',
    type: 'chart',
    config: {
      y1: {
        formatter: 'millis.detailed',
        renderer: 'line',
        metrics: [
          {
            color: '',
            metric: 'latency',
            tagFilterExpression: filter.k8sNamespace.ap,
            grouping: [
              {
                maxResults: 5,
                by: {
                  groupbyTag: 'kubernetes.pod.label',
                  groupbyTagEntity: 'DESTINATION',
                  groupbyTagSecondLevelKey: 'service',
                },
                includeOthers: true,
                direction: 'DESC',
              },
            ],
            timeShift: 0,
            compareToTimeShifted: false,
            aggregation: 'P99',
            label: '99th',
            source: 'APPLICATION',
          },
        ],
      },
      y2: {
        formatter: 'number.detailed',
        renderer: 'line',
        metrics: [],
      },
      type: 'TIME_SERIES',
    },
  },
  latencyForK8sNamespace: {
    id: 'VwkQP7OxRldrl1231',
    title: 'Latency  (Total)',
    width: '<NEEDS TO BE SET>',
    height: '<NEEDS TO BE SET>',
    x: '<NEEDS TO BE SET>',
    y: '<NEEDS TO BE SET>',
    type: 'chart',
    config: {
      y1: {
        formatter: 'millis.detailed',
        renderer: 'line',
        metrics: [
          {
            color: '',
            metric: 'latency',
            tagFilterExpression: filter.k8sNamespace.ap,
            timeShift: 0,
            compareToTimeShifted: false,
            aggregation: 'MEAN',
            label: 'Mean',
            source: 'APPLICATION',
          },
          {
            color: '',
            metric: 'latency',
            tagFilterExpression: filter.k8sNamespace.ap,
            timeShift: 0,
            compareToTimeShifted: false,
            aggregation: 'P75',
            label: '75th',
            source: 'APPLICATION',
          },
          {
            color: '',
            metric: 'latency',
            tagFilterExpression: filter.k8sNamespace.ap,
            timeShift: 0,
            compareToTimeShifted: false,
            aggregation: 'P90',
            label: '90th',
            source: 'APPLICATION',
          },
          {
            color: '',
            metric: 'latency',
            tagFilterExpression: filter.k8sNamespace.ap,
            timeShift: 0,
            compareToTimeShifted: false,
            aggregation: 'P95',
            label: '95th',
            source: 'APPLICATION',
          },
          {
            color: '',
            metric: 'latency',
            tagFilterExpression: filter.k8sNamespace.ap,
            timeShift: 0,
            compareToTimeShifted: false,
            aggregation: 'P98',
            label: '98th',
            source: 'APPLICATION',
          },
          {
            color: '',
            metric: 'latency',
            tagFilterExpression: filter.k8sNamespace.ap,
            timeShift: 0,
            compareToTimeShifted: false,
            aggregation: 'P99',
            label: '99th',
            source: 'APPLICATION',
          },
          {
            color: '',
            metric: 'latency',
            tagFilterExpression: filter.k8sNamespace.ap,
            timeShift: 0,
            compareToTimeShifted: false,
            aggregation: 'MAX',
            label: 'Max',
            source: 'APPLICATION',
          },
        ],
      },
      y2: {
        formatter: 'number.detailed',
        renderer: 'line',
        metrics: [],
      },
      type: 'TIME_SERIES',
    },
  },
  callsForK8sNamespace: {
    id: '7rapG7UymqG8L67I',
    title: 'Calls (Total)',
    width: '<NEEDS TO BE SET>',
    height: '<NEEDS TO BE SET>',
    x: '<NEEDS TO BE SET>',
    y: '<NEEDS TO BE SET>',
    type: 'chart',
    config: {
      y1: {
        formatter: 'number.detailed',
        renderer: 'bar',
        metrics: [
          {
            color: '',
            metric: 'calls',
            tagFilterExpression: filter.k8sNamespace.ap,
            timeShift: 0,
            compareToTimeShifted: false,
            aggregation: 'SUM',
            label: 'Calls',
            source: 'APPLICATION',
          },
          {
            color: 'red',
            metric: 'erroneousCalls',
            tagFilterExpression: filter.k8sNamespace.ap,
            timeShift: 0,
            compareToTimeShifted: false,
            aggregation: 'SUM',
            label: 'Erroneous Calls',
            source: 'APPLICATION',
          },
        ],
      },
      y2: {
        formatter: 'number.detailed',
        renderer: 'bar',
        metrics: [],
      },
      type: 'TIME_SERIES',
    },
  },
  errorsForK8sNamespace: {
    id: '9joWoy127iAE12Hh',
    title: 'Erroneous Calls Rate in ' + _config.k8s.ns,
    width: '<NEEDS TO BE SET>',
    height: '<NEEDS TO BE SET>',
    x: '<NEEDS TO BE SET>',
    y: '<NEEDS TO BE SET>',
    type: 'chart',
    config: {
      y1: {
        formatter: 'percentage.detailed',
        renderer: 'bar',
        metrics: [
          {
            color: 'red',
            metric: 'errors',
            tagFilterExpression: filter.k8sNamespace.ap,
            timeShift: 0,
            compareToTimeShifted: false,
            aggregation: 'MEAN',
            label: 'Erroneous Call Rate',
            source: 'APPLICATION',
          },
        ],
      },
      y2: {
        formatter: 'number.detailed',
        renderer: 'line',
        metrics: [],
      },
      type: 'TIME_SERIES',
    },
  },

}
