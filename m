Return-Path: <devicetree+bounces-311833-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Dwz3EbDOL2r8GwUAu9opvQ
	(envelope-from <devicetree+bounces-311833-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:06:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6484A685426
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:06:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Kte6Rjux;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311833-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-311833-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 831793003BD2
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30CB23DC4D7;
	Mon, 15 Jun 2026 10:05:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D60D3DC4D9;
	Mon, 15 Jun 2026 10:05:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781517953; cv=none; b=ncEVl7WN5fUKkYRHLTu3J501hiPxMij0ay5lboMccKeAKMFGO0uPo+aXJpzX7b8bRpPOLKCI017ZZzfm+aZgmw96dHRyJ8eYawENnSKKAy3tOOSn/+F5op2xKND4rW8eXhtuJx3PJUonSuobSalIVd8D47YcU1UqyLgxQKpEIUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781517953; c=relaxed/simple;
	bh=Eulha7UzRSY9oU0xqkJ+6wtdtDdj7wH6sxgtRpIpUZw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BjuMvTHqpVL+4ZBD6f96buEWf151bHRxwXbgwn3mJIsTvX6aqezTnvFjwtytYJFPzpGyPWEgsVuUmPHNaF+4iH6HTEQYtUdQ+Rl+oV22sZ0VwxUCk70DOeDmfBVVC6abMohMQjRR8/J/jSovkdRGCg52bIIYfHLVzGdpP7rYJHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Kte6Rjux; arc=none smtp.client-ip=192.198.163.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781517951; x=1813053951;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Eulha7UzRSY9oU0xqkJ+6wtdtDdj7wH6sxgtRpIpUZw=;
  b=Kte6RjuxmLiJKALwBbavwzJpApZcIxEvRuWSV5u9QMh0Ii9j8Zk4sdz9
   AUjo+0MkcU2y+7IY4L2LM6/HUekPCHIRp6cncQP+dM2UsEs6j4D7djirb
   tFtagN3tYWbmkzhePdZfHuF/tHUp47GievSxhvwNqCy1KIyV6to9tzSiZ
   yXwt0PO5fqdER8gQEeRxlZlpbfkbvj3UW+aOoUssFONjrhkrwieZVnKyI
   aq4gKXXmQWQ7NbkWCA5sFp66CdYib4W77mlcHLgnODmV7Z5smrFJr6gzQ
   fU+5Uk5smHj9Qy3ClYe/jyRJZ9UCF5o9UZ1lq6HO3rcYD7+wZU+HQQrWW
   w==;
X-CSE-ConnectionGUID: EgNbV5OOQNGygSPHPca9yQ==
X-CSE-MsgGUID: MymjHICYSfCPRzmwM5aopw==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="81392202"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; 
   d="scan'208";a="81392202"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026 03:05:50 -0700
X-CSE-ConnectionGUID: GLcbn1y4TD2pHXtCrmLYMg==
X-CSE-MsgGUID: rmJ+7DQmSdSZx+wa8AePDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; 
   d="scan'208";a="244521580"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.235])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026 03:05:47 -0700
Date: Mon, 15 Jun 2026 13:05:44 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Kim Seer Paller <kimseer.paller@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux@analog.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/4] iio: dac: ad3530r: Add support for AD3532R/AD3532
Message-ID: <ai_OeEegWavHcNF1@ashevche-desk.local>
References: <20260615-iio-ad3532r-support-v2-0-84a0af8b83fa@analog.com>
 <20260615-iio-ad3532r-support-v2-4-84a0af8b83fa@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260615-iio-ad3532r-support-v2-4-84a0af8b83fa@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311833-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kimseer.paller@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:Michael.Hennerich@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@analog.com,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,ashevche-desk.local:mid,intel.com:dkim,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6484A685426

On Mon, Jun 15, 2026 at 02:20:18PM +0800, Kim Seer Paller wrote:
> The AD3532R/AD3532 is a 16-channel, 16-bit voltage output DAC with a
> dual-bank register architecture (bank 0 at 0x1000 for channels 0-7,
> bank 1 at 0x3000 for channels 8-15). It shares similar functionality
> with AD3530R (channel configuration, LDAC triggering, powerdown control),
> the main difference being the register address map due to the dual-bank
> architecture, handled by table-driven helpers.
> 
> Add AD3532R-specific register definitions, channel specs, per-bank
> register arrays, a dedicated ad3532r_set_dac_powerdown(), and per-chip
> regmap_config to limit debugfs-exposed register space to each variant's
> actual address range.

...


>  	help
> -	  Say yes here to build support for Analog Devices AD3530R, AD3531R
> -	  Digital to Analog Converter.
> +	  Say yes here to build support for Analog Devices AD3530/AD3530R,
> +	  AD3531/AD3531R, and AD3532/AD3532R Digital to Analog Converters.

This just shows how unscalable the above text is. That's why we usually
recommend to make the list explicit and separated.

	  Say yes here to build support for the following Analog Devices
	  Digital to Analog Converters:
	  - AD3530/AD3530R (8-channel)
	  - AD3531/AD3531R (4-channel)
	  - AD3532/AD3532R (16-channel)

(and looking into the C-file change, perhaps add here as well distinctive
 information, such as number of channels, in the parentheses).

>  	  To compile this driver as a module, choose M here: the
>  	  module will be called ad3530r.

...

> +#define AD3532R_INTERFACE_CONFIG_A_0		0x1000
> +#define AD3532R_INTERFACE_CONFIG_A_1		0x3000
> +#define AD3532R_OUTPUT_OPERATING_MODE_0		0x1020
> +#define AD3532R_OUTPUT_OPERATING_MODE_1		0x1021
> +#define AD3532R_OUTPUT_OPERATING_MODE_2		0x3020
> +#define AD3532R_OUTPUT_OPERATING_MODE_3		0x3021
> +#define AD3532R_OUTPUT_CONTROL_0		0x102A
> +#define AD3532R_OUTPUT_CONTROL_1		0x302A
> +#define AD3532R_REFERENCE_CONTROL_0		0x103C
> +#define AD3532R_REFERENCE_CONTROL_1		0x303C
> +#define AD3532R_SW_LDAC_TRIG_0			0x10E5
> +#define AD3532R_SW_LDAC_TRIG_1			0x30E5
> +#define AD3532R_INPUT_CH_0			0x10EB
> +#define AD3532R_INPUT_CH_1			0x30EB
> +#define AD3532R_MAX_REG_ADDR			0x30F9

Hmm... I dunno if it's better to sort by values (so the "bank" 0 goes together
followed by "bank" 1). Jonathan, what's your preference here? Nuno, David?

...

> +static ssize_t ad3532r_set_dac_powerdown(struct iio_dev *indio_dev,
> +					 uintptr_t private,
> +					 const struct iio_chan_spec *chan,
> +					 const char *buf, size_t len)
> +{
> +	struct ad3530r_state *st = iio_priv(indio_dev);
> +	unsigned int reg, pdmode, mask, val, local_ch;
> +	bool powerdown;
> +	int ret;
> +
> +	ret = kstrtobool(buf, &powerdown);

Do you need to include kstrtox.h?

> +	if (ret)
> +		return ret;
> +
> +	guard(mutex)(&st->lock);

+ blank line here.

> +	local_ch = chan->channel % AD3530R_CH_PER_BANK;

> +	reg = (chan->channel < AD3530R_CH_PER_BANK ? AD3532R_OUTPUT_OPERATING_MODE_0 :
> +	       AD3532R_OUTPUT_OPERATING_MODE_2) +
> +	       local_ch / AD3530R_CH_PER_REG;

This is unreadable. Can you refactor it?

> +	mask = AD3530R_OP_MODE_CHAN_MSK(local_ch % AD3530R_CH_PER_REG);
> +
> +	pdmode = powerdown ? st->chan[chan->channel].powerdown_mode : 0;
> +	val = field_prep(mask, pdmode);
> +
> +	ret = regmap_update_bits(st->regmap, reg, mask, val);
> +	if (ret)
> +		return ret;
> +
> +	st->chan[chan->channel].powerdown = powerdown;
> +
> +	return len;
> +}

...

> +	.num_banks = ARRAY_SIZE(ad3532r_if_config),

Also check if array_size.h is included.

-- 
With Best Regards,
Andy Shevchenko



