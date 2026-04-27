Return-Path: <devicetree+bounces-290595-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNowFE5w72mHBQEAu9opvQ
	(envelope-from <devicetree+bounces-290595-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 16:18:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BBA474325
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 16:18:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 582253056EDF
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 14:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA2F23D1711;
	Mon, 27 Apr 2026 14:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="cvufYrk2"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CD73D349E;
	Mon, 27 Apr 2026 14:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777299250; cv=none; b=ZJrbC+7VkNFwGbFHQPC2bC9KFPSHwXDRP/IgW1vstCzgFS332EbhONhcxrZv4hrqH2w2lHZiRaYHWXVYnuoZw6EU3P2un4GDlk/NXpONj0Um3JNAV5q4eO+LQi8CuRAAGPjZDIhdUt1XwZ3uI0xJYga0VpID4ebbAfm8X6u41Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777299250; c=relaxed/simple;
	bh=1BJomOx+rEGcBLIKzl5QlP1e2eXraYalEuBN2hz9NF0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dyM+9wr0iIE16WxUwht9QZ7kvoaxwXm3hnbW8gw8YBfXTGzLKSr9srn06FGDZO1VU0H5m64o59HXTjjFSh6009HisBE+P/gcQgehEBKirigOM1f/RZYGFTKcPXLgBFh0Fx3kJvz5FsZa0BTYkANqRVsmO0bICJbQylKHeDI478g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=cvufYrk2; arc=none smtp.client-ip=192.198.163.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777299249; x=1808835249;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=1BJomOx+rEGcBLIKzl5QlP1e2eXraYalEuBN2hz9NF0=;
  b=cvufYrk2ADD9DPlpH7/8EqmT3MvMbehm4HD0pwyy8yQWyuLESkQ1M0l+
   oygBpzUb7IgFHxppvVnMU6SkSa8DSfPQ6L8bUzM2nxKcb5QhTBBmeHBcU
   k9nllX7+dV0VluXacEnDGaS95nda1vPBlkgQljD7O75u0CKLNPLuLx149
   w7axMllxQFm6KsQ4U+q4cMK31vrZHuPRiM6WUAfxg/D6T9/DpuKbhwAms
   +YQSKgQwXlzyqhatXVSkCa8DVfOi0NPq3DxsOuSiaxtb9mb0TU1fWbdOK
   2g6SWdLbSfLvEnYk/yFVPcHY6VKZXjOZ6MOca4NecOO1+0KWmCJNppMfE
   Q==;
X-CSE-ConnectionGUID: z7j6lM8ERzSVq76zvHOf/A==
X-CSE-MsgGUID: N2fOWkJwRwOmoS95HtDBkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="95749409"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; 
   d="scan'208";a="95749409"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 07:14:08 -0700
X-CSE-ConnectionGUID: II3et7/pRveqtETa6dbDAQ==
X-CSE-MsgGUID: 5KJeUa6XSqG75gycdWRrZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; 
   d="scan'208";a="264063504"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.244.2])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 07:14:06 -0700
Date: Mon, 27 Apr 2026 17:14:03 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: ak@it-klinger.de, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/7] iio: adc: hx711: introduce hx711_chip_info
 per-variant structure
Message-ID: <ae9vKxTrqe90OsCN@ashevche-desk.local>
References: <20260427100950.33936-1-piyushpatle228@gmail.com>
 <20260427100950.33936-5-piyushpatle228@gmail.com>
 <ae9t0WuhKgcPkfIt@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ae9t0WuhKgcPkfIt@ashevche-desk.local>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: C3BBA474325
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290595-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ashevche-desk.local:mid]

On Mon, Apr 27, 2026 at 05:08:17PM +0300, Andy Shevchenko wrote:
> On Mon, Apr 27, 2026 at 03:39:35PM +0530, Piyush Patle wrote:

...

> > +	chip_info = device_get_match_data(dev);
> > +	if (!chip_info)
> > +		return dev_err_probe(dev, -ENODEV, "missing match data\n");
> 
> Since we are here, it's not match data, it's driver data. "missing driver data".

And does it need property.h to be included?

Also check if dev_printk.h and errno.h are there (it may be that driver already
uses device.h and err.h that cover these two).

-- 
With Best Regards,
Andy Shevchenko



