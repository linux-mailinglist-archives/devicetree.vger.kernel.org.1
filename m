Return-Path: <devicetree+bounces-260133-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDdNB1cqeWkIvwEAu9opvQ
	(envelope-from <devicetree+bounces-260133-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 22:12:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 811A89AA45
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 22:12:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B9503050A31
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 21:12:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA58429BDB0;
	Tue, 27 Jan 2026 21:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="W+1omooF"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1773E2BEFFF;
	Tue, 27 Jan 2026 21:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769548337; cv=none; b=gp8dvwvt5ydq6irNWiHro0WPSSCcDzwuD/Uplx5bwLzeF8sjsfjzUXJOYp4gbq3rzPGccUfjkVenZJcUcnTj7ERF2unaffNMYz7LuG3a0YHsydVdKeudbCZn8uZ0jCiZwGcz7Pm0z9JmJRl/UjSRcWk3w5K/MlVMwa9v0gB1ee0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769548337; c=relaxed/simple;
	bh=SnOm8uikqf5Mp5QGbuMMy35ul8EjebdXR8R8wDneajY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mu13bk2BSXa4Vu4/NTj97KyX3fYntVFZjCy+NG5FY1NJ964bI0o3sc/Bvkt84Y/yxWezGErB7jxBzBv391821cgAyeAUDccY2wUZG8+P+UexmhgRyT1X7gAIVgwdVmkykhjZNqbNsMyY8j+3oU9HeugTsbLUwrVn0plYfLkhuqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=W+1omooF; arc=none smtp.client-ip=198.175.65.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769548337; x=1801084337;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=SnOm8uikqf5Mp5QGbuMMy35ul8EjebdXR8R8wDneajY=;
  b=W+1omooFvmIoUoZwco0ZyPXmddWiUJ6smSgSr7SS0TmFggzHFf6eP5Ww
   //u8WfqAkVP2D+OD2nEDOxq05fYRH2oDb49togCb6c68Fllmti9g6GcxJ
   foRaQp0023q7sAbLX8MB9XPj/JQRzerU5++jpassjCWtCeH917o8gC9cm
   cGSHBHFVzatFVqlJ5aaeBMJ9eqPtFUiQgrgq1BoLi1CVl6k/ifcFZ+dT6
   MLFMAal140vyTc4Xn5gGHTI695qYtF3tTr4/MsQggbhMfeQuqXDGMRRPR
   ryNJkDEGTq71FREA7f1sie9O1SQ7OCFXoYzPpI9RrJb74GfYGMjZjVDhO
   g==;
X-CSE-ConnectionGUID: z5ItgC9FQfe7aXTvqlaJ/g==
X-CSE-MsgGUID: TXY+zDVFTYC//2POw90EVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="70649268"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; 
   d="scan'208";a="70649268"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 13:12:16 -0800
X-CSE-ConnectionGUID: Wx8/I1NbRp6BCzN4GLPdog==
X-CSE-MsgGUID: 47MvwlwqTkicoF/4Ye5L0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; 
   d="scan'208";a="207320252"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.248])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 13:12:12 -0800
Date: Tue, 27 Jan 2026 23:12:09 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 3/6] iio: amplifiers: ad8366: refactor device resource
 management
Message-ID: <aXkqKZELWdjrB8wN@smile.fi.intel.com>
References: <20260126-iio-ad8366-update-v2-0-c9a4d31aeb01@analog.com>
 <20260126-iio-ad8366-update-v2-3-c9a4d31aeb01@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126-iio-ad8366-update-v2-3-c9a4d31aeb01@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260133-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: 811A89AA45
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 01:51:04PM +0000, Rodrigo Alencar via B4 Relay wrote:

> Adhere modern device resource management with the following:
> - Voltage regulator managed and enabled internally;
> - Proper mutex lifecycle with devm_mutex_init(), replacing mutex_init();
> - IIO device registration handled with devm_iio_device_register();
> - removal of goto's from the probe function;
> - ad8366_remove() removed as it is not needed anymore;
> 
> Also, dev_err_probe() is used to report probe errors with created local
> device pointer.

And also it uses the temporary dev variable in the cases that are not covered
by the above.

So, three changes in one patch...

Dunno if Jonathan is okay with this. I would rather split it.
Code wise LGTM.

-- 
With Best Regards,
Andy Shevchenko



