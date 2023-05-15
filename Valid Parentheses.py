class Solution(object):
    def isValid(self, s):
        my_dict = {
            '(' : ')',
            '{' : '}',
            '[' : ']'
        }

        stack = []
        
        for p in s:
            if p in my_dict.keys():
                stack.append(p)
            else:
                if not stack:
                    return False
                else:
                    p1 = stack.pop()
                    if my_dict[p1] != p:
                        return False
        if stack:
            return False
        return True
