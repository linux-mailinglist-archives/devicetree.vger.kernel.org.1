Return-Path: <devicetree+bounces-323313-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SDnsJEUtT2qibgIAu9opvQ
	(envelope-from <devicetree+bounces-323313-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 07:10:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2958272CB42
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 07:10:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HXpTa0yy;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323313-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323313-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 78FF4301B001
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 05:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B05635F603;
	Thu,  9 Jul 2026 05:10:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEA332ED3A;
	Thu,  9 Jul 2026 05:10:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783573827; cv=none; b=WIDmZ+1w9/xV2Oat2nrrLm0TBEYCjMlctJ5uwvOwA5xfQaCJZ0dQtOUDv1oKvZ9wZzlc9malqirpNmS++pu6C1u0zlilFv62sSRFzq63UCfMl1RlPc7UFDPXBZIQLRfNtOe1JTbp6MvzYbmkwuMof1GEYkBk1gDYzVcT301f8lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783573827; c=relaxed/simple;
	bh=JDiKQelEfhKs8QJfLRR383pHxSSI76dOVpJZrG8yds4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=q+Jo2ewT5Sq0Foer/hufbNeHE2gcQcC7n3bVkENLLyua8biBPiRtbJe9qunkwZJiO6PiyPNaWORhDyktadtyjIgpKTSxTP6YuVSqzyI5f9y7nxhzxAopAdmPpSH/UACg8gZ1FzHYkfOZMvIyzeLGG78oRalv9fvDhtUmR/1pfz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXpTa0yy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5753E1F00A3A;
	Thu,  9 Jul 2026 05:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783573825;
	bh=a9EvCyX1UmVxg0i3HDy3qGEt8P424ssuUJDXInKGS7I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HXpTa0yySVFDHec6npBvJj6uwNHikhxGOmlEetrmfqETfoqiwm4merqidWrhVm03H
	 SzV7bSZS0tRp+/91D82EhY5GrQvjwEI9E4VbbjcANUAXiiFOKzs7MIjheFgmKLYjBb
	 lz5gHX4j3nLtlg3cnjBG9ZbSZMg5ZyGZoRolxICZqsY4Wp/kiR34co9jb5TmnKv+eJ
	 RFLc+CSQLmsyOepR2AHuIc509QDysdA6NWSvhou5gOKsQwJ5JTYqnsoo+3985Tpt/D
	 0qzzIvyAk1dVZ7ilL3TDC0ltfAO2s2/xiiZDcSIIIdg61tqQRSCIK76TpF1wpjjgOo
	 Nk3WptdoIvWfA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 09/11] regulator: wm831x: remove legacy DVS platform
 data
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>
Cc: conor+dt@kernel.org, dmitry.torokhov@gmail.com, linux-input@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260708-samsung-kp-v2-9-3c6ed4c9b3b6@gmail.com>
References: <20260708-samsung-kp-v2-0-3c6ed4c9b3b6@gmail.com>
 <20260708-samsung-kp-v2-9-3c6ed4c9b3b6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 05:10:24 +0000
Message-Id: <20260709051025.5753E1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323313-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:conor+dt@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2958272CB42

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing error cleanup on DVS initialization failure paths leaves d=
angling GPIO pointers or unconfigured hardware state, causing silent voltag=
e scaling failures.
--

--- Patch [9]: [PATCH v2 09/11] regulator: wm831x: remove legacy DVS platfo=
rm data ---
commit 314c31c6b7ec71e1f10af8307e95e6718e0fea28
Author: Dmitry Torokhov <dmitry.torokhov@gmail.com>

regulator: wm831x: remove legacy DVS platform data

Now that the only board file in mainline using wm831x buckv DVS has been
converted to use software properties, we can remove the unused legacy
DVS fields from 'struct wm831x_buckv_pdata'. Also remove the fallback
logic from the regulator driver, making DVS support purely
property-based when software nodes are used.

> diff --git a/drivers/regulator/wm831x-dcdc.c b/drivers/regulator/wm831x-d=
cdc.c
> index ce43c51c01704..05f49b2f5bade 100644
> --- a/drivers/regulator/wm831x-dcdc.c
> +++ b/drivers/regulator/wm831x-dcdc.c

[ ... ]

> @@ -352,7 +347,7 @@ static void wm831x_buckv_dvs_init(struct platform_dev=
ice *pdev,
>  	if (device_property_read_u32(&pdev->dev, "wlf,dvs-init-state", &val) =
=3D=3D 0)
>  		dcdc->dvs_gpio_state =3D val;
>  	else
> -		dcdc->dvs_gpio_state =3D pdata->dvs_init_state;
> +		dcdc->dvs_gpio_state =3D 0;
> =20
>  	dcdc->dvs_gpiod =3D devm_gpiod_get(&pdev->dev, "dvs",
>  			dcdc->dvs_gpio_state ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW);
> @@ -362,10 +357,13 @@ static void wm831x_buckv_dvs_init(struct platform_d=
evice *pdev,
>  		return;
>  	}
> =20
> -	if (device_property_read_u32(&pdev->dev, "wlf,dvs-control-src", &val) =
=3D=3D 0)
> -		dvs_control_src =3D val;
> -	else
> -		dvs_control_src =3D pdata->dvs_control_src;
> +	ret =3D device_property_read_u32(&pdev->dev, "wlf,dvs-control-src", &va=
l);
> +	if (ret) {
> +		dev_err(wm831x->dev, "Failed to read DVS control source for %s: %d\n",
> +			dcdc->name, ret);
> +		return;
> +	}

[Severity: High]
This is a pre-existing issue, but the new error return path here caught my
eye while reviewing.

If initialization fails here (or slightly above when devm_gpiod_get()
returns an error pointer), we return early but don't clear dcdc->dvs_gpiod.

If we fail to read "wlf,dvs-control-src", dcdc->dvs_gpiod is already
successfully populated, but the hardware DVS source is left unconfigured.
If devm_gpiod_get() failed earlier, dcdc->dvs_gpiod holds an error pointer.

In both scenarios, could this cause silent voltage scaling failures later o=
n?

Looking at wm831x_buckv_set_voltage_sel(), there is this check:

wm831x_buckv_set_voltage_sel() {
    ...
    if (dcdc->dvs_gpiod && dcdc->dvs_vsel =3D=3D vsel)
        return wm831x_buckv_set_dvs(rdev, 1);
    ...
}

Since dcdc->dvs_gpiod is either an error pointer or a valid GPIO (but witho=
ut
configured hardware), this condition still evaluates to true. Does this skip
updating the hardware on_reg, causing the voltage change to silently fail
and leaving the system at a lower voltage?

Should dcdc->dvs_gpiod be explicitly set to NULL on these error paths so the
driver correctly falls back to standard voltage scaling?

> +	dvs_control_src =3D val;
> =20
>  	switch (dvs_control_src) {
>  	case 1:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-samsung-kp=
-v2-0-3c6ed4c9b3b6@gmail.com?part=3D9

