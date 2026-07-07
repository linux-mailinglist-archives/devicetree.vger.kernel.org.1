Return-Path: <devicetree+bounces-322031-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7fZjKYb+TGrBtAEAu9opvQ
	(envelope-from <devicetree+bounces-322031-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:26:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9EA71BE24
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:26:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=JMQNNGr8;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322031-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322031-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 40104306FD69
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 13:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D1283546CA;
	Tue,  7 Jul 2026 13:15:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E71A800;
	Tue,  7 Jul 2026 13:15:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783430142; cv=none; b=coXmFbAA+9ELKPuYPWaY0FMgqaV+zPG32M90buQq22eLvv2yfZkj/HpvfqPAivRQOME+DkXhy9Wm3soJk5Xxn2s3/KbymVymLZiF0/4uZLCBUmvGr+2rGVxWZdUhVCR2xKcNpugJypymsyJ5huu49svMUrkztaL8XTSYYSMjsik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783430142; c=relaxed/simple;
	bh=iDzvpe4OH4cOBUHS9Jk/7IHj7gXd1XxZiOLe+4QRMKs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BYMJPJuRcTXTvutAJUK0Qh3GzfZQS0TJhTh1qEty5zTubKdg/zsRuAo1r1u3QSB4h5R+YFJ4U7XYeavLIzCpb5hMqFzrICHKZQ6BSbMuxJ3gv8fcwnJ/ZxUtqSp8ES8j1UOat8vwYqj4t6AWaw98Wuc2f0s+x+MXpHT44UeKZ/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=JMQNNGr8; arc=none smtp.client-ip=192.198.163.10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783430141; x=1814966141;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=iDzvpe4OH4cOBUHS9Jk/7IHj7gXd1XxZiOLe+4QRMKs=;
  b=JMQNNGr8CBC8NLYXLdzVIu06ZoR4FAnZT8PrkLTwRgmvl0PtMpKqCg6h
   28pAi2ormbZlu1FSQ+5fnafSsK47NxpagagX5pTy4mwLuFzHZGl9oFiwL
   ZTkYAoZj1cCnAEVp3FWQo3SyqBEWWNe4ZoplWlWI7dB7EH5CVdQoKxLSO
   1wYzWdqG6Y4XTxd9ksd9hLNrNvUb8X5YefYv4th5FOUArxRWaOpGH6AGt
   1Y6ICoqgjxWgg2xQZN6DFnlOQJi2ocihpt+ld5E3gsIUM+Rkklq8Zuucf
   vXPVp5zhuHn9snwHTVSrEQbdqQXCgyaGb94pVlk23LyieOjQznBVZCQrI
   A==;
X-CSE-ConnectionGUID: yEsRFAlNQSmBKb1g0TWGuQ==
X-CSE-MsgGUID: 2wFrkq/VQeKNk4WXdXWY7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="95454578"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; 
   d="scan'208";a="95454578"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2026 06:15:40 -0700
X-CSE-ConnectionGUID: /L360FXIRVGtt8giRBGd2Q==
X-CSE-MsgGUID: SsC4WNRhSIaEdP2Sf/12bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; 
   d="scan'208";a="252244834"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost) ([10.245.245.36])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2026 06:15:37 -0700
Date: Tue, 7 Jul 2026 16:15:35 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Md Shofiqul Islam <shofiqtest@gmail.com>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, nuno.sa@analog.com,
	Michael.Hennerich@analog.com, dlechner@baylibre.com,
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux@analog.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 2/2] iio: health: add MAX86150 ECG and PPG biosensor
 driver
Message-ID: <akz79-oAHJhEHH1F@ashevche-desk.local>
References: <20260707104234.1957104-3-shofiqtest@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260707104234.1957104-3-shofiqtest@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-322031-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:shofiqtest@gmail.com,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:nuno.sa@analog.com,m:Michael.Hennerich@analog.com,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux@analog.com,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	HAS_ORG_HEADER(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:from_mime,intel.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1E9EA71BE24

On Tue, Jul 07, 2026 at 01:42:34PM +0300, Md Shofiqul Islam wrote:
> Add a new IIO driver for the Analog Devices MAX86150 integrated
> biosensor, which combines two PPG optical channels (Red/IR LED) and
> one ECG biopotential channel in a single I2C device.
> 
> The device has a 32-entry hardware FIFO with a configurable almost-full
> interrupt.  Because all samples arrive via the FIFO, the driver uses a
> kfifo buffer (like the sibling MAX30100 and MAX30102 drivers) rather
> than the triggered-buffer framework.  The interrupt handler drains the
> FIFO on each A_FULL event and timestamps samples back-calculated from
> the interrupt arrival time by one sample_period_ns per step.
> 
> Key implementation details:
> - FIFO draining via iio_buffer_setup_ops postenable/predisable
> - DMA-safe FIFO read buffer aligned to IIO_DMA_MINALIGN
> - IIO_DECLARE_BUFFER_WITH_TS for the push buffer
> - 24-bit FIFO words decoded via get_unaligned_be24()
> - regmap_set_bits() / regmap_clear_bits() for single-direction writes
> - Overflow drops all samples; timestamps are unreliable after overflow
> - Device remains in shutdown between captures to suppress LED current
> - vdd and vled regulators required per datasheet; vref is not a supply

...

>  endmenu
>  
> +

Now too many blank lines. It rings a bell that I have already commented on this
in v6 or so.

> +config MAX86150
> +	tristate "MAX86150 ECG and PPG biosensor"
> +	depends on I2C
> +	select IIO_BUFFER
> +	select IIO_KFIFO_BUF
> +	select REGMAP_I2C
> +	help
> +	  Say Y here to enable support for the Maxim MAX86150 combined
> +	  ECG and photoplethysmography (PPG) biosensor.
> +
> +	  The driver exposes three IIO channels: two PPG optical channels
> +	  (Red and IR LED) for heart rate and SpO2 monitoring, and one
> +	  ECG channel for biopotential recording.
> +
> +	  This driver can also be built as a module. If so, the module
> +	  will be called max86150.
> +
>  endmenu

...

> +#include <linux/bitfield.h>
> +#include <linux/delay.h>
> +#include <linux/i2c.h>
> +#include <linux/irq.h>
> +#include <linux/iio/buffer.h>
> +#include <linux/iio/iio.h>
> +#include <linux/iio/kfifo_buf.h>
> +#include <linux/module.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>

+ types.h // uXX

> +#include <linux/unaligned.h>

Also sounds like I already commented on this and on the grouping of
linux/iio/*.h. Since there are no links in the cover letter I can't
quickly confirm. So I stop review here and waiting for v9 with properly
formed series and cover letter, and take a chance to go through previous
reviews to check if you addressed everything or replied to the comments
you are not agree with.

...

> +static const struct i2c_device_id max86150_id[] = {
> +	{ "max86150" },

This should be C99 initialiser.

> +	{ }
> +};

-- 
With Best Regards,
Andy Shevchenko



