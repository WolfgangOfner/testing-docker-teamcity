using System;
using Xunit;

namespace Docker.Test
{
    public class UnitTest1
    {
        [Fact]
        public void Test1()
        {
            Assert.Equal(2, 2);
        }

        [Fact]
        public void Test2()
        {
            Assert.Equal(1, 2);
        }
    }
}
