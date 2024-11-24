#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include <string>
#include <iostream> // Include for colored output
#include <vector>
#include <list>
#include <map>  

using namespace llvm;
using namespace std;

namespace {

struct PrintInst : public ModulePass {
    static char ID;

    PrintInst() : ModulePass(ID) {}

    bool runOnModule(Module &M) override {
        map<string, int> powerMap = {
    		{"load", 2},    // Load operation is relatively low power
    		{"store", 2},   // Store operation is also relatively low power
    		{"add", 4},     // Addition is a bit more power-consuming
    		{"sub", 4},     // Subtraction is similar to addition in power
    		{"alloca", 3},  // Memory allocation has moderate power consumption
    		{"call", 8},    // Function calls are relatively higher power
    		{"br", 1},      // Branch operations are low power
    		{"icmp", 2},    // Integer comparisons are moderate power
    		// You can adjust these values based on your specific analysis or system characteristics
	};

        int thresholdPower = 40;
        errs()<< "\n\nPartitioning the code based on power consumption\n\n\n";

        int functionID = 0; 

        for (auto &F : M) {
            errs() << "\033[1;32m" << "Function ID: " << functionID++ << ", Function Name: " << F.getName() << "\033[0m" << "\n";
            int totalPower = 0;
            for (auto &BB : F) {
                for (auto &Inst : BB) {
                    string opName = Inst.getOpcodeName();
                    int power = powerMap.count(opName) ? powerMap[opName] : 1;
                    totalPower += power;
                }
            }

            errs() << "\033[1;34m" << "Total Power for Function " << F.getName() << ": " << totalPower << "\033[0m" << "\n";
            
            if (totalPower < thresholdPower) {
                errs() << "\033[1;35m" << "Function " << F.getName() << " can be executed with given computational resources !" << "\033[0m" << "\n\n";
            } else {
                errs() << "\033[1;31m" << "Function " << F.getName() << " can not be executed with given computational resources !" << "\033[0m" << "\n\n";
            }
            errs() << "========================================" << "\n\n";
        }
        return false;
    }
};
}

char PrintInst::ID = 0;
static RegisterPass<PrintInst> X("printInst", "Display the instruction.");

