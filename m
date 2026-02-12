Return-Path: <devicetree+bounces-265192-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAx6Agk1jmnQAwEAu9opvQ
	(envelope-from <devicetree+bounces-265192-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 21:16:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A12E0130E43
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 21:16:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EBA703008D7C
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 20:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F31C25A2C9;
	Thu, 12 Feb 2026 20:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="kkfH6GHr"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3BA33EC;
	Thu, 12 Feb 2026 20:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770927366; cv=none; b=RHBFNI/DYl3kKFuDbxtKsKx3rNfz/jzHUcqG/iC9foIGrZhkW7VelVxNcjNolwv7sTc+nMDisI8RXALiq5+UJ9BtZaSbsY/LoqOYFqZcplYZOfqZeXvWy1HvWNcDXoaebDc6zezhOoc34RJMaRy8UZ3elTc5K7GFspsk1Qd2yFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770927366; c=relaxed/simple;
	bh=wwE34Bgtgf/Gw15HIRaM25Es13ztP8iFuewv1sRvQzM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iiZsgpJwwjBuPisGp7vfQZ4M48pnmEFduZist3Hvk8GxwtcGcNlwGJXcgNLqG2PrqF6l05EJWndQ+XAZqW6wTT+OEmdgbMROQP96zSiXKFR0BeX/SwK0/URVTj//erRD5MpHQppE9rI0jQ63PGzzsRZ4lWcU3NUT4JhLm0DeXfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=kkfH6GHr; arc=none smtp.client-ip=198.175.65.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770927366; x=1802463366;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=wwE34Bgtgf/Gw15HIRaM25Es13ztP8iFuewv1sRvQzM=;
  b=kkfH6GHrGYHuEySzIdttNVjgTVgMPFEkg+LdAUbsc43ROwWQxDbuXZYL
   DTxpaAHpLaN+TNKRi/SaGqKJUw6Xna6hVEZkspk1Qv0/gzlxqr633Hb0I
   85TW+WR/au3IdfUicshzDxv7iwI0ZRlFzTl5iqFKI6Ob9X1MMnUPbwKpd
   7MevOQTphWu/rrD3VE6Q3cNlmfd4+OcNCMsFebXVICUU3iPsWNKIHTd4F
   NCsBSsfh6Vu9XH9hx1IBmIYIEXkO9kVzP9LemnL5XQAX6Xjc6HD/8Rlcw
   y/u/WfLzreEsn2xKW9gqkOxbdBGpoQ9fj64t6NHMakg25+/AwTXXYQ++X
   w==;
X-CSE-ConnectionGUID: ZoC829s2ScSx4Z6xFI2jPA==
X-CSE-MsgGUID: x62EbK4lQ92cD5EfWfsOTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="82437197"
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; 
   d="scan'208";a="82437197"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2026 12:16:02 -0800
X-CSE-ConnectionGUID: QQ+/vSBZS8iRbZzHMcNc3Q==
X-CSE-MsgGUID: /M3411vERveUAiSaZNIT1A==
X-ExtLoop1: 1
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.145])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2026 12:15:58 -0800
Date: Thu, 12 Feb 2026 22:15:55 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Taha Ed-Dafili <0rayn.dev@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mentees@lists.linuxfoundation.org, me@brighamcampbell.com,
	skhan@linuxfoundation.org
Subject: Re: [PATCH v1 2/2] iio: dac: ad5504: use adi,output-range-volts for
 scale calculation
Message-ID: <aY40-0v9tbXC4tPY@smile.fi.intel.com>
References: <20260212181955.42724-1-0rayn.dev@gmail.com>
 <20260212181955.42724-3-0rayn.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260212181955.42724-3-0rayn.dev@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265192-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
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
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,intel.com:dkim,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: A12E0130E43
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 07:19:55PM +0100, Taha Ed-Dafili wrote:
> The driver previously used VCC to calculate the scale, but the datasheet
> states the output range is fixed by the R_SEL pin (0-30V or 0-60V).
> 
> Update probe to read `adi,output-range-volts` for the scale. Default
> to the 60V range if the property is missing, while keeping the VCC
> regulator enable for power.

...

>  #include <linux/regulator/consumer.h>
>  #include <linux/module.h>
>  #include <linux/bitops.h>
> +#include <linux/property.h>

Add it before 'linux/s*.h' includes to make less ordering issues.
Ideally one additional patch to sort the headers and one to replace
"proxy" headers (following IWYU principle).

...

> +	ret = device_property_read_u32(&spi->dev, "adi,output-range-volts", &val);

You can pack this into 80 limit with help of

	struct device *dev = &spi->dev;

being defined in the top of the function.

> +	if (ret)
> +		val = 60;

Also this seems an optional, so

	val = 60;
	device_property_read_u32(dev, "adi,output-range-volts", &val);

would be enough.

...

> +	if (val == 60)
> +		st->vref_mv = 60000;

60 * MILLI;

> +	else
> +		st->vref_mv = 30000;

30 * MILLI;

Needs units.h.

-- 
With Best Regards,
Andy Shevchenko



