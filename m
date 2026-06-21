Return-Path: <devicetree+bounces-314075-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q8lOI0GhN2oKPgcAu9opvQ
	(envelope-from <devicetree+bounces-314075-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 10:30:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CDF6AA76C
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 10:30:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="gT/1rGl9";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314075-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314075-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BA321300F9C9
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2026 08:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BA7F26D4DD;
	Sun, 21 Jun 2026 08:30:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C25B126C03;
	Sun, 21 Jun 2026 08:30:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782030655; cv=none; b=Llb0eh8SJCVkzL4uPFDQw8+AxACrDoCCPsGZDTRwve3VyVkr3bl8NlX9hua4+W3KyIsdXvW5AcpAUucUlsR9cAJColF9r0RglVEleaCpWZ5+2Th95PAn5IPlOTy0HUFQpwIBIN0+jtGi3FwDkYKCwmGDbs16yUgj/B9ShqzyUpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782030655; c=relaxed/simple;
	bh=WkUaf/DUYitxbfioGYcmXObhK1l654e1wRE3pjeujHk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=owcgz2t4++yDeeHuBpnB/h3WvyOAlSfetql4kmNZakSqTuwa7SIq7qUSFeeVfuz0K96R6vW42jWpZOGeu9Ht+tyygN/Kik0hARf58XeFSspaS+oXkuXnOvPJU05if0Rozae3NyKugw6HTRfuEwqNW4/W/kwOy/SS8z6YmcF8bXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gT/1rGl9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3B641F000E9;
	Sun, 21 Jun 2026 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782030654;
	bh=1be+4TJkEnCpxbINnR5zSWewOF1aPiS8bgEzGs4/Pmc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gT/1rGl9cckXiBYhURY7dQkatbSqTt0wcO9cqdJVNMOEO4LT/ZWgQozZ32TGq2uqT
	 iyM9QkYf1yviAX7KNignKhPRUg3cpfzn767xecwa7kB/p44QNR38YfzVIZ09DlLZZR
	 qtQz92rkm8RN3/Mr2P1jmyhO3kVk16RQObDHM+k6FPCIVmDt2cWmI/RrMThB7b3ByP
	 HJlgpqPcucg+2Gx+fs+DG/NJIxHnJO5SUUhVT1TvjEsxDtheCMxhkxICeTDn/32LIm
	 dGhq5mmkKW156Spep8vQ9+6F0TlUxekG63SqJUPhd+K/pKO/HAdtkqpPxKJC2/iIJq
	 UHE1Vz1GGwgSQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 7/9] pinctrl: mediatek: mt6397: Add MediaTek MT6392
Reply-To: sashiko-reviews@lists.linux.dev
To: "Luca Leonardo Scorcia" <l.scorcia@gmail.com>
Cc: linux-input@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, dmitry.torokhov@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260621081634.467858-8-l.scorcia@gmail.com>
References: <20260621081634.467858-1-l.scorcia@gmail.com>
 <20260621081634.467858-8-l.scorcia@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 Jun 2026 08:30:53 +0000
Message-Id: <20260621083053.A3B641F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:l.scorcia@gmail.com,m:linux-input@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:dmitry.torokhov@gmail.com,m:devicetree@vger.kernel.org,m:lscorcia@gmail.com,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314075-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E8CDF6AA76C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Use-After-Free due to missing `.remove` callback while using unman=
aged registration with devm-allocated memory.
--

commit 120aff926d5691bb4a5ec3b6058e13323e67c325
Author: Luca Leonardo Scorcia <l.scorcia@gmail.com>

pinctrl: mediatek: mt6397: Add MediaTek MT6392
   =20
Add support for the MT6392 pinctrl device, which is very similar to
MT6397 with a handful of different property values and its own pins
definition.

Update the MT6397 driver to retrieve device data from the match table and
use it for driver init.

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
> =20
>  static const struct of_device_id mt6397_pctrl_match[] =3D {
> -	{ .compatible =3D "mediatek,mt6397-pinctrl", },
> +	{
> +		.compatible =3D "mediatek,mt6392-pinctrl",
> +		.data =3D &mt6392_pinctrl_data
> +	}, {
> +		.compatible =3D "mediatek,mt6397-pinctrl",
> +		.data =3D &mt6397_pinctrl_data
> +	},
>  	{ }
>  };

[Severity: High]
This is a pre-existing issue, but does mtk_pinctrl_driver in
drivers/pinctrl/mediatek/pinctrl-mt6397.c need a .remove callback or
suppress_bind_attrs set to true to prevent unbinding?

In drivers/pinctrl/mediatek/pinctrl-mtk-common.c:mtk_pctrl_init(), the driv=
er
allocates the pctl and pctl->chip structures using devm_kzalloc() but
registers the GPIO chip using the unmanaged gpiochip_add_data() API:

mtk_pctrl_init() {
    ...
    pctl->chip =3D devm_kzalloc(&pdev->dev, sizeof(*pctl->chip), GFP_KERNEL=
);
    ...
    ret =3D gpiochip_add_data(pctl->chip, pctl);
    ...
}

If the driver is unbound via sysfs, the devm_ subsystem will free the memory
backing the GPIO chip while it remains registered with the core subsystem.
Could this lead to a use-after-free if the GPIOs are accessed after the
driver is unbound?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260621081634.4678=
58-1-l.scorcia@gmail.com?part=3D7

