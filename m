Return-Path: <devicetree+bounces-309108-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id H5N4IocrKGru/QIAu9opvQ
	(envelope-from <devicetree+bounces-309108-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:04:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E11A5661804
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:04:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YHUyp06p;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309108-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309108-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BFACD306D601
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 14:55:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34B6D35DA61;
	Tue,  9 Jun 2026 14:54:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6A65421F12;
	Tue,  9 Jun 2026 14:54:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781016896; cv=none; b=kitPxIa+VZvGGHpyPmohPcG2yWLoyGek36BFtwEbT0N8YqvnKV4a+cmutLmpThcShavGIK/76Sc/OItWpStqTBnVYVm5uFG++r8A26l50+GKj1ROFXTLsc6MYlM4qWAhBufpG0t4D4IEZnA5EkAGs1Mzfws+CPu/+653F5IIBPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781016896; c=relaxed/simple;
	bh=moZxAsfodEJ3jh7NAkgfZ+IFZFRdzVwd60X3v41QqOw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DO2m9X930aaXVukk5YwgJOyBQ+yLSSoDaL2JqgkxAqrs9Tb4NLHVxNJuZkiwbSUS0dz4KHS2+8+a374xyO/tArz+3NwWxFo6judAcXqiiRmqsQsP+7UJxrN/HHMEf0HIHBWf1BmjUgDpvEQtKe1BZD+eYXmZcQ++5klTYMBXadQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=YHUyp06p; arc=none smtp.client-ip=192.198.163.9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781016893; x=1812552893;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=moZxAsfodEJ3jh7NAkgfZ+IFZFRdzVwd60X3v41QqOw=;
  b=YHUyp06ptsbMDJLNLI3DelVAcPjdl/nOo64FWkBUY9lRnbE7oSZ2xHT/
   Yz8Yxc9SBoqljAvEZneFD+XIRgLfUrGQ/ZdbKdWGS6KiTRJ8T933+azJq
   uxCH8P8VdKRQathtYHnSm/s1OaCFMimF5Tw/XV7c/rZLAdajCiPDbQpIG
   ZMYGjmsp7dNbznIMKQdzcl2+tFx4HRlIbzf5vGFit17ZpkCWafdkzb4GV
   SF56u0cT78PMMFxLKjl/Ba2SJT+cIlg1SwHUrZORNR7R8C+qM262CBIfK
   SPG05X8mZoDYKnsXKI04sEU4XN5L/udzFp5xIBUu9fnnbED0Zj7p1gIXb
   A==;
X-CSE-ConnectionGUID: qorj5EK8TUaQwFFCczJSTg==
X-CSE-MsgGUID: oHVF3VLcRsaooy329o+QzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="92452722"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; 
   d="scan'208";a="92452722"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2026 07:54:53 -0700
X-CSE-ConnectionGUID: C7G9jLwWRX206XYow448dw==
X-CSE-MsgGUID: OHqVB/AWSCCOgzPCtwxeGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; 
   d="scan'208";a="269897407"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.162])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2026 07:54:50 -0700
Date: Tue, 9 Jun 2026 17:54:47 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Romain Gantois <romain.gantois@bootlin.com>,
	Puranjay Mohan <puranjay@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Wil Stark <wil_stark@keysight.com>, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/2] iio: temperature: tmp117: Support the TMP119
 sensor
Message-ID: <aigpNx-8rbXfJecC@ashevche-desk.local>
References: <20260608-tmp119-v2-0-30c3537d5097@bootlin.com>
 <20260608182412.4738f1d4@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260608182412.4738f1d4@jic23-huawei>
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
	TAGGED_FROM(0.00)[bounces-309108-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:romain.gantois@bootlin.com,m:puranjay@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thomas.petazzoni@bootlin.com,m:wil_stark@keysight.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E11A5661804

On Mon, Jun 08, 2026 at 06:24:12PM +0100, Jonathan Cameron wrote:
> On Mon, 08 Jun 2026 18:00:23 +0200
> Romain Gantois <romain.gantois@bootlin.com> wrote:
> 
> > This is version two of my series which adds support for the TMP119, which has
> > an identical programming model to the TMP117, but slightly different specs and
> > electrical characteristics.
> 
> Other than the DT indent thing Conor calls out this looks fine to me.
> However, unless the cycle is extended IIO is effectively closed for this
> kernel cycle. Anything I queue up now will be targeting 7.3 now.
> On the plus side no rush for v3!

Please, incorporate what I commented on. Id est add #include <linux/array_size.h>

-- 
With Best Regards,
Andy Shevchenko



