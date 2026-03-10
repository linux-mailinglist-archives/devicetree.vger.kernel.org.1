Return-Path: <devicetree+bounces-273763-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oChMBLeosGlTlwIAu9opvQ
	(envelope-from <devicetree+bounces-273763-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 00:26:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFD8259456
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 00:26:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0F99E3024B0D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 23:26:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 523DD3A7855;
	Tue, 10 Mar 2026 23:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="nHVefLGO"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8B5E3A6B84;
	Tue, 10 Mar 2026 23:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773185204; cv=none; b=UvRJSQ9M2BuT7KTBu8LDc3+DVM/QG6vkG7E14XNrjs8ectRtcGCDpKgwfGVozBnVfLhdOpE1CWeAi2/RzJZqREV0OEX3BKHFCyagxU/7jxHjZ0Ms+k1+wAZdwdduwZto30gKn5kRY94xqWVRCGl85hZjQzytWTp/0w/C5SeaYr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773185204; c=relaxed/simple;
	bh=e479cCwfOF7vRTYlVkMohlsKN6yVc0hD7vBF60a45fo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ELbtimZm9SgOfpp6+Tbnu/hi3I3HLWeujB/zhdBjL7ZBALlxl+kGzvTgT7KPIXCFXDnpxY0KrBwAzwcmH5KR94bVYurRrQbsjhpisdfjVmJD38xMgjoSZ+tr1e9lyp4V7u1QSxXQ01IbVUYnJnUb+uH/aYl0A+ImZXtvGrYho0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=nHVefLGO; arc=none smtp.client-ip=192.198.163.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773185202; x=1804721202;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=e479cCwfOF7vRTYlVkMohlsKN6yVc0hD7vBF60a45fo=;
  b=nHVefLGOWaAVbJQepraeCdVI1QBv2MoRELEem+w2CowuzvOzBSl2G/6L
   hJ6QEAAWZokgLq9RKnZEtWitjWtOORAgFpTUqQG1Vfajhl+39jy0Fy8+0
   MuVQ953DkN4QYWFL6uRsgGhq+agfSZSvpJDBEWhlhbv01Tp6tV/m6mPlv
   MZs+nAn4KDs6vvepRsuCc3dCKLSR6+tWrgBKLb0UPIfaHEO+M90ddfpJ1
   4jBTvshrTNJrcKtMrvnAym6ohUGIJJxw/j1hAkMUPXDBjCeDCYYJayBZj
   oNw5GbSqPSEegNAehqByVA3pujdPHZzCwLsU+vzsr+fOgQr4x7iJozMht
   w==;
X-CSE-ConnectionGUID: bmoQHZZTQSytz/YWKzEZMw==
X-CSE-MsgGUID: /aRHuhCBTxihfDdQ5DEz4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="73443085"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; 
   d="scan'208";a="73443085"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Mar 2026 16:26:42 -0700
X-CSE-ConnectionGUID: I1yiwG8kR3OQNfM3PvA6cA==
X-CSE-MsgGUID: yXIbYWUTQ0uhucbUBDMF2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; 
   d="scan'208";a="225235382"
Received: from lkp-server01.sh.intel.com (HELO 418530b1a366) ([10.239.97.150])
  by orviesa005.jf.intel.com with ESMTP; 10 Mar 2026 16:26:38 -0700
Received: from kbuild by 418530b1a366 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1w06TD-000000000P4-0miZ;
	Tue, 10 Mar 2026 23:26:35 +0000
Date: Wed, 11 Mar 2026 07:26:27 +0800
From: kernel test robot <lkp@intel.com>
To: Lakshay Piplani <lakshay.piplani@nxp.com>, linux-kernel@vger.kernel.org,
	linux-i3c@lists.infradead.org, alexandre.belloni@bootlin.com,
	krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org,
	Frank.Li@nxp.com, lgirdwood@gmail.com
Cc: oe-kbuild-all@lists.linux.dev, vikash.bansal@nxp.com,
	priyanka.jain@nxp.com, aman.kumarpandey@nxp.com,
	lakshay.piplani@nxp.com
Subject: Re: [PATCH v6 7/7] i3c: hub: p3h2x4x: Add support for NXP P3H2x4x
 I3C hub functionality
Message-ID: <202603110741.nkI3lGfN-lkp@intel.com>
References: <20260310065727.3759342-7-lakshay.piplani@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310065727.3759342-7-lakshay.piplani@nxp.com>
X-Rspamd-Queue-Id: 9EFD8259456
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
	TAGGED_FROM(0.00)[bounces-273763-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,intel.com:dkim,intel.com:email,intel.com:mid,git-scm.com:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Lakshay,

kernel test robot noticed the following build warnings:

[auto build test WARNING on i3c/i3c/next]
[also build test WARNING on lee-mfd/for-mfd-next broonie-regulator/for-next linus/master v7.0-rc3 next-20260310]
[cannot apply to lee-mfd/for-mfd-fixes]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Lakshay-Piplani/i3c-master-Add-the-APIs-to-support-I3C-hub/20260310-150040
base:   https://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git i3c/next
patch link:    https://lore.kernel.org/r/20260310065727.3759342-7-lakshay.piplani%40nxp.com
patch subject: [PATCH v6 7/7] i3c: hub: p3h2x4x: Add support for NXP P3H2x4x I3C hub functionality
config: arc-allyesconfig (https://download.01.org/0day-ci/archive/20260311/202603110741.nkI3lGfN-lkp@intel.com/config)
compiler: arc-linux-gcc (GCC) 15.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260311/202603110741.nkI3lGfN-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603110741.nkI3lGfN-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: drivers/i3c/hub/p3h2840_i3c_hub_i3c.c:62 function parameter 'p3h2x4x_hub' not described in 'p3h2x4x_tp_i3c_algo'
>> Warning: drivers/i3c/hub/p3h2840_i3c_hub_i3c.c:62 function parameter 'p3h2x4x_hub' not described in 'p3h2x4x_tp_i3c_algo'
--
>> Warning: drivers/i3c/hub/p3h2840_i3c_hub_smbus.c:185 function parameter 'p3h2x4x_i3c_hub' not described in 'p3h2x4x_tp_i2c_xfer_msg'
>> Warning: drivers/i3c/hub/p3h2840_i3c_hub_smbus.c:185 function parameter 'xfers' not described in 'p3h2x4x_tp_i2c_xfer_msg'
>> Warning: drivers/i3c/hub/p3h2840_i3c_hub_smbus.c:185 function parameter 'target_port' not described in 'p3h2x4x_tp_i2c_xfer_msg'
>> Warning: drivers/i3c/hub/p3h2840_i3c_hub_smbus.c:185 function parameter 'nxfers_i' not described in 'p3h2x4x_tp_i2c_xfer_msg'
>> Warning: drivers/i3c/hub/p3h2840_i3c_hub_smbus.c:185 function parameter 'rw' not described in 'p3h2x4x_tp_i2c_xfer_msg'
>> Warning: drivers/i3c/hub/p3h2840_i3c_hub_smbus.c:185 function parameter 'p3h2x4x_i3c_hub' not described in 'p3h2x4x_tp_i2c_xfer_msg'
>> Warning: drivers/i3c/hub/p3h2840_i3c_hub_smbus.c:185 function parameter 'xfers' not described in 'p3h2x4x_tp_i2c_xfer_msg'
>> Warning: drivers/i3c/hub/p3h2840_i3c_hub_smbus.c:185 function parameter 'target_port' not described in 'p3h2x4x_tp_i2c_xfer_msg'
>> Warning: drivers/i3c/hub/p3h2840_i3c_hub_smbus.c:185 function parameter 'nxfers_i' not described in 'p3h2x4x_tp_i2c_xfer_msg'
>> Warning: drivers/i3c/hub/p3h2840_i3c_hub_smbus.c:185 function parameter 'rw' not described in 'p3h2x4x_tp_i2c_xfer_msg'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

