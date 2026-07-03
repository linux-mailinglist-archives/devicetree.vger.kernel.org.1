Return-Path: <devicetree+bounces-320094-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wO1NMQenR2rxcwAAu9opvQ
	(envelope-from <devicetree+bounces-320094-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:11:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D78A7023B6
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 14:11:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JuMBnS5y;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320094-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320094-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 79548304E6D6
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 12:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31B4B3CE096;
	Fri,  3 Jul 2026 12:08:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD623CF04C;
	Fri,  3 Jul 2026 12:08:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783080483; cv=none; b=cu5I9bWGT+y2kvpqpi9jwv/0E3F+ZmA/7L/ekBZncDcMaa/H1+EPt2/nQJW6xO9CxwdqzDlP5/x7k7qA4eu+7l7Hpb8VrVTtDt8RLwSEXi1f3hVKnCNyQ8zEZGIdRathtOYCVGXC6t0ef/pu2TFDiE6+XArk3VsZzAHXalBVq1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783080483; c=relaxed/simple;
	bh=sorSCel7H33Krvu9O1AD6KUVTG65pKT4PH/vej/3z2E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BXSvtmGld3D5ZoZKMlEOCuXZlCv2ClKyNO+JymTFnKR8vjI/FdpN5pzhUWylc1Nr78pJgY+BXyxJiSYyt4/uPGky6fKgMXqEobV4TIaGz4Ltb14QT6YLovWMQPjCP0NeNgT5UoNXDA8peW4WV5xdPsPMyuTwEI/qKUOgqLErb8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuMBnS5y; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 553C01F00A3A;
	Fri,  3 Jul 2026 12:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783080481;
	bh=TRB8T9J8J3Qjo60bZILRknEcWmUMRrErAhmXWyYs054=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JuMBnS5ysRXvJCqRWZFKfkTQl/wHPqNwHo7w87c4Cjv4HgEoRtW6lm99kX4UbpPNZ
	 JeR6JuqwVi6Sldy7BB0pDzZ5qWBxH0HK71ZoV6rh6brKi4qXGYUrAy+6LBalyA64Rk
	 V6aZ2HXUjtcFBltiz5D6dB68mNTU/TG/NaSP+0WhTuyUkLloQIv2FIVMVpigFxXr8u
	 hDxH1DCv81wPfdEJiMAl70mFnS804Guh92PDLT9fd/fmj58oGpp+6X59lfWjK2WyUw
	 RB8PSr7LOOys1LQSAIty8fajh1Hnko/7mttvJSdPRg5AchbydlvJCGy6HOxUMq3gIF
	 8LxzQU8xq+y9Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/7] i2c: of-prober: Defer regulator_disable() on
 successful probe in simple helper
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wenst@chromium.org>
Cc: dmitry.torokhov@gmail.com, devicetree@vger.kernel.org, linux-input@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260703115601.1323491-5-wenst@chromium.org>
References: <20260703115601.1323491-1-wenst@chromium.org>
 <20260703115601.1323491-5-wenst@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 12:08:00 +0000
Message-Id: <20260703120801.553C01F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-320094-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,chromium.org:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:dmitry.torokhov@gmail.com,m:devicetree@vger.kernel.org,m:linux-input@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2D78A7023B6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The prober unconditionally sleeps for 100ms during the cleanup p=
ath even when no matching I2C component is found, unnecessarily delaying sy=
stem boot.
--

commit 772a8f5b00b1078ef6740a0746df36699760f2f2
Author: Chen-Yu Tsai <wenst@chromium.org>

i2c: of-prober: Defer regulator_disable() on successful probe in simple hel=
per

This patch defers regulator disabling in the I2C OF component prober by add=
ing
a 100ms delay. The delay allows asynchronously probing drivers to catch and
increase the regulator enable count, avoiding hardware re-initialization.

> diff --git a/drivers/i2c/i2c-core-of-prober.c b/drivers/i2c/i2c-core-of-p=
rober.c
> index f274e260353cd..17495125467ed 100644
> --- a/drivers/i2c/i2c-core-of-prober.c
> +++ b/drivers/i2c/i2c-core-of-prober.c
> @@ -243,11 +243,23 @@ static int i2c_of_probe_simple_enable_regulator(str=
uct device *dev, struct i2c_o
>  	return 0;
>  }
> =20
> -static void i2c_of_probe_simple_disable_regulator(struct device *dev, st=
ruct i2c_of_probe_simple_ctx *ctx)
> +static void i2c_of_probe_simple_disable_regulator(struct device *dev,
> +						  struct i2c_of_probe_simple_ctx *ctx,
> +						  bool defer_disable)
>  {
>  	if (!ctx->supply)
>  		return;
> =20
> +	/*
> +	 * Wait a bit of time for async drivers to probe and increase the
> +	 * regulator enable count. This allows the drivers to check and
> +	 * skip waiting for re-initialization.
> +	 */
> +	if (defer_disable) {
> +		dev_dbg(dev, "Deferring regulator disable\n");
> +		msleep(100);
> +	}
> +

[ ... ]

> @@ -409,7 +421,7 @@ void i2c_of_probe_simple_cleanup(struct device *dev, =
void *data)
>  	i2c_of_probe_simple_disable_gpio(dev, ctx);
>  	i2c_of_probe_simple_put_gpiod(ctx);
> =20
> -	i2c_of_probe_simple_disable_regulator(dev, ctx);
> +	i2c_of_probe_simple_disable_regulator(dev, ctx, true);

[Severity: Medium]
Does this unconditionally sleep for 100ms even when no matching I2C compone=
nt
is found?

If i2c_of_probe_component() iterates over potential components but finds no=
ne,
it calls ops->cleanup(dev, ctx), which invokes i2c_of_probe_simple_cleanup(=
).

Because defer_disable is hardcoded to true here,
i2c_of_probe_simple_disable_regulator() will execute the 100ms sleep.

Could this result in an unnecessary 100ms boot delay on systems missing the
probed component, since no async driver will ever probe in this failure pat=
h?

>  	i2c_of_probe_simple_put_supply(ctx);
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703115601.1323=
491-1-wenst@chromium.org?part=3D4

