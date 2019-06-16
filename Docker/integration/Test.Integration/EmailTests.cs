using System;
using System.IO;
using System.Net.Http;
using System.Threading.Tasks;
using FluentAssertions;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Xunit;

namespace integration
{
    public class EmailTests
    {
        [Fact]
        public void Test()
        {
            true.Should().BeTrue();
        }
    }
}