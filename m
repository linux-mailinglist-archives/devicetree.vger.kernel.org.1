Return-Path: <devicetree+bounces-324984-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aRq9LBE7U2pnZAMAu9opvQ
	(envelope-from <devicetree+bounces-324984-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 08:58:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D26744045
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 08:58:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hAtiZkaf;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324984-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324984-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE0E7301412F
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 06:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1634137186A;
	Sun, 12 Jul 2026 06:58:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7485F294A10;
	Sun, 12 Jul 2026 06:58:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783839501; cv=none; b=TPC+vUPG8jQzyJo9YNJ1KQChW7aVGmc1mu+RyPrtq3pbNK9XB1GM0zWNUiUVbl3Fz32hKXp4XVWjgf7YUTpXtvMWs1tW6XO/RHwNJCim7TjTz+OabJbiwhsYKw9pY4LegBJH3yh61VkMR3Px1KsrgLLDU/lMLcdSXJAC+ohJw60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783839501; c=relaxed/simple;
	bh=rgDOrAsS86/dLcVCS9PYTZAKJLYdoNb2JKbq3HQwBsk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CpS8tcqGobC5zkty2u3UreohFss+dLWF98/Q0VYGHSmdGCMVZOEKX1fA0lWcOTwZUVO6dfUa5z5eLGV6Y5+1eWu2YIXJ52RzEe5sjwSgVfjp5kvRLQgUw1H/ZqEbj69gLH45p1GFpS9OnkoAGxJ/Z23sigQPUyuB3sb3iGbS0KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=hAtiZkaf; arc=none smtp.client-ip=192.198.163.8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783839499; x=1815375499;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=rgDOrAsS86/dLcVCS9PYTZAKJLYdoNb2JKbq3HQwBsk=;
  b=hAtiZkaf7HPmQGFSeiE4kIxP5o35pIaCTc2dgkdDTH7QpEwmVOgZe+IC
   MEqOZnRnoh6s3EIwNnC3wCZng1cmD0csCNWnNRbTPu6Yxw4A2i8/IkqUw
   KyBag6uNM+qVdNnRBm32LHorDJvyb/ZLYj/LGTqCTtuL1IIxVWAiIFvn2
   TTdzRlkx0J88Qh1brjkRROwdbtqNk3R7NTRZRGMLpMDUGtRyU6S6s9qPD
   AKVshNiX7ywzySX07JzT2Davf1G3T16KrYfcvADGv9vmG4aOm5P/GpA+t
   OxmKHBcUoZnjJr0lRDf1Tp1FJ6ISsYP2Y37/fpHZCHd8pH9eLXQYpP1Ib
   g==;
X-CSE-ConnectionGUID: vPrpqp2mRY2fIvNnuYf1GA==
X-CSE-MsgGUID: pUDzhoKQRdOp9+p2Js5vSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="102034113"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="102034113"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jul 2026 23:58:18 -0700
X-CSE-ConnectionGUID: SamUlIaaQsSiV9rq/wnGLg==
X-CSE-MsgGUID: 2T14nhQ+S3mYbjtqSwlj8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="253511955"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.24])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jul 2026 23:58:14 -0700
Date: Sun, 12 Jul 2026 09:58:11 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: rodrigo.alencar@analog.com
Cc: Michael Auchter <michael.auchter@ni.com>, linux@analog.com,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	sashiko-bot@kernel.org
Subject: Re: [PATCH v7 1/7] iio: dac: ad5696: properly check i2c_transfer()
 return value
Message-ID: <alM7A8m85ncku2VR@ashevche-desk.local>
References: <20260710-ad5686-new-features-v7-0-1bcc8c280e4d@analog.com>
 <20260710-ad5686-new-features-v7-1-1bcc8c280e4d@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260710-ad5686-new-features-v7-1-1bcc8c280e4d@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324984-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.alencar@analog.com,m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:sashiko-bot@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,intel.com:from_mime,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 03D26744045

On Fri, Jul 10, 2026 at 12:20:45PM +0100, Rodrigo Alencar via B4 Relay wrote:

> Verify that the expected number of i2c messages were transferred when
> ad5686_i2c_read() is called. This issue exists since the support for I2C
> devices where first introduced.

...

>  	ret = i2c_transfer(i2c->adapter, msg, 2);
> -	if (ret < 0)
> -		return ret;

No need to touch this.

> +	if (ret != 2)
> +		return ret < 0 ? ret : -EIO;

Make it use standard pattern:

	ret = i2c_transfer(i2c->adapter, msg, ARRAY_SIZE(msg));
	if (ret < 0)
		return ret;
	if (ret != ARRAY_SIZE(msg))
		return -EIO;

-- 
With Best Regards,
Andy Shevchenko



