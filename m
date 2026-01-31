Return-Path: <devicetree+bounces-261413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oB6COD7VfWniTwIAu9opvQ
	(envelope-from <devicetree+bounces-261413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 11:11:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C111C17BB
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 11:11:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E17B93007F74
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 10:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C8F7330B26;
	Sat, 31 Jan 2026 10:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="HqgMgZ1l"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E6E3033C7;
	Sat, 31 Jan 2026 10:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769854266; cv=none; b=mQsEux34OBiJzM34K+blMTeAxgxR9YCJPjcPi1WQY1WZpKj9xcZXV8K7BWIRAdiWZ7hcgfYuuvMMAEpc0Rc+WGVH2II01FOAgvebJv4TE9bBttDcyhbOPbpE3SOsOE2sYW3gSNQHNg9JXcYmoyOFd94CHCHx4ZldcRPC1yBLQ8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769854266; c=relaxed/simple;
	bh=lPSRkXhyYoo04lDTt8FQmASYC0hGPW1luf8G308sWzw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gou/y10vg6QgStXUpPKDNT97M9BtaMf+yfMGJi/AaLRLWNUeAWi+sqtkaFUtjM3E3wCQQ6Bv1lBrlByM8/Vpgdu+wz+HbbM8tm0BbHT9HMB5oDoPiDed5K7Y4did6snQNelfW/XJJJYe/5J+6FV4oB+jLdqHYYVkV5VpAfwzBlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=HqgMgZ1l; arc=none smtp.client-ip=192.198.163.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769854265; x=1801390265;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=lPSRkXhyYoo04lDTt8FQmASYC0hGPW1luf8G308sWzw=;
  b=HqgMgZ1lynKDvN/9ZGlWR/ynpBaT/AV0jYhZw56yRBhkQTxRgCs8zY1W
   BVeq78jR09HLrOefiCLjrgn1qYC+5/n7XthtWwF0kGyc/Trxe842PmNp4
   jyZqdrvwr+7lID3U7g0ENbU642qTF6lbvukgkxZoJYuefJ5aAc1SRqF/H
   cEHHqmwCBfz2Snc5mDbeWS7coWh85NSSe1bGKR14YkSBU8KCIBTzlpcwn
   yuX7lYVJadgj1NQhPnIE2SnjgFzdmV3dCEfuxnhg7zdm5dc12YziFyuLq
   mEs2ajXonVy2uqDOPTAy+dZFZ2bYkUQb6U5+75ZtKd8xg3k7Nz6IK3cdN
   A==;
X-CSE-ConnectionGUID: gfex78HPRqOh2LxVCbJ7pA==
X-CSE-MsgGUID: C8HKm+TaRnGFyZIvP3k13w==
X-IronPort-AV: E=McAfee;i="6800,10657,11687"; a="70294400"
X-IronPort-AV: E=Sophos;i="6.21,264,1763452800"; 
   d="scan'208";a="70294400"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Jan 2026 02:11:04 -0800
X-CSE-ConnectionGUID: QUVF/r1ERrun+lwgjxqIHA==
X-CSE-MsgGUID: iyQ3i+59RI22i3wYlCRjBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,264,1763452800"; 
   d="scan'208";a="213564339"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.97])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Jan 2026 02:11:02 -0800
Date: Sat, 31 Jan 2026 12:10:58 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: abdurrahman@nexthop.ai
Cc: Michal Simek <michal.simek@amd.com>, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v7 1/6] i2c: xiic: skip input clock setup on non-OF
 systems
Message-ID: <aX3VMloJdfsrLh9i@smile.fi.intel.com>
References: <20260129-i2c-xiic-v7-0-727e434897ef@nexthop.ai>
 <20260129-i2c-xiic-v7-1-727e434897ef@nexthop.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260129-i2c-xiic-v7-1-727e434897ef@nexthop.ai>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261413-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: 3C111C17BB
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 09:43:13PM +0000, Abdurrahman Hussain via B4 Relay wrote:

> The xiic driver supports operation without explicit clock configuration
> when clocks cannot be specified via firmware, such as on ACPI-based
> systems. This behavior is implemented in xiic_setclk(), which returns
> early when either i2c_clk or input_clk are zero.

...

> -	i2c->clk = devm_clk_get_enabled(&pdev->dev, NULL);
> -	if (IS_ERR(i2c->clk))
> -		return dev_err_probe(&pdev->dev, PTR_ERR(i2c->clk),
> -				     "failed to enable input clock.\n");
> +	if (is_of_node(dev->fwnode)) {

Avoid dereferencing fwnode. Use dev_fwnode() API.

> +		i2c->clk = devm_clk_get_enabled(dev, NULL);
> +		if (IS_ERR(i2c->clk))
> +			return dev_err_probe(&pdev->dev, PTR_ERR(i2c->clk),
> +					"failed to enable input clock.\n");
> +	}

-- 
With Best Regards,
Andy Shevchenko



