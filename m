Return-Path: <devicetree+bounces-306598-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wBpPGJATIWq3+wAAu9opvQ
	(envelope-from <devicetree+bounces-306598-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 07:56:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A766B63D19A
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 07:56:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=KqD7b+lf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306598-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306598-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A205B300B06B
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 05:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 364A23D45E6;
	Thu,  4 Jun 2026 05:51:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696233D1711;
	Thu,  4 Jun 2026 05:51:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780552308; cv=none; b=FJE7c/+Xs+9ZmFDvVoIT2MdXGZwKOqSEp6E+f0sNJcXCczShJSCdzy6gTN9k2qWlNk9I2qzXlBB74Bt9SVhMQDFAB3bVP9/bmfe/gvthh5C+lUmiVh7wmd5/Sll8yfklEhcLzmNNxJBhHwssS7wrTvPbpU2+7SsbbD4zhvBm3+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780552308; c=relaxed/simple;
	bh=StrjWbO7JkBLpCjpx66U+DeF2jDXM7FSmXwXo91gAZI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U21NQEtQO+JXANHzQQRoYSxRJzC5ysDjJ6lvN4CofWdRQx5kEGIqaX5TsO4hy1F22169mf5Xovp28msBjf4u41v8qehYTxHUY38+Rujoibxejey0+lAOOv7xR17h2wY3hsdR9HnjFIZDzwAN/i03cZZ2svrRHPNFwIX/xhrCYD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=KqD7b+lf; arc=none smtp.client-ip=198.175.65.12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780552302; x=1812088302;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=StrjWbO7JkBLpCjpx66U+DeF2jDXM7FSmXwXo91gAZI=;
  b=KqD7b+lfwrTYgIL/l4ZxnWuF5WS5HjuNYd4ZbzCkwqocBiV3sh91zMj2
   MlsuZAINZhcVkukZNUcNsL2cugS6JNW2dz3QDoi5drrXKql4d7eN11wNh
   7MF7ei09PYfEUcrgNyJuyW/4MtUsby+u9MxHMf4fAlkEgrXpN9JD3r6Nu
   HGX33dNyY3QhbE/71chQ21dPySybh0dVpzV6zW08yHYKgkvtkoh6lN1B5
   BAdVhlnwdOPqoKXsc8tKpZzP+dlvIkamojhiqj+ojtoRkCIemLvptER+E
   RIM2CEznIfl4Cvx5nZymhRJs6Jtz6YXEYxnZ/b1gywiJrP5xKfGX99fg4
   w==;
X-CSE-ConnectionGUID: xmo8KvLPRhaLQwd6ljlIzg==
X-CSE-MsgGUID: NJ2xZbP8Q0+ci4prefS4gQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="92857602"
X-IronPort-AV: E=Sophos;i="6.24,186,1774335600"; 
   d="scan'208";a="92857602"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2026 22:51:41 -0700
X-CSE-ConnectionGUID: 4waxMAB+T8KRdArTOwvSxQ==
X-CSE-MsgGUID: KAv13reYQneW8TJSV0HJ1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,186,1774335600"; 
   d="scan'208";a="243379753"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.47])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jun 2026 22:51:36 -0700
Date: Thu, 4 Jun 2026 08:51:33 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: rodrigo.alencar@analog.com, Michael Auchter <michael.auchter@ni.com>,
	linux@analog.com, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH 05/12] iio: dac: ad5686: add support for missing power
 supplies
Message-ID: <aiESZaVcbh7ctlPh@ashevche-desk.local>
References: <20260602-ad5686-new-features-v1-0-691e01883d27@analog.com>
 <20260602-ad5686-new-features-v1-5-691e01883d27@analog.com>
 <ah8oz29R8mem6H5X@ashevche-desk.local>
 <p3ydzrkizeysxlzc355xzgeboipihgo45w34uwn7a4lb63jgek@kr5r5hgjh354>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <p3ydzrkizeysxlzc355xzgeboipihgo45w34uwn7a4lb63jgek@kr5r5hgjh354>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306598-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:455.rodrigo.alencar@gmail.com,m:rodrigo.alencar@analog.com,m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:455rodrigoalencar@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,ashevche-desk.local:mid,intel.com:from_mime,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A766B63D19A

On Wed, Jun 03, 2026 at 01:17:25PM +0100, Rodrigo Alencar wrote:
> On 26/06/02 10:02PM, Andy Shevchenko wrote:
> > On Tue, Jun 02, 2026 at 05:33:52PM +0100, Rodrigo Alencar via B4 Relay wrote:

...

> > > +	ret = devm_regulator_get_enable_read_voltage(dev, "vref");
> > > +	if (ret == -ENODEV) /* vcc-supply is deprecated, but supported still */
> > > +		ret = devm_regulator_get_enable_read_voltage(dev, "vcc");
> > 
> > >  	if (ret < 0 && ret != -ENODEV)
> > 
> > It can be deduplicated now with
> > 
> > 	else if (ret < 0)
> 
> Not really, because ret is overwritten with
> 
> 	ret = devm_regulator_get_enable_read_voltage(dev, "vcc")
> 
> so the check for if (ret < 0 && ret != -ENODEV) is intentional

Indeed, thanks for pointing this out.

> > > -		return ret;
> > > +		return dev_err_probe(dev, ret, "failed to read vref voltage\n");

-- 
With Best Regards,
Andy Shevchenko



