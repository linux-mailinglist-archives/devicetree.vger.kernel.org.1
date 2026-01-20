Return-Path: <devicetree+bounces-257637-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OI5vOPkFcGmUUgAAu9opvQ
	(envelope-from <devicetree+bounces-257637-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:47:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A27874D372
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:47:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 46F71943212
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:13:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B6C743DA58;
	Tue, 20 Jan 2026 22:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="im/lWX6P"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C6C3A8FEC;
	Tue, 20 Jan 2026 22:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768947105; cv=none; b=MuPA6BoAX4M0JTN3Q1GKixLrIiLIXsaCrVtUnMT+jIY03o8BZ0qbtSBG5Qs5SiT+A7AWyqKQMjPdjP+X1U7Q1htocFe6bUaOcKcEBsRqDCc6PDkjGZHkaCOMyXXpFfb4bg6Ck+BlOrtuUDyo0wfy6+/pQX2+94CDhsN4MlkHODs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768947105; c=relaxed/simple;
	bh=gECVPTgr9IviihhebLtMXTTK5CCjQESWLwbOCkYXa3g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Du3UtvyEmtyM6AFIxPQ99wMxAF8vUjePEtGfWo/IFhTJxEdbMvi27Sn0RytVhe+w/67zHkLQtj2DR534w6saGdCshwPaHtKGXyw2MJ05LgdVZHkISzqk/cpXVJbgN8kugop8nkELovRlOJ4jeSWKI9g99gNx3XgMMIJbUDjRgbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=im/lWX6P; arc=none smtp.client-ip=192.198.163.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768947102; x=1800483102;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=gECVPTgr9IviihhebLtMXTTK5CCjQESWLwbOCkYXa3g=;
  b=im/lWX6PuNoBPpihSoIm5Zt38oRZeycSZzXg4IYATU3lk2aBrYbTi4pI
   3G17bLawPG00uUrmq+lpq/Ywza0FZi10QS+n3wSEpSTTVdgBJz8NEUvRv
   GL4EwwJdlj5VyA8GAwBrgWDfpGL2uLYTET38ojf5YuPRjcuDxXX5NvJAs
   grAZltYwDbBOKvtfI7EYo3xP1XNfL+qQfAxry21WVwxzC2ffNdGPw6Slf
   pAcPMezRZZo0FDRNb/F87WAw2dlm1DE6tX5trJyV9MdDJ354CU5tLWvNY
   wwcYejvCClthzBI3t9yZF5KSUb9Xqijh70w+kAXrS2sUPuyxg2TWDVvoQ
   g==;
X-CSE-ConnectionGUID: 4PUG9RGHR0OYq21mZhSc9g==
X-CSE-MsgGUID: hU44W9ZWQS6pstQmHgRrtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="57730499"
X-IronPort-AV: E=Sophos;i="6.21,241,1763452800"; 
   d="scan'208";a="57730499"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2026 14:04:01 -0800
X-CSE-ConnectionGUID: W4SXnIrnReKYlIhHiB5xKg==
X-CSE-MsgGUID: oU1o6bKFSaaH84Un1Dmlsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,241,1763452800"; 
   d="scan'208";a="206044766"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by orviesa009.jf.intel.com with ESMTP; 20 Jan 2026 14:03:57 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1viJpK-00000000Pbj-21dY;
	Tue, 20 Jan 2026 22:03:54 +0000
Date: Wed, 21 Jan 2026 06:03:15 +0800
From: kernel test robot <lkp@intel.com>
To: Nadi Ke <kanadenady@gmail.com>, sboyd@kernel.org,
	mturquette@baylibre.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, orsonzhai@gmail.com,
	baolin.wang@linux.alibaba.com, zhang.lyra@gmail.com
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Nadi Ke <kanadenady@gmail.com>
Subject: Re: [PATCH v1 2/2] clk: sprd: Add SC9832E clock driver
Message-ID: <202601210519.7t5mahjl-lkp@intel.com>
References: <20260120144436.233998-3-kanadenady@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120144436.233998-3-kanadenady@gmail.com>
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257637-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,baylibre.com,linux.alibaba.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,vger.kernel.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[intel.com,none];
	RCVD_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,intel.com:email,intel.com:dkim,intel.com:mid,git-scm.com:url]
X-Rspamd-Queue-Id: A27874D372
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Nadi,

kernel test robot noticed the following build errors:

[auto build test ERROR on clk/clk-next]
[also build test ERROR on linus/master v6.19-rc6 next-20260120]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Nadi-Ke/dt-bindings-clock-sprd-Add-SC9832E-clock-controller/20260121-001334
base:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-next
patch link:    https://lore.kernel.org/r/20260120144436.233998-3-kanadenady%40gmail.com
patch subject: [PATCH v1 2/2] clk: sprd: Add SC9832E clock driver
config: hexagon-allmodconfig (https://download.01.org/0day-ci/archive/20260121/202601210519.7t5mahjl-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260121/202601210519.7t5mahjl-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601210519.7t5mahjl-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/clk/sprd/sc9832e-clk.c:1041:24: error: use of undeclared identifier 'sc9832e_clk_ids'
    1041 |         match = of_match_node(sc9832e_clk_ids, pdev->dev.of_node);
         |                               ^
   drivers/clk/sprd/sc9832e-clk.c:1058:21: error: use of undeclared identifier 'sc9832e_clk_ids'; did you mean 'sc9832e_pll_hws'?
    1058 |                 .of_match_table = sc9832e_clk_ids,
         |                                   ^~~~~~~~~~~~~~~
         |                                   sc9832e_pll_hws
   drivers/clk/sprd/sc9832e-clk.c:162:35: note: 'sc9832e_pll_hws' declared here
     162 | static struct clk_hw_onecell_data sc9832e_pll_hws = {
         |                                   ^
>> drivers/clk/sprd/sc9832e-clk.c:1058:21: error: initializing 'const struct of_device_id *' with an expression of incompatible type 'struct clk_hw_onecell_data'
    1058 |                 .of_match_table = sc9832e_clk_ids,
         |                                   ^~~~~~~~~~~~~~~
   3 errors generated.


vim +/sc9832e_clk_ids +1041 drivers/clk/sprd/sc9832e-clk.c

  1034	
  1035	static int sc9832e_clk_probe(struct platform_device *pdev)
  1036	{
  1037		const struct of_device_id *match;
  1038		const struct sprd_clk_desc *desc;
  1039		int ret;
  1040	
> 1041		match = of_match_node(sc9832e_clk_ids, pdev->dev.of_node);
  1042		if (!match)
  1043			return -ENODEV;
  1044	
  1045		desc = match->data;
  1046	
  1047		ret = sprd_clk_regmap_init(pdev, desc);
  1048		if (ret)
  1049			return ret;
  1050	
  1051		return sprd_clk_probe(&pdev->dev, desc->hw_clks);
  1052	}
  1053	
  1054	static struct platform_driver sc9832e_clk_driver = {
  1055		.probe	= sc9832e_clk_probe,
  1056		.driver	= {
  1057			.name	= "sc9832e-clk",
> 1058			.of_match_table	= sc9832e_clk_ids,
  1059		},
  1060	};
  1061	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

