Return-Path: <devicetree+bounces-265019-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qP3AL9KxjWmz5wAAu9opvQ
	(envelope-from <devicetree+bounces-265019-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:56:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 414F612CBF1
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:56:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D84FB3004F13
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B084318B9C;
	Thu, 12 Feb 2026 10:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="OD+V5BVF"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B209A3EBF24;
	Thu, 12 Feb 2026 10:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770893766; cv=none; b=rpkPOZjAaWJRyEqkmd4HFya/yFU/yJ6HcadAYVqC7XCc5Vbh3LVtOvz0dWNAhkjw4HLRNoXL0Pml8gYoGAD3jszZcuPtBu4GtxZE7scGsrZ+FDPIccpjg4pybIFaf/5NUD8gXPvlZgeov8uFBbPomQdbe0nzyPvDg+Ta9Hy8Byw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770893766; c=relaxed/simple;
	bh=oRcuOTKeQkYXu57P3k/BhhMMXmjpgkGU5VCaMNMOQbo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s8EXt1+Tydd8wQDg2N1G1ccTIbPkO4Vwi28HDqODA4MP7X5zJhn6WZ2HIKbnk3610kPe+/Wi/CyQ0h6NlGCZt6V1qe6+sBfVOrUaHVcPo1w4tV4jKl2rR8s2s7l6Gy59OfRphQsafNXLll67VpQMJvs8FdGXN3II3hhe1LnDi2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=OD+V5BVF; arc=none smtp.client-ip=192.198.163.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770893764; x=1802429764;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=oRcuOTKeQkYXu57P3k/BhhMMXmjpgkGU5VCaMNMOQbo=;
  b=OD+V5BVFd900D+/fgk0VmPJSTxy0CPqZMGeDKwSvnNmb0NY1q7ODeEdx
   kA03uesfyOPOPEI/lLzcWO57/1SlqicYxZnoeOuprwzExEnqPmPyiKAoE
   A/BIvxIuYt6xjo5LVCHXNGqEDlXa9znafsmYkoWcAajCqU4byUl66a9l5
   3VKe700qtCn6YCR9pLQx/yZKRQO1UQrA51IlMiRMUrQUWtDvJn5MLsaut
   ii5jdgowqxRpN2deTAILBMEVZ/U3DXpqbZw1dj5P6YKYt27yCa+SVQ9v9
   3CWq+jiOEeS5fmOdscggt7+nRJKlIaRnXYZpfezBW6jt9ad4TYIHEMRaW
   g==;
X-CSE-ConnectionGUID: TtitChpeTkyDc2QarRMppw==
X-CSE-MsgGUID: 6b1mHOM3RtyItrE4il72KA==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="72135506"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; 
   d="scan'208";a="72135506"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2026 02:56:03 -0800
X-CSE-ConnectionGUID: VXeGqzVtTr+kHe+DLg9TGQ==
X-CSE-MsgGUID: GisKOH0TQjKYdJ6196KQLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; 
   d="scan'208";a="212394950"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.145])
  by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2026 02:56:00 -0800
Date: Thu, 12 Feb 2026 12:55:57 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Yasin Lee <yasin.lee.x@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/4] iio: proximity: hx9023s: Protect against division
 by zero in set_samp_freq
Message-ID: <aY2xveYRXEKIBV92@smile.fi.intel.com>
References: <20260212-upstream-20260219-v2-0-2b28fce5d09e@gmail.com>
 <20260212-upstream-20260219-v2-2-2b28fce5d09e@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260212-upstream-20260219-v2-2-2b28fce5d09e@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-265019-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,outlook.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smile.fi.intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 414F612CBF1
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 02:26:53PM +0800, Yasin Lee wrote:
> Avoid division by zero when sampling frequency is unspecified by
> falling back to a default 100ms sampling period.

...

> -	period_ms = div_u64(NANO, (val * MEGA + val2));
> +	if (val || val2)
> +		period_ms = div_u64(NANO, (val * MEGA + val2));

While at it, drop unneeded parentheses.

> +	else
> +		/* Fallback to a safe default sampling period */
> +		period_ms = 100;

Not sure about this. Perhaps we should rather do

	if (!val || !val2)
		return -EINVAL;

?

-- 
With Best Regards,
Andy Shevchenko



