Return-Path: <devicetree+bounces-312331-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7mrdAc74MGrpZgUAu9opvQ
	(envelope-from <devicetree+bounces-312331-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 09:18:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B9C68CC6E
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 09:18:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=kdVsy0+O;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312331-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312331-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2913E300C7EF
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 07:18:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64A02375F82;
	Tue, 16 Jun 2026 07:18:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5B037702A;
	Tue, 16 Jun 2026 07:18:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781594294; cv=none; b=L5xMoQlqxwuqR0/iZKImeW/gdnBCWnjivBqVqH3LddYBkx/z2w3RkDOTlMzrKvqAUyNw7zLMt/jPE0CzWWn64442wa4ve1+Ub1jQ5gj+WJDelGRzaJlQsjn9nLHiMlCaafl8ZgeRfZroPRiZXPDMuBaPQ0DtncSnLwHTwiwMnSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781594294; c=relaxed/simple;
	bh=htRrDwRMI7BFnk9AXL334KnIn2BLLC062bhjqfsj9W8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NAiBADBK0QB4PrQfITaWeGTuG67rijeQNOjLsCQ8hGf8PiVav1RfXURka89qDnVITBNenlvZjROrf4i0NwrOiAFHqv/sPVjCqgi5QSmg9iYvBFRIqMf6JbBFHq0pbNSDTGgyjt+lIQMF4E3VxtbGhCby8tINAGwPvRVMN7WVLq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=kdVsy0+O; arc=none smtp.client-ip=198.175.65.11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781594293; x=1813130293;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=htRrDwRMI7BFnk9AXL334KnIn2BLLC062bhjqfsj9W8=;
  b=kdVsy0+Oo+qZ100iAtcRO8A0JRK1VsuFeurdk0Ac9U9IOpkiFBD3GJpH
   Dce134yqWwl6wXAaJpQ/ZQaE0QgiIzayMFmPA4e+u7s9yruG4ZIaulCCT
   W8XviK98buSK39OwLLJbvrwUGBVxEw7LsAHKLz8NqW5MBSPEiJwC+LQNa
   NXNbq7L7g7dDzLTUplXTiWvGIsZyfwipj9iGBbNtxYpx1sj65B5KDDuEz
   iIbJVakFx/+X/AdI2vjnFkBQWs0QMbiUw8AutTHv0YLcWe480c6PO0zPV
   0olWGmwMGVe/kySm8ZPNKmOu4DmlLIkuzTu+/65nI153uh0gFF9ZERzc6
   w==;
X-CSE-ConnectionGUID: IObfcaR6RVOfvrgT7s66bA==
X-CSE-MsgGUID: GzrhwiVjSeKZz9qO2l+G0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="92668521"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; 
   d="scan'208";a="92668521"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 00:18:12 -0700
X-CSE-ConnectionGUID: ohjXJDAJQBSmGxLxtHRHWQ==
X-CSE-MsgGUID: najrIRwISSyv8t0/41PZgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; 
   d="scan'208";a="245300296"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.153])
  by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 00:18:08 -0700
Date: Tue, 16 Jun 2026 10:18:06 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Roman Vivchar <rva333@protonmail.com>
Cc: Lee Jones <lee@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH 3/4] mfd: mt6397-core: add mt6323 AUXADC support
Message-ID: <ajD4rp1EEe-xEMm5@ashevche-desk.local>
References: <20260602-mt6323-adc-v1-0-68ec737508ee@protonmail.com>
 <20260602-mt6323-adc-v1-3-68ec737508ee@protonmail.com>
 <20260611163748.GB1212816@google.com>
 <ycj3k-vV_tQv6u9OfCTP9G9kkeeE-_dbzg_oeHPXn2pb1oZe_Sa1BH6GUGuSd_gD6uPSJiTX7tz6MTlFcqGdWX-f3GMfyW2sLgAOCw6YeNE=@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ycj3k-vV_tQv6u9OfCTP9G9kkeeE-_dbzg_oeHPXn2pb1oZe_Sa1BH6GUGuSd_gD6uPSJiTX7tz6MTlFcqGdWX-f3GMfyW2sLgAOCw6YeNE=@protonmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312331-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rva333@protonmail.com,m:lee@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_TO(0.00)[protonmail.com];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,protonmail.ch];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,ashevche-desk.local:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F0B9C68CC6E

On Mon, Jun 15, 2026 at 11:10:20PM +0000, Roman Vivchar wrote:
> On Thursday, June 11th, 2026 at 7:37 PM, Lee Jones <lee@kernel.org> wrote:
> > On Tue, 02 Jun 2026, Roman Vivchar via B4 Relay wrote:

...

> > > +		.of_compatible = "mediatek,mt6323-auxadc",
> > 
> > [Severity: High]
> > Does adding this compatible string expose an unhandled edge case in the
> > auxadc driver?
> > 
> > If this device is instantiated directly from a Device Tree without an MFD
> > parent (e.g., at the DT root), dev->parent could be the platform bus
> > (which has a NULL parent) or NULL itself.
> > 
> > Looking at mt6323_auxadc_probe() in drivers/iio/adc/mt6323-auxadc.c:
> > 
> >     regmap = dev_get_regmap(dev->parent->parent, NULL);
> > 
> > Could blindly dereferencing dev->parent->parent here, or passing a NULL
> > device to dev_get_regmap() (which calls devres_find()), result in a
> > kernel oops if probed as a root node?
> 
> This is intended behavior, ADC always should be probed as a child of
> the mt6323 MFD because it doesn't have own MMIO space. Otherwise the
> devicetree is malformed. Recent mt6359 ADC driver has same thing with
> dev->parent->parent regmap.

I think Sashiko is overprotective here, but if changing, the whole lot of MFD
drivers should be changed (like Rafael recently has done for driver_override
issue in ACPI related drivers).

-- 
With Best Regards,
Andy Shevchenko



