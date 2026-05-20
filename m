Return-Path: <devicetree+bounces-300819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GN5zLCgXDmpn6AUAu9opvQ
	(envelope-from <devicetree+bounces-300819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 22:18:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F19AE5996BE
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 22:18:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D841D355D0BF
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 17:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09C333BED26;
	Wed, 20 May 2026 17:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeLPLmPH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAED03BE165
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 17:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779297619; cv=none; b=A1jZeuEL8UXpqtL+HHMyJjqBZsvFnuZYIn6dDloBDPcLdAVM+BRH5dFWR8B5ta6tJJc/9EK7SZko4vcEElO5mMqorha9mwlUnZnb75zAuiXX5OFoE72mR4uJD6DX3wC/NC2l8nQnMSvyx5BpNTH0LshasSoyxnyvReb01Gk+1LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779297619; c=relaxed/simple;
	bh=p9zKe/MlMCldreju0tGffI//50L879Yaf+vCuZSeEb8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=KEKQMfV6gaUk1IkzaRvbubhyCOJYnjCKZFWD7iwFlfIdjDF2enEhq4Rpegjo6/Ix1dKs5o5zYbkJIZ3qdD28m0ndBwQoEq0GTpFTEUs/uzw4ULrb/DSxUaAuwV5GItgUv1PDun9M99PMAsD96YshYwPor/lwcweYCacDhsvmP1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeLPLmPH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86FF71F000E9;
	Wed, 20 May 2026 17:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779297618;
	bh=0sKxqgOYINsArl1OexxPWdzcJGosPxOp56KsMuO5o50=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AeLPLmPH+K1ju9W2h6cvdjiAMY9i6EXMpaL3Qf6TcGhjwfz4IgnzB2cDy1p90hftQ
	 qLgPFWXlFj3qt3ZjimMuv/Q1aO2+qh4h9mnTbJw9N5REuuqTpqXaE6AN82OH7x5kcg
	 9hyo8IQtp/VJZwbTD4KwPhzBEKflOPiSug2oovMY4fxjmo/qSgS5JKKHk4k+M0HvaO
	 JJssSwsrxjvK0vDDeJKngJtHACZCRe5CXqRRWG+cXAR4YToC7HdBCIK1nGX43E/z0p
	 7Vm6Z8q6WSnrFOEokCwqeHFa1FEPdESRJRiFvm2DFku+yX3vfzQGGbXRuzh0FCPtju
	 XO6wXhFepN3Zw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 5/8] firmware: raspberrypi: register nvmem driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gregor Herburger" <gregor.herburger@linutronix.de>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260520-rpi-otp-driver-v5-5-b26e5908eeac@linutronix.de>
References: <20260520-rpi-otp-driver-v5-5-b26e5908eeac@linutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 17:20:18 +0000
Message-Id: <20260520172018.86FF71F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300819-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linutronix.de:email,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: F19AE5996BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Lockless access to `platform_get_drvdata` in `rpi_firmware_get` le=
ads to a TOCTOU Use-After-Free race with driver unbind.
--

commit 4d3a36b9dad7b2f3acf0486917ea6908b89eb46f
Author: Gregor Herburger <gregor.herburger@linutronix.de>

firmware: raspberrypi: register nvmem driver

The Raspberry Pi firmware exposes two regions with otp registers. The
first region called "customer otp" is available on all Raspberry Pi
models. The second is only available on the Raspberry Pi 5 (bcm2712).

> diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberryp=
i.c
> index 0aa322e9a2e73..e24636feae0ea 100644
> --- a/drivers/firmware/raspberrypi.c
> +++ b/drivers/firmware/raspberrypi.c

[ ... ]

> @@ -327,12 +373,23 @@ static void rpi_firmware_remove(struct platform_dev=
ice *pdev)
>  	rpi_hwmon =3D NULL;
>  	platform_device_unregister(rpi_clk);
>  	rpi_clk =3D NULL;
> +	platform_device_unregister(rpi_otp_customer);
> +	rpi_otp_customer =3D NULL;
> +	platform_device_unregister(rpi_otp_private);
> +	rpi_otp_private =3D NULL;
> =20
>  	rpi_firmware_put(fw);

[Severity: High]
This isn't a bug introduced by this patch, but I wanted to ask about a
potential pre-existing race condition here with driver unbind.

When the driver is unbound (e.g., via sysfs), rpi_firmware_remove() is
called, which drops the reference count here and frees the firmware object.

Could a concurrent call to rpi_firmware_get() retrieve the fw pointer via
platform_get_drvdata() without holding the device_lock before the drvdata
is cleared?

If rpi_firmware_get() does not serialize with driver unbind, would it be
possible for it to execute kref_get_unless_zero() after the firmware
object has already been freed by rpi_firmware_put(), leading to a
use-after-free?

>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520-rpi-otp-dr=
iver-v5-0-b26e5908eeac@linutronix.de?part=3D5

