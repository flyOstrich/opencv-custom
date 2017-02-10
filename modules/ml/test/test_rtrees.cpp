//
// Created by allere on 17/2/10.
//
#include "test_precomp.hpp"
#include <iostream>
using namespace std;

class TestRTreesPredictProb : public cvtest::BaseTest
{

protected:
    void run(int) {
         float trainData[4][4] ={{1,1,1,1},{2,2,2,2},{3,3,3,3},{4,4,4,4}};
         unsigned int labels[4][1]={{1},{2},{3},{4}};
         float recData[1][4]={{3.1,4,2,3.1}};
         cv::Mat trainMat(4,4,CV_32F,trainData);
         cv::Mat labelsMat(4,1,CV_32S,labels);
         cv::Mat recMat(1,4,CV_32F,recData);
         cout<<trainMat<<endl;
         cout<<labelsMat<<endl;
         cv::Ptr<cv::ml::RTrees> rforest=cv::ml::RTrees::create();
         rforest->setMinSampleCount(2);
         rforest->train(trainMat,cv::ml::ROW_SAMPLE,labelsMat);
         std::list<std::pair<int,float> > res= rforest->predict_prob(recMat);
//         cout<<res<<endl;
         ts->set_failed_test_info(cvtest::TS::OK);

    }
};

TEST(TestRTreesPredictProb, TestRTreesPredictProb) {
    TestRTreesPredictProb testRTreesPredictProb;
    testRTreesPredictProb.safe_run();
}


