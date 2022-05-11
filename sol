Find two missing numbers in array when n is given and give array's size is n-2
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
