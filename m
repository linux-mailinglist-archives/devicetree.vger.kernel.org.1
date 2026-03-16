Return-Path: <devicetree+bounces-276269-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMTLM5YguGmdZQEAu9opvQ
	(envelope-from <devicetree+bounces-276269-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:24:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 667D729C3CB
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:24:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A8DD23021964
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:23:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4787839C643;
	Mon, 16 Mar 2026 15:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="XTtw7wr1"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557FE38D00A;
	Mon, 16 Mar 2026 15:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773674639; cv=none; b=azHfZXSHTV0CghmhdPaCfkBW9WHeraHtJSi67Da7r60VorcmEXVataoqS08u0tFE2ri9wvwZ3TFl5sNsWm1jfH5vMOTfo2WnVVK/2ysfn0UG17drTikqFj7fPtzeP1lGqIwy0HQlxqJkNqFNG0OBbRK9zUkbqq5Gy2IphnLZPkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773674639; c=relaxed/simple;
	bh=20GIlEHy/sVe4e2jX3rrE8q0cbxfWTl2tfNOtUUch/w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e8CcU4Qretorgc/72Zmzh4Ytstvo+wkbsM8FEEm0yDAe1NqX8eUnLw4f3Iw8t25O29gYZJN3IvCbh2fqBxUvG9OiQGd8LUVd4Y5cBt2q/stRrOmpl792OWa/uOUcOLqSc7KLxzqCdRQoPxrLXuQINIWd01KqEeL3zsbkEUpL9kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=XTtw7wr1; arc=none smtp.client-ip=198.175.65.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773674637; x=1805210637;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=20GIlEHy/sVe4e2jX3rrE8q0cbxfWTl2tfNOtUUch/w=;
  b=XTtw7wr1q61fTO0nm5qGfHEVy/aF5vaXGsIiBTk5Ilgngk/PbWAsFtJg
   B1/F5EMMGlaOIQwlJFpxE0wMcXIxNlbDg07ETqGANSzXF8v0LXKKIaQzN
   Pd0WyRXJkKmGg7r9Skxcz4/lrsE4B5McpltezJta10J5Ed8HnBlw2+Tc6
   jkbyGziNJxrdcXLOGKoWoJf0sorS04/93fhJDBOL6tjt1Xco512Lhb7u+
   xFSaJm3o0qXPpqxJwE7WFQVd0AmXOYRLLUXiGkreK3jPlqox9Grx0cMXS
   oW8mvkspWsIh9B3NYcN6tXmumN0XFZzoJdM1C2QjnqwIe93jtjWCa877F
   A==;
X-CSE-ConnectionGUID: OOZIVr/wQG6GtS+0zXzdHg==
X-CSE-MsgGUID: JnWJ470MTcaIV5lPFhgPqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="78544273"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; 
   d="scan'208";a="78544273"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2026 08:23:57 -0700
X-CSE-ConnectionGUID: jXSBGeGqQO+Oj+adpoA8YA==
X-CSE-MsgGUID: jMMn6nsiQBCwFDEfx9ZAnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; 
   d="scan'208";a="252475109"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.237])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2026 08:23:53 -0700
Date: Mon, 16 Mar 2026 17:23:50 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jonathan Santos <Jonathan.Santos@analog.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, lars@metafoo.de,
	Michael.Hennerich@analog.com, cosmin.tanislav@analog.com,
	jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH v2 4/5] iio: adc: ad4130: introduce chip info for future
 multidevice support
Message-ID: <abgghuhw01q9u90c@ashevche-desk.local>
References: <cover.1773311639.git.Jonathan.Santos@analog.com>
 <4ab83983026db04695e0a36a7103efbfb82f7a76.1773311639.git.Jonathan.Santos@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4ab83983026db04695e0a36a7103efbfb82f7a76.1773311639.git.Jonathan.Santos@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276269-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ashevche-desk.local:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 667D729C3CB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 08:45:36AM -0300, Jonathan Santos wrote:
> Introduce a chip_info structure to abstract device-specific parameters
> and prepare the driver for supporting multiple AD4130 family variants.

...

> +struct ad4130_chip_info {
> +	const char *name;
> +	unsigned int max_analog_pins;
> +	const struct iio_info *info;
> +	const unsigned int *reg_size;
> +	const unsigned int reg_size_length;

On (some) 64-bit architectures it might have unneeded gaps. Does `pahole` agree
with this layout?

> +};

-- 
With Best Regards,
Andy Shevchenko



