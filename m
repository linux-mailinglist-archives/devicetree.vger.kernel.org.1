Return-Path: <devicetree+bounces-305905-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NFMPBWplH2qElgAAu9opvQ
	(envelope-from <devicetree+bounces-305905-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 01:21:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FF2632E19
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 01:21:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Ju79SQJt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305905-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305905-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 15720300EFB5
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 23:21:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C0D63CBE6E;
	Tue,  2 Jun 2026 23:21:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AEAD393DC8;
	Tue,  2 Jun 2026 23:21:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780442470; cv=none; b=OpE4IUNRyOgQBS1JdObIthPeh2Dbx0zEnhuSwkGJM2/gWqAwqf5Uh80uhZ+AZZ8WgAPGqqfTCN1g4JSwiy2bYSLAyPB1qduUrLttQu7VvNQyLan1AOM05HD5fibl+JLOp3TA29XcM2JmTLuq2C6bupu48PNwsnrWsyg+Ze8/yjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780442470; c=relaxed/simple;
	bh=7hlK8eYJPPiBHqrMG5zTTAtW/+ttDNt0z8C+yseUxfY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IoKw8ozXkBBpKIuCaasf7tYvcFjIa1gdq6PqEx/iJRnwujxtyPz6x45xI5dwn0dJKFEXxsVDknIGtVKmwydlVvpbVAcaWgnH0xArg6kavZWG4elWbn1eZfGOfs/c7MRuFi4V5+jjoqp4YdrV8XrPqiWgdY35p6EfDy9JzPGdlfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Ju79SQJt; arc=none smtp.client-ip=198.175.65.16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780442468; x=1811978468;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=7hlK8eYJPPiBHqrMG5zTTAtW/+ttDNt0z8C+yseUxfY=;
  b=Ju79SQJtem974CG2ou5k4Hot7eblEBapFATXc2B4Uo68zZfj193+wGo5
   5wnhnQ44wxe5wRB/ra7omRUXPsWMfSXpecc3AfhYmHXhel/5ddPK3gCtQ
   Xt7WfL7tdOcn/GMFD65BJyap/IfApd1pACo9P+DyA10lgS3NYcuR94/I5
   yxpLJy1V/E25MRB/Lu/ek47VFt4SrkrUI8CfM8dxzlK50XMG0bEVwZwjc
   Pzz3R5sUFx7ouPa2/2g+DjFkX8T+3bL0/Zsq5mVY7d0jLXJkesvvd5H/M
   CQrM5JSoD0X9By73kzNt/VF4WgKcWAfQKwRNDer8jJQmPCqY5FERNJhjt
   Q==;
X-CSE-ConnectionGUID: O2X9cssdTniaKquFGYv4SA==
X-CSE-MsgGUID: /nR0rTtcRMWOzM3ZkDcgkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81422938"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; 
   d="scan'208";a="81422938"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 16:21:08 -0700
X-CSE-ConnectionGUID: NlIfMYfZStejQAcir8rCuQ==
X-CSE-MsgGUID: D7xuuax+RVuqplRVZaUWHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; 
   d="scan'208";a="241564860"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.116])
  by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 16:21:04 -0700
Date: Wed, 3 Jun 2026 02:21:02 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Liviu Stan <liviu.stan@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Antoniu Miclaus <antoniu.miclaus@analog.com>,
	Francesco Lavra <flavra@baylibre.com>, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux@analog.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/8] iio: temperature: ltc2983: Fix inconsistent
 channel wording in messages
Message-ID: <ah9lXlmgcsNQZXKd@ashevche-desk.local>
References: <20260521164323.770626-1-liviu.stan@analog.com>
 <20260521164323.770626-4-liviu.stan@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260521164323.770626-4-liviu.stan@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305905-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:liviu.stan@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:Michael.Hennerich@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:antoniu.miclaus@analog.com,m:flavra@baylibre.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@analog.com,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:dkim,ashevche-desk.local:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 56FF2632E19

On Thu, May 21, 2026 at 07:42:56PM +0300, Liviu Stan wrote:
> Replace occurrences of the abbreviated 'chann' and 'chan' with
> 'channel' in error and debug messages throughout the driver.
> Also changed the diode invalid channel error message from
> "thermistor" to "diode".

...

> -	dev_dbg(dev, "Start conversion on chan:%d, status:%02X\n",
> +	dev_dbg(dev, "Start conversion on channel:%d, status:%02X\n",

Here and below inconsistently used : with channel. Be consistent with the above.

>  		sensor->chan, start_conversion);

-- 
With Best Regards,
Andy Shevchenko



