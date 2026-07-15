Return-Path: <devicetree+bounces-326997-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pi1KBI2BV2owTgAAu9opvQ
	(envelope-from <devicetree+bounces-326997-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:48:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5927575E533
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:48:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CugZ1fpm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326997-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326997-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17FAE303013D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8931447B410;
	Wed, 15 Jul 2026 12:46:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE1641D659
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:46:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784119606; cv=none; b=EfjiW+0fAoYaLtNLY1NTw1MvXl4TGZkhsUKvFHS3Cj46dqg53prUhknocUGsfXixyin0kdary6lHxozUmhhB7sA4IRdKcpR1AL3AH77GqqFcgzwKHdwngHAPDMssR/152CNRlUOKfO95BDef+k7uEupoQjdFwmNrqoohuBY3ekw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784119606; c=relaxed/simple;
	bh=iWki82UXMjZ5z1cJfW27MV1E6xwICy5IxiaLwbl+hQY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dTEExCqJ42WQ09GggPiI4Q/07Iy0rUWRmGNAvhXP4pKcHjNfdhp2ImUWdkPVSPUy5ikWBjUf8EY0sdMW0uy69KulMKot/z2gmdDASg/djy/F5uQAm1uNfE/x9bhvr96l2q9xLrx4zUNeZjao/tq1jTZV9Vx2KNSBoCS08cju1sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CugZ1fpm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FCC91F000E9;
	Wed, 15 Jul 2026 12:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784119599;
	bh=OTCv+jT0Y52ZRLljAqi7JX/n6/Vn0XOXEqgeTpEq0Cw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CugZ1fpmUVAnlYOqE9ALVKGwCJljtKXLPiNJRaESgijvRokVGfvYlGDBPkd0604Ld
	 jS0+vOxqspXjTj9v2JhNsyupa3ZSi+3i4IW58PaX+CAhrZC8Y2KTGeoNGY6fTQpIRp
	 AaK0dUGyKswME3J3LqG/SPQzBlw8pv0e95+we9Ta7NB1ZrKe85sTdiBJLaHilbKCZ8
	 /lhs4tXTSF4c0kaqcTDdhDoi7Cv93XsCwIi8PHVs/0Jrn6l4Mqc8R1HgPMY+V8WFFN
	 vbyd5rPElks/LQRvpXJyKJFdac/PZpuatfgULX2tWbGsQaWaeyShOvxL3t6QRlfZy3
	 LLCnfEryFblIw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] iio: accel: mma8452: Allow open drain interrupt
 pin configuration
Reply-To: sashiko-reviews@lists.linux.dev
To: "Esben Haabendal" <esben@geanix.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260715-mma8452-open-drain-v2-2-95be9f5f4795@geanix.com>
References: <20260715-mma8452-open-drain-v2-0-95be9f5f4795@geanix.com>
 <20260715-mma8452-open-drain-v2-2-95be9f5f4795@geanix.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 12:46:38 +0000
Message-Id: <20260715124639.1FCC91F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326997-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:esben@geanix.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[geanix.com:email,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5927575E533
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] Adding IRQF_SHARED allows the interrupt handler to be invoked by o=
ther devices sharing the same IRQ line, even when the MMA8452 is runtime-su=
spended. The interrupt handler unconditionally performs an I2C read, which =
causes bus errors when the device is unpowered.

Pre-existing issues:
- [High] Device configuration state is lost on runtime suspend and never re=
stored on resume, leading to silent scale corruption and loss of interrupts.
--

--- Patch [2]: [PATCH v2 2/3] iio: accel: mma8452: Allow open drain interru=
pt pin configuration ---
commit 066cff55fa993aded66754d740665ed28050f829
Author: Esben Haabendal <esben@geanix.com>

iio: accel: mma8452: Allow open drain interrupt pin configuration

This patch allows configuring the interrupt pin in open-drain mode by setti=
ng
the PP_OD bit in CTRL_REG3 based on the "drive-open-drain" device property.
It also adds the IRQF_SHARED flag to request_threaded_irq() when open-drain
is enabled, allowing the interrupt line to be shared with other devices.

> diff --git a/drivers/iio/accel/mma8452.c b/drivers/iio/accel/mma8452.c
> index 7d683686dd9d6..fdf7364d7fede 100644
> --- a/drivers/iio/accel/mma8452.c
> +++ b/drivers/iio/accel/mma8452.c
[ ... ]
> @@ -1683,7 +1707,8 @@ static int mma8452_probe(struct i2c_client *client)
> =20
>  	if (client->irq) {
>  		ret =3D request_threaded_irq(client->irq, NULL, mma8452_interrupt,
> -					   IRQF_TRIGGER_LOW | IRQF_ONESHOT,
> +					   IRQF_TRIGGER_LOW | IRQF_ONESHOT |
> +					   (data->open_drain ? IRQF_SHARED : 0),

[Severity: High]
With the addition of IRQF_SHARED here, could the interrupt handler be invok=
ed
by other devices sharing the line while the MMA8452 is runtime-suspended?

Looking at mma8452_interrupt(), it unconditionally performs an I2C read:

mma8452_interrupt()
{
	src =3D i2c_smbus_read_byte_data(data->client, MMA8452_INT_SRC);
	if (src < 0)
		return IRQ_NONE;
...
}

If the MMA8452 goes into runtime suspend (cutting power to the sensor) and
another device triggers the shared interrupt line, wouldn't this unconditio=
nal
I2C read attempt to access an unpowered device, leading to I2C bus timeouts=
 or
NACK errors?

>  					   client->name, indio_dev);
>  		if (ret)
>  			goto buffer_cleanup;
[ ... ]
> @@ -1800,6 +1825,10 @@ static int mma8452_runtime_resume(struct device *d=
ev)
>  		return ret;
>  	}
> =20
> +	ret =3D mma8452_set_interrupt_pin_mode(data);

[Severity: High]
This is a pre-existing issue, but I noticed it while looking at the resume
path. Are we losing device configuration state across runtime suspend?

The mma8452_runtime_suspend() function disables vdd_reg and vddio_reg,
cutting power and resetting registers to their Power-On-Reset defaults.
When mma8452_runtime_resume() is called, it only restores CTRL_REG1 (via
mma8452_active) and now CTRL_REG3.

Does this leave other configurations unrestored? For example, MMA8452_DATA_=
CFG
defaults back to 2G while the software cache retains user configurations, a=
nd
MMA8452_CTRL_REG4 and MMA8452_CTRL_REG5 lose their event interrupt routings.
Couldn't this cause corrupted scale calculations or lost interrupts after t=
he
device's first idle suspend period?

> +	if (ret)
> +		goto runtime_resume_failed;
> +
>  	ret =3D mma8452_active(data);
>  	if (ret < 0)
>  		goto runtime_resume_failed;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-mma8452-op=
en-drain-v2-0-95be9f5f4795@geanix.com?part=3D2

