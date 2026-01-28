Return-Path: <devicetree+bounces-260651-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DEuI2WLemkE7gEAu9opvQ
	(envelope-from <devicetree+bounces-260651-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 23:19:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A734A9816
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 23:19:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A88C301B70B
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 22:17:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D39E2342528;
	Wed, 28 Jan 2026 22:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="EUUxziLH"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B2333B6D8;
	Wed, 28 Jan 2026 22:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769638647; cv=none; b=OSv332Ae7gsq9KZCHu/yJXsHmjLKBFV2BCz1+t/ioQfwUz7cfBzEja9IFiTD/6zZb9TuugRlT3vj2wtP3NBOtblQF1z4eK6snZpMHMfT7bhlvbW+soG020lFprsnf6opmNd76QR1T/bC8HcUfrxoP3BRgLHXCH4WtCN/BQJFF0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769638647; c=relaxed/simple;
	bh=24QUwx8+zuFuOc95qstRWfmdWt5/LdmL7zps/Q9Zvac=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bM5q+u74bEjCyVCn9Pqkm4+QCHa17GUUJ93dI9CbQf3oO67/CTF2rTtBTeUx30aAsRw51WKHfWXH9DBhA4YPNYvn7mPOc6w5dUw17rosv/RUFy+YeCbb0vLe7MWFNN4SnpAD37MZOQle/oiZeIqdIwWc19+srqYlMPyspZQvxBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=EUUxziLH; arc=none smtp.client-ip=198.175.65.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769638646; x=1801174646;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=24QUwx8+zuFuOc95qstRWfmdWt5/LdmL7zps/Q9Zvac=;
  b=EUUxziLHkFwgJ1zwdIE4jK96EaJqfDMmtc4XF3+LmVGaDrQSntWLHy7L
   Bx+gQY21KRQGLDMAAxpaXtiXIYI7KtCQiS+cQmKrupGIP0g6tBj5uWx61
   yRP+njY+bf9PJDTm/4kAJX5L6la99AZpGJQHdlUmDv/o/LWc9EeAcw+6r
   clYydt7SFcSuPbkZgSFw9TGSMQY4A98d9MBV/Gv/2/oPRU2g941Na/8yX
   GV26qmM7yclOvYe6CVWi0hXFBl1XpOwJ1ts8gTWyTB37iUoaJipjCd/p8
   0p2OGYLa6dSwLLz28pwFyp4EAmiwfIVhSqFGA+MMg9pnJ+a5rzB1poGlI
   g==;
X-CSE-ConnectionGUID: QPO4MfytSzGBihHFYEXoig==
X-CSE-MsgGUID: cYobtw17QqqbbPlVoA/kLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="74488270"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; 
   d="scan'208";a="74488270"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2026 14:17:25 -0800
X-CSE-ConnectionGUID: tbdeqmatTDuKp3FX+IwO8A==
X-CSE-MsgGUID: kaCAgeGdREGV0M9u40/iDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; 
   d="scan'208";a="208410639"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.57])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2026 14:17:22 -0800
Date: Thu, 29 Jan 2026 00:17:19 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH v3 7/8] iio: dac: ds4424: convert to regmap
Message-ID: <aXqK73h9NIlBfHiu@smile.fi.intel.com>
References: <20260128153824.3679187-1-o.rempel@pengutronix.de>
 <20260128153824.3679187-8-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128153824.3679187-8-o.rempel@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260651-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smile.fi.intel.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim]
X-Rspamd-Queue-Id: 0A734A9816
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 04:38:23PM +0100, Oleksij Rempel wrote:
> Refactor the driver to use the regmap API.
> 
> Replace the driver-specific mutex and manual shadow buffers with the
> standard regmap infrastructure for locking and caching.
> 
> This ensures the cache is populated from hardware at probe, preventing
> state desynchronization (e.g. across suspend/resume).
> 
> Define access tables to validate the different register maps of DS44x2
> and DS44x4.

...

> changes v3:
> - Switch to REGCACHE_MAPLE to efficiently handle the sparse register map
>   (offset 0xF8) and avoid allocating memory for the unused 0x00-0xF7 range.

> - Use explicit regmap_bulk_read() in probe to seed the cache with the
>   bootloader configuration. This avoids the invalid read from address 0x00
>   that occurred with generic cache defaults.

Isn't regmap has an option to do it for you?
(I'm talking about num_reg_defaults_raw without setting reg_defaults_raw)

> - Remove ds4424_verify_chip(); devm_regmap_init_i2c() and the subsequent
>   bulk read implicitly validate the device presence.
> - Use regmap_bulk_write() in ds4424_suspend() to efficiently zero all
>   channels.
> - Adopt fsleep() for delays and include <linux/array_size.h>.
> - Use dev_err_ratelimited() with the physical device context in the read
>   path (incorporating feedback aimed at v2 patch 8).

...

> -	usleep_range(1000, 1200);
> +	fsleep(1000);

Seems like undescribed / unrelated change.
Also needs a comment to explain the delay.

-- 
With Best Regards,
Andy Shevchenko



