Return-Path: <devicetree+bounces-274706-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEjEC/blsmktQwAAu9opvQ
	(envelope-from <devicetree+bounces-274706-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:12:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 172012754AB
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:12:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 957E73005588
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:12:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79B8B3F54A2;
	Thu, 12 Mar 2026 16:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="d0h3OrG/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49D63F65E1;
	Thu, 12 Mar 2026 16:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.243.120.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773331947; cv=none; b=LiPzQkYiWvxq+HVjhVlShqvkJzomVMF4BVe+0N5g280Y5Bl2WjdffCKiLg6u4A3rxGh8Bio/535pv4RyyqIXgc/Mc5ZvKtXMNwvfEvfV7srRU+VZWqVp+HBl/hcShl30fFPDn5Nh8h6UVhflfkyPX9/spiLTGmKBGgy2S8zkdnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773331947; c=relaxed/simple;
	bh=Q9NlZGCu4w042Gvc5tc/gR/ArDV22Fj5215h1wuusjc=;
	h=Date:From:To:Cc:Subject:Message-Id:In-Reply-To:References:
	 Mime-Version:Content-Type; b=sTBNhiLxNy4xmxDQhYLLTHz4yI/4lV485JTcLPWXJcONc5NcBYT397YAl6QTp6SgTbsyn6xaZNNhhs7WXbJZvwiFbpCTeEtotCQLkTHNDI7khGrSMPVmP/VX3yCSxcedvBLoKbgUMuHQKcAE5dnb/eCjyc3S7Vc3kGBsz+wau8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com; spf=pass smtp.mailfrom=hugovil.com; dkim=fail (0-bit key) header.d=hugovil.com header.i=@hugovil.com header.b=d0h3OrG/ reason="key not found in DNS"; arc=none smtp.client-ip=162.243.120.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hugovil.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=default; h=Content-Transfer-Encoding:Mime-Version:Message-Id:Subject:Cc:
	To:From:Date:subject:date:message-id:reply-to;
	bh=3UeY5pu9w23zqf3XqZlvtlFA2ndSXKRbw7aNwE9W7d4=; b=d0h3OrG/LBtm/b0eInaGvDnYxD
	66XPnLPamntvvXAU07VBhv9o1G92E9m/daBkKCXiSCl3Y38dKXeZGVXej0NHaH7b4Vozxlnb1m2AJ
	L5YEKfeDpOw8pyM53jQJnPOVt/AeHeZoMf7BaDGK3uqKdQ3SHbqK8XAcfrDWXrNHfPtM=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168] helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.98.2)
	(envelope-from <hugo@hugovil.com>)
	id 1w0ie2-000000007FN-0dAi;
	Thu, 12 Mar 2026 12:12:18 -0400
Date: Thu, 12 Mar 2026 12:12:17 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
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
Message-Id: <20260312121217.122a6e5b3f5bb1dc64ae8f5b@hugovil.com>
In-Reply-To: <aari1Y1CPZSYEVj3@ashevche-desk.local>
References: <20260305192101.2125660-1-hugo@hugovil.com>
	<20260305192101.2125660-5-hugo@hugovil.com>
	<aari1Y1CPZSYEVj3@ashevche-desk.local>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam_score: -2.0
X-Spam_bar: --
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[protonic.nl,kernel.org,linux-m68k.org,gmail.com,dimonoff.com,collabora.com,blala.de,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-274706-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[hugovil.com];
	R_DKIM_PERMFAIL(0.00)[hugovil.com:s=default];
	DKIM_TRACE(0.00)[hugovil.com:~];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hugo@hugovil.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.891];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 172012754AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Andy,

On Fri, 6 Mar 2026 16:21:09 +0200
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Thu, Mar 05, 2026 at 02:20:50PM -0500, Hugo Villeneuve wrote:
> 
> > Add support for GPIO-based charlieplex keypad, allowing to control
> > N^2-N keys using N GPIO lines.
> > 
> > Reuse matrix keypad keymap to simplify, even if there is no concept
> > of rows and columns in this type of keyboard.
> 
> ...
> 
> > --- a/drivers/input/keyboard/Makefile
> > +++ b/drivers/input/keyboard/Makefile
> > @@ -40,6 +40,7 @@ obj-$(CONFIG_KEYBOARD_LOCOMO)		+= locomokbd.o
> >  obj-$(CONFIG_KEYBOARD_LPC32XX)		+= lpc32xx-keys.o
> >  obj-$(CONFIG_KEYBOARD_MAPLE)		+= maple_keyb.o
> >  obj-$(CONFIG_KEYBOARD_MATRIX)		+= matrix_keypad.o
> > +obj-$(CONFIG_KEYBOARD_CHARLIEPLEX)	+= charlieplex_keypad.o
> 
> Seem unordered. At least the all around it is ordered AFAICS.

Will fix it.


> 
> >  obj-$(CONFIG_KEYBOARD_MAX7359)		+= max7359_keypad.o
> >  obj-$(CONFIG_KEYBOARD_MAX7360)		+= max7360-keypad.o
> >  obj-$(CONFIG_KEYBOARD_MPR121)		+= mpr121_touchkey.o
> 
> ...
> 
> > +/*
> > + * GPIO driven charlieplex keypad driver
> > + *
> > + * Copyright (c) 2025 Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> 2026?

Ok


> 
> > + *
> > + * Based on matrix_keyboard.c
> > + */
> 
> ...
> 
> > +#include <linux/bitops.h>
> > +#include <linux/delay.h>
> > +#include <linux/dev_printk.h>
> > +#include <linux/device/devres.h>
> > +#include <linux/err.h>
> > +#include <linux/gpio/consumer.h>
> > +#include <linux/input.h>
> > +#include <linux/input/matrix_keypad.h>
> > +#include <linux/math.h>
> > +#include <linux/module.h>
> > +#include <linux/mod_devicetable.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/property.h>
> > +#include <linux/types.h>
> 
> > +static void charlieplex_keypad_poll(struct input_dev *input)
> > +{
> > +	struct charlieplex_keypad *keypad = input_get_drvdata(input);
> 
> > +	int oline;
> 
> Why signed?

Will change this one, and others noted below to unsigned.


> 
> > +	int code;
> > +
> > +	for (code = 0, oline = 0; oline < keypad->nlines; oline++) {
> 
> Can be like
> 
> 	code = 0;
> 	for (unsigned int oline = 0; oline < keypad->nlines; oline++) {
> 
> as iterator is not used outside the loop.

Ok, will do.


> 
> > +		DECLARE_BITMAP(values, MATRIX_MAX_ROWS);
> 
> > +		int iline;
> 
> Why signed?
> 
> > +		int err;
> > +
> > +		/* Activate only one line as output at a time. */
> > +		gpiod_direction_output(keypad->line_gpios->desc[oline], 1);
> > +
> > +		if (keypad->settling_time_us)
> > +			fsleep(keypad->settling_time_us);
> > +
> > +		/* Read input on all other lines. */
> > +		err = gpiod_get_array_value_cansleep(keypad->line_gpios->ndescs,
> > +						     keypad->line_gpios->desc,
> > +						     keypad->line_gpios->info, values);
> > +		if (err)
> > +			return;
> 
> > +		for (iline = 0; iline < keypad->nlines; iline++) {
> 
> Can be just
> 
> 		for (unsigned int iline = 0; iline < keypad->nlines; iline++) {
> 
> as iterator is not used outside the loop.

Ok.


> 
> > +			if (iline == oline)
> > +				continue; /* Do not read active output line. */
> > +
> > +			/* Check if GPIO is asserted. */
> > +			if (test_bit(iline, values)) {
> > +				code = MATRIX_SCAN_CODE(oline, iline,
> > +							get_count_order(keypad->nlines));
> > +				/*
> > +				 * Exit loop immediately since we cannot detect
> > +				 * more than one key press at a time.
> > +				 */
> > +				break;
> > +			}
> > +		}
> > +
> > +		gpiod_direction_input(keypad->line_gpios->desc[oline]);
> > +
> > +		if (code)
> > +			break;
> > +	}
> > +
> > +	charlieplex_keypad_check_switch_change(input, code);
> > +}
> 
> ...
> 
> > +	for (unsigned int i = 0; i < keypad->nlines; i++)
> > +		(keypad->line_gpios->desc[i], "charlieplex_kbd_line");
> 
> Hmm... Don't you want to give it an index?

Makes sense, will do.

I will also change for "keypad->line_gpios->ndescs" in the loop
iterator.


> 
> (In case you go this direction, see the kasprintf_strarray() or
>  its managed variant.)
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 


-- 
Hugo Villeneuve

