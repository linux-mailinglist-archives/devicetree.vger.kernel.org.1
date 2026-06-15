Return-Path: <devicetree+bounces-311737-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VrE5DYWrL2plEQUAu9opvQ
	(envelope-from <devicetree+bounces-311737-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 09:36:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CCF6843EA
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 09:36:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kOiMEUq5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311737-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311737-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 89FD3300EF60
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 07:35:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B9763BED33;
	Mon, 15 Jun 2026 07:35:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD9F3BE17C;
	Mon, 15 Jun 2026 07:35:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781508941; cv=none; b=u6aKrHOlNxRiystrVzbXkglqtjt8+Vsx1I3OrkQCb1FV/m2TBKcwB4FVmLEEE2ooIrD90EHSL2Jz4cgNLCHTqsMcydSeH5JiWPMBvqfi7tmMZ0QP4LFlgATlahPvVaRN7qqieDTbDKhSKHvIcMTZjWSa17tefFlVFLcGzJWTCdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781508941; c=relaxed/simple;
	bh=LN2u/uI4tn2eUXLsIkqaFREJlcGd2NPeXVNjrKSTd6Y=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BzKm58AWyHCKqqWyNiv1c/LWA5OyJot8tOJYJnMXM1qiamW6p5FsDHjeSvuhQ45b1fiNx5nDmdXRB9PS+VF5jToZUOR5l8cQxs2/yOhzNEOpzDFU1tiWn5WzH4SV86WDjLDn95RPHweudz73H/Gv3tmZ4x0vkruCKy7IUCR0/2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOiMEUq5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C0E81F000E9;
	Mon, 15 Jun 2026 07:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781508939;
	bh=4ld+Fc754PlN7DQC6+u++SbSK08R0HWxOyN6AKNz/04=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kOiMEUq5E0WEtyvjUO8BCjq58D+T478EPlPLb7o06isOwgihbiBBmeCMvusEhVYeK
	 IWByvvxogCk1WQwk3lYmJl6KCHi9+J4UZtTou/X5xdoZftTARfedmvc7lWZCq8rWMb
	 LLiq1wD2Sg5fjbe3F8d05HDRBCxPNjOSyV2vEhKba/Fqf20Q/7V0SpOl+8bbHoHK3c
	 PD/Xfv/IECMQhQ4Ai5Ld4MRsI0gqrc5Bikj6xqXAGSLjLikfd3LjoiXw4cUOJ7uBQL
	 7hpei2vxAgT1F7W2IyOkC8ec32OaljQhz+prm0vFphqI23wVO8bBLjtRmJj4dN/cCb
	 Trf4Szt34U5nw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 7/9] pinctrl: mediatek: mt6397: Add MediaTek MT6392
Reply-To: sashiko-reviews@lists.linux.dev
To: "Luca Leonardo Scorcia" <l.scorcia@gmail.com>
Cc: conor+dt@kernel.org, dmitry.torokhov@gmail.com, devicetree@vger.kernel.org, linux-input@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260615071836.362883-8-l.scorcia@gmail.com>
References: <20260615071836.362883-8-l.scorcia@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 07:35:38 +0000
Message-Id: <20260615073539.4C0E81F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:l.scorcia@gmail.com,m:conor+dt@kernel.org,m:dmitry.torokhov@gmail.com,m:devicetree@vger.kernel.org,m:linux-input@vger.kernel.org,m:robh@kernel.org,m:lscorcia@gmail.com,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311737-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 83CCF6843EA

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing `.remove` callback in `mtk_pinctrl_driver` causes a Use-Af=
ter-Free of devres-managed memory upon driver unbind because the GPIO chip =
is registered with an unmanaged API.
--

commit a353f51e9f14248ddf84f2093bfe6ddad0c83ce8
Author: Luca Leonardo Scorcia <l.scorcia@gmail.com>

pinctrl: mediatek: mt6397: Add MediaTek MT6392

This commit adds support for the MT6392 pinctrl device by introducing
its pin definitions and match data. It also updates the MT6397 driver
to retrieve and use this device data from the match table during probe.

> diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6397.c b/drivers/pinctrl/=
mediatek/pinctrl-mt6397.c
> index 03d0f65d7bcc1..8ba02e70595ce 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mt6397.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mt6397.c

[ ... ]

> @@ -40,13 +62,24 @@ static const struct mtk_pinctrl_devdata mt6397_pinctr=
l_data =3D {
>  static int mt6397_pinctrl_probe(struct platform_device *pdev)
>  {
>  	struct mt6397_chip *mt6397;
> +	const struct mtk_pinctrl_devdata *data;
> +
> +	data =3D device_get_match_data(&pdev->dev);
> +	if (!data)
> +		return -ENOENT;
> =20
>  	mt6397 =3D dev_get_drvdata(pdev->dev.parent);
> -	return mtk_pctrl_init(pdev, &mt6397_pinctrl_data, mt6397->regmap);
> +	return mtk_pctrl_init(pdev, data, mt6397->regmap);
>  }

[Severity: High]
This is a pre-existing issue, but by sharing the same initialization path,
the new MT6392 variant inherits a potential use-after-free on driver unbind.

Looking at mtk_pctrl_init() in pinctrl-mtk-common.c, it allocates pctl->chip
using devm_kzalloc() and registers it with the unmanaged gpiochip_add_data()
API:

mtk_pctrl_init() {
    ...
    pctl->chip =3D devm_kzalloc(&pdev->dev, sizeof(*pctl->chip), GFP_KERNEL=
);
    ...
    ret =3D gpiochip_add_data(pctl->chip, pctl);
    ...
}

However, the mtk_pinctrl_driver struct does not have a .remove callback and
does not set suppress_bind_attrs =3D true.

If a user manually unbinds the driver via sysfs, devres will automatically
free pctl->chip, but since gpiochip_remove() is never called, the GPIO
framework retains pointers to the freed memory.

Would it make sense to fix this by switching to devm_gpiochip_add_data() in
mtk_pctrl_init(), or by adding suppress_bind_attrs =3D true to the driver
struct?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615071836.3628=
83-1-l.scorcia@gmail.com?part=3D7

