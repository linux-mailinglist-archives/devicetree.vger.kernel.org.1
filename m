Return-Path: <devicetree+bounces-319789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qv2JFedPR2roVwAAu9opvQ
	(envelope-from <devicetree+bounces-319789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:00:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F1E6FEE70
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:00:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=e8uHvxBv;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319789-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-319789-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 30B1430C837F
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 05:55:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADFB03624C2;
	Fri,  3 Jul 2026 05:55:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D554A35DA55;
	Fri,  3 Jul 2026 05:55:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783058109; cv=none; b=WuxO6HotBRaR24M7UevKPaN/eVDvYxZAE6bOIKCvPpXfJuJmK+0JRDTpsPpO00ijdsHy1s//XdQ5dg2XgH8FdXSa5BWF+Maa3AIsRb1XH+TdYR7n3MMex3zvE306Nj7AcJ5jvnxfLDoeBvGM60QSE5PJZyGhwiAM9U69JaiXJUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783058109; c=relaxed/simple;
	bh=fRiV9g7Wi1wkBsabhECdHrRroBlKcfM5QWtdnX3TaNs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OuBu8pgNb1al1RQPEHYGKb9EenmOOJ6Nkk8KyXvdVvzGM5bJo3BlPgfwR6z7PCrPpj88CtkdMx9XTn6xACyFsEvLrlJTHJwFJ+SrRpl7Fti8bVD5NHE8OY8ec7X9Mbn0zxfNekNX9Rtwx7Xe0XvTfH04B6EOGgqFoY4f4TmkRbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=e8uHvxBv; arc=none smtp.client-ip=192.198.163.12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783058108; x=1814594108;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=fRiV9g7Wi1wkBsabhECdHrRroBlKcfM5QWtdnX3TaNs=;
  b=e8uHvxBv9xpl1ZhDqanS9lly4GeE2hTYLiX2TxpTbaIygVD8mKsOR/IM
   hDPOgoqKSaycRH5NApMhqDOCgLk3hcshEhtBPJ+107UBhzMNjBqDhfITt
   wrWpD3UWbyxZxznBtPRBPIExaypNcFvlfWQxrTNkSujKZVqZS4Qt2pT9r
   aIjaUZ1mFefCQ8D9GX1L2aZ6o3fwNFLUtMujkC37avzUii9Usmv57diOd
   UqbFa4lG7LoihIHANG7+qxel2eTMRSIvIjBM2dqj8aC3gehLt3nMPQ/pe
   W+NEuaNvSO/Jk5ObGlZzsQBsiWrei/7sLxvefhuuzSfwknOyZEkrWnl4v
   w==;
X-CSE-ConnectionGUID: I55tgFz6QrauHcdv76piPg==
X-CSE-MsgGUID: DeP7BGWUTV+9nY/58mVVvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="87632437"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; 
   d="scan'208";a="87632437"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jul 2026 22:55:07 -0700
X-CSE-ConnectionGUID: bBmb7M91RlKCfykwALqhTA==
X-CSE-MsgGUID: q/zvx/JRSOqyg9jPFEpY7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; 
   d="scan'208";a="249679991"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost) ([10.245.245.80])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jul 2026 22:55:04 -0700
Date: Fri, 3 Jul 2026 08:55:01 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chris Hall <c-hall@ti.com>,
	Patrick Edwards <pedwards@ti.com>, Kurt Borja <kuurtb@gmail.com>,
	Nguyen Minh Tien <zizuzacker@gmail.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 8/8] iio: adc: ti-ads112c14: add measurement channel
 support
Message-ID: <akdOtUXMRuYhakxM@ashevche-desk.local>
References: <20260625-iio-adc-ti-ads122c14-v2-0-ceb9b0b561cb@baylibre.com>
 <20260625-iio-adc-ti-ads122c14-v2-8-ceb9b0b561cb@baylibre.com>
 <20260701212019.12757df3@jic23-huawei>
 <akYs-QgyjN-nmjq-@ashevche-desk.local>
 <544fbdef-268d-49cc-ae9e-b18907d9382b@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <544fbdef-268d-49cc-ae9e-b18907d9382b@baylibre.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319789-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:c-hall@ti.com,m:pedwards@ti.com,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,ti.com,gmail.com,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,intel.com:from_mime,intel.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:url,baylibre.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E9F1E6FEE70

On Thu, Jul 02, 2026 at 09:18:41AM -0500, David Lechner wrote:
> On 7/2/26 4:18 AM, Andy Shevchenko wrote:
> > On Wed, Jul 01, 2026 at 09:20:19PM +0100, Jonathan Cameron wrote:
> >> On Thu, 25 Jun 2026 16:55:10 -0500
> >> "David Lechner (TI)" <dlechner@baylibre.com> wrote:

...

> >>> +	device_for_each_named_child_node_scoped(dev, child, "channel") {
> >>> +		struct ads112c14_measurement *measurement = &data->measurements[i];
> >>> +		struct iio_chan_spec *spec = &channels[i];
> > 
> >>> +		if (!fwnode_device_is_available(child))
> >>> +			continue;
> > 
> > Also drop this dup check.
> 
> How is this duplicate? device_for_each_named_child_node_scoped()
> doesn't check this.

It's checked by the respective implementations.
https://elixir.bootlin.com/linux/v7.1.2/source/drivers/of/property.c#L1129

-- 
With Best Regards,
Andy Shevchenko



