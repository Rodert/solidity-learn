// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract Return {
    // 返回多个变量
    function multipleReturns() public pure returns (uint256 a, uint256 b, uint256 c){
        // dosomething TODO 
        return (1, 2, 3);
    }

    // 命名式返回
    function returnNamed() public pure returns(uint256 _number, bool _bool, uint256[3] memory _array){
        _number = 2;
        _bool = false; 
        _array = [uint256(3),2,1];
    }


    // 命名式返回，依然支持return
    function returnNamed2() public pure returns(uint256 _number, bool _bool, uint256[3] memory _array){
        return(1, true, [uint256(1),2,5]);
    }

    // 读取返回值，解构式赋值
    function readReturn() public pure{
        // 读取全部返回值
        uint256 _number;
        bool _bool;
        bool _bool2;
        uint256[3] memory _array;
        (_number, _bool, _array) = returnNamed();
        
        // 读取部分返回值，解构式赋值
        (, _bool2, ) = returnNamed();
    }

}