Return-Path: <devicetree+bounces-281777-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGfeNffWxmmtPAUAu9opvQ
	(envelope-from <devicetree+bounces-281777-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 20:13:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 57652349FA1
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 20:13:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ADC8730C2CC9
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 19:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31C3335B631;
	Fri, 27 Mar 2026 18:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="dVfEJLzi"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCDE2315D40;
	Fri, 27 Mar 2026 18:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774637950; cv=none; b=O/Qv4QGmtIgt4AVp/pRI3+OxqhDSuQ7Bsk/9sfqQgazPC5wtSUt4zseEfhL2zMFobK8v/51uLpYddjtqZz5rKqgd0MOnQgw9BSrFgdqT0JSw7pcGIC5YA2k5RB4lMvBAOZ0Ohoat/0ns9hKjLuzzff7tj9NI/EmKVVR8U1Y7RDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774637950; c=relaxed/simple;
	bh=Q0dd9IOAI89ZSQkit8UCURS9a6et8dgdtMNLM9mGy0A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AfuxeV63UUEu4J5hYY4SI919lGBE45aOiADOg6ZSDyXDulOUVDnb34fky40ph1w1hA6LRAnmh59hPxFwZ/UroLnVS/RZjuHXasnNMMOOybL29odyDI+9r+LyUHHopJ9MzJjkm8+Jd/oAZOPCx0eVOpnNCE1CkVejaQWfSl1OWrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=dVfEJLzi; arc=none smtp.client-ip=198.175.65.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774637948; x=1806173948;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Q0dd9IOAI89ZSQkit8UCURS9a6et8dgdtMNLM9mGy0A=;
  b=dVfEJLziN3merfBhPm18HsJXm5rW8vbWxWa+LcUkpVou0BOPoc/e3MYm
   POurXrU0IGer5M9Trk42Ts90qNIJ/UxxUlDyZlUaE1Re3n2Wb7hqUEGZD
   D0dAYwjioPJIFZocD6I2ZqeV8Me5puf1KPhFaD2yGeV1XCpQtl0s4OIPY
   aHpRBPpuLU4UnVd+eRxGTLBZ8rDMNxbPFkRLc+DbVpsb55WdyTpAJZrk6
   HaBvX6Sk1bEuXBg5smeAcAlcU8kn8VsCyRfb6BIxKwBPVkAg7iCmEOl1w
   DZFDAOhaltVZalTs6Wqcu8sSlLtTA0KQycl/8jalEYkqx3NdcWtEVWUN3
   Q==;
X-CSE-ConnectionGUID: 5BiPSlmpTTeCKRDpRxvl/A==
X-CSE-MsgGUID: IBCFGXnCT4m68Qe2kYfmcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11742"; a="75916588"
X-IronPort-AV: E=Sophos;i="6.23,144,1770624000"; 
   d="scan'208";a="75916588"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Mar 2026 11:59:08 -0700
X-CSE-ConnectionGUID: BDEglK+nRymDseHdwIsjuQ==
X-CSE-MsgGUID: 9MdtC+zWQFmIzAJA3CCdqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,144,1770624000"; 
   d="scan'208";a="221001658"
Received: from lkp-server01.sh.intel.com (HELO 3905d212be1b) ([10.239.97.150])
  by fmviesa010.fm.intel.com with ESMTP; 27 Mar 2026 11:59:04 -0700
Received: from kbuild by 3905d212be1b with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1w6COb-00000000AcL-1yVq;
	Fri, 27 Mar 2026 18:59:01 +0000
Date: Sat, 28 Mar 2026 02:58:57 +0800
From: kernel test robot <lkp@intel.com>
To: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>, Nuno Sa <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Michal Simek <monstr@monstr.eu>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, saikrishna12468@gmail.com,
	git@amd.com, Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
Subject: Re: [PATCH v2 1/4] iio: adc: xilinx-xadc: Split driver into core and
 platform files
Message-ID: <202603280238.N4wp7jaC-lkp@intel.com>
References: <20260323074505.3853353-2-sai.krishna.potthuri@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260323074505.3853353-2-sai.krishna.potthuri@amd.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[lists.linux.dev,vger.kernel.org,lists.infradead.org,gmail.com,amd.com];
	TAGGED_FROM(0.00)[bounces-281777-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,01.org:url,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 57652349FA1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Sai,

kernel test robot noticed the following build warnings:

[auto build test WARNING on jic23-iio/togreg]
[also build test WARNING on robh/for-next linus/master v7.0-rc5 next-20260326]
[cannot apply to xilinx-xlnx/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Sai-Krishna-Potthuri/iio-adc-xilinx-xadc-Split-driver-into-core-and-platform-files/20260326-024045
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git togreg
patch link:    https://lore.kernel.org/r/20260323074505.3853353-2-sai.krishna.potthuri%40amd.com
patch subject: [PATCH v2 1/4] iio: adc: xilinx-xadc: Split driver into core and platform files
config: hexagon-randconfig-r133-20260326 (https://download.01.org/0day-ci/archive/20260328/202603280238.N4wp7jaC-lkp@intel.com/config)
compiler: clang version 23.0.0git (https://github.com/llvm/llvm-project 054e11d1a17e5ba88bb1a8ef32fad3346e80b186)
sparse: v0.6.5-rc1
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260328/202603280238.N4wp7jaC-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603280238.N4wp7jaC-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/iio/adc/xilinx-xadc-core.c:764:12: sparse: sparse: symbol 'xadc_type_names' was not declared. Should it be static?

vim +/xadc_type_names +764 drivers/iio/adc/xilinx-xadc-core.c

   763	
 > 764	const char * const xadc_type_names[] = {
   765		[XADC_TYPE_S7] = "xadc",
   766		[XADC_TYPE_US] = "xilinx-system-monitor",
   767	};
   768	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

