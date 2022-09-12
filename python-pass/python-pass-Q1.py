def isolate(students, ):
    list1=[]
    newstudents={}
    for key,value in students.items():
        if(list1.__contains__(value)):
            pass
        else:
            list1.append(value)
    for i in range(len(list1)):
        list2 = []
        for key,value in students.items():
            if(list1[i]==value):
                list2.append(key)
            newstudents[list1[i]]=list2
    return newstudents

students = {
    'Ahmed': 'Class 1',
    'Mustafa': 'Class 3',
    'Ali': 'Class 2',
    'Sara': 'Class 1',
    'Zainab': 'Class 1',
    'Zain': 'Class 2',

}
print(isolate(students))
"""This should return 
{
    'Class 1': ['Ahmed', 'Sara', 'Zainab'],
    'Class 3': ['Mustafa'],
    'Class 2': ['Ali', 'Zain']
}
NOTE: The order of classes doesn't matter
"""