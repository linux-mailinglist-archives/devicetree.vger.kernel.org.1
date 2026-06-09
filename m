Return-Path: <devicetree+bounces-309257-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w3vwDStSKGqGCAMAu9opvQ
	(envelope-from <devicetree+bounces-309257-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 19:49:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B58663103
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 19:49:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=TmpeLq+V;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309257-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-309257-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 82E18306EAFD
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 17:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A08149251F;
	Tue,  9 Jun 2026 17:34:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694A9363094;
	Tue,  9 Jun 2026 17:34:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781026496; cv=none; b=oV4IA327bN3Uk2zvVns7SGLBPPvtLiUKySooChTxkR7nbtd4zwQqT8Ks5WIBzQRX/JipM+hFuhJo139Wl1/jtB/T+GWgttyY/5UpbtRoGz1zZjkCjVzx9kTxCHbgh0cRXR5lErlsFl3q6EdkVoW+SXc9AE3TyNYBqd5TJMCj2l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781026496; c=relaxed/simple;
	bh=sbReIUiaLgxb6Ksg8BfX5zSTaPLJXS/tcofPivOqiQs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gdGrr2OG1qSGKR1EbSBo2ghQUludzoo40ouC7OvCNE1Gp0bAXrQwC2YbbJ4BgQ+pu42p2oAPwqXMVWMeB2+6RvtCHlVZBbhG13j1HYcnZqVRx9sULR7oMJR+x5G2cU5i5y00TMZtOUROPvxODCiEgPlZSFete1LD4c1trA9V23Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=TmpeLq+V; arc=none smtp.client-ip=192.198.163.17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781026495; x=1812562495;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=sbReIUiaLgxb6Ksg8BfX5zSTaPLJXS/tcofPivOqiQs=;
  b=TmpeLq+VfJPfDjelUUOWKX0EA2Etk+gNbd4cmO3SiSP6W62VUug9dn4X
   Hch3gXCnPN8VlzcDDYzsJ6DcskhuNUlBJj05JA1EREo1+Twwt/Kmv66pg
   xEvYH75ehMrNJkfikpVmyavJJ/jYdJ2wTyKcnHlxvUtP8E/c4fqfXHWAC
   64nmD9IYyg3sVr5UWUypbLvJZX8xUKUbgO7MNATb5oFHolfYdMswzwRwy
   42ya5zB1ijuHC7OqKM3fmsKavcewknbt0OXlx8J7TmeeS2z0sdkjDLLvc
   Ui5yNFnzmtO7/MgQQZcjPmgoebKNxhiVVV9qGZrLMWsR3PRYGTzvYIkDX
   g==;
X-CSE-ConnectionGUID: X1VeRAHwQe6k/ogM2myjiw==
X-CSE-MsgGUID: DTk/8jvEQpiVepSiMtzJLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="81650355"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; 
   d="scan'208";a="81650355"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2026 10:34:54 -0700
X-CSE-ConnectionGUID: 9+oKXLS/QAG5kualNduk9g==
X-CSE-MsgGUID: zxA4IbfmRDuqAbI/z/CmUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; 
   d="scan'208";a="245783109"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.162])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2026 10:34:51 -0700
Date: Tue, 9 Jun 2026 20:34:48 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: "Erim, Salih" <salih.erim@amd.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Conall O'Griofa <conall.ogriofa@amd.com>,
	Michal Simek <michal.simek@amd.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Salih Erim <erimsalih@gmail.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/5] iio: adc: add Versal SysMon driver
Message-ID: <aihOuBgg7hHjzNwk@ashevche-desk.local>
References: <20260606051707.535281-1-salih.erim@amd.com>
 <20260606051707.535281-3-salih.erim@amd.com>
 <aiUmb0WMPHi0D6GH@ashevche-desk.local>
 <cabc05f6-9a01-4827-b2a3-9267da1e6932@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cabc05f6-9a01-4827-b2a3-9267da1e6932@amd.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309257-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:jic23@kernel.org,m:andy@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:conall.ogriofa@amd.com,m:michal.simek@amd.com,m:linux@roeck-us.net,m:erimsalih@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,roeck-us.net,gmail.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,intel.com:dkim,intel.com:from_mime,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 34B58663103

On Sun, Jun 07, 2026 at 09:45:50PM +0100, Erim, Salih wrote:
> On 07/06/2026 09:06, Andy Shevchenko wrote:
> > On Sat, Jun 06, 2026 at 06:17:04AM +0100, Salih Erim wrote:

...

> > > +/**
> > > + * sysmon_core_probe() - Initialize Versal SysMon core
> > > + * @dev: Parent device
> > > + * @regmap: Register map for hardware access
> > > + *
> > > + * Return: 0 on success, negative errno on failure.
> > > + */
> > > +int sysmon_core_probe(struct device *dev, struct regmap *regmap)
> > 
> > I'm wondering if the @regmap is the same as you can get from @dev via
> > respective API.
> 
> Yes, dev_get_regmap(dev, NULL) would work since devm_regmap_init
> registers it with devres. However, the explicit parameter makes
> the dependency clear and avoids coupling core_probe to the devres
> registration order. Happy to change if you prefer dev_get_regmap().

Depends on the requirement. If regmap is mandatory and if it's required
to be present before calling this common probe function. However since
it's a library function for probe stage I'm okay with the parameter.

-- 
With Best Regards,
Andy Shevchenko



