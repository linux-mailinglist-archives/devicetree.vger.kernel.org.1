Return-Path: <devicetree+bounces-309258-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vQzbMX1SKGqbCAMAu9opvQ
	(envelope-from <devicetree+bounces-309258-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 19:50:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FA5663126
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 19:50:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=QcHmvo6D;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309258-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309258-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8285730470DF
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 17:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C80044D2EC4;
	Tue,  9 Jun 2026 17:39:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD4AB4C9574;
	Tue,  9 Jun 2026 17:39:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781026756; cv=none; b=kvII3QMewOFWPf4JvPorCEXc0BAPkSBDYIl61hhSbGJofUCEgSAnFWI8j9AFF3Om24CsNjRRjLXu4rrPsJRnPpT6OL4KE5pJwDGPJX+TOka5QfTl4/bOQ5UrcwDR6AYntAdJVj080qaMegoM+fhWFCW3uTiuukzdCy7ajNETuXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781026756; c=relaxed/simple;
	bh=/IaJ6qCkvpUse7a9hqA+D6NA3gfvR/wftVsQ//v4UMk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WNjBUN4gsUzEbF0nJ1pq/ZLS6NZ2wl6b5l72OkqsBgyFcFZ34V3+IA3BNCr4FlMyP9OIhxfqlFS9HzZVRdhUiFvzg6HZACfQZe6kPuu1Ey/hlkpR395t5VmGvYECdaF8AKAXCJu0dJAtMd8l7GQc4cx7m8KG8Jbq7uWsEls/VAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=QcHmvo6D; arc=none smtp.client-ip=198.175.65.10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781026756; x=1812562756;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/IaJ6qCkvpUse7a9hqA+D6NA3gfvR/wftVsQ//v4UMk=;
  b=QcHmvo6D1rkoIBw1hY607YPNqBJv+GpS9v8uTDHEa5Ew9UdJ/kgCRwPZ
   bVWjadSIkDd1ypPJIZr9wGmUj6ZxblRQd75RZuU2Z5A0oOKz6kZMLAuYf
   F4RsJgcH7PBrlys4gNnlMTyB1GEnbUk6UrX9LkqmesPAWeX4878PINZ2S
   vHPxrxut/gWw/y5jdyhDSW4y8IOgC9F/bx3xK4h91WoMotjHXwKDsF9s8
   Q8IKHM9TC2103Fnv8eLN/6Me/L0n2/DkgvlTLz8FUHMpMVzHUaFAHnONy
   2fQWd/XoZqBHcMknaL5qisPiD5+jtCGZicp1Vw/8oP09RoAIY2PMhNvUm
   A==;
X-CSE-ConnectionGUID: yhQ3uhuPQfexnSbGJhfxTg==
X-CSE-MsgGUID: xPV4FZnwQJ2HzrE5WeinaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="99214900"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; 
   d="scan'208";a="99214900"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2026 10:39:15 -0700
X-CSE-ConnectionGUID: Lxsnj1fKQKO4GWh3SSv64A==
X-CSE-MsgGUID: LYxSE+wUTEiceQ07BqgTKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; 
   d="scan'208";a="245079082"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.162])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2026 10:39:11 -0700
Date: Tue, 9 Jun 2026 20:39:09 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Salih Erim <salih.erim@amd.com>
Cc: jic23@kernel.org, andy@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, conall.ogriofa@amd.com, michal.simek@amd.com,
	linux@roeck-us.net, erimsalih@gmail.com, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/5] iio: adc: versal-sysmon: add I2C driver
Message-ID: <aihPvR0u5Lo3xELX@ashevche-desk.local>
References: <20260608183801.1257051-1-salih.erim@amd.com>
 <20260608183801.1257051-4-salih.erim@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260608183801.1257051-4-salih.erim@amd.com>
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
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309258-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:jic23@kernel.org,m:andy@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:conall.ogriofa@amd.com,m:michal.simek@amd.com,m:linux@roeck-us.net,m:erimsalih@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,roeck-us.net,gmail.com,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,ashevche-desk.local:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 18FA5663126

On Mon, Jun 08, 2026 at 07:37:59PM +0100, Salih Erim wrote:
> Add an I2C transport driver for the Versal SysMon block. The SysMon
> provides an I2C slave interface that allows an external master to
> read voltage and temperature measurements through the same register
> map used by the MMIO path.
> 
> The I2C command frame is an 8-byte structure containing a 4-byte data
> payload, a 2-byte register offset, and a 1-byte instruction field.
> Read operations send the frame with a read instruction, then receive
> a 4-byte response containing the register value.
> 
> Events are not supported on the I2C path because there is no
> interrupt line and the I2C regmap backend cannot be called from
> atomic context.

...

> +#include <linux/bits.h>
> +#include <linux/err.h>
> +#include <linux/i2c.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/regmap.h>

+ types.h // uXX

> +#include <linux/unaligned.h>
> +
> +#include "versal-sysmon.h"

...

> +static int sysmon_i2c_probe(struct i2c_client *client)
> +{

	struct device *dev = &client->dev;

> +	struct regmap *regmap;
> +
> +	regmap = devm_regmap_init(&client->dev, NULL, client,
> +				  &sysmon_i2c_regmap_config);

	regmap = devm_regmap_init(dev, NULL, client, &sysmon_i2c_regmap_config);

(exactly 80 characters, so inside the limit).

> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
> +
> +	/* I2C has no IRQ connection; events are not supported */
> +	return sysmon_core_probe(&client->dev, regmap);
> +}

-- 
With Best Regards,
Andy Shevchenko



