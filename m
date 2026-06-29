Return-Path: <devicetree+bounces-316658-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xKsXGzYLQmpCzQkAu9opvQ
	(envelope-from <devicetree+bounces-316658-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 08:05:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C646D622F
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 08:05:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=P9MxmW6d;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316658-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-316658-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 534E5301302A
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 06:05:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A426935B639;
	Mon, 29 Jun 2026 06:05:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2897D1367;
	Mon, 29 Jun 2026 06:05:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782713136; cv=none; b=rM3xk1YBe6PuixQUOGDxARgP2QTVDM4wslsRpg4Y2EIbzJShsgXWNQ+k4i5d4BzT3M7PT40RXTVx50wTvZP0la1YaYA3dIViHWICq1ppPbf3EC5Iqr6++gxTWPrs4nwcNDlu5PuXwwhvkKUvWR7xYePijEIbJdZR/b5+A+jtvaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782713136; c=relaxed/simple;
	bh=iY967g1ZEXuRDMEeq8Z98MT4WkdJAVc0EMew914JPwE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cy3Y4yaojnCxSK4YvQdM948kEVHHSMRtqNb7RcQnsERQ0RUz9AcmN/MYHxdQdxkU+7c9zxPtTDR8pCgyv0cvzgo/LehpddYDf25LwvRF/6oiedbklxO5SGba3289vitpUNi5uVY1PcKZKwkL94DckiuovplRSMivaScJCgdIOKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=P9MxmW6d; arc=none smtp.client-ip=192.198.163.15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782713135; x=1814249135;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=iY967g1ZEXuRDMEeq8Z98MT4WkdJAVc0EMew914JPwE=;
  b=P9MxmW6dLV4eJc3E8uf5q7Us5e9C4MmxEncMfuhUrVbhP3xZxBmYYMX1
   7GYAhmVD/i5lekgpUdQpg1q5sBfqaj9bwqWjHyBBR5tlVasHIWMA/f4Zn
   1emzCrId0XdooeQ797cfDFCU+KlfEfqvOZ5I5WUDXJ3x3ODebVFGKapyB
   E/RHdvC6kAgi41HnE+iQ33UmHlYb+FkbEUQNk39poazZtTa3mR6szls0Q
   SgpR3F2T+JbfYUlBH2gYp3uvx0Ky1WHBM2UbKxPy4m0Z1dt+xmC/GScF4
   loHdMEv+EX6z46K6ucnTieYfeBo9Qfhmmk4l5A/TVzs2ERLhYRiQain/J
   g==;
X-CSE-ConnectionGUID: FcQH+UZpRKGPgIxLfYJRng==
X-CSE-MsgGUID: 1OlsZtXJTByaSZPtkJFnIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="83533033"
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; 
   d="scan'208";a="83533033"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jun 2026 23:05:33 -0700
X-CSE-ConnectionGUID: X2Y08qLLQWiV8H/vMCy++g==
X-CSE-MsgGUID: r9Evo2xCRPm5B0mtFMWtOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; 
   d="scan'208";a="252000444"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.207])
  by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jun 2026 23:05:30 -0700
Date: Mon, 29 Jun 2026 09:05:27 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Petar Stepanovic <pstepanovic@axiado.com>
Cc: David Lechner <dlechner@baylibre.com>, Akhila Kavi <akavi@axiado.com>,
	Prasad Bolisetty <pbolisetty@axiado.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Harshit Shah <hshah@axiado.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] iio: adc: add Axiado SARADC driver
Message-ID: <akILJ0zG-g8rMzts@ashevche-desk.local>
References: <20260622-axiado-ax3000-ax3005-saradc-v3-0-e57c7c7ae675@axiado.com>
 <20260622-axiado-ax3000-ax3005-saradc-v3-2-e57c7c7ae675@axiado.com>
 <6770a7af-06cc-4240-9b20-c299e7080ab1@baylibre.com>
 <b06005e0-b7bc-4967-ac7b-cb170219f131@axiado.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b06005e0-b7bc-4967-ac7b-cb170219f131@axiado.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316658-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pstepanovic@axiado.com,m:dlechner@baylibre.com,m:akavi@axiado.com,m:pbolisetty@axiado.com,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hshah@axiado.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,vger.kernel.org:from_smtp,intel.com:dkim,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 54C646D622F

On Mon, Jun 29, 2026 at 04:33:00AM +0200, Petar Stepanovic wrote:

...

> >> +static const struct iio_chan_spec axiado_saradc_iio_channels[] = {
> >> +     AX_SARADC_CH(0, "adc0"),   AX_SARADC_CH(1, "adc1"),
> >> +     AX_SARADC_CH(2, "adc2"),   AX_SARADC_CH(3, "adc3"),
> >> +     AX_SARADC_CH(4, "adc4"),   AX_SARADC_CH(5, "adc5"),
> >> +     AX_SARADC_CH(6, "adc6"),   AX_SARADC_CH(7, "adc7"),
> >> +     AX_SARADC_CH(8, "adc8"),   AX_SARADC_CH(9, "adc9"),
> >> +     AX_SARADC_CH(10, "adc10"), AX_SARADC_CH(11, "adc11"),
> >> +     AX_SARADC_CH(12, "adc12"), AX_SARADC_CH(13, "adc13"),
> >> +     AX_SARADC_CH(14, "adc14"), AX_SARADC_CH(15, "adc15"),
> > Two columns looks a bit odd.
> 
> I will also reformat the channel table to one entry per line.

I think with a new approach David proposed, 4 per line will be also acceptable.

> >> +};

...

> >> +static void axiado_saradc_disable(void *data)
> >> +{
> >> +     struct axiado_saradc *info = data;
> >> +
> >> +     writel(AX_SARADC_GLOBAL_CTRL_PD, info->regs + AX_SARADC_GLOBAL_CTRL_REG);
> > People usual make read and write wrappers or use regmap to avoid having
> > to write `info->regs + AX_SARADC_GLOBAL_CTRL_REG` so many times.
> 
> My understanding is that simple read/write wrappers are not always
> preferred unless they provide additional value. Would switching the
> driver to regmap be acceptable here to avoid repeating the base address
> calculation?

This is the value of transition --> having that register base to be hidden and
not repeated all the times.

-- 
With Best Regards,
Andy Shevchenko



