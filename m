Return-Path: <devicetree+bounces-319292-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9NKUHqw/RmobMwsAu9opvQ
	(envelope-from <devicetree+bounces-319292-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:38:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8676F608F
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:38:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="ezYvg/9t";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319292-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319292-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F218312BDDF
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 10:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EACF3AC0CC;
	Thu,  2 Jul 2026 10:16:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262E7393DF0
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 10:16:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782987406; cv=none; b=OXtSpvxCa0V4+7sVpo6z+43XydlIgnyOhEMWiP3qH+oxc7KedFcQZejbWLLpgvS3YoQagxtRPQms1NU9q+PWssYwKefO9PjtIrOxdofiAIP2XxZ0f795IxjGDBQD1yyRy+YPE+vH8lwATpIXPYd/rGyDZSibkbKS2bJ5rkAHwMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782987406; c=relaxed/simple;
	bh=3AtQm/ru6rvP5C+CROj4yKuPB9my0yqL387PqImQoQQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tQvCLuo+QgwmEUVezwyojCDE3Jeqqh9C/F9+XbJt9LEwGwre0eqHfUj6rHrcXUtNOSO1OZLrY5oBgceQuK9NsC7jRxeLJs7xXfd5791KOqusg1E7ePoOEcf3CL0BtesZNTL1w1gITiEzTVO6AdMCBBLyoenzr266/Ovzm3OnpuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezYvg/9t; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E8021F000E9;
	Thu,  2 Jul 2026 10:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782987404;
	bh=te35Z0Ygna6XoHRU9BhnDkNQr2LVR4uilRuCA7RCEoI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ezYvg/9tNku9TG7kvlNBLqQzfHM21rgq91fwSK/FXk6wnOVSY9VworGC+a+9qB+MG
	 /5FvOZWjmS3qVyV+j40YvUo807+gIrIwYMA300p26AK8B4N13GU4FDlfIKul3rYjRM
	 VxiTcn5CqmaMlT6Gg0Vj5iDm7Xxu1YYnqdyMK+YhV78Ryjhja+Ga/Pex+6OlSG1rmO
	 3Z6ImD2okQ3Vo/jbnlvEwdiOYn1yWENA9srX6czEmH8M8nQJGB1O5aasWy/tguqVYn
	 ynI/ceL8v3P8eCZ73YPvJYFDaUmpv9mhVwCBu7e30gUIJOSodLJAF+iVQ4bh4VI52y
	 6MA/va05OaqQw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 3/7] thermal/drivers: airoha: Convert to regmap API
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260702094846.17325-4-ansuelsmth@gmail.com>
References: <20260702094846.17325-1-ansuelsmth@gmail.com>
 <20260702094846.17325-4-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 10:16:44 +0000
Message-Id: <20260702101644.8E8021F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319292-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DF8676F608F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The device interrupt is requested before the thermal zone is regis=
tered, and hardware interrupts are not disabled on unbind.
- [High] The interrupt handler silently drops events if both high and low t=
hreshold interrupts are pending simultaneously.
--

commit ddea8884dc559f65dc6c31d8d784b42996724da4
Author: Christian Marangi <ansuelsmth@gmail.com>

thermal/drivers: airoha: Convert to regmap API

Convert the Airoha thermal driver to use the regmap API instead of direct M=
MIO
accesses. This refactoring prepares the driver for Airoha AN7583 support,
which relies on a syscon regmap.

> diff --git a/drivers/thermal/airoha_thermal.c b/drivers/thermal/airoha_th=
ermal.c
> index 829a7327fc403..b63893a8997a3 100644
> --- a/drivers/thermal/airoha_thermal.c
> +++ b/drivers/thermal/airoha_thermal.c

[ ... ]

> @@ -300,9 +300,9 @@ static irqreturn_t airoha_thermal_irq(int irq, void *=
data)
>  	struct airoha_thermal_priv *priv =3D data;
>  	enum thermal_notify_event event;
>  	bool update =3D false;
> -	u32 status;
> +	u32 status =3D 0;
> =20
> -	status =3D readl(priv->base + EN7581_TEMPMONINTSTS);
> +	regmap_read(priv->map, EN7581_TEMPMONINTSTS, &status);
>  	switch (status & (EN7581_HOFSINTSTS0 | EN7581_LOFSINTSTS0)) {
>  	case EN7581_HOFSINTSTS0:
>  		event =3D THERMAL_TRIP_VIOLATED;
> @@ -318,7 +318,7 @@ static irqreturn_t airoha_thermal_irq(int irq, void *=
data)
>  	}

[Severity: High]
This is a pre-existing issue, but does this switch statement drop events if
both HOFSINTSTS0 and LOFSINTSTS0 are set?

If the hardware latches both the high (EN7581_HOFSINTSTS0) and low
(EN7581_LOFSINTSTS0) threshold interrupt bits simultaneously, the bitwise A=
ND
operation will yield both bits set. The switch statement will attempt an
exact match and fall through to the default case. The interrupts are then
cleared via regmap_write(), but thermal_zone_device_update() is never
called because update remains false.

> =20
>  	/* Reset Interrupt */
> -	writel(status, priv->base + EN7581_TEMPMONINTSTS);
> +	regmap_write(priv->map, EN7581_TEMPMONINTSTS, status);
> =20
>  	if (update)
>  		thermal_zone_device_update(priv->tz, event);

[ ... ]

> @@ -462,8 +475,8 @@ static int airoha_thermal_probe(struct platform_devic=
e *pdev)
>  	platform_set_drvdata(pdev, priv);
> =20
>  	/* Enable LOW and HIGH interrupt */
> -	writel(EN7581_HOFSINTEN0 | EN7581_LOFSINTEN0,
> -	       priv->base + EN7581_TEMPMONINT);
> +	regmap_write(priv->map, EN7581_TEMPMONINT,
> +		     EN7581_HOFSINTEN0 | EN7581_LOFSINTEN0);
> =20
>  	return 0;
>  }

[Severity: High]
This isn't a bug introduced by this patch, but does the probe function
request the interrupt before the thermal zone is registered?

It appears that devm_request_threaded_irq() is called earlier in
airoha_thermal_probe(), enabling the interrupt before
devm_thermal_of_zone_register() initializes priv->tz. If an interrupt fires
during this window, the ISR will dereference a NULL priv->tz.

Additionally, since there is no .remove callback to mask the hardware
interrupt, could this cause a use-after-free during driver unbind? Devres
executes cleanup in reverse order of creation, so priv->tz is destroyed
first, leaving the IRQ handler active until the IRQ is freed. An incoming
interrupt during this window might also lead to a use-after-free.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702094846.1732=
5-1-ansuelsmth@gmail.com?part=3D3

