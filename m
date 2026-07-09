Return-Path: <devicetree+bounces-323312-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lNnTAgYtT2qDbgIAu9opvQ
	(envelope-from <devicetree+bounces-323312-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 07:09:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5172972CB16
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 07:09:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TXNY6uhY;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323312-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323312-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1878930056C7
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 05:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73FCB337107;
	Thu,  9 Jul 2026 05:09:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E34335BA;
	Thu,  9 Jul 2026 05:09:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783573763; cv=none; b=Ua7T5tdE8NOqTdn8TtB6onJkDOLKMHv87PQDLGxkFc2dQdVZAIaN+R/C4yRGJx/GQWzSAEKOYopavcVvg0p718UDIvUefYbk7tU8sGcJROrcmgmVzueNs3tc81Y8OruFFuqr0pU4PA48aQsZuXK2V5V6DWeZLxABd26bnOBAUpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783573763; c=relaxed/simple;
	bh=EphSH5hmz7qWsddBBmPqf8NGUOLm9jycu0bGOmBKy50=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tp83QoPJwB6B1WtIsevv6qDj3X0LuX0wIAoJa+iMz5Qw/eVHxBv4CXz8EsPckIjS/k846yN4IlU4ZoHPy9ZhBv7idgOmWog+pk8Arl4e7JKSdU04ryqj2Nj6CNCqHyOhG0cWqXe7D5ObIQcQPfy238il8gk7efjDsD/gXfiPb4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXNY6uhY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64F131F00A3E;
	Thu,  9 Jul 2026 05:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783573761;
	bh=D15yqdrjbGfAiPWT5pjDmetR4bNM6aneHpkvYGA5KzE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TXNY6uhYybwPO7ZETVj/pdkrfg4tO43T3D8ruioLzROnjQNDSifORGJdB96BH+wfd
	 0Xh85O5jc1VOffB0xlFafOLbr+UvrYIRvTVkjYkkr3V7rdDTfu19fFocCA43NZp0X4
	 EV5LApFP0oAMn3glVUEfVuPZevMOq2CeFyhBNoiagQzUZZwgbfTbLXeuYxU+XcGE4A
	 9gaV12jF6W7fl5mJsXWOWNM1fdTPexoz4nNoR2glpnAYN6sns0/Y9SRq26aeZvvxcx
	 f3DMvHxP1v7M3s2G3XfXU0DppdmWme9gTdO/wZ16K5G5/BvRF5cHBsa5Gp6brYWGZt
	 UfBn/NtqM39TQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 04/11] ARM: s3c: crag6410: switch keypad device to
 software properties
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>
Cc: dmitry.torokhov@gmail.com, linux-input@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260708-samsung-kp-v2-4-3c6ed4c9b3b6@gmail.com>
References: <20260708-samsung-kp-v2-0-3c6ed4c9b3b6@gmail.com>
 <20260708-samsung-kp-v2-4-3c6ed4c9b3b6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 05:09:20 +0000
Message-Id: <20260709050921.64F131F00A3E@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323312-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:linux-input@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5172972CB16

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:

New issues:
- [High] Legacy device tree parsing fails because matrix_keypad_parse_prope=
rties() overwrites legacy values.
- [Low] pr_err() message lacks trailing newline.
- [Low] S3C64XX_SETUP_KEYPAD Kconfig symbol is dead code but remains select=
ed.

Pre-existing issues:
- [High] Uninitialized variables in samsung_parse_verbose_keymap() generate=
 random keycodes and leak kernel memory.
- [High] Asynchronous data abort occurs due to IRQ registration before PM r=
untime enablement.
--

--- Patch [4]: [PATCH v2 04/11] ARM: s3c: crag6410: switch keypad device to=
 software properties ---
commit acad872c671c37651ef2ad547b4a44b17438b49e
Author: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: ARM: s3c: crag6410: switch keypad device to software properties

This commit switches the keypad device to use software properties. This cha=
nge
allows dropping support for platform data from the samsung-keypad driver. T=
he
platform data and related setup code are removed from the machine
initialization.

> diff --git a/arch/arm/mach-s3c/Makefile.s3c64xx b/arch/arm/mach-s3c/Makef=
ile.s3c64xx
> --- a/arch/arm/mach-s3c/Makefile.s3c64xx
> +++ b/arch/arm/mach-s3c/Makefile.s3c64xx
> @@ -32,7 +32,6 @@ obj-y				+=3D dev-audio-s3c64xx.o
>  obj-$(CONFIG_S3C64XX_SETUP_FB_24BPP)	+=3D setup-fb-24bpp-s3c64xx.o
>  obj-$(CONFIG_S3C64XX_SETUP_I2C0)	+=3D setup-i2c0-s3c64xx.o
>  obj-$(CONFIG_S3C64XX_SETUP_I2C1)	+=3D setup-i2c1-s3c64xx.o
> -obj-$(CONFIG_S3C64XX_SETUP_KEYPAD)	+=3D setup-keypad-s3c64xx.o

[Severity: Low]
Is the S3C64XX_SETUP_KEYPAD Kconfig symbol dead code now?

Since the file is removed from the Makefile, the config symbol doesn't seem
to compile any code anymore, but it is still selected by MACH_WLF_CRAGG_6410
in Kconfig.s3c64xx.

[ ... ]

> diff --git a/arch/arm/mach-s3c/mach-crag6410.c b/arch/arm/mach-s3c/mach-c=
rag6410.c
> --- a/arch/arm/mach-s3c/mach-crag6410.c
> +++ b/arch/arm/mach-s3c/mach-crag6410.c
[ ... ]
> @@ -192,17 +193,41 @@ static uint32_t crag6410_keymap[] =3D {
[ ... ]
> +static void __init crag6410_setup_keypad(void)
> +{
> +	struct platform_device *pd;
> +
> +	/* Set all the necessary GPK pins to special-function 3: KP_ROW[x] */
> +	s3c_gpio_cfgrange_nopull(S3C64XX_GPK(8), 2, S3C_GPIO_SFN(3));
> +
> +	/* Set all the necessary GPL pins to special-function 3: KP_COL[x] */
> +	s3c_gpio_cfgrange_nopull(S3C64XX_GPL(0), 6, S3C_GPIO_SFN(3));
> +
> +	pd =3D platform_device_register_full(&crag6410_keypad_info);
> +	if (IS_ERR(pd))
> +		pr_err("failed to instantiate keypad device");

[Severity: Low]
Would it be better to add a trailing newline to this pr_err() message?

It looks like the kernel log output might become garbled if the registration
fails.

> +}

[Severity: High]
Could this sequence cause a regression where legacy device trees fail to pr=
obe?

When reading properties:

drivers/input/keyboard/samsung-keypad.c:samsung_keypad_parse_properties() {
    ...
    error =3D matrix_keypad_parse_properties(dev, &num_rows, &num_cols);
    ...
}

The matrix_keypad_parse_properties() function unconditionally zeroes the
variables at entry, so if modern properties are absent, the legacy
samsung,keypad-num-rows properties are overwritten and the function returns
-EINVAL.

[Severity: High]
This is a pre-existing issue, but might samsung_parse_verbose_keymap() leak
uninitialized stack memory to userspace?

drivers/input/keyboard/samsung-keypad.c:samsung_parse_verbose_keymap() {
    ...
    u32 row, col, key_code;

    fwnode_property_read_u32(child, "keypad,row", &row);
    ...
    *keymap++ =3D KEY(row, col, key_code);
    ...
}

If a child node is missing the keypad,row, keypad,column, or linux,code
properties, fwnode_property_read_u32() leaves row, col, and key_code
uninitialized. These stack values are used in the KEY() macro and stored in
the keymap, where userspace can read them via the EVIOCGKEYCODE ioctl.

[Severity: High]
This is a pre-existing issue, but is it possible for an asynchronous data a=
bort
to occur if an IRQ is pending before PM runtime is enabled?

In probe, the IRQ is requested before the device is powered on:

drivers/input/keyboard/samsung-keypad.c:samsung_keypad_probe() {
    ...
    error =3D devm_request_threaded_irq(&pdev->dev, keypad->irq, NULL,
                                      samsung_keypad_irq, IRQF_ONESHOT,
                                      dev_name(&pdev->dev), keypad);
    ...
}

If an IRQ is pending from the bootloader, the handler runs immediately:

drivers/input/keyboard/samsung-keypad.c:samsung_keypad_irq() {
    ...
    pm_runtime_get_sync(&keypad->pdev->dev);

    do {
        readl(keypad->base + SAMSUNG_KEYIFSTSCLR);
    ...
}

Since the device is unclocked and pm_runtime_get_sync() fails, readl()
accesses unclocked registers and triggers a data abort.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-samsung-kp=
-v2-0-3c6ed4c9b3b6@gmail.com?part=3D4

