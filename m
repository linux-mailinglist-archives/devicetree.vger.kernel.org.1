Return-Path: <devicetree+bounces-316314-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XPdyEZgCQGrhbAkAu9opvQ
	(envelope-from <devicetree+bounces-316314-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 19:04:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BAC6D25F7
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 19:04:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=k+EX0MxB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316314-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316314-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42F613011BDA
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 17:04:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26198311C1D;
	Sat, 27 Jun 2026 17:04:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158BB2701DC
	for <devicetree@vger.kernel.org>; Sat, 27 Jun 2026 17:04:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782579861; cv=none; b=R5NfQr9GOeAkeZYaOIOfntCZqfNMTmYU1naXN4GYNH13/vhl2hkODqpR9mCBwVknTgcQ3WFNarkOhgIaN0iBO/cdE+vajFzIA036xU67I4QWAPg+/VU0VvGzmFW+VvbbgKe3+NkAxpkBRFkzlqN+9u8GYLEpUO30tiC8GPJe23U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782579861; c=relaxed/simple;
	bh=3tYlN6P93a5TWxYfGbSaO4vFQpLeDqXojeN7/BBFhwI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CoNNHtvwwb25caoGYvBr3+mXxm/W4TewcSQPEC625ThTgjjD6pcGxIRTTY2vPccnwW102YX05Qwpo3tdXnVAUvDFsW2HYE+2jqYKowz7Fl5iIRgCXkOwOenhpbGuCUhCuP/caTdPNjkskFIc9CWjpwmyfo6LB+yZuo66XOw9kgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+EX0MxB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 752CA1F000E9;
	Sat, 27 Jun 2026 17:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782579859;
	bh=jX2xF7kk2wDJ0AmMifASqGO5serm4SZZOEi7hxjjcl0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k+EX0MxBkHL+5k15Syyt6sa+ByAv5k8lbcEsQ+4COTmWjORQZ+PlZUseYr3/CICmm
	 Hdfd8GiE6LZNceSHMKwbv9+bWI6bI+yDHxHMir0xqVpg9SHsf59hGhbYRaqYpciu2Y
	 vJnda4svu6h9bbkpXa3syXgRg5znfhqCWX/pNuIR15d1yY1K1F3lpsgJxacqdjsQ5g
	 kGSBnCqb0j4hQD/lkkDSy8zvpl5PURgfnoUU6XvSpmqZzNv5UFcPh2uj/nNoqWo0Nz
	 eozK6sGH2G3rn6FsMXLSol3d6wPDlL1Ra3EdT7GGg2oCEswbUINaIeLhHQJX7TelXK
	 U80oufsypjqfg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/6] pinctrl: samsung: Add Exynos8855 pinctrl
 configuration
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alim Akhtar" <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260627171228.2687857-4-alim.akhtar@samsung.com>
References: <20260627171228.2687857-1-alim.akhtar@samsung.com>
 <CGME20260627165414epcas5p183d43baad4cbc682cdc8aeca5f4b427a@epcas5p1.samsung.com>
 <20260627171228.2687857-4-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 27 Jun 2026 17:04:18 +0000
Message-Id: <20260627170419.752CA1F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316314-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:alim.akhtar@samsung.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:email,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 82BAC6D25F7

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Incorrect Wakeup Interrupt Initialization Callback for CMGP pin co=
ntroller
--

commit 603cd3e67c5aa008772144faa081414df87774ab
Author: Alim Akhtar <alim.akhtar@samsung.com>

pinctrl: samsung: Add Exynos8855 pinctrl configuration

Add pinctrl configuration for Exynos8855. The bank type
macros are reused from EXYNOS850 and GS101 SoC.

> diff --git a/drivers/pinctrl/samsung/pinctrl-exynos-arm64.c b/drivers/pin=
ctrl/samsung/pinctrl-exynos-arm64.c
> index fe9f92cb037ea..1aa977d2a1f80 100644
> --- a/drivers/pinctrl/samsung/pinctrl-exynos-arm64.c
> +++ b/drivers/pinctrl/samsung/pinctrl-exynos-arm64.c
[ ... ]
> +static const struct samsung_pin_ctrl exynos8855_pin_ctrl[] __initconst =
=3D {
> +	{
> +		/* pin-controller instance 0 ALIVE data */
> +		.pin_banks	=3D exynos8855_pin_banks0,
> +		.nr_banks	=3D ARRAY_SIZE(exynos8855_pin_banks0),
> +		.eint_wkup_init =3D exynos_eint_wkup_init,
> +		.suspend	=3D gs101_pinctrl_suspend,
> +		.resume		=3D gs101_pinctrl_resume,
> +	}, {
> +		/* pin-controller instance 1 CMGP data */
> +		.pin_banks	=3D exynos8855_pin_banks1,
> +		.nr_banks	=3D ARRAY_SIZE(exynos8855_pin_banks1),
> +		.eint_gpio_init =3D exynos_eint_gpio_init,

[Severity: High]
Does this incorrectly assign the GPIO interrupt initialization callback ins=
tead
of the wakeup interrupt initialization callback?

Looking at exynos8855_pin_banks1, the banks are defined using
GS101_PIN_BANK_EINTW, meaning they are marked as EINT_TYPE_WKUP.

If .eint_wkup_init is NULL and .eint_gpio_init is used, exynos_eint_gpio_in=
it()
will skip these banks because they are marked as EINT_TYPE_WKUP.

Will this cause external wakeup interrupts on the CMGP pin controller to fa=
il
since their IRQ domains are never initialized?

> +		.suspend	=3D gs101_pinctrl_suspend,
> +		.resume		=3D gs101_pinctrl_resume,
> +	}, {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260627171228.2687=
857-1-alim.akhtar@samsung.com?part=3D3

