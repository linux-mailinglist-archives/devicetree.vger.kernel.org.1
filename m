Return-Path: <devicetree+bounces-322505-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RtBpI/7qTWpQAAIAu9opvQ
	(envelope-from <devicetree+bounces-322505-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 08:15:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFBF7221AB
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 08:15:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="U/c6glZy";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322505-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322505-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58C77302801B
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 06:13:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 848D0383313;
	Wed,  8 Jul 2026 06:13:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F00A1C84BC
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 06:13:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783491203; cv=none; b=HDbSJmHfsCd9ErmJ/f/igIhvhSkVAbXd999G4Ph/AOWlHl4vzjazL9IlgvGw1w7DEZCnpD5PNkfuxG/crA7mBKcMBHFcncBSrbhMEYCEpG9vrEUsLgzWL7WgfKfELEFN7x68WgpKeSQEOO//YxxvlEyqGyfV9Q+5dMzRUhTTgvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783491203; c=relaxed/simple;
	bh=DqXggqIsFcL2xTfD232mNe8gYC1zmHjTSK3K16gFZF4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=S8ZS2yyvcbbLrwM+BojI5OGSmsm9CB1HXrdKhEg4fxw7AScLeOjsP4cqBsUmKiOVuJ5mdATSoEpRe0/JCNYynH+Rx2h01eJxMv6Nqc30XgTRH9ZMJVXqjeyPzusgVWbDcF1fy11MFA9th8qPrum7BtvByvcw17Uwey2murWSXv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/c6glZy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B46431F000E9;
	Wed,  8 Jul 2026 06:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783491202;
	bh=T5WdKuVbytvydemDz45MPnJNAxm0IK5NaTh9cTqiQdk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=U/c6glZyVZq7IwVh7B+nacTC0mPvY5/Kd4VxiOKlbUTAxfZWtq14zSdBrrGC+puqQ
	 KLVN4QDshjfZhi2D75a8h3Ptt1oB2b7JFNyOT+s/OiHxmyiSY6qY9BX2VPGhTHP0c6
	 z5kC3Pmg65saCoO/2J+vXg84oKdz3ywp8TQUCaip215oRv4HJ4uxtza6mgs5faxOkg
	 xcXUXuHy0Fo5CgdVKRLJwPrLqPWhkWo55a1F95pTlPPl40JAuf2cOp7hCjtr5r67rb
	 ZZNJm0K5XVQBrH9wBlUTwNIxArB/kWt/TGPkgSF+YEQ7IBFKH+Dx/cbPBpNcw3gu4p
	 muSMh04LBYnqQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/4] arm64: dts: socfpga: agilex5: Add SoCDK TSN
 Config2 board
Reply-To: sashiko-reviews@lists.linux.dev
To: muhammad.nazim.amirul.nazle.asmade@altera.com
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260707061305.27580-3-muhammad.nazim.amirul.nazle.asmade@altera.com>
References: <20260707061305.27580-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
 <20260707061305.27580-3-muhammad.nazim.amirul.nazle.asmade@altera.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 06:13:21 +0000
Message-Id: <20260708061321.B46431F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322505-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:muhammad.nazim.amirul.nazle.asmade@altera.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,altera.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CEFBF7221AB

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Broken RGMII timings due to missing driver support for stripping P=
HY delays.
- [Low] Undocumented MAC-level compatible string.
--

--- Patch [2]: [PATCH v2 2/4] arm64: dts: socfpga: agilex5: Add SoCDK TSN C=
onfig2 board ---
commit 9b347403f48cf7cfca1e37c7a4bbf38717136eeb
Author: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>

arm64: dts: socfpga: agilex5: Add SoCDK TSN Config2 board

This commit adds the device tree for the Intel SoCFPGA Agilex5 SoCDK TSN
Config2 board variant. It enables gmac1 as a TSN port utilizing a
GMII-to-RGMII converter implemented in the FPGA fabric.

> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_tsn_cfg2.dts=
 b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_tsn_cfg2.dts
> new file mode 100644
> index 0000000000000..bf13ccfc1faa5
> --- /dev/null
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_tsn_cfg2.dts

[ ... ]

> +&gmac1 {
> +	status =3D "okay";
> +	compatible =3D "altr,socfpga-stmmac-agilex5-tsn",

[Severity: Low]
Is this new MAC-level compatible string documented in the devicetree bindin=
gs?
It appears missing from Documentation/devicetree/bindings/net/altr,socfpga-=
stmmac.yaml,
which would cause dtbs_check validation to fail with warnings.

> +		     "altr,socfpga-stmmac-agilex5",
> +		     "snps,dwxgmac-2.10";
> +	phy-mode =3D "rgmii-id";

[Severity: High]
The commit message states that the new compatible string is used so the dri=
ver
can detect the converter and strip the delay bits before configuring the PH=
Y.

Does the dwmac-socfpga driver currently support the
altr,socfpga-stmmac-agilex5-tsn string and the associated delay-stripping
logic?

If this support isn't present in the driver yet, the driver will fall back =
to
altr,socfpga-stmmac-agilex5 and pass rgmii-id unmodified. Will this cause t=
he
PHY driver to add internal delays on top of the delays already provided by =
the
FPGA soft IP, resulting in broken RGMII timings?

> +	phy-handle =3D <&emac1_phy0>;
> +	max-frame-size =3D <9000>;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707061305.2758=
0-1-muhammad.nazim.amirul.nazle.asmade@altera.com?part=3D2

