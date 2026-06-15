Return-Path: <devicetree+bounces-312059-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JgFNGPggMGoPOgUAu9opvQ
	(envelope-from <devicetree+bounces-312059-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 17:57:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF7A687FBE
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 17:57:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Rnki7qg0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312059-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312059-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 04AF8300CD91
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 15:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84C984071D0;
	Mon, 15 Jun 2026 15:57:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D0C407577
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 15:57:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781539046; cv=none; b=kpIN8hK8QOcREiyRQL9O15UFEvRfVpaTec6OC+gH8rKyq4PCe1otIhjhnIkjjM8UGR9WC02VDAss7Ai5qOszPZN1yLEpjydGyrtlUGzBYW34BMkS4kxes10DwKCBfgQVZsMmVjDPI4xnhXFmyZs+3TYVa2wTALKYPcjqX6l6fj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781539046; c=relaxed/simple;
	bh=dRjXHWGGJhnNyDkZCAyAlfClaba/96eBdVDzu25t46U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=G15vqJs4TpUu6KuQJlatE+GoflqMyuPoohjdkHm+XLAe2latZCC5F01NDvF16tKwHk6vURDEw2MY3nc/069bjBCz1aaZpyF0bqrBPZJdczI7OTWmBRo6STGiiGXqYb58qSmH4xLNcb+rtPQexUMftO7CXKWwTIZlmyfE4z6TOsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rnki7qg0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC5A31F000E9;
	Mon, 15 Jun 2026 15:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781539045;
	bh=NpL41R7k84u6Xss+LUK0OpwKmPhY11O1AHsyt23Hvww=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Rnki7qg0c3mOCuljNtRzoXplagNGIi8V1kl3nhkmnhy9mQcvOnY812dwot9jv/sT8
	 5Blc+43x5cvVZbCqSCLEsDNVmRz5mBAMPbxudEu4cRyjwLoUFduNhceeOnKZN5ve5p
	 0k0yffkPeZwpvANSbANIFxv3PAeEOdu/ip038pSZ2URuP5sWaj28aGbH9D7LwWp+H6
	 vGjhE17LlrRTIA6c9wXeuvSob0p1/zV7tUvqvP7kahK4szfjiHLR8w6H0wqaiKZbWt
	 ba85pJxfUCRaaFzYLK45gA+3nenQk1BkG7WOjkeM7ZAsZEs3NJmvbDfg6lhR8PSAuz
	 YPWqNBBX4EGhw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 11/12] rtc: rzn1: use FIELD_PREP/FIELD_GET and GENMASK
 for register access
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260615154805.1619693-12-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260615154805.1619693-12-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 15:57:24 +0000
Message-Id: <20260615155724.CC5A31F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:prabhakarcsengg@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312059-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url,renesas.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
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
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EEF7A687FBE

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Incomplete refactoring: open-coded logic remains for RZN1_RTC_SUBU_=
RTCA0FX
--

commit 2e16f66c80c483d619655d20fbb859a42e9d1b6d
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

rtc: rzn1: use FIELD_PREP/FIELD_GET and GENMASK for register access

This commit replaces open-coded shift and mask operations with the bitfield
API in the rzn1 RTC driver to improve readability and match the hardware
manual.

> diff --git a/drivers/rtc/rtc-rzn1.c b/drivers/rtc/rtc-rzn1.c
> index c7ef3c81180f4..9f9cf9882fc49 100644
> --- a/drivers/rtc/rtc-rzn1.c
> +++ b/drivers/rtc/rtc-rzn1.c
[ ... ]
> @@ -306,7 +312,7 @@ static int rzn1_rtc_read_offset(struct device *dev, l=
ong *offset)
>  	val =3D readl(rtc->base + RZN1_RTC_SUBU);
>  	ppb_per_step =3D val & RZN1_RTC_SUBU_DEV ? 1017 : 3051;
>  	subtract =3D val & RZN1_RTC_SUBU_DECR;
> -	val &=3D 0x3F;
> +	val =3D FIELD_GET(RZN1_RTC_SUBU_RTCA0FX, val);
> =20
>  	if (!val)
>  		*offset =3D 0;

[Severity: Low]
Since the stated goal of this patch is to replace open-coded masks with the
bitfield API, should the remaining 0x3F masks for this register be updated =
as
well?

In rzn1_rtc_read_offset() just below this change, there is still an explicit
mask used when calculating the offset:

	*offset =3D -(((~val) & 0x3F) + 1) * ppb_per_step;

Additionally, it looks like the write path in rzn1_rtc_set_offset() was mis=
sed
entirely during the refactoring. It continues to use open-coded logic rather
than FIELD_PREP when constructing the RZN1_RTC_SUBU register:

	subu |=3D RZN1_RTC_SUBU_DECR;
	subu |=3D (~(-steps - 1)) & 0x3F;

Would it make sense to update these locations so the bitfield access is
consistent across the driver?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615154805.1619=
693-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D11

