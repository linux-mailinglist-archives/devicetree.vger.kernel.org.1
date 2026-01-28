Return-Path: <devicetree+bounces-260568-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SI8jI89Lemkp5AEAu9opvQ
	(envelope-from <devicetree+bounces-260568-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:47:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEEFA727C
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 18:47:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5DD103043BD7
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:43:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F3E7369995;
	Wed, 28 Jan 2026 17:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="RWLHydsP"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2853612F7;
	Wed, 28 Jan 2026 17:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769622217; cv=none; b=kMK4ziVoLbdgc/C8rDmOhdbV8sLTfgTSA24VHLEeBMD2zI3xrMJVdkixrAcb28SZAik9DS5EQEu89iUcdio+HaAG7zZcXklZ2icYnPN2Jt4fbujlGXWOwwrxlMsTcMUV4gBVDffh4HSuqca2GaJS5nrQdVwPPmkd9ivT6sv3B3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769622217; c=relaxed/simple;
	bh=g1jAkOyBexOK0ZIsA6MWbUTp4PeGmeSSzmktzpC4sZg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BxIF06u5+IK0i7vWMSIupNA8tcegbgij5q918rT5QsCTOeURHthQAo2i1cjgdBC7IAMv4Sd8cRFY0z0JneLRr0et6NJA4v+TEMvSTKogHxK7Z5sU8epnZcwT+RvlZg4RyUEvvIINELNtBY1IIVaNsHhDENB2+0V/Q4kNW+KVHYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=RWLHydsP; arc=none smtp.client-ip=192.198.163.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769622216; x=1801158216;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=g1jAkOyBexOK0ZIsA6MWbUTp4PeGmeSSzmktzpC4sZg=;
  b=RWLHydsPC18A6uOgX9ju2XY44+6UFsW0rU/WJpIjFHbknDXHryVzG25y
   e8zaYISXLB/wNrFcz2xo/HrK7yBXObN57QOaEHZSmgfzchonlbzdcusOw
   0vQuF41g0PeeLTfRT/VwjxB/UMpDcx/ayXBudV+iR8bLCfJmT7fDUE48H
   tUlPREG2vY0qAn86e19eXaBjesM+5MMbhi/fDYN08o0Lubdp3Fc46cPHv
   ZqZ6JO/jAjQIEQp/Bgs1eX/qqR+H/zL9miHoYbsOqt1GacZ6crvyAmLea
   /XFHnf7WK6n/3I8FS/MuIbYfN4U0Okba4NpOG1yUTU3ldKVJF4W+lzCLW
   w==;
X-CSE-ConnectionGUID: SBqlro0cQxisVhu8gpJvcQ==
X-CSE-MsgGUID: jmg7UzIATAyKSf5Dn4rWvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="96304445"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; 
   d="scan'208";a="96304445"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2026 09:43:35 -0800
X-CSE-ConnectionGUID: lXx90f1VRK+eSlHmKMrAxw==
X-CSE-MsgGUID: /7RCZ1ZZRD+YePQfVNi8Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; 
   d="scan'208";a="231278422"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by fmviesa002.fm.intel.com with ESMTP; 28 Jan 2026 09:43:32 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vl9Zg-00000000ae8-3lP1;
	Wed, 28 Jan 2026 17:43:28 +0000
Date: Thu, 29 Jan 2026 01:43:05 +0800
From: kernel test robot <lkp@intel.com>
To: Gary Yang <gary.yang@cixtech.com>, lee@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	peter.chen@cixtech.com
Cc: oe-kbuild-all@lists.linux.dev, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com, Gary Yang <gary.yang@cixtech.com>
Subject: Re: [PATCH v4 2/3] reset: cix: add support for cix sky1 resets
Message-ID: <202601290142.8FfZLLZk-lkp@intel.com>
References: <20260128093611.1932770-3-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128093611.1932770-3-gary.yang@cixtech.com>
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-260568-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,01.org:url,git-scm.com:url]
X-Rspamd-Queue-Id: 0FEEFA727C
X-Rspamd-Action: no action

Hi Gary,

kernel test robot noticed the following build warnings:

[auto build test WARNING on robh/for-next]
[also build test WARNING on lee-leds/for-leds-next linus/master v6.19-rc7 next-20260127]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Gary-Yang/dt-bindings-reset-add-sky1-reset-controller/20260128-174335
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20260128093611.1932770-3-gary.yang%40cixtech.com
patch subject: [PATCH v4 2/3] reset: cix: add support for cix sky1 resets
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20260129/202601290142.8FfZLLZk-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 15.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260129/202601290142.8FfZLLZk-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601290142.8FfZLLZk-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/reset/reset-sky1.c:322:35: warning: 'sky1_src_config' defined but not used [-Wunused-const-variable=]
     322 | static const struct regmap_config sky1_src_config[] = {
         |                                   ^~~~~~~~~~~~~~~


vim +/sky1_src_config +322 drivers/reset/reset-sky1.c

   321	
 > 322	static const struct regmap_config sky1_src_config[] = {
   323		{
   324			.reg_bits = 32,
   325			.val_bits = 32,
   326			.reg_stride = 4,
   327			.name = "src",
   328		},
   329	};
   330	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

