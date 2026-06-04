Return-Path: <devicetree+bounces-306649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V1XQF9ckIWqh/gAAu9opvQ
	(envelope-from <devicetree+bounces-306649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:10:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 544F463D874
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:10:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="YZTWob//";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306649-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306649-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2F559303C2B8
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 07:08:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEA823DE42B;
	Thu,  4 Jun 2026 07:08:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6133DD871
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 07:08:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780556897; cv=none; b=hdIfX9luwBBL1LlebSGURY6eRFvhre5sTJtpQfVwDJ4xUEISybcuZ+hOXv1EvLejyuy5wOZVXhqmDrYWNWysY70aHTJXolMtNgU2VTqWzjbQwcvf3LBBsSMzR57YM+o8cXoTqvw0x28u5BiyfmjtXNy3lTFKPze8uK6qZ4kszA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780556897; c=relaxed/simple;
	bh=1dvu/0LLTLR90O0gqLSPoOmo08aBaWTNMO5iUwIC680=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XhXocnVBm/BaCYk8aCx6h2qdkTgKGszyWzurKsC1gOJZR27PrW/TidE6CxTbNldrM7eCU0ywTectDSjE4yy3HUE1o6gmYsjgNK+gCuTZMASq0i4x4b+3bghF4Aj68cB1q05hA4h4LHJknVpWdcGR+zFQ4NgIS2Wzhc1gJmlknjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZTWob//; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 257491F00893;
	Thu,  4 Jun 2026 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780556896;
	bh=+zLSbGogwb064Eke+QTyFLFklQEMGuOqWVZhHbCaSOs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YZTWob//31KDNMPemQIHComreNaNKy5xTmSX2PMdlT/Nq8ChNSu43RfqKQeg+Da36
	 OqRfP+IlvsjA/54C1Q9ugTrupEEzfp6Fr0gzUhMSiW+jlH8/1dtLTw/AphUh4yGQzr
	 MZ9q2JU0bWpnrALzV0pJ8Xr+XGNMeldTAVhXQs/rHB/WtCBT9DaRDvJOnnS6DoMEaw
	 FiVzRAEhyHsWTVusLXvyCvIsWVuomMH/SlFdXgirB0VywvSE2+WySrVryUjsn6Zmmf
	 XrPPzvnvqxxUGXPaCQSB2rZStLsOlR0kC32k+RSrGstXxoxGclNmkoO4wIV6/epcME
	 UHE2tumzSAy/w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 07/10] ARM: tegra: tf701t: Fix BCM4334 configuration
Reply-To: sashiko-reviews@lists.linux.dev
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260604065556.137614-8-clamor95@gmail.com>
References: <20260604065556.137614-8-clamor95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 07:08:15 +0000
Message-Id: <20260604070816.257491F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306649-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:clamor95@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 544F463D874

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The patch silently changes the WiFi node's compatible string to =
include 'brcm,bcm43340-fmac', which contradicts the commit message stating =
it fixes 'BCM4334' configuration.
--

commit e6b9085d18e1ff9ab5d22d698abaaba30676ee22
Author: Svyatoslav Ryhel <clamor95@gmail.com>

ARM: tegra: tf701t: Fix BCM4334 configuration

This commit removes the reset GPIO from the Bluetooth node and adds the
lpo clock to both the WiFi and Bluetooth nodes to fix configuration.

> diff --git a/arch/arm/boot/dts/nvidia/tegra114-asus-tf701t.dts b/arch/arm=
/boot/dts/nvidia/tegra114-asus-tf701t.dts
> index 73276f2aa7fe4..e3e0b4ba7eb86 100644
> --- a/arch/arm/boot/dts/nvidia/tegra114-asus-tf701t.dts
> +++ b/arch/arm/boot/dts/nvidia/tegra114-asus-tf701t.dts

[ ... ]

> @@ -2382,9 +2382,12 @@ mmc@78000000 {
>  		vqmmc-supply =3D <&vdd_1v8_vio>;
> =20
>  		wifi@1 {
> -			compatible =3D "brcm,bcm4329-fmac";
> +			compatible =3D "brcm,bcm43340-fmac", "brcm,bcm4329-fmac";

[Severity: Medium]
The commit message notes this fixes BCM4334 configuration, and explicitly
mentions dropping a GPIO and adding an lpo clock, but it does not mention
modifying the compatible string.

Could the commit message be updated to document this change? Also, is
brcm,bcm43340-fmac the correct value here, or is it a typo for
brcm,bcm4334-fmac, given the commit title and the Bluetooth node both
specify BCM4334?

>  			reg =3D <1>;
> =20
> +			clocks =3D <&palmas_clk32k>;
> +			clock-names =3D "lpo";
> +
>  			interrupt-parent =3D <&gpio>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604065556.1376=
14-1-clamor95@gmail.com?part=3D7

