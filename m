Return-Path: <devicetree+bounces-259794-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEytKAeIeGk/qwEAu9opvQ
	(envelope-from <devicetree+bounces-259794-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:40:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF52C91DB9
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:40:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4BDE73034664
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:35:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3079C2E0901;
	Tue, 27 Jan 2026 09:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="FN3hgyMA"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B5F2DB7A9;
	Tue, 27 Jan 2026 09:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769506541; cv=none; b=R2uysreuP4pdk4Qd5TEsVWMw5zuGjHFsvLgwkTDZ8dHBKoSiYxHWD6kIV+NdmncHIjiMYzEAQ6wZAQVvu8y0gy7kFAYCSm0mhQcyMAoClPBJCLAU0u8Gb2gPp+hTxoKnBfqvrGX27hpcMKJfRk8Ynvb22OtIZQiyHaIahhifvlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769506541; c=relaxed/simple;
	bh=u9fgX4gOpXlnZ/mXQcZ3TbVrsG5fbHhYBvVFFPW/45E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PMB020RHRK4trJ2fhbZmLUjFJL+koaIFiPKdpBw4/e/NTy1H8mR47teGFi0hXBzWbZJ22twOSF8/TN1DHASwmL8/t/W/ZGOmdEKNEEPbrnvbk+tXh2RMpTR0+5F5zXU+QvTFMrDlRMa6x6XvQQzLtLCxZTMaQaQub9pVQ6NLGuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=FN3hgyMA; arc=none smtp.client-ip=198.175.65.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769506539; x=1801042539;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=u9fgX4gOpXlnZ/mXQcZ3TbVrsG5fbHhYBvVFFPW/45E=;
  b=FN3hgyMAg41lqIcOEI6H8q8tx+45cEsU8TLJw9oqmK8jqxWX/QDaDdq6
   bC0sW/l9mcfYC3nVDdtRtMhRy21ZOHvZ/caAL9yAm7ge+fOY+WGbhGtlY
   w8qmbLb50LJ5nwL3vGNVxGfED0acdXfEBTlhqkXPuERTe2KBaYMCXnHeh
   gJZ0A2rySdXoFvTmsPdL1fV/RoWDHXJG+azZahkDTawkfVtgwTasxE1n5
   ykRnUwdxfCZSF8+Ni2UhkfkJOyxV0WDm0Kj2tPUeNBU626adtbEKFfh9X
   YxtTeYBNLG/c9cCYtGDizjY08boBqhlOOaAbTReDo5WhN9qWyzTT3/0jt
   g==;
X-CSE-ConnectionGUID: hCm8CRQdRkWQVD2Bi/7XzQ==
X-CSE-MsgGUID: hO7Wxa0OQs+9VBgXk5nsrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70591253"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; 
   d="scan'208";a="70591253"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 01:35:39 -0800
X-CSE-ConnectionGUID: YSXB+yfTQSuClfxtWBR2zA==
X-CSE-MsgGUID: dA66sZBFQn2pvXbzeSQpag==
X-ExtLoop1: 1
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.248])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 01:35:36 -0800
Date: Tue, 27 Jan 2026 11:35:34 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: abdurrahman@nexthop.ai
Cc: Michal Simek <michal.simek@amd.com>, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, info@mocean-labs.com,
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 3/6] i2c: xiic: switch to devres managed APIs
Message-ID: <aXiG5p9BQ-vkAgbV@smile.fi.intel.com>
References: <20260126-i2c-xiic-v5-0-88a16a28721c@nexthop.ai>
 <20260126-i2c-xiic-v5-3-88a16a28721c@nexthop.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126-i2c-xiic-v5-3-88a16a28721c@nexthop.ai>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259794-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smile.fi.intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: EF52C91DB9
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 05:08:18PM +0000, Abdurrahman Hussain via B4 Relay wrote:

> Simplify the error code paths by switching to devres managed helper
> functions.

Thanks for the update, my comments below.

...

> +	ret = devm_mutex_init(dev, &i2c->lock);
> +	if (ret < 0)

Why ' < 0'?

> +		return ret;

...

> +	ret = devm_pm_runtime_set_active_enabled(dev);
> +	if (ret < 0)

Ditto.

> +		return ret;

...

>  	if (ret < 0) {
>  		dev_err_probe(&pdev->dev, ret, "Cannot claim IRQ\n");
> -		goto err_pm_disable;
> +		return ret;

		return dev_err_probe(...);

>  	}

...

>  	ret = xiic_reinit(i2c);
>  	if (ret < 0) {
>  		dev_err_probe(&pdev->dev, ret, "Cannot xiic_reinit\n");

Ditto.

> -		goto err_pm_disable;
> +		return ret;
>  	}

...

>  	dev_dbg(&pdev->dev, "mmio %08lx irq %d scl clock frequency %d\n",
>  		(unsigned long)res->start, irq, i2c->i2c_clk);

Side note, consider using %pR instead of ugly casting for resources.
(separate change).

-- 
With Best Regards,
Andy Shevchenko



