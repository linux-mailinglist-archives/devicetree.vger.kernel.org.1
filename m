Return-Path: <devicetree+bounces-307423-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BfOtJvbFImoYdgEAu9opvQ
	(envelope-from <devicetree+bounces-307423-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:49:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 369D4648519
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:49:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=T6K9AUTn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307423-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-307423-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 005133073C56
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 12:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3C743BBFC4;
	Fri,  5 Jun 2026 12:42:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C249D384CE3
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 12:42:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780663324; cv=none; b=ht6urs3UpSc6l1AAgrKN2zszOUpltSaxOiH4qJxK5e6TrKfutolanKQaW+PwPxPkXtATv+vt885BidjMyXQklhwLmU95NropR1YZwNIhkYRfsES1ROSbS+Xt8xodotO7o3efzf0z5McTtoo1DQrkO+/6PTQJB6iJTlugLeITmHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780663324; c=relaxed/simple;
	bh=znm6JwssoE8N3oVsFAK/qw6cqdp7O2fd14I5i6tSzEs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PW56s53DgTSDGSMm1ztV8ZHa329mFBygDCoSmNN8Mw2vpcvvaWrV6zamkg5zX2hPK46Avnidk7HJHOML91SLzWR4TO1m1ZrpplBH7rPWggGk/xPrVXeuLRvYBEUPy694+GlYS6pQZjFvZBrddhsCJO8RrWrqBNQatTwKPh5FKD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6K9AUTn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAC431F00893;
	Fri,  5 Jun 2026 12:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780663323;
	bh=V2ptEp8Im8xRSlS4ee7MGPCJiXoqRYKdRa/jbY2V/uk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=T6K9AUTnS60pIKZT2Bt5jC4EUTC7slNc3L8OTj70XFcm0IkOk0eWl3HcnGlqJ19V7
	 exyiw6JT+NJCouh9oE+gs/Bom8OkTUTEkvCbd2Vs9SXhliXnnUtpt2rTq9oVyzmrlf
	 yEfC1Xx4HkpaBcxolaBK5tQ/8zud7jGscuBnPypMJE0kmsT6fkA4i6tS3FqjT9JO7A
	 oAfd/W0PglnFwOOHg8A0WDmg3CDvnQ3s1GpwHZXbpBoPCyPm4EIpjok2Roo8QNWMM5
	 p8MN2XOyLjA3avoTvyfX16oQhkOAWrbTwfM1aw6aUVDv4tVPUaZmuZ7guxok1uHevH
	 WWg/z604FJvvw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 13/14] arm64: dts: st: support Engicam
 MicroGEA-STM32MP257-RMM board
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dario Binacchi" <dario.binacchi@amarulasolutions.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260605121957.78409-14-dario.binacchi@amarulasolutions.com>
References: <20260605121957.78409-14-dario.binacchi@amarulasolutions.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 12:42:02 +0000
Message-Id: <20260605124202.DAC431F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307423-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dario.binacchi@amarulasolutions.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,amarulasolutions.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 369D4648519

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Touchscreen coordinate limits do not match the explicitly configur=
ed display panel resolution, leading to skewed touch mapping.
- [High] Incorrect SPI chip select polarity configured for the ILI9806E pan=
el on the spi1 bus.
--

commit 854048d228db5381ac3f46c66e9b5c98347cf9f6
Author: Dario Binacchi <dario.binacchi@amarulasolutions.com>

arm64: dts: st: support Engicam MicroGEA-STM32MP257-RMM board

This commit adds device tree support for the Engicam MicroGEA-STM32MP257-RMM
board. It defines various peripherals including an LCD panel with a
touchscreen, an audio codec, CAN, LEDs, and an SD card.

> diff --git a/arch/arm64/boot/dts/st/stm32mp257-engicam-microgea-rmm.dts b=
/arch/arm64/boot/dts/st/stm32mp257-engicam-microgea-rmm.dts
> new file mode 100644
> index 0000000000000..0212c03aae1ac
> --- /dev/null
> +++ b/arch/arm64/boot/dts/st/stm32mp257-engicam-microgea-rmm.dts

[ ... ]

> +	touchscreen@38 {
> +		compatible =3D "edt,edt-ft5306";
> +		reg =3D <0x38>;
> +		interrupt-parent =3D <&gpiob>;
> +		interrupts =3D <0 IRQ_TYPE_EDGE_FALLING>;
> +		reset-gpios =3D <&gpiod 1 GPIO_ACTIVE_LOW>;
> +		touchscreen-size-x =3D <1280>;
> +		touchscreen-size-y =3D <800>;

[Severity: High]
Are these touchscreen coordinate limits correct for the configured display
panel?

The device tree configures the display panel below as
rocktech,rk050hr345-ct106a, which is a 480x854 portrait panel.

However, the touchscreen size is explicitly set to 1280x800 here. The input
subsystem and userspace will scale touch events assuming these larger
hardware coordinates. Since the actual touchscreen overlaid on a 480x854
panel will report coordinates matching the panel's physical dimensions,
will touches be incorrectly scaled down?

> +	};

[ ... ]

> +&spi1 {
> +	pinctrl-names =3D "default", "sleep";
> +	pinctrl-0 =3D <&spi1_pins_a>;
> +	pinctrl-1 =3D <&spi1_sleep_pins_a>;
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> +	cs-gpios =3D <&gpioh 8 GPIO_ACTIVE_HIGH>, <&gpioh 3 GPIO_ACTIVE_HIGH>;

[Severity: High]
Will the physical polarity of the SPI chip select lines conflict with the
panel's active-low requirement?

The cs-gpios property is configured with the GPIO_ACTIVE_HIGH flag. The
display panel node display@0 below does not specify the spi-cs-high
property, meaning the SPI device expects an active-low chip select.

Since the Linux gpiolib and SPI subsystem rules do not invert the logical
polarity when an active-high GPIO is used for an active-low SPI device,
the SPI core will drive the physical line HIGH when asserting the chip
select.

Because the ILI9806E panel requires an active-low chip select, will it
receive a HIGH signal during SPI transfers and ignore the initialization
commands? Should the cs-gpios property specify GPIO_ACTIVE_LOW instead?

> +	status =3D "okay";
> +
> +	display: display@0 {
> +		compatible =3D "rocktech,rk050hr345-ct106a", "ilitek,ili9806e";
> +		reg =3D <0>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605121957.7840=
9-1-dario.binacchi@amarulasolutions.com?part=3D13

