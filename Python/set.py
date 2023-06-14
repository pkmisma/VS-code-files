# empty_st = set()

# print(empty_st)

dress_set = {'pant','shirt','tshirt','shorts','saree','chudithar','halfsaree', 'tshirt'}

men_dress = {'pant','shirt','tshirt','shorts'}

women_dress = {'saree','chudithar','halfsaree'}

user_choice = input("enter the Gender choice: (men / women / men and women)  " )

if user_choice == "men":
  #print(set("The allowed dress code for") + dress_set - women_dress)
  print("The alowed dress code for ", (dress_set - women_dress))
elif user_choice == "women":
  print("The allowed dress code for" , dress_set - men_dress)
elif user_choice == "men and women":
  print(dress_set)



