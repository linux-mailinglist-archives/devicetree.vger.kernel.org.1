Return-Path: <devicetree+bounces-308235-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9BzBEPSkJmquaQIAu9opvQ
	(envelope-from <devicetree+bounces-308235-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 13:18:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A948265593B
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 13:18:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Lcg/7sr/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308235-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308235-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 05A3630316FA
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 11:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1C5534F247;
	Mon,  8 Jun 2026 11:15:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1EB4071FE;
	Mon,  8 Jun 2026 11:15:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780917358; cv=none; b=dCZHGA/ZKDtLqMfTKvr02CvbxmEglGEN2idGGwK7k5Icj1nkAjua3V8fOE5MfoOoF/ei7IwSjHtLiEmRfO7H5UUxSpidtz8rHCAzQtbHnIAGcv9g99jb0P+UZZ7+hqjt8RkdlfqLV8jt1T4gZU5biNGNmHPMAfR9qq8f7u4o+v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780917358; c=relaxed/simple;
	bh=+vh1GY6cbsL+YTiRfFLTwZOkM2su65GcYgNG8YP1KQo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BsiBtFZatOZsi96oXc8EOAj0DmPFoVok+ZdMz9+B5n2Lzwjxm359kIVwcE1CNPtdS8qMNnkRL7C4L907M6/8ycmaqsbnI0YovjmmhITZdXK0LCcXdIDGbKYGaz4yscngo7lSAgnGujDWDv7Y0pu5dwxT19Uxx7lc467t/kBhNTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lcg/7sr/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C9EB1F00893;
	Mon,  8 Jun 2026 11:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780917357;
	bh=x/HQcXSv70K3271gbMV7d9o4ga7cegbqD0BRddfqgIM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Lcg/7sr/ilBADMmrRmWRsXJvEq7Og5IHoC9oRRA/NR9v/FCBXNBnss9J/+Ey7SKhe
	 uLnyd6jjDSSFhhR2eICYog7vDcsOObkK9g29F5J0ztWx/nmNSTZRIHJg8yi4pOPVDW
	 tVft3TQQgIUsxqK6RPFAT7x4Qq7QCmQxlh3zGqqrpscLQgGqlPlId2eCVUZzONhrsw
	 GPWgv0Vgxrg5QmDNqT9yykgDq0By+HaF3e0kDrv/W1xHJOJ2T4rYdjLc0T1Yina7SB
	 50jjQO0W5DkaljaxUgDub+iMx3ClVnACz5BlRysYyzWcDo0w/Yq9QRlGUrF5uJnh3s
	 MGQuCgLkKobRA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: imx8mp-var-dart: Add support for
 Variscite Sonata board
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: imx@lists.linux.dev, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org
In-Reply-To: <fe666fa76f7f5570eda2b5d8297483d07eb7f41e.1780912513.git.stefano.r@variscite.com>
References: <fe666fa76f7f5570eda2b5d8297483d07eb7f41e.1780912513.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 11:15:55 +0000
Message-Id: <20260608111556.5C9EB1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308235-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,variscite.com:url,variscite.com:email,smtp.kernel.org:mid];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A948265593B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] RGMII TX pins are configured with minimum drive strength and slow =
slew rate.
--

commit bdd50106871edf46aec2e0d2dd1a6553b8d8c5ed
Author: Stefano Radaelli <stefano.r@variscite.com>
arm64: dts: imx8mp-var-dart: Add support for Variscite Sonata board

This commit adds device tree support for the Variscite Sonata carrier board
equipped with the DART-MX8M-PLUS system on module. It defines nodes and
pinmux configurations for interfaces including Ethernet, USB, HDMI, and I2C
peripherals.

Link: https://variscite.com/carrier-boards/sonata-board/

> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-dart-sonata.dts b/a=
rch/arm64/boot/dts/freescale/imx8mp-var-dart-sonata.dts
> new file mode 100644
> index 0000000000000..8afd72820f390
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-var-dart-sonata.dts

[ ... ]

> +	pinctrl_fec: fecgrp {
> +		fsl,pins =3D <
> +			MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0		0x90
> +			MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1		0x90
> +			MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2		0x90
> +			MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3		0x1d0
> +			MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC		0x90
> +			MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL	0x90
> +			MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0		0x00
> +			MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1		0x00
> +			MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2		0x00
> +			MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3		0x00
> +			MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL	0x00
> +			MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC		0x00

[Severity: High]
Will setting the pad values for the RGMII transmit pins to 0x00 cause signal
integrity problems?

A pad value of 0x00 sets the Drive Strength Enable (DSE) to its lowest sett=
ing
(X1) and the Fast Slew Rate (FSEL) to slow. RGMII operates at 125 MHz for
Gigabit Ethernet, which physically requires fast slew rates and higher drive
strength (typically 0x16 or 0x1f on i.MX devices) to maintain signal integr=
ity.

Could these slow signal edges lead to CRC errors, link instability, or a
complete failure to establish a gigabit link under load?

> +		>;
> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1780912513.gi=
t.stefano.r@variscite.com?part=3D3

