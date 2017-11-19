class system_user { 
package {'ssh':
ensure =>present,
user {'super':
ensure =>:present,

