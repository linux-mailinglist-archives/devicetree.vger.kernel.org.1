Return-Path: <devicetree+bounces-309480-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0HZOIKYXKWr/QQMAu9opvQ
	(envelope-from <devicetree+bounces-309480-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:52:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 63324666CA0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:52:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HW41CMX4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309480-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-309480-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9289830013A3
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 07:51:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C064306D26;
	Wed, 10 Jun 2026 07:51:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D7C372670
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 07:51:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781077914; cv=none; b=Wx78d8n7xaItfxxIih6NHVtH6bjlmqOjd1VHQtBTDXlVS+umKm/SxshW98b4xk1QCkhvg+ClpryLH401IgobaQk3ugwOFtIbP2HiWE6PhmWAP3GQ3IK4U4oeLCnwQQZrx9fj0DqYHr0BTa8oAwjW2R0cd2SYBoFUQa7Owv9kaIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781077914; c=relaxed/simple;
	bh=kDxr/brGQG4LT2VW8BHWVtw68xdamrVjCotuSCMIJ6M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cpgSTGx7KbiJkLN3Rdkm/kSeMbzCBP/mRmfKg4TMNwrae4TYcwFyilXasJmGVP1XWLybFfamhlew6MhnaLW6n0EBu3nEF1EkhbEfkCtv58gfsc/Ufj99h+x1kldnKIcPI+Qgz9uO9GnpvCbFZ3nZcKDAELDWjc3bwp7TEuPP0Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HW41CMX4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0F851F00893;
	Wed, 10 Jun 2026 07:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781077913;
	bh=71AsV5E6aX9bdiMGywiAHMqc13lYiPbvh9UExlx22CI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HW41CMX4Rbrff3cpD14vpEwGyd7ZH4Vh2n9v0BWDZZu7J+R4BpYmr0d4n65od27SM
	 a9aMjFkETbsZcqF5pDPELkjrU+wcsXpJ9tJANeMmcpXfFAWybXioaaD4ArtGBJLZRG
	 HQHZfnDszTMI0KROlCFqbsI8BJvV5y0gOQaSNqAWfTa3caGkEL1AOym36gSFWjWaWS
	 ldR2Fe7PWZOxwNVn8IczMpNs9HbY+mZNdh+vhARwvIshNlnqyk0Dgklpp5pX0ZVx/b
	 z/jXoOX97sSqOvb7dnXGXfo5RvD85xb9HOgF0U6IHp+sZ8JcMEObfBEQV8G2jDb4Aa
	 QgTYQ0NGwCGvg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 2/4] arm64: dts: renesas: rzg3e-smarc-som: Add Versa3
 clock generator
Reply-To: sashiko-reviews@lists.linux.dev
To: "John Madieu" <john.madieu.xa@bp.renesas.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260610074702.1743334-3-john.madieu.xa@bp.renesas.com>
References: <20260610074702.1743334-3-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 07:51:52 +0000
Message-Id: <20260610075152.D0F851F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-309480-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,renesas.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:john.madieu.xa@bp.renesas.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 63324666CA0

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The device tree configuration contradicts the commit message reg=
arding Versa3 output 5.
--

commit ec1059eb98c4c04f3768f67639d5fd666ce6ef3b
Author: John Madieu <john.madieu.xa@bp.renesas.com>

arm64: dts: renesas: rzg3e-smarc-som: Add Versa3 clock generator

This patch adds the Renesas 5P35023 (Versa3) programmable clock generator
on the I2C2 bus for the RZ/G3E SMARC EVK. It configures outputs 0 through 4
to provide the necessary reference, audio, and Ethernet clocks.

> diff --git a/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi b/arch/arm6=
4/boot/dts/renesas/rzg3e-smarc-som.dtsi
> index d978619155d24..89428c804efb4 100644
> --- a/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi
> +++ b/arch/arm64/boot/dts/renesas/rzg3e-smarc-som.dtsi

[ ... ]

> @@ -130,6 +136,20 @@ raa215300: pmic@12 {
> =20
>  		interrupts-extended =3D <&pinctrl RZG3E_GPIO(S, 1) IRQ_TYPE_EDGE_FALLI=
NG>;
>  	};
> +
> +	versa3: clock-generator@68 {
> +		compatible =3D "renesas,5p35023";
> +		reg =3D <0x68>;
> +		#clock-cells =3D <1>;
> +		clocks =3D <&x2>;
> +
> +		assigned-clocks =3D <&versa3 0>, <&versa3 1>,
> +				  <&versa3 2>, <&versa3 3>,
> +				  <&versa3 4>, <&versa3 5>;
> +		assigned-clock-rates =3D <24000000>, <12288000>,
> +				       <11289600>, <12288000>,
> +				       <25000000>, <25000000>;

[Severity: Medium]
The commit message states "Output 5 (DIFF2) is left out, as it is not
connected on this board."  Is the inclusion of <&versa3 5> in the
assigned-clocks property intentional?

The arrays configure output 5 to 25MHz, which contradicts the commit
message and might unnecessarily enable an unconnected clock output.

> +	};
>  };
> =20
>  &i3c {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610074702.1743=
334-1-john.madieu.xa@bp.renesas.com?part=3D2

