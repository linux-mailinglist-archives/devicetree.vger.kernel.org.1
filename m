Return-Path: <devicetree+bounces-276113-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MI57EWXmt2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276113-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:15:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A28C829890B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:15:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9BCFE303EA84
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:10:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BFC627BF79;
	Mon, 16 Mar 2026 11:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="gGwhFZAI"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE8C277037;
	Mon, 16 Mar 2026 11:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773659446; cv=none; b=t+LGvVRlKbCAW80hLmnI3NQVlmocT/Gi9a18TstnEHIEtVKhDIqoEEtoqpZvYZ5t4nw3VfOCw9EuEYzNj78fspMxJonhQ4GOexxJXOqno8JuXphl3A6NytXaX+f4VPzLrmoVM9nSfxsRqGRVcU2fRXPjoaZdASHu+RTMSTS7f6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773659446; c=relaxed/simple;
	bh=3SFqd5OOIhAQCqckGxcvojjWJgoNFfQew5xMgcT2ITg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c7TL1h1G96+WUHTqxLcTa28iAyWbnWUFNxmFnI+FMFf69lNBc7MsXUSJGakwf0td9w1xFjm8f+mXnIhsvwHRmgYZUYca8/IacN5+c66ZxW4hgUs06y0MlWh3OKxszjiwLGd18Og0SXZ/u6O9MNLqRJKjdJMLlmaeeybc5YrUjV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=gGwhFZAI; arc=none smtp.client-ip=192.198.163.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773659445; x=1805195445;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=3SFqd5OOIhAQCqckGxcvojjWJgoNFfQew5xMgcT2ITg=;
  b=gGwhFZAI/Qj3yEOaIewpfVCz0EitHxCBP/PdkJKFiOGrRxAp3K3/0kLQ
   9TcHld2PaudrTJa7XAM/9q8ltKC3m/Oxa8EV+HFD7TyqiX6QqNwANlcgE
   9RgdFUmGQPpuU7Klv1rXRQe4CmSZeX+ttYcXHdxAQrNW2HvA/t/opNxRb
   YDyK5KT+XbkMURl9TG2JO+UjaRMkUqym6LC5vksSm7BKjRHP7jrX1TbPN
   G87dHoExCQSx0bpdfdeXQADmnfdJerJPJP1XcJBQLlitL/0Ng14wXOZrn
   1vWmWE4iuZZtGbAzeq6/H8o++re/1jCh1PxHD8CZKsbOQzZs0eNqltPTC
   A==;
X-CSE-ConnectionGUID: l9FLeJy9QU+3GwZtyJkrMw==
X-CSE-MsgGUID: 2c+HTmkLRzuZY89Odv7Q9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="74786678"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; 
   d="scan'208";a="74786678"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2026 04:10:45 -0700
X-CSE-ConnectionGUID: vwyM9CUoRbmaDiI0gQ8vhA==
X-CSE-MsgGUID: A0WD4mprRKS9FM84vS6TcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; 
   d="scan'208";a="221119152"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.237])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2026 04:10:41 -0700
Date: Mon, 16 Mar 2026 13:10:39 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Erikas Bitovtas <xerikasxx@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Meerwald <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH v3 6/6] iio: light: vcnl4000: use variables for I2C
 client and device instances
Message-ID: <abflL22Yq4Xm0MYJ@ashevche-desk.local>
References: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
 <20260314-vcnl4000-regulators-v3-6-3c4a48d30676@gmail.com>
 <abfd5pLsCuPK4lV3@ashevche-desk.local>
 <6cc8f5ab-2671-4975-b24c-b17d4aab656d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6cc8f5ab-2671-4975-b24c-b17d4aab656d@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276113-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A28C829890B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 12:50:48PM +0200, Erikas Bitovtas wrote:
> On 3/16/26 12:39 PM, Andy Shevchenko wrote:

First of all, remove the content you are not replying to!

...

> >> -	if (device_property_read_u32(&client->dev, "proximity-near-level",
> >> +	if (device_property_read_u32(dev, "proximity-near-level",
> >>  				     &data->near_level))
> >>  		data->near_level = 0;
> > 
> > The 'if' is redundant, I think you can drop it at some point, probably to avoid
> > churn in the follow up
> > 
> >  -	if (device_property_read_u32(&client->dev, "proximity-near-level",
> >  -		data->near_level = 0;
> >  +	device_property_read_u32(dev, "proximity-near-level", &data->near_level);
> > 
> 
> device_property_read_u32() throws an error if a property is missing.
> Would data->near_level be left without an assigned default value in that
> case?

Second, have you read my reply carefully?

-- 
With Best Regards,
Andy Shevchenko



