Return-Path: <devicetree+bounces-12294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BC37D8D6B
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 05:27:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D63B282214
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 03:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0E583D90;
	Fri, 27 Oct 2023 03:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="DB2QGDG8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559B43D87
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 03:27:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA1991AC;
	Thu, 26 Oct 2023 20:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698377254; x=1729913254;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=p3RtJ8WNKEO9eNS9IXfnPQkHfpjLhAnRTEM/TPaXaw0=;
  b=DB2QGDG8GFRDuKdIpKqAwd4e0TCgyTd3Kv+b/IBoinF/zPi9pmRSWvhC
   drExLHQnh3pzFyZkv3gXdBsZwlbHAQjYMGgNcVTOwJcR18DR51XzEtRea
   rKx2RnBlo3TZTmLPNdIx0E4YD815r5GrrJFOMhnbwfyqUte8InQBb1HD7
   sdzzjUd+GPd8wH1Qi+iqsq7pygggaTluzD8TsZpP/19ZJaBl1AbCw2JpK
   4TBBV9J4s1kqER9QBH4k0zhLZnf/braNVu7QRxrOB6b2otfi7VPBL3F1m
   suDS3uF4Gk5ov9n3Kp9+GAkJeZKm7n5aOZx+A1O/DBuzl3VS+KZZZPZkE
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="451941365"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; 
   d="scan'208";a="451941365"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2023 20:27:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="903139065"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; 
   d="scan'208";a="903139065"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 26 Oct 2023 20:24:34 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qwDUx-000AOh-1d;
	Fri, 27 Oct 2023 03:26:59 +0000
Date: Fri, 27 Oct 2023 11:26:31 +0800
From: kernel test robot <lkp@intel.com>
To: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Paul Gazzillo <paul@pgazz.com>
Cc: oe-kbuild-all@lists.linux.dev,
	Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
	Matt Ranostay <matt@ranostay.sg>,
	Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] iio: light: Add support for APDS9306 Light Sensor
Message-ID: <202310271158.rRHlxbrM-lkp@intel.com>
References: <20231026143532.39660-3-subhajit.ghosh@tweaklogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026143532.39660-3-subhajit.ghosh@tweaklogic.com>

Hi Subhajit,

kernel test robot noticed the following build errors:

[auto build test ERROR on 611da07b89fdd53f140d7b33013f255bf0ed8f34]

url:    https://github.com/intel-lab-lkp/linux/commits/Subhajit-Ghosh/dt-bindings-iio-light-Avago-APDS9306/20231026-223659
base:   611da07b89fdd53f140d7b33013f255bf0ed8f34
patch link:    https://lore.kernel.org/r/20231026143532.39660-3-subhajit.ghosh%40tweaklogic.com
patch subject: [PATCH v1 2/2] iio: light: Add support for APDS9306 Light Sensor
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20231027/202310271158.rRHlxbrM-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231027/202310271158.rRHlxbrM-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310271158.rRHlxbrM-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/iio/light/apds9306.c:1325:10: error: 'struct i2c_driver' has no member named 'probe_new'
    1325 |         .probe_new = apds9306_probe,
         |          ^~~~~~~~~
>> drivers/iio/light/apds9306.c:1325:22: error: initialization of 'const struct i2c_device_id *' from incompatible pointer type 'int (*)(struct i2c_client *)' [-Werror=incompatible-pointer-types]
    1325 |         .probe_new = apds9306_probe,
         |                      ^~~~~~~~~~~~~~
   drivers/iio/light/apds9306.c:1325:22: note: (near initialization for 'apds9306_driver.id_table')
   drivers/iio/light/apds9306.c:1326:21: warning: initialized field overwritten [-Woverride-init]
    1326 |         .id_table = apds9306_id,
         |                     ^~~~~~~~~~~
   drivers/iio/light/apds9306.c:1326:21: note: (near initialization for 'apds9306_driver.id_table')
   cc1: some warnings being treated as errors


vim +1325 drivers/iio/light/apds9306.c

  1317	
  1318	static struct i2c_driver apds9306_driver = {
  1319		.driver = {
  1320			.name = "apds9306",
  1321			.pm = pm_ptr(&apds9306_pm_ops),
  1322			.of_match_table = apds9306_of_match,
  1323			.probe_type = PROBE_PREFER_ASYNCHRONOUS,
  1324		},
> 1325		.probe_new = apds9306_probe,
  1326		.id_table = apds9306_id,
  1327	};
  1328	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

