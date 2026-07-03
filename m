Return-Path: <devicetree+bounces-320134-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bRd3CQmzR2rXdgAAu9opvQ
	(envelope-from <devicetree+bounces-320134-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:03:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D93702A30
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:03:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=D8qXCOMg;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320134-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-320134-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 725AF304863D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 12:56:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14AA43D0BE1;
	Fri,  3 Jul 2026 12:56:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCAD3BB113
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 12:56:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783083372; cv=none; b=dTWSR2JYq8t2ADXcDURu3NCMGttap6Gaq2m5w6aki+ASR51Z340V3O82B/tGrhJCeOe8F5WW2d/jnUVqrQicZYank8yvV1jPMA/q/tLeWgbOvAk4HCHfTq0P6Z4CQrhSBF6Zfg9iJhXG3FUCcmLqRiWGqfKXH8IVYWEskHyEqcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783083372; c=relaxed/simple;
	bh=rsIjEYmnUG30OEmVtCLmqnWp5PvYvb5RAFBzLm6VxJY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bsbj7K0TmyfI5Guji1S7trwaslc1oE5tvf/6BTPM5wlevRvXS28VHa+Hs/302k+sVtheHQn3mnQfdac9Rf2HfBmtt55BBGvv7Wn7Z+/r1Xa4r/PLtDPuF3xAsr2K777kOQ9/f7osuPud4EGj6n/mpTu33e30+DUAAqwcofPeypc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8qXCOMg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C6E21F00A3A;
	Fri,  3 Jul 2026 12:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783083370;
	bh=M0vYzXpT7oYLkFSej4Sgo6FjNRhAeKMsVFAPUwCd9Bs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=D8qXCOMgPBWm2PsniORUnWO8RWzr3M2Y+SsfQiwcMPjqfC7XsUugWey3QesRDoAwO
	 F8GHvpR2V7ysA9Sy1zBXnwJBotdWVlodaJ9FPI52BAGXB3WskGGMer+GI182OD81rd
	 lm9uCF9bCnCHMJzdSoslcJ47C1l6jkr1e5Db+kBdpqGbAlBCzS5XdNM2rP/1WQwGZI
	 FYmxxUXKiGbBJPWwP4t3vsZ/AHVks7UfZCQKu8ZDSgwv/418QXd/wZjqi2qh4LOY61
	 /qQjS6CDc1L1or17nZjJrYff+j03LLs70Dga95ehN8RqmOD0hHNkXVI/JtEhbHclOQ
	 HKdYD8Cacswdg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v4 2/3] ptp: Add driver for R-Car Gen4
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?TmlrbGFzIFPDtmRlcmx1bmQ=?= <niklas.soderlund+renesas@ragnatech.se>
Cc: wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260702125525.2230427-3-niklas.soderlund+renesas@ragnatech.se>
References: <20260702125525.2230427-1-niklas.soderlund+renesas@ragnatech.se>
 <20260702125525.2230427-3-niklas.soderlund+renesas@ragnatech.se>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 12:56:10 +0000
Message-Id: <20260703125610.6C6E21F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320134-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:niklas.soderlund+renesas@ragnatech.se,m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:niklas.soderlund@ragnatech.se,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 91D93702A30

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] Missing error handling for `pm_runtime_get_sync()` leads to a pote=
ntial kernel crash and PM usage counter leak.
- [High] Lack of system suspend/resume callbacks causes the hardware timer =
to lose its state after system sleep.
- [High] Missing bounds validation for `priv->default_addend` allows silent=
 integer truncation for low clock rates.
- [High] Hardware reset coordination flaw allows Ethernet drivers to asynch=
ronously wipe the PTP hardware state.
- [Medium] The hardware timer is left enabled if `ptp_clock_register()` fai=
ls during probe.
--

commit 92b19ef008b7527d155231279eeb173dccb9a8de
Author: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.se>

ptp: Add driver for R-Car Gen4

Add driver for the gPTP timer found on R-Car Gen4 devices. The timer is
system-wide and shared by different Ethernet devices on each Gen4
platform.

> diff --git a/drivers/ptp/ptp_rcar_gen4.c b/drivers/ptp/ptp_rcar_gen4.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/ptp/ptp_rcar_gen4.c

[ ... ]

> +static int ptp_rcar_gen4_probe(struct platform_device *pdev)
> +{

[Severity: High]
The commit message mentions this gPTP timer shares its reset property with
the system's ethernet devices (like RTSN on V4H).

What happens when the ethernet driver asserts this shared reset line, such
as during network interface up/down cycles?

Since this driver doesn't manage the shared reset line or coordinate state
restoration, it seems the ethernet driver's actions might asynchronously
clear the PTP hardware state (resetting the increment and disabling the
timer) and silently break system time synchronization.

> +	struct ptp_rcar_gen4_priv *priv;
> +	struct device *dev =3D &pdev->dev;
> +	unsigned long rate;

[ ... ]

> +	/* Default timer increment in ns.
> +	 * bit[31:27] - integer
> +	 * bit[26:0]  - decimal
> +	 * increment[ns] =3D perid[ns] * 2^27 =3D> (1ns * 2^27) / rate[hz]
> +	 */
> +
> +	priv->default_addend =3D div_s64(1000000000LL << 27, rate);
> +
> +	pm_runtime_enable(dev);
> +	pm_runtime_get_sync(dev);
> +
> +	iowrite32(priv->default_addend, priv->base + PTPTIVC0_REG);

[Severity: High]
Can priv->default_addend exceed the 32-bit limit of iowrite32() here?

The default addend is calculated as a 64-bit value using div_s64(). If the
clock rate is less than ~31.25 MHz (such as a standard 25 MHz Ethernet
reference clock), the resulting value will be larger than UINT_MAX.

Since iowrite32() expects a 32-bit integer, won't this silently truncate
the upper bits and cause the timer to run at a severely skewed rate?

[Severity: High]
Is it safe to ignore the return value of pm_runtime_get_sync() here?

If the device fails to power up, the subsequent iowrite32() could cause a
synchronous external abort or bus error when accessing the powered-down IP
block, leading to a kernel panic.

Also, if pm_runtime_get_sync() fails, does this leak the runtime PM usage
counter, since there is no matching pm_runtime_put_noidle() on the error
path before returning?

> +	iowrite32(1, priv->base + PTPTMEC_REG);
> +
> +	priv->clock =3D ptp_clock_register(&priv->info, dev);
> +	if (IS_ERR(priv->clock)) {
> +		pm_runtime_put_sync(dev);
> +		pm_runtime_disable(dev);
> +		return PTR_ERR(priv->clock);
> +	}

[Severity: Medium]
If ptp_clock_register() fails, the driver aborts probe and cleans up the
software PM state.

Should it also disable the hardware timer by calling iowrite32(1,
priv->base + PTPTMDC_REG) here? Otherwise, the hardware is left active and
running while the driver unloads.

> +
> +	return 0;
> +}

[ ... ]

> +static struct platform_driver ptp_rcar_gen4_driver =3D {
> +	.driver =3D {
> +		.name =3D "ptp-rcar-gen4",
> +		.of_match_table =3D ptp_rcar_gen4_of_match,
> +	},
> +	.probe    =3D ptp_rcar_gen4_probe,
> +	.remove   =3D ptp_rcar_gen4_remove,
> +};

[Severity: High]
Does this driver need to handle system suspend/resume events?

When the system enters a sleep state like S3, the platform power domain
typically powers down the device, clearing hardware registers like
PTPTIVC0_REG and PTPTMEC_REG.

Without dev_pm_ops suspend and resume callbacks to restore the timer
increment and re-enable the timer, will the PTP hardware remain permanently
uninitialized and broken after a system sleep cycle?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702125525.2230=
427-1-niklas.soderlund+renesas@ragnatech.se?part=3D2

