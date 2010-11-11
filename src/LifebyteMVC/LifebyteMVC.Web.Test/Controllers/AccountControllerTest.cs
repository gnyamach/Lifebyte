﻿using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using LifebyteMVC.Web.Controllers;
using System.Web.Mvc;
using System.Web.Routing;

namespace LifebyteMVC.Web.Test.Controllers
{
    /// <summary>
    /// Test for the AccountController
    /// </summary>
    [TestClass]
    public class AccountControllerTest
    {
        private AccountController controller;
        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        /// <summary>
        /// Use TestInitialize to run code before running each test 
        /// </summary>
        [TestInitialize()]
        public void MyTestInitialize()
        {
            controller = new AccountController();
        }

        /// <summary>
        /// Use TestCleanup to run code after each test has run
        /// </summary>
        [TestCleanup()]
        public void MyTestCleanup()
        {
            controller = null;
        }

        #region Additional test attributes
        //
        // You can use the following additional attributes as you write your tests:
        //
        // Use ClassInitialize to run code before running the first test in the class
        // [ClassInitialize()]
        // public static void MyClassInitialize(TestContext testContext) { }
        //
        // Use ClassCleanup to run code after all tests in a class have run
        // [ClassCleanup()]
        // public static void MyClassCleanup() { }
        //
        #endregion

        [TestMethod, Ignore]
        public void AccountController_LogOn_Test()
        {
            ViewResult result = (ViewResult)controller.LogOn();
            
            Assert.IsNotNull(result);
        }

        [TestMethod, Ignore]
        public void AccountController_Index_Redirects_To_LogOn_Test()
        {
            RedirectToRouteResult result = (RedirectToRouteResult)controller.Index();

            Assert.IsNotNull(result);
        }

        //TODO:  Moq Http Context and Authentication
        [TestMethod, Ignore]
        public void AccountController_Authenticate_Test()
        {
            RedirectToRouteResult result = (RedirectToRouteResult)controller.Authenticate(string.Empty);

            Assert.IsNotNull(result);
        }
    }
}