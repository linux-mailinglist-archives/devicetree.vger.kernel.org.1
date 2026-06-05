Return-Path: <devicetree+bounces-307504-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8DazJM4PI2rQhQEAu9opvQ
	(envelope-from <devicetree+bounces-307504-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 20:05:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A1564A6D7
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 20:05:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="c7gO/Dt9";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307504-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307504-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC13D3011122
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 18:02:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C06639A05E;
	Fri,  5 Jun 2026 18:02:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457B13955DC;
	Fri,  5 Jun 2026 18:02:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780682544; cv=none; b=G+ipzHomkIC7+6PCEO3FKRNCOauQNgxf5tn4QyPfsMAVfUmm8EIVUA9rC3qv7vT9Q7xeY+qHMd8vIEPgP3ykGYfyeMadUeLm3OGGvPMuaCpgkneEvmAgL7ToQGVKXINuT8fO77N+g95/unJPB41vY2cMOEkueU1P/g5nz/9c3yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780682544; c=relaxed/simple;
	bh=C8o+Feus096h0Uz102T1DCDSL3wzEZgY/+zUm2CvINc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iPSjdjbbXEMV4Ib7K5MQ87vaUivSDCYSF5XZm0+mJxXW2gaUfqyhiVcMXJxRhlduos3/dRuiRcI8M/2mSZEwYO1PmxeNKtx2f5Ci0RKBCNtQ+Fc27YH/4WJ7jR1zJkCohKSdAOPVam+2UDLMgcwCmJJH+NK3RiGC7zmoAEu/4ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=c7gO/Dt9; arc=none smtp.client-ip=198.175.65.11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780682543; x=1812218543;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=C8o+Feus096h0Uz102T1DCDSL3wzEZgY/+zUm2CvINc=;
  b=c7gO/Dt9cyGDvBUNC+no4CbD3WpyQ64vGPkvuASf/mdamMaN4h5AQARX
   ZeeKNgcLh9J14TszOL2qTG6x/GdoEKss1s/0HlpE8bNn8EvD42ujGr7Q7
   hGwVBKKYrpY4+ay10rrjYSw764E1VoBGgqjpzJzMlZVS+Mc7HosvgoAKA
   nYi4uMd0FZzxTuLnF14P0V+cw2NjH8yE4vv1vzYtncUohj660SdJZCaHb
   JN9ml4LRMUs9rV1gqbtCqgWusph5FLK/wrcDUxKt9sDqMac/FEuzm45Z5
   OlstRcJuVZ0l9YKzT+IaCqe6OH53Gl302/lrLDHbTpttX5xe7pcOLWDKT
   w==;
X-CSE-ConnectionGUID: 3jUTfQg1Rsalf+TAOX8Fgw==
X-CSE-MsgGUID: n77aAdOITRisyJiGhCXWZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="91834723"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; 
   d="scan'208";a="91834723"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jun 2026 11:02:22 -0700
X-CSE-ConnectionGUID: 82ostdTaTBWKpezxDiFWOA==
X-CSE-MsgGUID: 9LFON0bcQHuG2jIdBXDWQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; 
   d="scan'208";a="249242284"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.245.178])
  by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jun 2026 11:02:18 -0700
Date: Fri, 5 Jun 2026 21:02:15 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Javier Carrasco <javier.carrasco.cruz@gmail.com>,
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Rishi Gupta <gupt21@gmail.com>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] iio: light: add support for veml6031x00 ALS series
Message-ID: <aiMPJ9Qqcg7XTJt0@ashevche-desk.local>
References: <20260524-veml6031x00-v3-0-29165609b2b5@gmail.com>
 <20260524-veml6031x00-v3-2-29165609b2b5@gmail.com>
 <20260526185933.0084679f@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260526185933.0084679f@jic23-huawei>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307504-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:javier.carrasco.cruz@gmail.com,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:gupt21@gmail.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:mazziesaccount@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:javiercarrascocruz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[gmail.com,metafoo.de,kernel.org,baylibre.com,analog.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,vger.kernel.org:from_smtp,intel.com:from_mime,intel.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E9A1564A6D7

On Tue, May 26, 2026 at 06:59:33PM +0100, Jonathan Cameron wrote:
> On Sun, 24 May 2026 23:53:56 +0200
> Javier Carrasco <javier.carrasco.cruz@gmail.com> wrote:

...

> > +#include <linux/bitfield.h>
> > +#include <linux/i2c.h>
> > +#include <linux/module.h>
> 
> mod_devicetable.h is missing. Please check again for others.

Yep. Please, follow IWYU principle.

> > +#include <linux/pm_runtime.h>
> > +#include <linux/regmap.h>
> > +#include <linux/units.h>

Also add a blank line here to group out the linux/iio/*.

> > +#include <linux/iio/iio.h>
> > +#include <linux/iio/sysfs.h>
> This isn't needed yet - bring it in when it is.
> 
> > +#include <linux/iio/iio-gts-helper.h>

...

> > +	regmap = devm_regmap_init_i2c(i2c, &veml6031x00_regmap_config);
> > +	if (IS_ERR(regmap))

> > +		return dev_err_probe(dev, PTR_ERR(regmap),
> > +				     "Failed to set regmap\n");

It's okay to have it on a single line.

...

> > +	data->dev = dev;
> > +	data->regmap = regmap;

This is not needed. Use one of them.

...

I have a déjà vu that I have given already same comments.
Why are they not addressed?

-- 
With Best Regards,
Andy Shevchenko



