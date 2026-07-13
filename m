Return-Path: <devicetree+bounces-325447-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Uug0MtrIVGrSSwAAu9opvQ
	(envelope-from <devicetree+bounces-325447-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:15:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F7974A392
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:15:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=alJrUFVk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325447-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325447-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0CF9E30393AE
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4614381B01;
	Mon, 13 Jul 2026 11:11:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7252F35A387
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 11:11:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783941065; cv=none; b=tQ5LCpagToR+6yB4zbBIZU6gSXeV7raUb9uopAcnRtwXhcBRkVaZBHvKRqGdPQzu3fw8BMo74D2d7y4/5WUnUtatjGf5xyOtkTWT8hW+kCHRHuOLD7kDQW5gsFRnYQA3Il6C6IJNuHsG4XEnCtOklgTYVNw7J1+6aYBqXNIS6Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783941065; c=relaxed/simple;
	bh=EGXB8yeRUQ2J3HxM+M5MB8tUDKfhobvzBsKP0GAaj8I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Rcr3AoB+KWCNis6+r6XvkwP90dbRkfm1MP7Fvk10ZW7Pvmnn0OMccMkSJU6KS6Pr3vzAGvPoIhjF5793ze/dzidLb//jx3rB8nHWnMGg/MMqT2k4Y/GK3mHRgbNGoo8aU9bi6vL2xfrcwdlouFH+QN/4J9vnqE37Y+jQpgWI9Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alJrUFVk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 177231F000E9;
	Mon, 13 Jul 2026 11:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783941064;
	bh=I6TgTscz1ajlxOShBQNvYClMe1K2o+viguudEWs7jp4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=alJrUFVkUvMC8xZax1roK9AXSwzZPj2JAq8ZwwXBGGuCRxWHWjpPtlyf1glkiMDVG
	 4yzAZot461xTQS/ma2HU5JS3Gz9QE7iYAB+Ie+RA/29V6QrQ5iB8dkx0vj7mrA1Mpa
	 HrZ1Lgk0azI1vzzOgt7QgZ/PiZ182uCLNifeysZmfMZs+7CN6D2jmua8Q3HtqCQXeW
	 2GHVhM9Dz1kw0W0Bfja9OD/YYW57q7kamp0g0mtk6/cn8u93f/xeslG+VpXsuIMBVw
	 ++1Zqv8g1z9FkrKDz4HfruBWmjdPwgKm2I6OY1cQxD6CWRFNAgzCSkBU0is5ELogKN
	 kpqHFfU9wsFpg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 8/8] ARM: dts: mstar: ssd201htv2: Add SD card supply
 regulator
Reply-To: sashiko-reviews@lists.linux.dev
To: "Daniel Palmer" <daniel@thingy.jp>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260713105950.1346962-9-daniel@thingy.jp>
References: <20260713105950.1346962-1-daniel@thingy.jp>
 <20260713105950.1346962-9-daniel@thingy.jp>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 11:11:03 +0000
Message-Id: <20260713111104.177231F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325447-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:daniel@thingy.jp,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0x0f.com:email,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 13F7974A392

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The fixed regulator node `reg_sd_vdd` is missing the `enable-act=
ive-high;` property, causing the GPIO subsystem to silently override the po=
larity to active-low despite the `GPIO_ACTIVE_HIGH` flag.
--

--- Patch [8]: [PATCH 8/8] ARM: dts: mstar: ssd201htv2: Add SD card supply =
regulator ---
commit 54af4e7814b68ef5327152ebd2b9e1372991e4d5
Author: Daniel Palmer <daniel@0x0f.com>

ARM: dts: mstar: ssd201htv2: Add SD card supply regulator

Add the fixed regulator that supplies the SD card slot on the ssd201htv2.

> diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-ssd201h=
tv2.dts b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-ssd201htv2.d=
ts
> index 5d81641414a21..9f0ce16a08748 100644
> --- a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-ssd201htv2.dts
> +++ b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-ssd201htv2.dts
[ ... ]
> @@ -18,6 +20,14 @@ aliases {
>  	chosen {
>  		stdout-path =3D "serial0:115200n8";
>  	};
> +
> +	reg_sd_vdd: regulator-sd-vdd {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "sd_vdd";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		gpio =3D <&gpio SSD20XD_GPIO_GPIO0 GPIO_ACTIVE_HIGH>;

[Severity: Medium]
Is the enable-active-high; property missing here?

For regulator-fixed nodes, the GPIO subsystem applies a legacy quirk in
drivers/gpio/gpiolib-of.c:of_gpio_set_polarity_by_property() where the
absence of enable-active-high forces an active-low override. This ignores
the GPIO_ACTIVE_HIGH flag.

Will this cause the regulator framework to drive the GPIO low instead of
high, failing to power the SD card on this board?

> +	};
>  };
> =20
>  &pm_uart {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713105950.1346=
962-1-daniel@thingy.jp?part=3D8

