## The Data Factory Challenge

![factory](https://github.com/sportsdatasolutions/data_factory_challenge/blob/master/factory.png)

### Instructions

1. Fork this repository.

2. Set up the project locally (clone from your fork), bundle install and open up the challenge in atom.

3. Read the rest of this Readme and inspect all the project files.

4. The ```factory.rb``` file will be your main ruby program and the ```factory_swimming_data.json``` file will contain the data for this challenge. Once you have a solution, simply run the 'factory' and see your end product in the ```ultimate_swimming_bot.json``` file.

5. On this challenge, it could be important to note the difference between assignment and manipulation in ruby. E.g. run this in IRB:

```
$ irb
# Set test data
irb> original_data = [{letter: 'a'}, {letter: 'b'}, {letter: 'c'}]
# Assignment
irb> assigned_data = original_data.reject { |obj| obj[:letter] == 'a' }
irb> original_data
irb> assigned_data
# Manipulation of original object
irb> original_data.reject! { |obj| obj[:letter] == 'a' }
irb> original_data
# Noticed the difference? If not, re-run it and pay attention to the results of each method.
irb> quit
```

6. You will notice that we have already defined the core of the solution for you using 2 ruby classes and a ruby module. This is good OOD practice, so please use them or create your own.

7. After you complete the challenge have a review session with your buddy. Remember to provide your own Readme.md detailing how you approached the challenge and how your buddy can review your solution.

### The Challenge

**You have been tasked by British Swimming to create the model for an ultimate swimming bot (specifically for the Women's 200m Individual Medley). The model will need to contain 50m, 100m, 150m and 200m split times and will be based off the accumulated splits of athletes from the 2016 and 2017 British Championship finals. The aim is to model the quickest possible time for the bot based off the data, in other words, you can't simply make up splits for the bot, it has to be based off the data provided.**

### Checking your end product

**SDS have already attempted the challenge and created their own swimming bot. You can see it in the** ```sds_swimming_bot.json``` **file. Remember to organise a peer-review with your buddy!**

### Guru-Reviews

If you would like a review from your guru. Create a pull request to the original challenge repository. Note that as you are not making any changes to the original challenge repository, we didn't need to create an upstream remote when setting up locally. Make sure you have committed and pushed all your code to your own forked repository.

#### To Create a Pull Request from your forked Github repo:

![PullRequest](https://github.com/danielstpaul/sds_academy_course/blob/master/public/PullRequest.png)

![PullRequest1](https://github.com/danielstpaul/sds_academy_course/blob/master/public/PullRequest1.png)

![PullRequest2](https://github.com/danielstpaul/sds_academy_course/blob/master/public/PullRequest2.png)
