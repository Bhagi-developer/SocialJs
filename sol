**Find two missing numbers in array when n is given and give array's size is n-2
class Solution {
    public List<Integer> findDisappearedNumbers(int[] nums) {
        //brute force
        //with time-o(n) and space-o(n)
       /* int n=nums.length;
        boolean[] temp=new boolean[n];
        List<Integer> al=new ArrayList<>();
        
        for(int i=0;i<n;i++){
            temp[nums[i]-1]=true;
        }
        
        for(int i=0;i<n;i++){
            if(!temp[i]){
                al.add(i+1);
            }
        }
        
        return al;*/
        
        //with time complexity-o(n) ans space-o(n)
        long sum1=(n*(n+1))/2;
        long s1=0;
        
        for(int i=0;i<nums.length;i++){
            s1+=nums[i];
        }
        //a1+a2
        int n1=(sum1-s1);
        
        int s2=0;
        int sum2=(n*(n+1)*(2*n+1))/6;
        
         for(int i=0;i<nums.length;i++){
             s2+=(arr[i]*arr[i]);
         }
        //a1^2+a2^2
        int n2=(sum2-s2);
        
        //a1*a2
        int n3=(n1*n1-n2);
        
        //a1-a2
        int n4=Math.sqrt((n2-2*n3));
        
        //a1
        int a1=(n1+n4)/2;
        //a2
        int a2=(a1-n4);
        
        List<Integer> al=new ArrayList<>();
        al.add(a1);
        al.add(a2);
        return al;
        
        
    }
}
-------------------------------------------------------------------------------------------
**type casting in java
if you write,
      int a=3;
      float b=a;
then automatically int converts into float
this happens when left side is in higher number from right side type,
this higher number can be defined by floowing series
      byte < short < char < int < long < float < double .

let's say you have,
     int a=3;
     int b=2;
     float c=a/b;
then your c vlue will be 1.0 instead of 1.5 .
but if u write the following,
    int a=3;
    int b=2;
    float a1=a;(automatically converted)
    float b1=b;
    float c=a/b;
    then your c value will be 1.5 .
    
 float can store at max 6 to 7 decimal points.
 but if u write this,
     float a=1.1234567999999f;
 then your float value will give rounded value of above
     a=1.1234568f;


-------------------------------------------------------------------------------
sc.next() and sc.nextLine()
note that when u take an input with,
         sc.next()
         sc.nextLine()
         or 
         sc.nextInt()
         sc.nextLine()
         or 
         sc.next().charAt(0)
         sc.nextLine()         
it will not take second input.
Reason- when u take first input and press enter(means /n input), it will only take first input and /n is taken by nextLine as an input.
because nextLine starts from where previous input is ended till line end.
so u need to write this,
        sc.nextInt()
        sc.nextLine() (only sc.nextLine() can save sc.nextLine() here)
        sc.nextLine().
        or 
        Scanner sc = new Scanner(System.in).useDelimiter("\\n");
