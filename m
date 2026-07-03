Return-Path: <devicetree+bounces-320091-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l2TqKMOmR2rVcwAAu9opvQ
	(envelope-from <devicetree+bounces-320091-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:10:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A61A70237C
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:10:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="klGuHQ/X";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320091-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320091-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F3693032593
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 12:06:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33DE03CEBBB;
	Fri,  3 Jul 2026 12:06:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91AC3CEB8D;
	Fri,  3 Jul 2026 12:06:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783080363; cv=none; b=ToV8x5kSzqPMsOqF8pkRnDd1VzxFusqiXfTQo1rOazeCETXLzVcr0jicLPCP5qufAWKbx1/BIQ9r8ydNfRHstcrD5JePhGt/L3MIm3mchQPzR6b0wBA0x+w8ITdtzTjy8U6mNPEqu2lMnOFq4p8An6ODcpcDo1zZUEUEmIXQ1Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783080363; c=relaxed/simple;
	bh=UEN+bNVH8HjV90Pp60Sni6Q5LYfR6NEViRrAVKmrLHo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RcimU6PVF6wKALh8FC562GpKWFSO/xAHFfl+e4xnbf+WEerjVVL4041gVbpYpZky4RGUpuKa9ZDCL/YTCWXymD38b+gnYeX4/BSEouepctzym9GvWumSL9rxPff/juZ4a0YVbw9KGFYvohIbyuDkduA2r+Xe1BsNyPI17+YoGE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klGuHQ/X; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 612AC1F00A3A;
	Fri,  3 Jul 2026 12:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783080361;
	bh=0ihDMl5rkRnaQ/eNQbOPrjkzoIDWOCyXu8QqfhBMOiY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=klGuHQ/X17VAjptm0aVbtsyS2g7JAb1Poht1Msgf99YX6N6S6ghfbf3ly8BW7GxHO
	 RMPffJGe8o+sxrSAkSnWGfkjd4UtWr83VBIPebC+EutR/MHuGltRUXGlVGVEIhlsIN
	 NTWG5YEiZrbNOjIS06HsmNvdL5lolk0J/y+ec09NfrP8gGEFcTORjeT2a04MfsW/IU
	 Wavj/mOy1S57CsJyoruGtAycNq65aJS9wNP8HsvYFVSi+mQxQGA47a8nRfQINGxtSF
	 brCufgaD/HdN9AE0L6idLZRghu2wAXZCbUoIuZh0zdAnDx670i21VXzWc4ISvDQIec
	 XReO5fC6cbUxQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/7] Input: elan_i2c - Wait for initialization after
 enabling regulator supply
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wenst@chromium.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, linux-input@vger.kernel.org, robh@kernel.org, dmitry.torokhov@gmail.com
In-Reply-To: <20260703115601.1323491-2-wenst@chromium.org>
References: <20260703115601.1323491-1-wenst@chromium.org>
 <20260703115601.1323491-2-wenst@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 12:06:00 +0000
Message-Id: <20260703120601.612AC1F00A3A@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-320091-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,chromium.org:email,vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-input@vger.kernel.org,m:robh@kernel.org,m:dmitry.torokhov@gmail.com,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A61A70237C

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The return value of `regulator_is_enabled()` is implicitly cast to=
 `bool`, causing negative error codes to evaluate as true and incorrectly b=
ypassing the required power-on delay.
- [High] Skipping the power-on delay for shared regulators is susceptible t=
o unsafe power domain assumptions and TOCTOU races, leading to bypassed har=
dware initialization.
--

commit 62ef124436c7ca613cd0f8d922094f42cdd2a0b8
Author: Chen-Yu Tsai <wenst@chromium.org>

Input: elan_i2c - Wait for initialization after enabling regulator supply

This commit adds proper delays after enabling the regulator supply for Elan
trackpad controllers, which require time for hardware and firmware to
initialize. It attempts to avoid boot time impact by skipping the delay if
the regulator was already enabled.

> diff --git a/drivers/input/mouse/elan_i2c_core.c b/drivers/input/mouse/el=
an_i2c_core.c
> index fee1796da3d08..110c662cef96f 100644
> --- a/drivers/input/mouse/elan_i2c_core.c
> +++ b/drivers/input/mouse/elan_i2c_core.c

[ ... ]

> @@ -1187,6 +1189,7 @@ static int elan_probe(struct i2c_client *client)
>  	struct device *dev =3D &client->dev;
>  	struct elan_tp_data *data;
>  	unsigned long irqflags;
> +	bool supply_was_enabled;
>  	int error;
> =20
>  	if (IS_ENABLED(CONFIG_MOUSE_ELAN_I2C_I2C) &&
> @@ -1218,6 +1221,8 @@ static int elan_probe(struct i2c_client *client)
>  	if (IS_ERR(data->vcc))
>  		return dev_err_probe(dev, PTR_ERR(data->vcc), "Failed to get 'vcc' reg=
ulator\n");
> =20
> +	supply_was_enabled =3D regulator_is_enabled(data->vcc);

[Severity: High]
In elan_probe(), regulator_is_enabled() returns an int, which can include
negative error codes like -EPROBE_DEFER or -EREMOTEIO. Will assigning this =
to
the bool supply_was_enabled cause negative error codes to evaluate as true?

If this happens, it looks like it would incorrectly bypass the power-on del=
ay
and lead to a permanent -ENXIO probe failure later rather than allowing a
proper deferral.

> +
>  	error =3D regulator_enable(data->vcc);
>  	if (error) {
>  		dev_err(dev, "Failed to enable regulator: %d\n", error);
> @@ -1231,6 +1236,9 @@ static int elan_probe(struct i2c_client *client)
>  		return error;
>  	}
> =20
> +	if (!supply_was_enabled)
> +		msleep(ETP_POWER_ON_DELAY);

[Severity: High]
Is it safe to assume that a regulator that is already enabled has been powe=
red
on for a sufficient amount of time?

If the trackpad shares a regulator with another device (like a touchscreen)
that just finished its own probe milliseconds earlier, the regulator would
already be enabled, but the trackpad hardware wouldn't be fully initialized.

Could this cause elan_probe() to skip the required hardware initialization
delay and fail the subsequent i2c_smbus_read_byte() check?

[ ... ]

> @@ -1374,11 +1382,16 @@ static int elan_resume(struct device *dev)
>  	int error;
> =20
>  	if (!device_may_wakeup(dev)) {
> +		bool supply_was_enabled =3D regulator_is_enabled(data->vcc);

[Severity: High]
In elan_resume(), could the same boolean cast issue happen if
regulator_is_enabled() encounters a transient failure during system resume,
causing the resume delay to be skipped?

> +
>  		error =3D regulator_enable(data->vcc);
>  		if (error) {
>  			dev_err(dev, "error %d enabling regulator\n", error);
>  			goto err;
>  		}
> +
> +		if (!supply_was_enabled)
> +			msleep(ETP_POWER_ON_DELAY);

[Severity: High]
Could the same shared-regulator timing race occur during the system resume
path, skipping the initialization delay if another device on the same shared
power domain resumed just before the trackpad?

>  	}
> =20
>  	error =3D elan_set_power(data, true);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703115601.1323=
491-1-wenst@chromium.org?part=3D1

