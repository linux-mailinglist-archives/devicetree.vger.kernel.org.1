Return-Path: <devicetree+bounces-325446-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sl+/J3vHVGqJSwAAu9opvQ
	(envelope-from <devicetree+bounces-325446-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:09:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3323774A2CD
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:09:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cDL9JN8e;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325446-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-325446-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 327CC301347F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:09:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBD3937E2E1;
	Mon, 13 Jul 2026 11:09:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFC2435A387
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 11:09:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783940981; cv=none; b=sQ1a33mrTdI8mPkYmAko71W9lYNfXzIlaHirY9e4v28qXZhM3S2C1yXG/PCggaCFUE72zjA5Loz8E7dlKCxjazduh5LNmU6cnQeeMFGmdmZG9qt4e4/cjjrGkl+J2WOtwPS6xl1EExdFPdlohWX8zYIXIhcU1UcnqXne2WOsGR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783940981; c=relaxed/simple;
	bh=iaoVvMKHatyg6UbCkn0QvBwDEbveTzQTguCJRSu8MPw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=D4bPx/OINMVPaM2G6B5huNVpvUPIPvDWTFy1fMfg/I/LZUaozwC0Ej2sI+5LcPyanZjBfsQIcUv1z7OETqxAdQT8NJqx3IxkDSL2BuXAccISsgd2MjIY5Kos18I6J0pLImpbvplSnx5UJmzgpOUht2RikJXgLVpU4stAggp0uAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDL9JN8e; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 122981F000E9;
	Mon, 13 Jul 2026 11:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783940980;
	bh=QtKgzeUmUFZt7ZH0uxYl57wj5S8gmo4kORvB67EHIoo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cDL9JN8endeqo9eDGolWgPxMIW9QrnWWKmlYmeD3m8+a5LBTQ6a764uDfMG+0zlBU
	 M5CqchdZECe5pW0pkkQ5T1Wk7l+lBYcPzw+ifWVQyR4/U1ZzmDHFm8jwOPJOIB5r8i
	 3SMkB89Y2Q0INfWbx4oVQQi39B1QvMipw3ULRJ5HRn22XtqiOfwG3b2RlS9RiskrOJ
	 DDEWVK3OaVMM7ljEaZdvdaMFSx2G3BxDLbOYxi0HU0XKmca7RCmbPFi96KsmS3n6lX
	 BhfRdxGUmAPTHOe6djdWiRd/FBHJczf2HW1gqXH7srY6Wv4qK6SB9kD3euoujNG5iP
	 1tz8RlrEfFJdg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 6/8] ARM: dts: mstar: miyoo-mini: Add vbat switch
Reply-To: sashiko-reviews@lists.linux.dev
To: "Daniel Palmer" <daniel@thingy.jp>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260713105950.1346962-7-daniel@thingy.jp>
References: <20260713105950.1346962-1-daniel@thingy.jp>
 <20260713105950.1346962-7-daniel@thingy.jp>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 11:09:39 +0000
Message-Id: <20260713110940.122981F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-325446-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:daniel@thingy.jp,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0x0f.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3323774A2CD

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing `regulator-boot-on` will cause a power glitch if the rai=
l is already on, or `regulator-always-on` will drain battery if it's an ADC=
 switch.
--

--- Patch [6]: [PATCH 6/8] ARM: dts: mstar: miyoo-mini: Add vbat switch ---
commit a658b11235430fff38550ae571d1b7afe1a12775
Author: Daniel Palmer <daniel@0x0f.com>

ARM: dts: mstar: miyoo-mini: Add vbat switch

This commit adds a GPIO-controlled fixed regulator for the battery voltage
rail on the Miyoo Mini device.

> diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-miyoo-m=
ini.dts b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-miyoo-mini.d=
ts
> index 5e927f41fa733..fde4703eb52bc 100644
> --- a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-miyoo-mini.dts
> +++ b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-miyoo-mini.dts
[ ... ]
> @@ -24,6 +26,15 @@ vibrator {
>  		enable-gpios =3D <&gpio SSD20XD_GPIO_UART0_TX GPIO_ACTIVE_LOW>;
>  	};
> =20
> +	reg_vbat: regulator-vbat {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vbat";
> +		regulator-min-microvolt =3D <4200000>;
> +		regulator-max-microvolt =3D <4200000>;
> +		gpio =3D <&gpio SSD20XD_GPIO_GPIO85 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;

[Severity: Medium]
Will this configuration cause a power glitch during probe or an unintended
battery drain?

Because regulator-boot-on is omitted, the fixed regulator driver initializes
the GPIO request as GPIOD_OUT_LOW, instantly dropping the line to 0V. The
regulator core will later process regulator-always-on and re-enable it, but
this gap can cause a power glitch if this rail is a system power hold latch
already enabled by the bootloader.

Alternatively, if this GPIO controls a voltage divider switch for an ADC
reading, leaving it regulator-always-on will cause a continuous battery
drain.=20

Should regulator-boot-on be added, or regulator-always-on be removed
depending on the exact hardware function?

> +	};
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713105950.1346=
962-1-daniel@thingy.jp?part=3D6

