locals { 
  default = timestamp()
}


locals { 
  example = formatdate("DD MMM YYYY hh:mm ZZZ", "2018-01-02T23:12:01Z")
}



locals { 
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}


locals { 
  time-2 = formatdate("EEEE, DD-MMM-YY hh:mm:ss ZZZ", timestamp())
}


output "time" { 
 value = local.default
}


output "time-2" { 
 value = local.example
}


output "time-now" { 
 value = local.time
}


output "time-now-2" { 
 value = local.time-2
}
