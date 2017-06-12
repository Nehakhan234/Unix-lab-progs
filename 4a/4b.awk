BEGIN{}
{
 for(i=1;i<=3;i++)
 a[i]=a[i]" " $i
}

END{
{
  for(i=1;i<=3;i++)
  print a[i]
}

}
