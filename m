Return-Path: <devicetree+bounces-268096-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HcrHaY8nmkrUQQAu9opvQ
	(envelope-from <devicetree+bounces-268096-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 01:04:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B89CA18E44E
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 01:04:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AC2CF302B83E
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 00:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9114A2744F;
	Wed, 25 Feb 2026 00:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="g46n92Sj"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C6D1D6AA;
	Wed, 25 Feb 2026 00:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771977890; cv=none; b=Pn2pEMnfl8lzDQ/SA1D6XgthdVX9rWOktSdxO4pBMmVSNOJU4wNzs9HtoXdsUk0vPpD4z8r1lobZFdYPk47JEjosyc6M+H+g+delGt2hWrvT2smpYzQLqK2BUmRagFczgsNfKfGuJXIAvdwiYeFmQ/OE+Cw/4wWYtRwdB94jkek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771977890; c=relaxed/simple;
	bh=Myv8Eg4qd8hYFHZFEYgoZT6YbrxhedjbG6iZlTRMA44=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=umH90zSbWBb/sIDh0TS8q4nCx93ET+Dj5zd/2KeVzhBAJm6al8Q2CogLf5KiiqGVcvxoOKvhDuYc5zYbRs9zqVmK9lkYhsbzLzRyjN2XRR0MZmkGILTF5t77hxNFPCDSZj0EpracpxghMS65aqrweNWN+NvBAwUwO3GdlNjEutI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=g46n92Sj; arc=none smtp.client-ip=198.175.65.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771977887; x=1803513887;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Myv8Eg4qd8hYFHZFEYgoZT6YbrxhedjbG6iZlTRMA44=;
  b=g46n92SjoioT7GyEKk1Qq3GjRHb48hdZKgr66xPVslwLNRXV3QbuOPPd
   /jJGmFXhhehjpwcIrWO5hnARZDz6PhPZ7R+/td3Wkx80lakAnggMpoB8U
   Os9pClRQuqnOuyjWE+KlNd2Fwp1MCgbSFqOHr1IyYZeVOHmBKZvpFOwwc
   lWQyajgGzApBH74tEA09tZbgKqJD4a/Mk7omU40I2w7pJGT5C2D7jQI4e
   /4nmJYf9DvhbQ/69tbtvRU5oi/F35XE5WEht0jvN/bixTrHrSXx63GoCX
   mQYAzzZtowZ5DsEYGbZWNEPaNNHuGV4QlQHVsTkW7hG7GHt1HQa9lZ89+
   g==;
X-CSE-ConnectionGUID: cHg5hp9iR+CCL6Rnufu6Iw==
X-CSE-MsgGUID: 43JAcmXeRGCQgfo49+VdTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="73186822"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; 
   d="scan'208";a="73186822"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 16:04:47 -0800
X-CSE-ConnectionGUID: eEHTq/9QSeCkUWjyx07BzQ==
X-CSE-MsgGUID: qVFCXw3SReiVsAGeUBCz+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; 
   d="scan'208";a="215946493"
Received: from lkp-server02.sh.intel.com (HELO a3936d6a266d) ([10.239.97.151])
  by orviesa009.jf.intel.com with ESMTP; 24 Feb 2026 16:04:45 -0800
Received: from kbuild by a3936d6a266d with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vv2OQ-000000002bh-1Kzk;
	Wed, 25 Feb 2026 00:04:42 +0000
Date: Wed, 25 Feb 2026 08:04:10 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, andy@kernel.org,
	nuno.sa@analog.com, dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/3] iio: imu: inv_icm42607: add new inv_icm42607 driver
Message-ID: <202602250851.I3vE5ldR-lkp@intel.com>
References: <20260224163109.370930-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260224163109.370930-3-macroalpha82@gmail.com>
X-Rspamd-Server: lfdr
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
	FREEMAIL_CC(0.00)[lists.linux.dev,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,vger.kernel.org,sntech.de,hotmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-268096-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,git-scm.com:url,intel.com:mid,intel.com:dkim,intel.com:email,01.org:url]
X-Rspamd-Queue-Id: B89CA18E44E
X-Rspamd-Action: no action

Hi Chris,

kernel test robot noticed the following build warnings:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on linus/master v7.0-rc1 next-20260224]
[cannot apply to jic23-iio/togreg]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Chris-Morgan/dt-bindings-iio-imu-icm42607-Add-devicetree-binding/20260225-003610
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20260224163109.370930-3-macroalpha82%40gmail.com
patch subject: [PATCH 2/3] iio: imu: inv_icm42607: add new inv_icm42607 driver
config: hexagon-allmodconfig (https://download.01.org/0day-ci/archive/20260225/202602250851.I3vE5ldR-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260225/202602250851.I3vE5ldR-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602250851.I3vE5ldR-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c:200:36: warning: unused variable 'inv_icm42607_motion_events' [-Wunused-const-variable]
     200 | static const struct iio_event_spec inv_icm42607_motion_events[] = {
         |                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +/inv_icm42607_motion_events +200 drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c

   199	
 > 200	static const struct iio_event_spec inv_icm42607_motion_events[] = {
   201		{
   202			.type = IIO_EV_TYPE_THRESH,
   203			.dir = IIO_EV_DIR_EITHER,
   204			.mask_separate = BIT(IIO_EV_INFO_ENABLE) | BIT(IIO_EV_INFO_VALUE),
   205		},
   206	};
   207	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

