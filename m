Return-Path: <devicetree+bounces-326871-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5sS8GA1vV2rQNwEAu9opvQ
	(envelope-from <devicetree+bounces-326871-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:29:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C473575D916
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:29:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=E88oUNY1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326871-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326871-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CC534300ECBF
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:29:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C1BD441607;
	Wed, 15 Jul 2026 11:29:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D589543634A;
	Wed, 15 Jul 2026 11:29:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784114954; cv=none; b=pSX4VvpKzsX/Wk4WdXrWlNfsI90Zv/jGDhf3CF0TBQ96K/aT6Ae19w8qBIj/67EucB47KzyOms1KuEf/UWL7ciD4RLEEcgH95tR/HUtog/zvQ/t7ui6fhJNJccN18GQYtN/uVWPVn9/DDyiz5HSnGIGOWXk49/BV2LXb+0J6+tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784114954; c=relaxed/simple;
	bh=P0KgsAiIWqtvoxl+fTEvn65eGdALLQxvSCSle/IjIFo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WR+5zV9kgPy4Kch3pAN4t2LuYCrEnfDjn6aYo+dV4pqsPqSk2N6Z1kMHmo1i6Y8R+yt1f484oOS8WLSwhOLbdHMdK1yRRE/s/vhZwuEjYtT+cSXGDPmzwm64mFJTskMftx/xSFx2yvOJpeee8Zv4XUztQjH0JPLLQer3T0PKRL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E88oUNY1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A3D71F000E9;
	Wed, 15 Jul 2026 11:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784114953;
	bh=2fBvhl0zTG5Yc1yvbwT/b8GyPit0HqW4bIIk8xv4HCE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=E88oUNY1hE9CZ8KEU/lxeEt/rN/a7yUh+nx+jjp/jTyDDPsck14RlbmmKOnUr9xXh
	 D5xt88NXYWF/c5Ik923T8n7tOydr+gSsyJb99b+y0akEJmJD7R76M3tkVqr5Gi05v8
	 StJ8rC0pSeNUQaMBGnQgpdqjAnUBbjy/lNgRachtE7RFjzS9DFI48IDcKgLztZlnVd
	 UpV6PgFc6WOSG91ygaTU4rAD9viJJB9nqdNGOFcnuFrPXkAyMF296BtAVgdirUYNQ8
	 1zeQ13myywGOmjHkkkQ6LsGmbgybZx7+BeKmfD5Z4FFNkKc2J5fdcqSZZzkwK6vfeM
	 CvT5zvt8f3Gxw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: imx8qm-var-som: Add support for
 Variscite Symphony board
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: imx@lists.linux.dev, conor+dt@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org, robh@kernel.org
In-Reply-To: <2480c0b11fff83d57826d6519410c1ecc1d89bb8.1784113547.git.stefano.r@variscite.com>
References: <cover.1784113547.git.stefano.r@variscite.com>
 <2480c0b11fff83d57826d6519410c1ecc1d89bb8.1784113547.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 11:29:12 +0000
Message-Id: <20260715112913.3A3D71F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326871-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:robh@kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,variscite.com:email,variscite.com:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C473575D916

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Ethernet PHY is unpowered during MDIO bus scan due to decoupled ph=
y-supply and MDIO parent
--

--- Patch [3]: [PATCH v3 3/3] arm64: dts: imx8qm-var-som: Add support for V=
ariscite Symphony board ---
commit ac21a70e1bd0bf7f486143508c499cc45337cbf8
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: imx8qm-var-som: Add support for Variscite Symphony board

This commit adds device tree support for the Variscite Symphony carrier
board equipped with the VAR-SOM-MX8 QuadMax system on module. It defines
various peripherals including uSD Card, USB, Gigabit Ethernet, UART, SPI,
I2C interfaces, and PCIe.

Link: https://variscite.com/carrier-boards/symphony-board/

> diff --git a/arch/arm64/boot/dts/freescale/imx8qm-var-som-symphony.dts b/=
arch/arm64/boot/dts/freescale/imx8qm-var-som-symphony.dts
> new file mode 100644
> index 0000000000000..7c7fc8958efc0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8qm-var-som-symphony.dts

[ ... ]

> +&fec1 {
> +	mdio {
> +		ethphy1: ethernet-phy@5 {
> +			compatible =3D "ethernet-phy-ieee802.3-c22";
> +			reg =3D <5>;
> +			vddio-supply =3D <&reg_phy_vddio>;
> +			reset-gpios =3D <&pca9534 5 GPIO_ACTIVE_LOW>;
> +			reset-assert-us =3D <10000>;
> +			reset-deassert-us =3D <100000>;

[ ... ]

> +&fec2 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_fec2>;
> +	/*
> +	 * The required RGMII TX and RX 2ns delays are implemented directly
> +	 * in hardware via passive delay elements on the SOM PCB.
> +	 * No delay configuration is needed in software via PHY driver.
> +	 */
> +	phy-mode =3D "rgmii";
> +	phy-handle =3D <&ethphy1>;
> +	phy-supply =3D <&reg_fec_phy>;

[Severity: High]
Will this PHY fail to probe because it is unpowered during the MDIO bus sca=
n?

Since ethphy1 is defined as a child of the fec1 MDIO bus, fec1 initiates
the PHY probe. However, its power supply (reg_fec_phy) is coupled to fec2 h=
ere.

When fec1 probes and registers its MDIO bus, it scans for PHYs. Because fec2
has not successfully probed yet (or deferred due to the missing PHY),
reg_fec_phy will be OFF.=20

The MDIO core will fail to read the PHY ID of the unpowered ethphy1 and
silently skip registering it. When fec2 eventually probes and enables the
regulator, it will likely fail to connect because ethphy1 was never registe=
red.

Does phy-supply need to be moved to the MDIO node or ethphy1 directly so
it gets powered on before the MDIO bus is scanned?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1784113547.gi=
t.stefano.r@variscite.com?part=3D3

