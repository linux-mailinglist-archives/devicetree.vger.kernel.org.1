Return-Path: <devicetree+bounces-312790-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XXk8FPVDMmqyxgUAu9opvQ
	(envelope-from <devicetree+bounces-312790-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 08:51:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EFC696F3B
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 08:51:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RNmYIla6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312790-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312790-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EE02630075F0
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 06:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED7BC3B635B;
	Wed, 17 Jun 2026 06:50:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638063B4EB3
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 06:50:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781679029; cv=none; b=V5Ba4JRwMFb3lBO66+LEN/dBGrvybi+evUmBC330amkPDQLkNEhLBElmp7fKRgYkVFNRpMuIAYPky/MMqa5YpxcNRNd/w5liPbyS0/RW7anflKcbdxCu01s3lTylkIbG2qye/2lmdBySLZ0GsuX1xkp5meuvKQKK+yChWn4RLAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781679029; c=relaxed/simple;
	bh=yw2TGX5++AOIcAUFyF/oJHclSL6HDoiQOf1Bou0S1zU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ESfnPm3EfBkmqm/V6JqeFej6tlZxOHtZvI7wB1lQ9hmOfTxbEfYzPdsZV1u1azoJZp1IfKiFstpau2GL7uFQN11tmdO/TtoGSmI8AmeBH60CZ+zJzrO2btz6OWVHscXC0lmlK4i8303fO/DgJm0mBdbOFekvVsDMdN2+wvZqY1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNmYIla6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 830301F000E9;
	Wed, 17 Jun 2026 06:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781679026;
	bh=Fd94YkPRK8Xtobx3WL6aPBBHPkhVkW6bgzWE7xSI8M4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RNmYIla6MhKbPBTUYo1maSMJrFonXmFr3ksA4zJm0PSZHpA5R8hNqFiTG28RpNRBK
	 2TahjaHrXE9id1R1v8LU/fZkn1CfgmQ/+5UbzNiJM9VGZLuyIOTVlqnO36NSqjsW04
	 yVxiODYYVgl2FMjLNvi+aY5tzby6MLnXNB6Xg3i0upyx75ZOEhJuCmgomATdqCEFrU
	 rHIbf+5ihyH5KC4AZjo94oZ+rx7cFYMCc2svWF3Ss//SsdBQsjuc+zAuzvRx7BjsHW
	 ylXCrtdirVPZeUkU2elN69Hz1uvD6nxE38vzAJxk+xXI8StKhHZ00AFyrFICh484uo
	 W3w1Pi7xIZk7g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 resend 2/5] reset: cix: add audss support to sky1
 reset driver
Reply-To: sashiko-reviews@lists.linux.dev
To: joakim.zhang@cixtech.com
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260617064100.1504617-3-joakim.zhang@cixtech.com>
References: <20260617064100.1504617-1-joakim.zhang@cixtech.com>
 <20260617064100.1504617-3-joakim.zhang@cixtech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 06:50:26 +0000
Message-Id: <20260617065026.830301F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312790-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:joakim.zhang@cixtech.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,cixtech.com:email,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A0EFC696F3B

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [Critical] The reset controller operations access hardware registers via =
regmap without ensuring the reset controller device is active, leading to p=
otential system crashes.
- [High] The reset controller is registered before its underlying hardware =
(NOC reset) is fully initialized and deasserted, creating a race condition =
that can cause a bus hang.
- [High] The return value of `reset_control_deassert()` is unchecked, which=
 can lead to silent hardware failures and subsequent bus hangs.
- [Medium] Using asynchronous `pm_runtime_put()` on the probe error path ra=
ces with `pm_runtime_disable()`, leaving the hardware active and the reset =
improperly deasserted.
- [Low] The `dev_pm_ops` structure is assigned unconditionally without the =
`pm_ptr()` wrapper, generating dead code when PM support is disabled.
--

commit 44fbafef81df1536ade6d0fdca4767f4c7fc1234
Author: Joakim Zhang <joakim.zhang@cixtech.com>
Subject: reset: cix: add audss support to sky1 reset driver

This commit extends the Sky1 reset controller driver for the AUDSS CRU sysc=
on.
It adds support for sixteen active-low software reset bits for audio subsys=
tem
peripherals, reusing the existing regmap-based reset operations.

> diff --git a/drivers/reset/reset-sky1.c b/drivers/reset/reset-sky1.c
> --- a/drivers/reset/reset-sky1.c
> +++ b/drivers/reset/reset-sky1.c
[ ... ]
> @@ -343,21 +379,65 @@ static int sky1_reset_probe(struct platform_device =
*pdev)
>  	sky1src->rcdev.of_node   =3D dev->of_node;
>  	sky1src->rcdev.dev       =3D dev;
> =20
> -	return devm_reset_controller_register(dev, &sky1src->rcdev);
> +	ret =3D devm_reset_controller_register(dev, &sky1src->rcdev);

[Severity: High]
Is it safe to register the reset controller globally before the AUDSS NoC
reset is deasserted?=20

If a consumer driver attempting to probe or wake up concurrently tries to
assert or deassert a reset line, could the regmap MMIO access stall the bus
and trigger a synchronous external abort because the AUDSS NoC is still held
in reset?

> +	if (ret)
> +		return ret;
> +
> +	platform_set_drvdata(pdev, sky1src);
> +
> +	if (of_device_is_compatible(dev->of_node, "cix,sky1-audss-system-contro=
l")) {
> +		sky1src->rst_noc =3D devm_reset_control_get_exclusive(dev, NULL);
> +		if (IS_ERR(sky1src->rst_noc))
> +			return dev_err_probe(dev, PTR_ERR(sky1src->rst_noc),
> +					     "failed to get audss noc reset");
> +
> +		pm_runtime_get_noresume(dev);
> +		pm_runtime_set_active(dev);
> +		devm_pm_runtime_enable(dev);
> +
> +		reset_control_deassert(sky1src->rst_noc);

[Severity: High]
Can reset_control_deassert() fail and return an error code?=20

If it fails and leaves the NoC in reset, will devm_of_platform_populate()
attempting to probe children over a blocked NoC cause a bus stall or
system crash? Should the return value be checked and propagated here?

> +
> +		ret =3D devm_of_platform_populate(dev);
> +		pm_runtime_put(dev);

[Severity: Medium]
Does using asynchronous pm_runtime_put() on the error path risk a race with
pm_runtime_disable() which is called during devres cleanup?=20

If devm_of_platform_populate() fails, the probe function returns an error a=
nd
devres will immediately disable PM runtime. This could cancel the pending
async suspend work, meaning sky1_reset_runtime_suspend() might be skipped,
leaking rst_noc in a deasserted state.=20

Would using pm_runtime_put_sync() ensure the hardware is properly suspended
before cleanup continues?

> +		return ret;
> +	}
> +
> +	return 0;
> +}
[ ... ]
> +static const struct dev_pm_ops sky1_reset_pm_ops =3D {
> +	SET_RUNTIME_PM_OPS(sky1_reset_runtime_suspend, sky1_reset_runtime_resum=
e, NULL)
> +	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, pm_runtime_force_resu=
me)
> +};

[Severity: Critical]
Now that PM runtime support is added and the AUDSS variant's NoC reset can =
be
asserted during runtime suspend, do the existing reset controller operations
(sky1_reset_assert, sky1_reset_deassert, and sky1_reset_status) need to call
pm_runtime_resume_and_get() before performing regmap accesses?

If a consumer driver toggles a reset line while this controller is runtime
suspended, will the raw MMIO write to a block held in NOC reset cause a
synchronous external abort?

> +
>  static struct platform_driver sky1_reset_driver =3D {
>  	.probe	=3D sky1_reset_probe,
>  	.driver =3D {
>  		.name		=3D "cix,sky1-rst",
>  		.of_match_table =3D sky1_sysreg_of_match,
> +		.pm		=3D &sky1_reset_pm_ops,

[Severity: Low]
If CONFIG_PM is disabled, will this unconditional assignment cause
sky1_reset_pm_ops and its callbacks to be compiled but unreachable,
generating dead code?=20

Should this assignment be wrapped with pm_ptr() to align with standard
Power Management subsystem guidelines?

>  	},
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617064100.1504=
617-1-joakim.zhang@cixtech.com?part=3D2

