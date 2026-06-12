Return-Path: <devicetree+bounces-310735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vdNLKoG2K2pgCgQAu9opvQ
	(envelope-from <devicetree+bounces-310735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:34:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFE8677422
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:34:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MSdttWo3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310735-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310735-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5228A3111453
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 07:32:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0326360ED8;
	Fri, 12 Jun 2026 07:32:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15CB35E93E;
	Fri, 12 Jun 2026 07:32:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781249563; cv=none; b=fzjevVGlDBa4PbCLg7CAjjm1BUBN3xgYDnkzHG0QVygaA17vciwo5EEUwwOvyzGqOb/qDa0xVZ+w0+PyR2F9EkPg0bYgqj+YsfEddGpzHJHy24/c7z3PfJdyHGLA0qFM+QutrGF2DK0MyKCQAE8bxHL5m7aCugMepyhKOa9NkLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781249563; c=relaxed/simple;
	bh=5M+NQNORC/o2YwTi72pQyX3fGjRUwGhyWa1GukXduwg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=guGxBwOcapXQSPdS5zPL3maAXb/hlif6oBU7EiptvpxREGDmjbl0mwOaTrCzfSVtLK6jLT9WZpLnF0muThQ/oPz6eZntQPJmbXtgXhFz4rA6vtTpQ/MNwi33VyZbxtj9423lntxZF9ddAGvhWg4w0g7H9jxhdt63l5TkwhtGBRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSdttWo3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E7131F000E9;
	Fri, 12 Jun 2026 07:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781249562;
	bh=0A6QOwaR0asij5+wf8eHeA95mRob4XudCgAGyBzveo4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MSdttWo3yARdLmkB19aHgO6jSkpEEL79oA6Au6ALlxIqbHXiAI74ZcXJAXt+JlSpT
	 0U4crFMISPhULr+xx0vHsdjbWzaXHs8hqcZam1Hfy8w1NbINMTlcOiim8kkBraxcLH
	 GBgE7twXVyaVkPX15DC+5Qe/mm9Ah30J4kBd6FQ3ULJ6aJNLi2XX1gOsnmKQhAa4jp
	 mfrzdpljIvwRkgt09Q42RIofFpwRv5NYLTkLfO6hwpfd8B/qyPIXPxXLO8Jd/PsMgI
	 1697oyZWKWgYVV78s3IM+Sj8tVFVdbfKQMwmkawzgzP1y5NJ6+6qDmcsJjXkddBiQw
	 UU7gWOtavvEYg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/9] Input: cap11xx - clean up duplicate log and add
 probe error logs
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: robh@kernel.org, dmitry.torokhov@gmail.com, linux-input@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260612072237.1177304-2-jerrysteve1101@gmail.com>
References: <20260612072237.1177304-2-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 07:32:41 +0000
Message-Id: <20260612073242.1E7131F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310735-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:robh@kernel.org,m:dmitry.torokhov@gmail.com,m:linux-input@vger.kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
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
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0AFE8677422

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Threaded interrupt handler returns IRQ_HANDLED on I2C failure, pot=
entially causing an interrupt storm.
--

commit f746dddeb8894305a4dab485d320b84f53191dc0
Author: Jun Yan <jerrysteve1101@gmail.com>

Input: cap11xx - clean up duplicate log and add probe error logs

This commit removes a duplicated device detection log entry to clean up
dmesg output. It also adds missing error logs using dev_err_probe()
when I2C communication fails during the driver's probe sequence.

> diff --git a/drivers/input/keyboard/cap11xx.c b/drivers/input/keyboard/ca=
p11xx.c
> index 2447c1ae21661..485d8ba977235 100644
> --- a/drivers/input/keyboard/cap11xx.c
> +++ b/drivers/input/keyboard/cap11xx.c

[ ... ]

> @@ -531,11 +531,8 @@ static int cap11xx_i2c_probe(struct i2c_client *i2c_=
client)
>  	}
> =20
>  	error =3D regmap_read(priv->regmap, CAP11XX_REG_REVISION, &rev);
> -	if (error < 0)
> -		return error;
> -
> -	dev_info(dev, "CAP11XX detected, model %s, revision 0x%02x\n",
> -			 id->name, rev);
> +	if (error)
> +		return dev_err_probe(dev, error, "Failed to read revision\n");
> =20
>  	priv->model =3D cap;

[Severity: High]
This isn't a bug introduced by this patch, but while looking at I2C failure
handling in this driver, I noticed an issue in cap11xx_thread_func().

If I2C communication fails during the interrupt handler, the code jumps to
the out label:

drivers/input/keyboard/cap11xx.c:cap11xx_thread_func() {
	...
	ret =3D regmap_update_bits(priv->regmap, CAP11XX_REG_MAIN_CONTROL, 1, 0);
	if (ret < 0)
		goto out;
	...
out:
	return IRQ_HANDLED;
}

Because it unconditionally returns IRQ_HANDLED without deasserting the
hardware interrupt, the level-triggered interrupt line remains active. This
causes the interrupt controller to unmask the IRQ and immediately trigger it
again, creating an infinite loop (interrupt storm) that can lock up the CPU.

Should the handler return IRQ_NONE upon I2C failure so the kernel's spurious
interrupt detector can eventually disable the broken IRQ?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612072237.1177=
304-1-jerrysteve1101@gmail.com?part=3D1

