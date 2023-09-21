Return-Path: <devicetree+bounces-2220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 388D57AA202
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 23:12:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0C62BB20B58
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:11:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B621019469;
	Thu, 21 Sep 2023 21:11:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E069E19467
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 21:11:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 645601FFD;
	Thu, 21 Sep 2023 14:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1695330696; x=1726866696;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=3+eI3UgLms590aA+oWQf7NdcqV5rfD94OQLXjXGtl2c=;
  b=h9T4dD49rl0pcFqa3FiFUxodBFD679CGr3Kqn1JaamQzPBRRkLNOZvbx
   tK248atdPqm8qyZqxILFA/HKIdgn+tthFb7xIN/eolpQYV/cMm9Djxr1X
   us8WWNYrZqT13LtzIDKMMPkQOD8QelsU3YawgTq7y31g6K7iaXuUK73+c
   120EJ2RlaUfgsUIn1NrIGTJYWCpz39UKN/xX/kIQcj5U9SXUQHXgUqMu9
   R5yreM6dn6g8b+t0kmOsFc21UC0AORVA7NvudYZQp/+vIU8LeGrOYIu8K
   t9zowhHgrBZh6BaLZSSdWr4+Wg3XUmUfAXtjO1s6eZ/FefdMGCDIBSDzh
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="447144823"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; 
   d="scan'208";a="447144823"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2023 14:11:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="870992745"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; 
   d="scan'208";a="870992745"
Received: from lkp-server02.sh.intel.com (HELO b77866e22201) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 21 Sep 2023 14:11:31 -0700
Received: from kbuild by b77866e22201 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qjQxM-0000PY-2M;
	Thu, 21 Sep 2023 21:11:28 +0000
Date: Fri, 22 Sep 2023 05:11:22 +0800
From: kernel test robot <lkp@intel.com>
To: Jon Hunter <jonathanh@nvidia.com>, Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>
Cc: oe-kbuild-all@lists.linux.dev, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
	Ninad Malwade <nmalwade@nvidia.com>,
	Rajkumar Kasirajan <rkasirajan@nvidia.com>,
	Jon Hunter <jonathanh@nvidia.com>
Subject: Re: [PATCH V3 3/4] hwmon: ina3221: Add support for channel summation
 disable
Message-ID: <202309220454.kCi2xD48-lkp@intel.com>
References: <20230921130818.21247-4-jonathanh@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921130818.21247-4-jonathanh@nvidia.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Jon,

kernel test robot noticed the following build warnings:

[auto build test WARNING on groeck-staging/hwmon-next]
[also build test WARNING on robh/for-next linus/master v6.6-rc2 next-20230921]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jon-Hunter/dt-bindings-hwmon-ina3221-Add-ti-summation-disable/20230922-011119
base:   https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git hwmon-next
patch link:    https://lore.kernel.org/r/20230921130818.21247-4-jonathanh%40nvidia.com
patch subject: [PATCH V3 3/4] hwmon: ina3221: Add support for channel summation disable
config: m68k-allyesconfig (https://download.01.org/0day-ci/archive/20230922/202309220454.kCi2xD48-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230922/202309220454.kCi2xD48-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309220454.kCi2xD48-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/hwmon/ina3221.c:109: warning: Function parameter or member 'summation_disable' not described in 'ina3221_input'
>> drivers/hwmon/ina3221.c:134: warning: Function parameter or member 'debugfs' not described in 'ina3221_data'
>> drivers/hwmon/ina3221.c:134: warning: Function parameter or member 'summation_channel_control' not described in 'ina3221_data'


vim +109 drivers/hwmon/ina3221.c

7cb6dcff1956ec Andrew F. Davis 2016-06-10   97  
a9e9dd9c6de5d8 Nicolin Chen    2018-10-01   98  /**
a9e9dd9c6de5d8 Nicolin Chen    2018-10-01   99   * struct ina3221_input - channel input source specific information
a9e9dd9c6de5d8 Nicolin Chen    2018-10-01  100   * @label: label of channel input source
a9e9dd9c6de5d8 Nicolin Chen    2018-10-01  101   * @shunt_resistor: shunt resistor value of channel input source
a9e9dd9c6de5d8 Nicolin Chen    2018-10-01  102   * @disconnected: connection status of channel input source
a9e9dd9c6de5d8 Nicolin Chen    2018-10-01  103   */
a9e9dd9c6de5d8 Nicolin Chen    2018-10-01  104  struct ina3221_input {
a9e9dd9c6de5d8 Nicolin Chen    2018-10-01  105  	const char *label;
a9e9dd9c6de5d8 Nicolin Chen    2018-10-01  106  	int shunt_resistor;
a9e9dd9c6de5d8 Nicolin Chen    2018-10-01  107  	bool disconnected;
ac0a832fd3617c Ninad Malwade   2023-09-21  108  	bool summation_disable;
a9e9dd9c6de5d8 Nicolin Chen    2018-10-01 @109  };
a9e9dd9c6de5d8 Nicolin Chen    2018-10-01  110  
7cb6dcff1956ec Andrew F. Davis 2016-06-10  111  /**
7cb6dcff1956ec Andrew F. Davis 2016-06-10  112   * struct ina3221_data - device specific information
323aeb0eb5d9a6 Nicolin Chen    2018-11-05  113   * @pm_dev: Device pointer for pm runtime
7cb6dcff1956ec Andrew F. Davis 2016-06-10  114   * @regmap: Register map of the device
7cb6dcff1956ec Andrew F. Davis 2016-06-10  115   * @fields: Register fields of the device
a9e9dd9c6de5d8 Nicolin Chen    2018-10-01  116   * @inputs: Array of channel input source specific structures
87625b24986bc2 Nicolin Chen    2018-11-05  117   * @lock: mutex lock to serialize sysfs attribute accesses
59d608e152e582 Nicolin Chen    2018-09-29  118   * @reg_config: Register value of INA3221_CONFIG
2057bdfb7184e9 Nicolin Chen    2019-10-16  119   * @summation_shunt_resistor: equivalent shunt resistor value for summation
43dece162de047 Nicolin Chen    2019-01-17  120   * @single_shot: running in single-shot operating mode
7cb6dcff1956ec Andrew F. Davis 2016-06-10  121   */
7cb6dcff1956ec Andrew F. Davis 2016-06-10  122  struct ina3221_data {
323aeb0eb5d9a6 Nicolin Chen    2018-11-05  123  	struct device *pm_dev;
7cb6dcff1956ec Andrew F. Davis 2016-06-10  124  	struct regmap *regmap;
7cb6dcff1956ec Andrew F. Davis 2016-06-10  125  	struct regmap_field *fields[F_MAX_FIELDS];
a9e9dd9c6de5d8 Nicolin Chen    2018-10-01  126  	struct ina3221_input inputs[INA3221_NUM_CHANNELS];
87625b24986bc2 Nicolin Chen    2018-11-05  127  	struct mutex lock;
ac0a832fd3617c Ninad Malwade   2023-09-21  128  	struct dentry *debugfs;
59d608e152e582 Nicolin Chen    2018-09-29  129  	u32 reg_config;
2057bdfb7184e9 Nicolin Chen    2019-10-16  130  	int summation_shunt_resistor;
ac0a832fd3617c Ninad Malwade   2023-09-21  131  	u32 summation_channel_control;
43dece162de047 Nicolin Chen    2019-01-17  132  
43dece162de047 Nicolin Chen    2019-01-17  133  	bool single_shot;
7cb6dcff1956ec Andrew F. Davis 2016-06-10 @134  };
7cb6dcff1956ec Andrew F. Davis 2016-06-10  135  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

