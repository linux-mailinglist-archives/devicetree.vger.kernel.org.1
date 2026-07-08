Return-Path: <devicetree+bounces-323086-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kpD7OKKHTmrBOgIAu9opvQ
	(envelope-from <devicetree+bounces-323086-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 19:23:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C71729258
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 19:23:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UK5Dbcaf;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323086-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323086-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A264030B1B38
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 17:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFD904C9011;
	Wed,  8 Jul 2026 17:13:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22D74C900E
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 17:13:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783530809; cv=none; b=GZpvaFxGELMQ9jX+Ke7xvYBy0PSTpEv+AvLyFVOx9gKUFQh4b15srVCVyDXP6+WnaaiFkwTp9FCiQn4ru+b/Wo4wCkc58RpweHofk+zaIBLd8Wkbc6bPMnykn4tbb385icklrYuGYx0UIG5i/xUmrHaYPJ2eQlZ1xzXBRqPtRUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783530809; c=relaxed/simple;
	bh=/9zNIs4s/EQ8BDFyH1iwF0Ow9OjtkuQmShPbbxgOvdE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fnKVOvTLLPqbmpj+o4yzi0UG6YAoC88MjPxj6yeoaXPCi2elQdcueMiTfXrBUP9oZw47Kj8o+xa6Fyty4S33b/6S4bLbWTcyKp+SH+nbjH4lgHOn4QffRZqh/thIXdfobutWkLD1CfpAo6KbzkAwMgNaqq5ZvID/JoJpLxSwu04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UK5Dbcaf; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 164201F000E9;
	Wed,  8 Jul 2026 17:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783530808;
	bh=vElUncsm8Cy6/OeArv5sZHi+C/RMXLXggPDYaHAk+O0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UK5DbcafltRgRe1j8Ke2rgQn/wQl3emD/MvrbGxA60Kwih1XOe6Aum6X2v0O6D0BV
	 PBQDqwSSpucQo19Z6cvwbEil2vw2ugFHXAsGWZ+QGOimpbEhuDAdzvW5EcYKEcKLWp
	 mE3136WhLQWEAwe+qPGSsQ8iA4fm0rYMRiloMa5sS6sHRqM/G9qaLnVsXCtoA+8mYC
	 IhzQWRLZO2hE0zt/RrSJmj4PzS3SiT8nXAj4GmxrV3qSrv2Aa037s+IlhUWmX88gr7
	 nel8xBt9P3WC+m3Q2JxtnGKpBcn8DM4u8TdjuPOZJR93SiBAp8p1VND8eAeNUhSUGX
	 NniUn2TN6LS8Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 4/4] arm64: dts: nuvoton: npcm845-evb: Add peripheral
 nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tomer Maimon" <tmaimon77@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260708165929.2233934-5-tmaimon77@gmail.com>
References: <20260708165929.2233934-1-tmaimon77@gmail.com>
 <20260708165929.2233934-5-tmaimon77@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 17:13:27 +0000
Message-Id: <20260708171328.164201F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323086-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:tmaimon77@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 71C71729258

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The device tree aliases for the SPI FIU controllers `fiu1` and `=
fiu3` are incorrectly swapped.
--

--- Patch [4]: [PATCH v8 4/4] arm64: dts: nuvoton: npcm845-evb: Add periphe=
ral nodes ---
commit 58cedbdc9355efee860c7d605886caa4e600ea8c
Author: Tomer Maimon <tmaimon77@gmail.com>

arm64: dts: nuvoton: npcm845-evb: Add peripheral nodes

Enable peripheral support for the NPCM845 evaluation board by wiring up
the SoC controller nodes to the board design. Add board aliases, GPIO-backed
MDIO buses, flash partitions, and enable various peripheral interfaces.

> diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts b/arch/a=
rm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> index 5edf5d13342da..7717c3a8f76d2 100644
> --- a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> +++ b/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> @@ -10,6 +10,42 @@ / {
> =20
>  	aliases {
>  		serial0 =3D &serial0;
> +		ethernet1 =3D &gmac1;
> +		ethernet2 =3D &gmac2;
> +		ethernet3 =3D &gmac3;
> +		mdio-gpio0 =3D &mdio0;
> +		mdio-gpio1 =3D &mdio1;
> +		fiu0 =3D &fiu0;
> +		fiu1 =3D &fiu3;
> +		fiu2 =3D &fiux;
> +		fiu3 =3D &fiu1;

[Severity: Medium]
Are the aliases for the SPI FIU controllers intentionally swapped here?

Mapping fiu1 to &fiu3 and fiu3 to &fiu1 assigns logical SPI bus spi1 to the
&fiu3 hardware controller and spi3 to the &fiu1 hardware controller.

This contradicts the partition labels defined further down in this patch for
these nodes, which expect spi1 to be fiu1 and spi3 to be fiu3:

&fiu1 {
        ...
        partition@0 {
                label =3D "spi1-system1";

&fiu3 {
        ...
        partition@0 {
                label =3D "spi3-system1";

Could this mismatch break userspace and boot scripts relying on the logical
device IDs to find system partitions?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708165929.2233=
934-1-tmaimon77@gmail.com?part=3D4

