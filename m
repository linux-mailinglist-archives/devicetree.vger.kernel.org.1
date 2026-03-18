Return-Path: <devicetree+bounces-277166-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NVDItSOumnSXgIAu9opvQ
	(envelope-from <devicetree+bounces-277166-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:39:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E968D2BAF0E
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:38:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E84A5301C3E2
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:35:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CFD1396D25;
	Wed, 18 Mar 2026 11:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="N4aNhFNe"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A257377EC1;
	Wed, 18 Mar 2026 11:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773833759; cv=none; b=EY8MJqac5K/iiyZANMFnl1rTWdSqevCtWVNGE8ML30g5LEjKAPawp9Wtk166itu1yYAJMhat+tHDQDNe3sl8bffMp62ViaKqblQ1Co8flvQ2JQLYEQQSDtY670W5327XzrZF+GdrLWKF0daJjS8lv4LmaXO7+gWAqE8UF7iCbIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773833759; c=relaxed/simple;
	bh=ZclFthZd77skOSmXkc5robMrKH8Po4/7YgiZhdHEFFw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=twhACpbp75vh8KoSG3cwn9rxL4hVdAuBtxKk2dBgW6n6dkEF+2o8gBCiUx9OM80SAxbbQMzoYRCCT1TCnGelOCUHv/86sp7mMpf44ccvI/TaSo/K2Dcczuxw4X12yX8Boa43w6NSej2UqBK1ZTdNuaCBO1CJLoHkpb+5I76Pucc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=N4aNhFNe; arc=none smtp.client-ip=198.175.65.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773833758; x=1805369758;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ZclFthZd77skOSmXkc5robMrKH8Po4/7YgiZhdHEFFw=;
  b=N4aNhFNenBvDOEGkIb5OVlLx8gN6CvcmcNyj5Ahx7PE78XiQiiSxUNIs
   HAo7H8zQ0DbuMpov19NjO4712m8ork2bpZPe3XQyy5ER+77vk2cbI+DqV
   0IarHNYbHxZTc04bT6nhroqVy+XlH1Z/+cGyAExREPmyzI4kfkb7Dv3Da
   gIGcauW0/tMGkFHmb1DrT3LquskbkO1a0eHtDVax+cZEWn1uuoWceK/oT
   2VuJIWSkZUeTTrNzYiM+2VjIeyAwKM6/vBlgl1+Bhw69UKWkvknmXo9zG
   DmiTGp1q9JYG6IuvxhF/kofntW+Qf0uOhwtLsO+ZyqselRYBVl/TYPDPV
   A==;
X-CSE-ConnectionGUID: H7L47SbqTRSVxtBgsOWArA==
X-CSE-MsgGUID: PD9HTcZ9TaiDvasuVu2ExQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="74770649"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; 
   d="scan'208";a="74770649"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Mar 2026 04:35:58 -0700
X-CSE-ConnectionGUID: wxFsSdJrR9yJRjaUCARfHQ==
X-CSE-MsgGUID: X0ORtggNTICqChi69o8byA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; 
   d="scan'208";a="222578791"
Received: from lkp-server01.sh.intel.com (HELO 63737dd503cb) ([10.239.97.150])
  by orviesa009.jf.intel.com with ESMTP; 18 Mar 2026 04:35:52 -0700
Received: from kbuild by 63737dd503cb with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1w2pBm-000000002qj-2OWn;
	Wed, 18 Mar 2026 11:35:50 +0000
Date: Wed, 18 Mar 2026 19:35:16 +0800
From: kernel test robot <lkp@intel.com>
To: Andre Przywara <andre.przywara@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, Salman Nabi <salman.nabi@arm.com>,
	Vedashree Vidwans <vvidwans@nvidia.com>,
	Trilok Soni <trilokkumar.soni@oss.qualcomm.com>,
	Nirmoy Das <nirmoyd@nvidia.com>, vsethi@nvidia.com,
	vwadekar@nvidia.com, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 7/8] firmware: smccc: lfa: Register DT interrupt
Message-ID: <202603181913.NFRwBsN4-lkp@intel.com>
References: <20260317103336.1273582-8-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260317103336.1273582-8-andre.przywara@arm.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277166-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,intel.com:dkim,intel.com:email,intel.com:mid,git-scm.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E968D2BAF0E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Andre,

kernel test robot noticed the following build warnings:

[auto build test WARNING on robh/for-next]
[also build test WARNING on arm/for-next arm/fixes arm64/for-next/core clk/clk-next kvmarm/next rockchip/for-next shawnguo/for-next soc/for-next linus/master nferre-at91/at91-next v7.0-rc4 next-20260317]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Andre-Przywara/dt-bindings-arm-Add-Live-Firmware-Activation-binding/20260318-082717
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20260317103336.1273582-8-andre.przywara%40arm.com
patch subject: [PATCH v2 7/8] firmware: smccc: lfa: Register DT interrupt
config: arm64-randconfig-004-20260318 (https://download.01.org/0day-ci/archive/20260318/202603181913.NFRwBsN4-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 12.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260318/202603181913.NFRwBsN4-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603181913.NFRwBsN4-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/firmware/smccc/lfa_fw.c: In function 'lfa_register_dt':
   drivers/firmware/smccc/lfa_fw.c:878:16: error: implicit declaration of function 'devm_request_threaded_irq'; did you mean 'devm_request_region'? [-Werror=implicit-function-declaration]
     878 |         return devm_request_threaded_irq(dev, irq, lfa_irq_handler,
         |                ^~~~~~~~~~~~~~~~~~~~~~~~~
         |                devm_request_region
   drivers/firmware/smccc/lfa_fw.c:880:42: error: 'IRQF_COND_ONESHOT' undeclared (first use in this function)
     880 |                                          IRQF_COND_ONESHOT, NULL, NULL);
         |                                          ^~~~~~~~~~~~~~~~~
   drivers/firmware/smccc/lfa_fw.c:880:42: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/firmware/smccc/lfa_fw.c:881:1: warning: control reaches end of non-void function [-Wreturn-type]
     881 | }
         | ^
   cc1: some warnings being treated as errors


vim +881 drivers/firmware/smccc/lfa_fw.c

   863	
   864	static int lfa_register_dt(struct device *dev)
   865	{
   866		struct device_node *np;
   867		unsigned int irq;
   868	
   869		np = of_find_compatible_node(NULL, NULL, "arm,lfa");
   870		if (!np)
   871			return -ENODEV;
   872	
   873		irq = irq_of_parse_and_map(np, 0);
   874		of_node_put(np);
   875		if (!irq)
   876			return -ENODEV;
   877	
   878		return devm_request_threaded_irq(dev, irq, lfa_irq_handler,
   879						 lfa_irq_handler_thread,
   880						 IRQF_COND_ONESHOT, NULL, NULL);
 > 881	}
   882	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

