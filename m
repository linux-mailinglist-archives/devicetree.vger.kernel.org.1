Return-Path: <devicetree+bounces-272150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDADMzfjqmkTYAEAu9opvQ
	(envelope-from <devicetree+bounces-272150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:22:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF012228D7
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:22:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B3AE03009981
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5ECC2F6565;
	Fri,  6 Mar 2026 14:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="n3yyh2ui"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2153319D891;
	Fri,  6 Mar 2026 14:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772806881; cv=none; b=Ep7JPQSnK5JkaOiUKdLeZPCYq7QBIHxErhaiTfNMUEEk8eoGFE13snSKJCht+caDeAG2KdWkpbMtZh07DjEmOh1hY7Sz9v+qczbwRaAdHyxVQNVjxGbMOYgXgDAfxNBLx+Mvv67KzFPZmMy/jImYJoWD9vicM9y0PXBiMRf87Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772806881; c=relaxed/simple;
	bh=qrSWEQCzYdDInjoygqfLYRngEipu0GaqBoIRMKJNN88=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=slq3rJLC7OSyZztqUQTU2bLaQHSc4oaRZMgHz1ZK5F6Hgj54Cn0QArWX2G1lnOM1xz4cuzoMhpkF3Z3mGYa/6u0BGICHhOwTlvWwp2/OcL258miYuDBzKbvSUTXSiL5bRaLxWFgC6uFaLJjyzyEj5jLbHtzUzDc/oJmJ7diB4+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=n3yyh2ui; arc=none smtp.client-ip=192.198.163.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772806878; x=1804342878;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=qrSWEQCzYdDInjoygqfLYRngEipu0GaqBoIRMKJNN88=;
  b=n3yyh2ui4ORVwTRw2KVIt7Nw/P5wqAfirfbNaE+h+CpK0I/Xt/UH6T5z
   TZCpOIZQNcA5CMlG3+1TQ4E/0/ijfCov99xSLcWas21v55dsD86LwhSYA
   XsNqdmf6hHfP9qkSOeZVZHbqV7XNu3CU7chp5TyWJxbu/hf6TVVNDOMr7
   wcD/RP53U91RGFmzynGkYUjTUBiLuDyEGPCCu0QUewKycMH7YyQQFmRiu
   C2tuHtHP0woVjTF+yhW1XifCf6BgDSpTBFtfE/zZs8hg28GnpsmS8DjY4
   PQruABFsh5VYiRRS5Pzh6TW+xm1SVUMIOvrpXklrDrlxm9BVrFXfooXOf
   Q==;
X-CSE-ConnectionGUID: uTXM+iwARfu/yLBnWTZb7A==
X-CSE-MsgGUID: WXdmulotSQSv81Y03FAUMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11721"; a="99385719"
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; 
   d="scan'208";a="99385719"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Mar 2026 06:21:17 -0800
X-CSE-ConnectionGUID: Z6Kp7Gz/TD6nsUrJkzKytg==
X-CSE-MsgGUID: 39iaiRcqTdiVpjYced1ksw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; 
   d="scan'208";a="218252442"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost) ([10.245.245.1])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Mar 2026 06:21:12 -0800
Date: Fri, 6 Mar 2026 16:21:09 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: robin@protonic.nl, andy@kernel.org, geert@linux-m68k.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	dmitry.torokhov@gmail.com, hvilleneuve@dimonoff.com,
	mkorpershoek@kernel.org, matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com, lee@kernel.org,
	alexander.sverdlin@gmail.com, marek.vasut@gmail.com, akurz@blala.de,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v4 4/4] Input: charlieplex_keypad: add GPIO charlieplex
 keypad
Message-ID: <aari1Y1CPZSYEVj3@ashevche-desk.local>
References: <20260305192101.2125660-1-hugo@hugovil.com>
 <20260305192101.2125660-5-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260305192101.2125660-5-hugo@hugovil.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 8EF012228D7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[protonic.nl,kernel.org,linux-m68k.org,gmail.com,dimonoff.com,collabora.com,blala.de,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-272150-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2600:3c04:e001:36c::12fc:5321:from];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[10.64.159.150:received,100.90.174.1:received];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,intel.com:dkim,dimonoff.com:email]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 02:20:50PM -0500, Hugo Villeneuve wrote:

> Add support for GPIO-based charlieplex keypad, allowing to control
> N^2-N keys using N GPIO lines.
> 
> Reuse matrix keypad keymap to simplify, even if there is no concept
> of rows and columns in this type of keyboard.

...

> --- a/drivers/input/keyboard/Makefile
> +++ b/drivers/input/keyboard/Makefile
> @@ -40,6 +40,7 @@ obj-$(CONFIG_KEYBOARD_LOCOMO)		+= locomokbd.o
>  obj-$(CONFIG_KEYBOARD_LPC32XX)		+= lpc32xx-keys.o
>  obj-$(CONFIG_KEYBOARD_MAPLE)		+= maple_keyb.o
>  obj-$(CONFIG_KEYBOARD_MATRIX)		+= matrix_keypad.o
> +obj-$(CONFIG_KEYBOARD_CHARLIEPLEX)	+= charlieplex_keypad.o

Seem unordered. At least the all around it is ordered AFAICS.

>  obj-$(CONFIG_KEYBOARD_MAX7359)		+= max7359_keypad.o
>  obj-$(CONFIG_KEYBOARD_MAX7360)		+= max7360-keypad.o
>  obj-$(CONFIG_KEYBOARD_MPR121)		+= mpr121_touchkey.o

...

> +/*
> + * GPIO driven charlieplex keypad driver
> + *
> + * Copyright (c) 2025 Hugo Villeneuve <hvilleneuve@dimonoff.com>

2026?

> + *
> + * Based on matrix_keyboard.c
> + */

...

> +#include <linux/bitops.h>
> +#include <linux/delay.h>
> +#include <linux/dev_printk.h>
> +#include <linux/device/devres.h>
> +#include <linux/err.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/input.h>
> +#include <linux/input/matrix_keypad.h>
> +#include <linux/math.h>
> +#include <linux/module.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +#include <linux/types.h>

> +static void charlieplex_keypad_poll(struct input_dev *input)
> +{
> +	struct charlieplex_keypad *keypad = input_get_drvdata(input);

> +	int oline;

Why signed?

> +	int code;
> +
> +	for (code = 0, oline = 0; oline < keypad->nlines; oline++) {

Can be like

	code = 0;
	for (unsigned int oline = 0; oline < keypad->nlines; oline++) {

as iterator is not used outside the loop.

> +		DECLARE_BITMAP(values, MATRIX_MAX_ROWS);

> +		int iline;

Why signed?

> +		int err;
> +
> +		/* Activate only one line as output at a time. */
> +		gpiod_direction_output(keypad->line_gpios->desc[oline], 1);
> +
> +		if (keypad->settling_time_us)
> +			fsleep(keypad->settling_time_us);
> +
> +		/* Read input on all other lines. */
> +		err = gpiod_get_array_value_cansleep(keypad->line_gpios->ndescs,
> +						     keypad->line_gpios->desc,
> +						     keypad->line_gpios->info, values);
> +		if (err)
> +			return;

> +		for (iline = 0; iline < keypad->nlines; iline++) {

Can be just

		for (unsigned int iline = 0; iline < keypad->nlines; iline++) {

as iterator is not used outside the loop.

> +			if (iline == oline)
> +				continue; /* Do not read active output line. */
> +
> +			/* Check if GPIO is asserted. */
> +			if (test_bit(iline, values)) {
> +				code = MATRIX_SCAN_CODE(oline, iline,
> +							get_count_order(keypad->nlines));
> +				/*
> +				 * Exit loop immediately since we cannot detect
> +				 * more than one key press at a time.
> +				 */
> +				break;
> +			}
> +		}
> +
> +		gpiod_direction_input(keypad->line_gpios->desc[oline]);
> +
> +		if (code)
> +			break;
> +	}
> +
> +	charlieplex_keypad_check_switch_change(input, code);
> +}

...

> +	for (unsigned int i = 0; i < keypad->nlines; i++)
> +		gpiod_set_consumer_name(keypad->line_gpios->desc[i], "charlieplex_kbd_line");

Hmm... Don't you want to give it an index?

(In case you go this direction, see the kasprintf_strarray() or
 its managed variant.)

-- 
With Best Regards,
Andy Shevchenko



