param location string = resourceGroup().location

resource myVnet1 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: 'myVnet1'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'subnet-1'
        properties: {
          addressPrefix: '10.0.0.0/24'
        }
      }
      {
        name: 'subnet-2'
        properties: {
          addressPrefix: '10.0.1.0/24'
        }
      }
      {
        name: 'subnet-3'
        properties: {
          addressPrefix: '10.0.3.0/24'
        }
    ]
  }
}
