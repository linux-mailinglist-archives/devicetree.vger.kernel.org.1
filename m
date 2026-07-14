Return-Path: <devicetree+bounces-326083-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +FsfAD4WVmrsywAAu9opvQ
	(envelope-from <devicetree+bounces-326083-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 12:58:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 273EA753A5B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 12:58:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=NUD37idW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326083-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326083-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 707EC300DE0E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 10:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01720376A0C;
	Tue, 14 Jul 2026 10:57:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F1836AB5A;
	Tue, 14 Jul 2026 10:57:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784026624; cv=none; b=eBIVpSFcWc6kZbKXMuQYTAlr0w0HwuO+MRXLoMNkcPyeGbIvQPzw5VBtRr4lTEavp3ERyz1DpFp7QmV20N1xjDf+qRwK8kSpncQTliCt/NfgQAjdGhzEf9HOozmZ6jcJztmfat53aMo7aPWIyhaQchVf1hDv0JHZTvtI9Ir7NhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784026624; c=relaxed/simple;
	bh=7p88xNr3ryyi6ibpcUgmTHu4NSvfticNGxsvwZsHU88=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V0Mv4Ujl3OlR5zuq3ZYwKt7NZaEWOaqh5jJtOXpxYdQ8ay1gJNKVkK9LtmeYpn2ArH+/gr04z4amsbDvhB2Ta4HZUPnN/BF3voexHuAkzZVgzaxoVAvdmP1QHpXp2MrFll9CccG+pEC2LBrAjKrnShZq6f7AYcIEzQMnQHZwaho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=NUD37idW; arc=none smtp.client-ip=198.175.65.20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1784026624; x=1815562624;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=7p88xNr3ryyi6ibpcUgmTHu4NSvfticNGxsvwZsHU88=;
  b=NUD37idWn6B/7VqrzaZagY8udojXPz879B8tP/vWkueEgQ5uthxcOrqp
   bxD5cWiOjSB/cAN6ltB7INs39n/WAVnh73TaO+xTQF1fuGAGpxqVB+QBn
   KgQBPgkjBzCR5FzfK/Tt/9GKPcxgFusAMUrAgfFSbBnlbpAsNM/PEqhrX
   kz2lgrdkS+UDVgAqJDzDe2+pOGhL/MHzd1CRYUeRfVNdDwxXoAkczIhde
   AeBBgXTsA3vcoe2pc+dclk8OgGao61QvKRo2yihAr/TNLwP9xADykgS1E
   gvRR4ilTp1vkN3D+rWiqDS5+s86ZJ1fL0cW3RrCYExYBYPo9FnqWtA3TP
   g==;
X-CSE-ConnectionGUID: /O3S1yvqQBa5EAXXcMNO+A==
X-CSE-MsgGUID: v/lqaTljRIyNuNtttf7MGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="84425303"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; 
   d="scan'208";a="84425303"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 03:57:03 -0700
X-CSE-ConnectionGUID: tAp4suAZQ7W8vqWtI5sRQg==
X-CSE-MsgGUID: fOFImHORQemPAJIS0pzizw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; 
   d="scan'208";a="253202539"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.189])
  by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 03:56:59 -0700
Date: Tue, 14 Jul 2026 13:56:57 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v16 04/10] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <alYV-QAmGViGSOSv@ashevche-desk.local>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
 <20260713215842.69097-5-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260713215842.69097-5-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326083-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:nuno.sa@analog.com,m:dlechner@baylibre.com,m:jic23@kernel.org,m:jean-baptiste.maneyrol@tdk.com,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:heiko@sntech.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:macromorgan@hotmail.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,hotmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:from_mime,intel.com:email,intel.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 273EA753A5B

On Mon, Jul 13, 2026 at 04:58:34PM -0500, Chris Morgan wrote:

> Add the core component of a new inv_icm42607 driver. This includes
> a few setup functions and the full register definition in the
> header file, as well as the bits necessary to compile and probe the
> device when used on an i2c bus.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

...

> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c

> +#include <linux/bitfield.h>
> +#include <linux/delay.h>
> +#include <linux/device.h>

> +#include <linux/device/devres.h>

When device.h is included, this one is not needed. Yeah, device.h is a mess,
but here we are now.

> +#include <linux/err.h>
> +#include <linux/iio/iio.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/time.h>
> +#include <linux/types.h>

-- 
With Best Regards,
Andy Shevchenko



