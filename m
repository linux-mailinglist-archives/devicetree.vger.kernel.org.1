Return-Path: <devicetree+bounces-263521-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id H/o8DPJohmnaMwQAu9opvQ
	(envelope-from <devicetree+bounces-263521-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 23:19:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BE026103B24
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 23:19:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F0D193012879
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 22:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 835D42C2374;
	Fri,  6 Feb 2026 22:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="itFBL4Wn"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEEEA35975;
	Fri,  6 Feb 2026 22:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770416367; cv=none; b=gOrcyGYT6HkM4NrIxNfA5y4eM8Zx48Ly4C6nb68COHmK6t2q2DF3WcVodWGkLXUmWe3DRChXSI1rUy6uIjfCWa/X1tmp/Cy4zviI+Rz/TqH5BZ18a0oVRhDQpj+Ej/kljbgWFLgtvd8IFt9H9OUNtqcs8+B+Pp6Z+U3WxYGENhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770416367; c=relaxed/simple;
	bh=w31vsdRBjm0QKr2D1dVuazXtVtYRnzWC05Egb125YC8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ElUhvLWfPGudq8FpRGELtCYkAeJ3Dv5JtRB+kAVjlTwtiFof1wPFUHHLhxhoryzC27faaQPK4swyERQYwfdRr41+tTZGweLpJVs2Y9zrJ5tOAvzSjTgToTDABmjwXAvOmIO8d2+V/cHOXyOF2ATKaLYlxGhdAyOVBTqnMcfFi7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=itFBL4Wn; arc=none smtp.client-ip=192.198.163.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770416367; x=1801952367;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=w31vsdRBjm0QKr2D1dVuazXtVtYRnzWC05Egb125YC8=;
  b=itFBL4WndCgotC1KC19akZRqQp+YcBxaA5+0lmEaZD5IIbV/3S4KWZDL
   kL4WppYT++xLfXUyXTk+4WIokZrESsGJFNAaeprcahyHN48IFgrjQx6+1
   JznPSdOGw9CLxJyJC1atsfxAb18CBwZM+Tw6gsEEpFkpbQaKTYKTvtmKp
   z1dC43x+wiV4tdtjc/cCuF5nOjCFLZUnWynjCYiTIJzoUR1ikAgrRCuy2
   LsKGzxSqREJH4m7RNqLjy32jAHVxfvAWq7FKZOtD7FA5JG2jOpZopvADj
   XYTWdlisIVrrVOPsOKfoZVKvIQ++5Q4qOzDZXmQ8rNO7dLo9FRx160UMN
   A==;
X-CSE-ConnectionGUID: xSs41JftQxeIxOnm80K4gA==
X-CSE-MsgGUID: LCG6i8a0S8m8FXuYpIvGvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11693"; a="71519942"
X-IronPort-AV: E=Sophos;i="6.21,277,1763452800"; 
   d="scan'208";a="71519942"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Feb 2026 14:19:26 -0800
X-CSE-ConnectionGUID: 5CUiIvRNQmi421Ugcvu8UQ==
X-CSE-MsgGUID: 6FS7kGE2Qb2ziy9IyQsASg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,277,1763452800"; 
   d="scan'208";a="210288070"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by fmviesa006.fm.intel.com with ESMTP; 06 Feb 2026 14:19:22 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1voUAX-00000000lCu-1Lrh;
	Fri, 06 Feb 2026 22:19:17 +0000
Date: Sat, 7 Feb 2026 06:19:11 +0800
From: kernel test robot <lkp@intel.com>
To: Aman Kumar Pandey <aman.kumarpandey@nxp.com>,
	linux-kernel@vger.kernel.org, linux-i3c@lists.infradead.org,
	alexandre.belloni@bootlin.com, krzk+dt@kernel.org, robh@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org, broonie@kernel.org,
	lee@kernel.org, Frank.Li@nxp.com, lgirdwood@gmail.com
Cc: oe-kbuild-all@lists.linux.dev, vikash.bansal@nxp.com,
	priyanka.jain@nxp.com, shashank.rebbapragada@nxp.com,
	Aman Kumar Pandey <aman.kumarpandey@nxp.com>
Subject: Re: [PATCH v5 4/5] regulator: p3h2x4x: Add driver for on-die
 regulators in NXP P3H2x4x i3c hub
Message-ID: <202602070610.sRd2Eapf-lkp@intel.com>
References: <20260206120121.856471-4-aman.kumarpandey@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260206120121.856471-4-aman.kumarpandey@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263521-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[nxp.com,vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.952];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,intel.com:email,intel.com:dkim,intel.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,rcfg.dev:url]
X-Rspamd-Queue-Id: BE026103B24
X-Rspamd-Action: no action

Hi Aman,

kernel test robot noticed the following build warnings:

[auto build test WARNING on lee-mfd/for-mfd-next]
[also build test WARNING on lee-mfd/for-mfd-fixes broonie-regulator/for-next linus/master v6.19-rc8]
[cannot apply to i3c/i3c/next next-20260205]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Aman-Kumar-Pandey/dt-bindings-i3c-Add-NXP-P3H2x4x-i3c-hub-support/20260206-200552
base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git for-mfd-next
patch link:    https://lore.kernel.org/r/20260206120121.856471-4-aman.kumarpandey%40nxp.com
patch subject: [PATCH v5 4/5] regulator: p3h2x4x: Add driver for on-die regulators in NXP P3H2x4x i3c hub
config: nios2-allmodconfig (https://download.01.org/0day-ci/archive/20260207/202602070610.sRd2Eapf-lkp@intel.com/config)
compiler: nios2-linux-gcc (GCC) 11.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260207/202602070610.sRd2Eapf-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602070610.sRd2Eapf-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/regulator/p3h2840_i3c_hub_regulator.c: In function 'p3h2x4x_regulator_probe':
>> drivers/regulator/p3h2840_i3c_hub_regulator.c:208:13: warning: unused variable 'ret' [-Wunused-variable]
     208 |         int ret, i;
         |             ^~~


vim +/ret +208 drivers/regulator/p3h2840_i3c_hub_regulator.c

   200	
   201	static int p3h2x4x_regulator_probe(struct platform_device *pdev)
   202	{
   203		struct p3h2x4x_dev *p3h2x4x = dev_get_drvdata(pdev->dev.parent);
   204		struct p3h2x4x_regulator_dev *p3h2x4x_regulator;
   205		struct regulator_config rcfg = { };
   206		struct device *dev = &pdev->dev;
   207		struct regulator_dev *rdev;
 > 208		int ret, i;
   209	
   210		p3h2x4x_regulator = devm_kzalloc(dev, sizeof(*p3h2x4x_regulator), GFP_KERNEL);
   211		if (!p3h2x4x_regulator)
   212			return -ENOMEM;
   213	
   214		platform_set_drvdata(pdev, p3h2x4x_regulator);
   215	
   216		p3h2x4x_regulator->regmap = p3h2x4x->regmap;
   217		device_set_of_node_from_dev(dev, dev->parent);
   218	
   219		rcfg.dev = dev;
   220		rcfg.dev->of_node = dev->of_node;
   221		rcfg.regmap = p3h2x4x_regulator->regmap;
   222		rcfg.driver_data = p3h2x4x_regulator;
   223	
   224		for (i = 0; i < ARRAY_SIZE(p3h2x4x_regulators); i++) {
   225			rdev = devm_regulator_register(&pdev->dev, &p3h2x4x_regulators[i], &rcfg);
   226			if (IS_ERR(rdev)) {
   227				return dev_err_probe(dev, PTR_ERR(rdev), "Failed to register %s\n",
   228						     p3h2x4x_regulators[i].name);
   229			}
   230			p3h2x4x_regulator->rp3h2x4x_dev[i] = rdev;
   231		}
   232		return 0;
   233	}
   234	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

