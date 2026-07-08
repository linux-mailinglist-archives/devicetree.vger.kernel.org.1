Return-Path: <devicetree+bounces-323222-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id s0fWESzQTmp3UgIAu9opvQ
	(envelope-from <devicetree+bounces-323222-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:33:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 816C672AE60
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:33:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Ei/IsX/I";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323222-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323222-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B40B430315EF
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 22:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 623DE31F99D;
	Wed,  8 Jul 2026 22:33:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DC4381B1A
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 22:33:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783549992; cv=none; b=uMLOoGMyJk0hg9yGxhoj3fW6lSYwph09gv8hDKuj7skDbrHaejDre5wmYe/+MpUW+o/3yjB9Z7SE6ON85oIbGu9WUi1llmqFTzrziXoap8R/nb2uXSF9n7tBIpIhIgYN2gsClu+0b150qdLby7EZ8aYBt+AaPff441838aO2EL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783549992; c=relaxed/simple;
	bh=P7vzBDvGm/HcaxWKz2oF9lIdrADGC0i0CPOOdOzsIDk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JaqZ46lh6od6lXHOcrB4uOiSqUKEGlmA0iXpU4dBo1OAQg2VBcBwFHckKKPJ1I8uXAEowlM/KvIM0UL5oONowIQcYiXxxVKIJrDXT3ib+XreIuNfsPfp8iWwBK7hcYEIdQCxipn+RtLEm7tjdfcqJ5Ts2yriL6zNiKIh4BbWbLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ei/IsX/I; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71F431F000E9;
	Wed,  8 Jul 2026 22:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783549990;
	bh=Bvn1HGey3eWhbHljdgfpRPndgCEsrPX3YvJ7zfv23Xo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ei/IsX/IVIblShuo77JReqLuAcGT2rTOBumussCxARgHcQ7qSwP/1HjJz+Cku4PJT
	 ezHU5upz0c+MxZ241TMkZskTow6xyfygXeoGLCD/6tEgiwkvHBQ226MxkXbvNgg/YE
	 vcfOPo2XWNO6qt1X5IKhFJeS4Z77P3CW2pMngttKwkBpzoUpeIJWTUEBNHdyLXmG4I
	 2F4bzWYqymJunp+joeq+qHXo4cB9v6c5+5Cx2PMEdq5vigDwdPz5naCklemsQLkI3F
	 YPWtLNide7jzaX9vH8vLhrpe88l9Rr65LTVS3iHfktPKa4zJLWjjdAZ7vJtAb3wqTb
	 TceH2xfN+cGfg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] ARM: dts: ixp4xx: Drop the reg-offset hack
Reply-To: sashiko-reviews@lists.linux.dev
To: "Linus Walleij" <linusw@kernel.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260709-ixp4xx-little-endian-v1-3-e9622d0ba9e4@kernel.org>
References: <20260709-ixp4xx-little-endian-v1-0-e9622d0ba9e4@kernel.org>
 <20260709-ixp4xx-little-endian-v1-3-e9622d0ba9e4@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 22:33:09 +0000
Message-Id: <20260708223310.71F431F000E9@smtp.kernel.org>
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
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323222-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linusw@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 816C672AE60

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Removing `reg-offset =3D <3>` without a driver workaround or `reg-=
io-width =3D <4>` breaks big-endian serial consoles on IXP4xx.
--

--- Patch [3]: [PATCH 3/3] ARM: dts: ixp4xx: Drop the reg-offset hack ---
commit 441a4bee18082ddbc2bc878dd7fd00a516e2cc30
Author: Linus Walleij <linusw@kernel.org>

ARM: dts: ixp4xx: Drop the reg-offset hack

This commit removes the reg-offset =3D <3> property from the UART nodes in =
the
IXP4xx device tree. The commit message notes that this was a hack for big
endian support and that such workarounds should be handled in the drivers.

> diff --git a/arch/arm/boot/dts/intel/ixp/intel-ixp4xx.dtsi b/arch/arm/boo=
t/dts/intel/ixp/intel-ixp4xx.dtsi
> index 0adeccabd4fef..b0f98da8def47 100644
> --- a/arch/arm/boot/dts/intel/ixp/intel-ixp4xx.dtsi
> +++ b/arch/arm/boot/dts/intel/ixp/intel-ixp4xx.dtsi
> @@ -84,11 +84,6 @@ pci@c0000000 {
>  		uart0: serial@c8000000 {
>  			compatible =3D "intel,xscale-uart";
>  			reg =3D <0xc8000000 0x1000>;
> -			/*
> -			 * The reg-offset and reg-shift is a side effect
> -			 * of running the platform in big endian mode.
> -			 */
> -			reg-offset =3D <3>;

[Severity: High]
Does removing this break big-endian serial consoles on IXP4xx?

Without reg-offset =3D <3> or a replacement like reg-io-width =3D <4>, the =
8250
UART driver will default to 8-bit memory access at offset 0. On big endian
systems, this reads from the wrong byte lane, resulting in invalid data and
loss of the serial console.

Is the driver workaround mentioned in the commit message already in place to
handle this?

>  			reg-shift =3D <2>;
>  			interrupts =3D <15 IRQ_TYPE_LEVEL_HIGH>;
>  			clock-frequency =3D <14745600>;
> @@ -98,11 +93,6 @@ uart0: serial@c8000000 {
>  		uart1: serial@c8001000 {
>  			compatible =3D "intel,xscale-uart";
>  			reg =3D <0xc8001000 0x1000>;
> -			/*
> -			 * The reg-offset and reg-shift is a side effect
> -			 * of running the platform in big endian mode.
> -			 */
> -			reg-offset =3D <3>;

[Severity: High]
Similarly for uart1, will this cause a regression on big endian configurati=
ons
if the driver side doesn't already compensate for the missing offset?

>  			reg-shift =3D <2>;
>  			interrupts =3D <13 IRQ_TYPE_LEVEL_HIGH>;
>  			clock-frequency =3D <14745600>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-ixp4xx-lit=
tle-endian-v1-0-e9622d0ba9e4@kernel.org?part=3D3

