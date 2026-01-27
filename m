Return-Path: <devicetree+bounces-259818-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAodBMSTeGmxrAEAu9opvQ
	(envelope-from <devicetree+bounces-259818-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:30:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8895B92CB5
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:30:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD070300CC1E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1016433F8A8;
	Tue, 27 Jan 2026 10:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="m91b0RPy"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FC71A9F93;
	Tue, 27 Jan 2026 10:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769509824; cv=none; b=AeuA3TwTHCQAuOEDn28YMndh6MY7Rcv6ERcIn3OKg8KJaK4fgJ54OCqFneUtUGi4FJdTqHRDZCMpEMusbv6jjEMZYyscImtbOtU5nKv0O3B3mRlJuibKnvn97jjR7YBJyYim7Hsbx8P+tEKp/y/djHOydIpaZszOOQHvHmYb1GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769509824; c=relaxed/simple;
	bh=8um1ztHVRtPlpYKICq+T4cYvuETxYSOKlJwZD/mCu8o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bwjHNsMixunQW8ilSndpI8hLxggSncHmn+mE7TgMoQOJJNYhUJo7TrWyeQqb2ZIvSe0UU1j/ue0F83yL1AysyGnLpL8Abo2RZ0ErJmAGCuAOB0uspQKBpne+J2SSm5PPY+5uClnv5Yb0P60gdseqc5sYZ+RdjVBQY7DXQBKn30U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=m91b0RPy; arc=none smtp.client-ip=198.175.65.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769509821; x=1801045821;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=8um1ztHVRtPlpYKICq+T4cYvuETxYSOKlJwZD/mCu8o=;
  b=m91b0RPywUIxbBQzuRhjO+xv0RYZFIGciYpzv2UO8WvECywgBchKi0DQ
   5Rg70HPSU2jUo/mdLVMA2qE+8WabxT2fIuFs2+WIuJ5zk6SWy+s/TeN57
   7h5g2Grn/Nam/9iY20ixYrV4bKW5LslIFfuplA5d9t1dnMnkLIvFm1gD5
   WthCZ5W9C2t1mlVH28grZwJFWcJ8ZkCybIonvx3PWiW0icmgga3leuKf0
   J1Xqb/fnoQDYRDSofsaN0YnBeXqEkxW/XaFNFa5v3juLjId7QV84Nc04u
   iKd6Gd9h6bl0UpANCwX1EFy9Dl4Y9OHM0awXqcVyfXgZRPS4OgUGAlzYb
   A==;
X-CSE-ConnectionGUID: iEZFa23WREun6qbFiPUrYg==
X-CSE-MsgGUID: OnFajv1sQlG+sqH/h8Yv+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="74546244"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; 
   d="scan'208";a="74546244"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 02:30:17 -0800
X-CSE-ConnectionGUID: KqBtgNzCRfu7jmZ6d+Vo5g==
X-CSE-MsgGUID: kcg+rOELR5e6jUTKaB868A==
X-ExtLoop1: 1
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.248])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 02:30:14 -0800
Date: Tue, 27 Jan 2026 12:30:12 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH v2 4/8] iio: dac: ds4424: sort headers alphabetically
Message-ID: <aXiTtJ39YXTmqkYW@smile.fi.intel.com>
References: <20260127060939.3914006-1-o.rempel@pengutronix.de>
 <20260127060939.3914006-5-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127060939.3914006-5-o.rempel@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259818-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim]
X-Rspamd-Queue-Id: 8895B92CB5
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 07:09:35AM +0100, Oleksij Rempel wrote:
> Sort the header inclusions alphabetically. This improves readability and
> simplifies adding new includes in the future.

...

> -#include <linux/kernel.h>
> -#include <linux/module.h>
> -#include <linux/i2c.h>
> -#include <linux/regulator/consumer.h>
> -#include <linux/err.h>
>  #include <linux/delay.h>
> -#include <linux/iio/iio.h>
> +#include <linux/err.h>
> +#include <linux/i2c.h>

> +#include <linux/iio/consumer.h>
>  #include <linux/iio/driver.h>
> +#include <linux/iio/iio.h>
>  #include <linux/iio/machine.h>
> -#include <linux/iio/consumer.h>

This was at the end and I assume we want this to be kept at the end as a
separate group of linux/iio/* to emphasize on the fact that the driver is
related to that subsystem.

> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/regulator/consumer.h>

With that being said, I think the result should look as

#include <linux/delay.h>
#include <linux/err.h>
#include <linux/i2c.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/regulator/consumer.h>

#include <linux/iio/consumer.h>
#include <linux/iio/driver.h>
#include <linux/iio/iio.h>
#include <linux/iio/machine.h>

-- 
With Best Regards,
Andy Shevchenko



