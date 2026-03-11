Return-Path: <devicetree+bounces-274054-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLCfA7pesWl/uQIAu9opvQ
	(envelope-from <devicetree+bounces-274054-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:23:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 36534263920
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:23:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F77C304408F
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2544B3DEADE;
	Wed, 11 Mar 2026 12:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="P845PKjl"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C914285CA2;
	Wed, 11 Mar 2026 12:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773231765; cv=none; b=brnRoPcTPMJhwZ7ypxxTkV8AW9HlhlSAheEAR9THTOPxs8C2ZCAvZWqN+JmdsoCmYehFTCIL7+ZmPzHvZEN9ADU3qmEUM8Z2LmsqXr+qeeAqAjhAj/1qdPGXRHSfe/smwDR5jJHArRaajKIz2tanvqzYdgyCDj+jkfqIGiBX1xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773231765; c=relaxed/simple;
	bh=cAuiAE/c8JyzU/RhYLYqbq8R8OVL8H9I3W8b/n4HsbM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=do4J44ChoLFE6CRoMbs4hi5AMOMKhe9pg6Lq4d8bJ9R4tlKl7slEyiwtqPPLUMQLHo8sg5y6yHy1qYefseGsMxbHQn0lUteKDbz3GagWwgxbqxxvRyI/ez3H09+awjAEUo4mlDVZHuR4ZEnBfQSQcABX5Eols3yyEDGiTa6P/20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=P845PKjl; arc=none smtp.client-ip=198.175.65.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773231765; x=1804767765;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=cAuiAE/c8JyzU/RhYLYqbq8R8OVL8H9I3W8b/n4HsbM=;
  b=P845PKjlYlV4uTOTLH+NZQVZLD1hIbsR21iCPSp1BsoWwU4YdjwoknCV
   92JvVnan2Vi520BPwvbg5KC+LvjpkAdsuJs/3Y5eDfQNe7z+49DoU+9BD
   CZBp+aVWM1rYMoKHRNZAYz+JFlQ64qg2F/jbTWS+xAOww6uTro/fRyFYZ
   BtA5rvjxGcv8abuzgNug9MYt/5qOYwZ9DPo3tzm8+Nhzqhw0qMIcn+h/D
   svcwpKutkuBquLWAX9CxbMuBsa7+8WMNanBvNBoTQtsrA7db5/uT+ZGaQ
   mrg/B7E54MvRyOqHf+vq/46/SqTAbWZEpUot/lJzmwEVnkWD744GbLTAO
   w==;
X-CSE-ConnectionGUID: MD3xjMJRQNe0pYSBL4mUoQ==
X-CSE-MsgGUID: H/WfNdRuR6qIqMmz5VWeHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74335303"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; 
   d="scan'208";a="74335303"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2026 05:22:44 -0700
X-CSE-ConnectionGUID: AQ61GspOT+mdRudmyRNRhQ==
X-CSE-MsgGUID: T9SYSQAiQI+gjDiOST+dlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; 
   d="scan'208";a="225147966"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.178])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2026 05:22:39 -0700
Date: Wed, 11 Mar 2026 14:22:36 +0200
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
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	Raymond Hackley <raymondhackley@protonmail.com>
Subject: Re: [PATCH 2/2] iio: light: vcnl4000: add regulator support
Message-ID: <abFejMb3uLbg4fiu@ashevche-desk.local>
References: <20260311-vcnl4000-regulators-v1-0-66b6038ce563@gmail.com>
 <20260311-vcnl4000-regulators-v1-2-66b6038ce563@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260311-vcnl4000-regulators-v1-2-66b6038ce563@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 36534263920
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
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-274054-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,pmeerw.net,vger.kernel.org,lists.sr.ht,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ashevche-desk.local:mid,protonmail.com:email,intel.com:dkim]
X-Rspamd-Action: no action

On Wed, Mar 11, 2026 at 01:38:03PM +0200, Erikas Bitovtas wrote:
> Add supply, I2C and cathode voltage regulators to the sensor and enable
> them. This keeps the sensor powered on even after its only supply shared
> by another device shuts down.

> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
> Reported-by: Raymond Hackley <raymondhackley@protonmail.com>

Where was it reported? Do you need Closes tag?

...

> +#include "linux/array_size.h"
> +#include "linux/regulator/consumer.h"

Double quotes, huh?!

>  #include <linux/bitfield.h>
>  #include <linux/module.h>
>  #include <linux/i2c.h>

Also, please keep the list ordered.

...

>  	mutex_init(&data->vcnl4000_lock);
> +	ret = devm_regulator_bulk_get_enable(&client->dev,
> +				      ARRAY_SIZE(regulator_names),
> +				      regulator_names);
> +	if (ret < 0)
> +		return ret;

You can't add devm_ after non-devm calls.
Also it would help you to have

	struct device *dev = &client->dev;

at the top of the function.

...

With the above being said, I expect a series out of two patches at least.

-- 
With Best Regards,
Andy Shevchenko



