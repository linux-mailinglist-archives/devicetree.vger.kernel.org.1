Return-Path: <devicetree+bounces-273596-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDqfJNc8sGmohQIAu9opvQ
	(envelope-from <devicetree+bounces-273596-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:46:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D8F253E0E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:46:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 922343344927
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1998C2EC54C;
	Tue, 10 Mar 2026 14:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="LKjoqb7w"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D441D2E7F38;
	Tue, 10 Mar 2026 14:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773153614; cv=none; b=EyP2Nkf1C32AQXxn9Y4INedYusk7rCTL0FZl79UmuDic55UEhzz//AkL2vl2JYxvUiwMm83IDh6RyE0MJUeu5IjzrnB/f554Sg9EEhi0TGqudtP8U22zTdsRb8jTMfM/gOZ7XiwyegFdCBoEseyrhJvSSvW21JqWYNX+kwtpRRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773153614; c=relaxed/simple;
	bh=8T67TVdhSVtvvdepFz9J1Xlz8I4C54onclSvxO6OHRs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ShUjIunELzJaMLnZJhOcMQLJIgEU7FP9iO96u1z5lcA2SwNcyi1RLdQSQ72N0k8D9fMHgxKuOlXGEVNYacFq7dvITt6YR3MxdN3pw19isAyewHmAVxGdZZWOA1EwJqvBujgkgxfiSto7zFyKPmzH0PoUD9sCiY4MV75DDSq8b9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=LKjoqb7w; arc=none smtp.client-ip=198.175.65.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773153613; x=1804689613;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=8T67TVdhSVtvvdepFz9J1Xlz8I4C54onclSvxO6OHRs=;
  b=LKjoqb7wTPxGr7P1QzlKMmi1QLFDf+sGijf4I0v3DzM4MqZpKklquToe
   l/v3sTaH6IKYQ+AbehP/JlPTe7hrQbGOHi2KEPzWLe4qXS+ft7y9Mdzmx
   ocM/Ud2zkYyM4bD9t4Z4dyAIrmVbZ29+DYDhlSIQDegmHOJb6KHgNsXgm
   Pmt+vOuIZmDyVfdxKBiV77Z0cPHcc9Isr1VFkKZzCbmmVubuXZI14xBJK
   tpE9lnF2hiNAGe2eSuPfgRidVoX2tjELSnZvEkDdvl+UnHwdLv7m0AJ7M
   ynzobPJqq5vbMG7eNOHr3RMHuTyRmaVEqtzyPDgdVvfgTIdjl538ZgpY9
   w==;
X-CSE-ConnectionGUID: bwkB724uRJOLcs+4/94ijQ==
X-CSE-MsgGUID: L/uGvc3WRmuGwxZFBaJCWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="85679949"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; 
   d="scan'208";a="85679949"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Mar 2026 07:40:12 -0700
X-CSE-ConnectionGUID: KDrZC1mQTqq3uRBDsVX0dQ==
X-CSE-MsgGUID: d5gc+KztSySnXUEngiDR5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; 
   d="scan'208";a="218094562"
Received: from lkp-server01.sh.intel.com (HELO 434e41ea3c86) ([10.239.97.150])
  by fmviesa008.fm.intel.com with ESMTP; 10 Mar 2026 07:40:07 -0700
Received: from kbuild by 434e41ea3c86 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vzyFg-0000000025C-3tHG;
	Tue, 10 Mar 2026 14:40:04 +0000
Date: Tue, 10 Mar 2026 22:40:02 +0800
From: kernel test robot <lkp@intel.com>
To: Lakshay Piplani <lakshay.piplani@nxp.com>, linux-kernel@vger.kernel.org,
	linux-i3c@lists.infradead.org, alexandre.belloni@bootlin.com,
	krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org,
	Frank.Li@nxp.com, lgirdwood@gmail.com
Cc: oe-kbuild-all@lists.linux.dev, vikash.bansal@nxp.com,
	priyanka.jain@nxp.com, aman.kumarpandey@nxp.com,
	lakshay.piplani@nxp.com
Subject: Re: [PATCH v6 1/7] i3c: master: Expose the APIs to support I3C hub
Message-ID: <202603102243.IVWJtjqQ-lkp@intel.com>
References: <20260310065727.3759342-1-lakshay.piplani@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310065727.3759342-1-lakshay.piplani@nxp.com>
X-Rspamd-Queue-Id: 90D8F253E0E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273596-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,01.org:url,git-scm.com:url]
X-Rspamd-Action: no action

Hi Lakshay,

kernel test robot noticed the following build warnings:

[auto build test WARNING on i3c/i3c/next]
[also build test WARNING on lee-mfd/for-mfd-next broonie-regulator/for-next linus/master lee-mfd/for-mfd-fixes v7.0-rc3 next-20260309]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Lakshay-Piplani/i3c-master-Add-the-APIs-to-support-I3C-hub/20260310-150040
base:   https://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git i3c/next
patch link:    https://lore.kernel.org/r/20260310065727.3759342-1-lakshay.piplani%40nxp.com
patch subject: [PATCH v6 1/7] i3c: master: Expose the APIs to support I3C hub
config: loongarch-randconfig-001-20260310 (https://download.01.org/0day-ci/archive/20260310/202603102243.IVWJtjqQ-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 13.4.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260310/202603102243.IVWJtjqQ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603102243.IVWJtjqQ-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: drivers/i3c/master.c:3197 expecting prototype for i3c_dev_disable_ibi(). Prototype was for i3c_dev_disable_ibi_locked() instead
>> Warning: drivers/i3c/master.c:3263 expecting prototype for i3c_dev_request_ibi(). Prototype was for i3c_dev_request_ibi_locked() instead
>> Warning: drivers/i3c/master.c:3312 expecting prototype for i3c_dev_free_ibi(). Prototype was for i3c_dev_free_ibi_locked() instead

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

