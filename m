Return-Path: <devicetree+bounces-311503-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vcNTFsYPL2qV7gQAu9opvQ
	(envelope-from <devicetree+bounces-311503-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 22:32:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FBD682308
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 22:32:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="RXuaUCP/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311503-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-311503-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 374EF3001FE2
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 20:32:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DE7A2E8B9B;
	Sun, 14 Jun 2026 20:32:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C7C282F12
	for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 20:32:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781469124; cv=none; b=qZzK8E40iVfLVbPYp0iPZHgXRmQOJ47WQdhrhKVx4biY5e5giDHO7W8BWyIqeqy5MFAGEoJugVHPyfHQfHbezvh7qF82ZKd+Q+JM2rUtVce8j+jB9hD7AjvB8TGd+3RpaqXvY7xSguunr1MynP2ggXpJU5newb/doE2RgM/hke0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781469124; c=relaxed/simple;
	bh=MNap1IXmKSw7z8ZztTjn+qQCHQYJknr41JmaIROPQ1g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=X2TLe1ePh6it7LDu67MqVL26unt/WuLgcX1gswUfCCuoxsRvCpunU+P5AcS6fZ3Q4vdCm9ALJ1Efx1+QIlsDlPufLZBp5EB3bLrhez4wN2YX7tWhwVfPAlyHBkr4wdK05kAlUWW3KUx6ZJNHxWJRULpQCiw4748+5p2+7kfglec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXuaUCP/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6432A1F000E9;
	Sun, 14 Jun 2026 20:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781469122;
	bh=aWGo7AMZ5XAHV9EdUhkU5vKlHXXQxIH0Ms0JHnPMimo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RXuaUCP/+g8im57TfccoFGKXrLemaLjXU+c6ex2PKBqwSiKT3qmMmN7Sr8xsQFyD2
	 EbFEqpfA66GB8xZO58FhmOH1miFDytoHTCbnBYtgFwKP1PkHXACcTx1ZvSiePXJ5by
	 rQ/XJpxiSRqytxbttsEFngZtroYxQxv6YQrZbVttt4752QN8tb6naL9RJ7BBRINNK+
	 4w0bYZf7QZSYsLW1LxdmydjsGK8r2H0CtnzTfaix+iJyYNCMmjtBkgbLUte+5DQrju
	 Z7D7GC9xXVYUBUy0+MBSoFEKuiqTpmNBmnuJ6RCzNDoe7o4OCSo0tHiFOn2DpmVI0N
	 /nFuxRxcqfaXw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] ARM: dts: exynos: Add bluetooth support to manta
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lukas Timmermann" <linux@timmermann.space>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260614-manta-bluetooth-v2-1-52de06cabf9d@timmermann.space>
References: <20260614-manta-bluetooth-v2-1-52de06cabf9d@timmermann.space>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Jun 2026 20:32:01 +0000
Message-Id: <20260614203202.6432A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311503-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux@timmermann.space,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,timmermann.space:email,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D4FBD682308

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing `max-speed` property in the Bluetooth node significantly=
 restricts UART bandwidth.
--

commit 661518d39bb3c0a9a3884e1d914c3ff2bc70cf74
Author: Lukas Timmermann <linux@timmermann.space>

ARM: dts: exynos: Add bluetooth support to manta

This commit enables the bcm4330-bt device for manta boards on serial0.
It also adds the necessary pin definitions and interrupt handling for wakeu=
p.

> diff --git a/arch/arm/boot/dts/samsung/exynos5250-manta.dts b/arch/arm/bo=
ot/dts/samsung/exynos5250-manta.dts
> index 24a27b342227b..76d3657eb22f0 100644
> --- a/arch/arm/boot/dts/samsung/exynos5250-manta.dts
> +++ b/arch/arm/boot/dts/samsung/exynos5250-manta.dts

[ ... ]

> @@ -536,7 +557,25 @@ &sd1_cmd {
> =20
>  /* Bluetooth */
>  &serial_0 {
> -	status =3D "disabled";
> +	pinctrl-0 =3D <&uart0_data &uart0_fctl>;
> +	pinctrl-names =3D "default";
> +
> +	bluetooth {
> +		compatible =3D "brcm,bcm4330-bt";
> +
> +		pinctrl-0 =3D <&bt_reg_on &bt_wake &bt_host_wakeup>;

[Severity: Medium]
Should this node include a max-speed property to negotiate a high-speed
UART connection?

Without max-speed, the brcm,bcm4330-bt driver in drivers/bluetooth/hci_bcm.c
leaves the oper_speed at 0 and skips negotiating a higher baud rate. This
forces the UART to operate at its default 115200 bps.=20

Operating at 115200 bps restricts the bandwidth to around 11.5 KB/s, which
can cause high-bandwidth Bluetooth profiles like A2DP to stutter or fail.
Other Exynos boards typically set max-speed (e.g., max-speed =3D <3000000>)
to prevent this bottleneck.

> +		pinctrl-names =3D "default";
> +
> +		shutdown-gpios =3D <&gph0 0 GPIO_ACTIVE_HIGH>;
> +		device-wakeup-gpios =3D <&gph1 3 GPIO_ACTIVE_HIGH>;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260614-manta-blue=
tooth-v2-1-52de06cabf9d@timmermann.space?part=3D1

