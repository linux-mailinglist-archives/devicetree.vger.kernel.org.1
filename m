Return-Path: <devicetree+bounces-305947-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AyDEE7PCH2o8pgAAu9opvQ
	(envelope-from <devicetree+bounces-305947-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 07:59:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C0263474F
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 07:59:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GiaGluYI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305947-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-305947-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8FCE6301A71B
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 05:51:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDB523EFFDB;
	Wed,  3 Jun 2026 05:51:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE975367B99;
	Wed,  3 Jun 2026 05:51:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780465891; cv=none; b=BUZzToKdCL+L2rFdMMwRlL7hOQeBZDtpczGQw3hgFgmKFQvLpqgiXFUxQ+/iCqe+L1ryRDIr7BvDhBEBNidL/RXGIXX2mfhWAMZ9V9Dm0TV0JlURcyZNW0JqQTHPirfYbkT4LQdJyvucdWYP5FhN4/7N8tA9eVzCaTSxF+DD8pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780465891; c=relaxed/simple;
	bh=U/sFUr+evDyY5P6S9Fd2jS9cFVU/nDx264kKOJ8IN08=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qLcaAsbJB46FuRNjthp8KM8Hyk32kZsHmSTwSq8nRvVdT31X2qqx83Vc1EbPGyh8BWilwIDLTrOiE4qzg/cVqKtXBwCdvfVEeEXEOeZSUw+2/LnRieAbTSARajobrp4lYI0VA4ixNdc9cojgND/pbmWblO54mQNC+9S4b0dpqvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=GiaGluYI; arc=none smtp.client-ip=192.198.163.15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780465890; x=1812001890;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=U/sFUr+evDyY5P6S9Fd2jS9cFVU/nDx264kKOJ8IN08=;
  b=GiaGluYIjjwo2oWWLIY6GcgMB8AB8JxsKFvCOs038wOyO4XbREhvmKFi
   BPr53mFEDL2Jj38LHs02pibj6cDH/qfXIVXjigNnlweacOl6M/JH6eOgl
   z+4dX19GdXO0doWK7ZBHSTZSNfqBJY87JylQTbv9DClzFRyjjc45NQatl
   u4aruE0HBJugpu6DGEfNNeyS1btiyzp7HmAUAF+hkDGgxHB+n/sk1R8vq
   XTsRUr1XAjNCSKof7cup2VzK4ktFSJFqV5zGMCnx5d4UoPGFvk2TSBc2w
   FVou2wE0ALPIxObt9t1mRpsnlTmZoP9gu9GeGkYjXzx2LT4tuTvKyMqof
   A==;
X-CSE-ConnectionGUID: 3d7k4eDAQj+AgDfqPtyt+Q==
X-CSE-MsgGUID: mwv6LgkeTrWbJTS4/2u+IA==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81389795"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; 
   d="scan'208";a="81389795"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 22:51:22 -0700
X-CSE-ConnectionGUID: WH3kdDGERByF5mzs+Oj+Mg==
X-CSE-MsgGUID: 6jqZ1pqTQt2aNAKf7ZYlLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; 
   d="scan'208";a="241134290"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.116])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 22:51:17 -0700
Date: Wed, 3 Jun 2026 08:51:15 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Sanjay Chitroda <sanjayembeddedse@gmail.com>
Cc: rva333@protonmail.com,
	Roman Vivchar via B4 Relay <devnull+rva333.protonmail.com@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Lee Jones <lee@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH 2/4] iio: adc: mt6323-auxadc: add mt6323 PMIC AUXADC
 driver
Message-ID: <ah_A0yDhmZnanzn5@ashevche-desk.local>
References: <20260602-mt6323-adc-v1-0-68ec737508ee@protonmail.com>
 <20260602-mt6323-adc-v1-2-68ec737508ee@protonmail.com>
 <1F6728A6-BD73-4159-AAC9-82370212EF04@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1F6728A6-BD73-4159-AAC9-82370212EF04@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-305947-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sanjayembeddedse@gmail.com,m:rva333@protonmail.com,m:devnull+rva333.protonmail.com@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:lee@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:devnull@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[protonmail.com,kernel.org,baylibre.com,analog.com,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,protonmail.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,rva333.protonmail.com,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ashevche-desk.local:mid,vger.kernel.org:from_smtp,intel.com:from_mime,intel.com:dkim,protonmail.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 08C0263474F

On Wed, Jun 03, 2026 at 06:41:43AM +0530, Sanjay Chitroda wrote:
> On 2 June 2026 6:16:55 pm IST, Roman Vivchar via B4 Relay <devnull+rva333.protonmail.com@kernel.org> wrote:

...

> >+MEDIATEK MT6323 PMIC AUXADC DRIVER
> >+M:	Roman Vivchar <rva333@protonmail.com>
> >+L:	linux-iio@vger.kernel.org
> 
> No need to add explicit iio list for driver.
> Top level entry covers this driver.

While that's true, if person wants to commit to maintain the code, it is always
being appreciated.

> >+L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)

This line might be questionable (or at least needs an Ack from MediaTek
maintainers / senior developers.

> >+S:	Maintained
> >+F:	drivers/iio/adc/mt6323-auxadc.c
> >+F:	include/dt-bindings/iio/adc/mediatek,mt6323-auxadc.h

-- 
With Best Regards,
Andy Shevchenko



