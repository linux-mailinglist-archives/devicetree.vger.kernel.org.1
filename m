Return-Path: <devicetree+bounces-277740-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANKBONjhu2lXpQIAu9opvQ
	(envelope-from <devicetree+bounces-277740-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:45:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C6E2CA88F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:45:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 62F403019C86
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B97DD3AEF54;
	Thu, 19 Mar 2026 11:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="C7U4UADd"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2316377EB5;
	Thu, 19 Mar 2026 11:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773920725; cv=none; b=BUTfYIWk2WQLq0DO9frzQlvum1blsJwMbk7MQ+miqruGnxKwgWBQcq5O/t0W4DdbPRZQGoqOHvh6gHVnoRR3ZzfIKgV27WgXBtOgF8Bg+MHtC0SUvE8rGfS+2r6270gxoFRYcNOtZTa5c1uTLzJc3hDbMHP8ujJsvWJvnUN2Yv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773920725; c=relaxed/simple;
	bh=V9PeQHG+J9/hfCBxtV3PFI1VLoNo23MIN/xtY1+w03U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZWpwVdxFXwUhfNZGHPGxUD0ynm8nwTvXY1odwZlsrOm0VydIbNSRFoollh4KNVzs8+LUHih4+BfZYyszSEA4zLe2oS1/nHCFBtj3bktkM/kCG+2S5ogGf3vYjqvDkufUxbQCjggCsRSWQJ7zildf94Pr+MEaUFNCnZD8E3FMb+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=C7U4UADd; arc=none smtp.client-ip=198.175.65.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773920723; x=1805456723;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=V9PeQHG+J9/hfCBxtV3PFI1VLoNo23MIN/xtY1+w03U=;
  b=C7U4UADdaih0xq5LABlZbGG/xz5fjhgMytFo6YYZELMZXtYxApYHcd87
   AIVng7ByDwYgMYH8DJuANp6Ek0/D6qsBpU9DCGq9Rp5eZSBC7Mcwyle1z
   TABaOrOrOwF5QTKKA/kJrca9OEYkKplktpXkO+O1iN27o7HrN5yl4QOZl
   i2FBA3bJVGvH/67WPzyjJoZYbD9UtbWz19g57W8m9UU9Kf4Bj1VSYrz0r
   FvUdPQMhd+ylnyjcPmkRXOzBXeJT+gfBkn5LZEELEKtn+8bjF+ZYtyt83
   p6GnDWl9YQ6pgBQ4Q1nUZpLij2cvxo5WWwtSrsRHM81ObSFI1cMFbq9lR
   g==;
X-CSE-ConnectionGUID: MJCqAkZNTR2Iw87RSoSlVQ==
X-CSE-MsgGUID: KIqoiJCpS/6WnaMWiEaVTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="74874167"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; 
   d="scan'208";a="74874167"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2026 04:45:23 -0700
X-CSE-ConnectionGUID: wbbZ3gjpTNqxjJxVG5x4oQ==
X-CSE-MsgGUID: Esg5765uRLSzoQtLgt5Ntw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; 
   d="scan'208";a="247246308"
Received: from lkp-server02.sh.intel.com (HELO a51c2a36b9df) ([10.239.97.151])
  by fmviesa001.fm.intel.com with ESMTP; 19 Mar 2026 04:45:20 -0700
Received: from kbuild by a51c2a36b9df with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1w3BoU-000000000tJ-0O1j;
	Thu, 19 Mar 2026 11:45:18 +0000
Date: Thu, 19 Mar 2026 19:44:10 +0800
From: kernel test robot <lkp@intel.com>
To: Florian Eckert <fe@dev.tdt.de>, Thomas Gleixner <tglx@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Florian Eckert <fe@dev.tdt.de>, Eckert.Florian@googlemail.com,
	ms@dev.tdt.de
Subject: Re: [PATCH 2/2] irqchip: Add Lightning Mountain irqchip support
Message-ID: <202603191903.MUNojwHX-lkp@intel.com>
References: <20260318-irq-intel-soc-msi-v1-2-0e8cdf844fa8@dev.tdt.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260318-irq-intel-soc-msi-v1-2-0e8cdf844fa8@dev.tdt.de>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[lists.linux.dev,vger.kernel.org,dev.tdt.de,googlemail.com];
	TAGGED_FROM(0.00)[bounces-277740-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.936];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: F2C6E2CA88F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Florian,

kernel test robot noticed the following build errors:

[auto build test ERROR on f338e77383789c0cae23ca3d48adcc5e9e137e3c]

url:    https://github.com/intel-lab-lkp/linux/commits/Florian-Eckert/dt-bindings-Add-Lightning-Mountain-MSI-interrupt-controller-bindings/20260319-033849
base:   f338e77383789c0cae23ca3d48adcc5e9e137e3c
patch link:    https://lore.kernel.org/r/20260318-irq-intel-soc-msi-v1-2-0e8cdf844fa8%40dev.tdt.de
patch subject: [PATCH 2/2] irqchip: Add Lightning Mountain irqchip support
config: riscv-allyesconfig (https://download.01.org/0day-ci/archive/20260319/202603191903.MUNojwHX-lkp@intel.com/config)
compiler: clang version 16.0.6 (https://github.com/llvm/llvm-project 7cbf1a2591520c2491aa35339f227775f4d3adf6)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260319/202603191903.MUNojwHX-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603191903.MUNojwHX-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/irqchip/irq-intel-soc-msi.c:17:10: fatal error: 'asm/irqdomain.h' file not found
   #include <asm/irqdomain.h>
            ^~~~~~~~~~~~~~~~~
   1 error generated.


vim +17 drivers/irqchip/irq-intel-soc-msi.c

    16	
  > 17	#include <asm/irqdomain.h>
    18	#include <asm/apic.h>
    19	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

