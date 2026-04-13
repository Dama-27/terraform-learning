as previously mentioned there is no specific names you should use as long as they are ending with .tf and you are using it in the same directory it counts, if they are in seperate directories you should properly import it as in progrmaing languages (use module - will be discussed later)

main.tf code have the resource instanciation
variables.tf have the input variables
outputs.tf have the output variables
providers.tf have the provider instanciation

As my first time with terraform few months ago you should have the issue where are the values provided, exactly its provided in the terminal when running terraform apply