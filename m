Return-Path: <devicetree+bounces-310212-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cqpeDNpqKmorpAMAu9opvQ
	(envelope-from <devicetree+bounces-310212-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:59:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A6B66FA32
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:59:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kRuxSVm3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310212-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-310212-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1F9AE3002520
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B483370D4F;
	Thu, 11 Jun 2026 07:59:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CBB371065;
	Thu, 11 Jun 2026 07:59:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781164753; cv=none; b=iVuoPkZslD9SbQkiQ7bgKDHO9MbD8xAC0zZL4XfavsTGIwrNB0LVQunuFJyI3l4LOPjH459RT9GUvQLdueUPC5JpM2/Z3ViNL5VCe/GuObKygrcq0IiFHZ6uKyCKW5OdoaIdkXUroiWl2Xt8sxwDRhtNog0gnJ5UZ4AYAtqKcPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781164753; c=relaxed/simple;
	bh=sjwnPL4FlgueGCT5QoKqiahVrhEuYKmA0r1My4jx34c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GdbHi8zblklH2StRGsUMyluexq42vR9oSAd1aAC3V/EmRc57AYve4JZIX40yhyj9hsnUalanDnWJQ40AephzXTD9sEFS9emnmG7F0ur67wRkIauhvnuc1zrcoVKIJUvcSlSbgUAdaG/Eu4J+14Lxt799KAtBlj+BUGQQvorBQgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRuxSVm3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAB011F00893;
	Thu, 11 Jun 2026 07:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781164752;
	bh=C3AZ8o2HUdh7PC0h6Ws5LV32kq4gzjgfYRKxWl0KUus=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kRuxSVm3ha76kOo8h/c0ikcanFSstCSogEkE/y4xLdI60K9hhdADRQFo+HyCdd8dM
	 bWcjMwfEc8wbeiuvWkh7Ap4tkPx3PYRKYG7doSteaPvc1qZ45mUTw+rr26tugvxGUh
	 vLa9nvHwPEIOoTz8kndnFRERyUewopsfBJdead+XzJe8qAlbhnH4ype6taKiOMDeuE
	 PjxykFUJ2wc9KNQ49ZRCLgXG/Rx/XFPcBd6V/CVsbox9al42rhNI5QJkp6BZcPcTU3
	 /5eessU8ACK12D3pYh6O5LNoazYczdQ3TwFiLlBk/yQIuUHYKXTmGcDUuwk/0Lq2fQ
	 jIMGAjNs7V+/g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3] arm64: dts: imx94: Add Root Port node and PERST
 property
Reply-To: sashiko-reviews@lists.linux.dev
To: hongxing.zhu@oss.nxp.com
Cc: conor+dt@kernel.org, imx@lists.linux.dev, robh@kernel.org, Frank.Li@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260611075057.2892593-1-hongxing.zhu@oss.nxp.com>
References: <20260611075057.2892593-1-hongxing.zhu@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 07:59:11 +0000
Message-Id: <20260611075911.AAB011F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310212-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:hongxing.zhu@oss.nxp.com,m:conor+dt@kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 27A6B66FA32

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Moving `vpcie3v3aux-supply` from the Host Bridge node to the Root =
Port node causes the PCIe controller driver to fail to find and enable the =
auxiliary power supply.
--

commit 881f61760fe4035aacb7e254c5a7890c62c2bcbf
Author: Richard Zhu <hongxing.zhu@nxp.com>

arm64: dts: imx94: Add Root Port node and PERST property

This commit moves the reset-gpios property to the new Root Port node as
recommended. It also moves the vpcie3v3aux-supply properties from the Host
Bridge nodes to the newly created Root Port nodes.

> diff --git a/arch/arm64/boot/dts/freescale/imx943-evk.dts b/arch/arm64/bo=
ot/dts/freescale/imx943-evk.dts
> --- a/arch/arm64/boot/dts/freescale/imx943-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx943-evk.dts
> @@ -1034,12 +1034,15 @@ &pcie0 {
>  		 <&pcie_ref_clk>;
>  	clock-names =3D "pcie", "pcie_bus", "pcie_phy", "pcie_aux",
>  		      "ref", "extref";
> -	reset-gpio =3D <&pcal6416_i2c3_u46 3 GPIO_ACTIVE_LOW>;
> -	vpcie3v3aux-supply =3D <&reg_m2_wlan>;
>  	supports-clkreq;
>  	status =3D "okay";
>  };
> =20
> +&pcie0_port0 {
> +	reset-gpios =3D <&pcal6416_i2c3_u46 3 GPIO_ACTIVE_LOW>;
> +	vpcie3v3aux-supply =3D <&reg_m2_wlan>;

[Severity: High]
Does moving the vpcie3v3aux-supply property here break the auxiliary power
regulator initialization for this controller?

Looking at imx_pcie_probe() in drivers/pci/controller/dwc/pci-imx6.c, the
driver retrieves the regulator directly from the host bridge device node:

	imx_pcie->vpcie_aux =3D devm_regulator_get_optional(&pdev->dev, "vpcie3v3a=
ux");

Since the pci-imx6 driver hasn't been updated to look for the supply in the
Root Port child node, will devm_regulator_get_optional() now fail to find it
and leave the 3.3V auxiliary regulators disabled during PCIe initialization?

> +};
> +

[ ... ]

> @@ -1058,12 +1061,15 @@ &pcie1 {
>  		 <&pcie_ref_clk>;
>  	clock-names =3D "pcie", "pcie_bus", "pcie_phy", "pcie_aux",
>  		      "ref", "extref";
> -	reset-gpio =3D <&pcal6416_i2c3_u46 1 GPIO_ACTIVE_LOW>;
> -	vpcie3v3aux-supply =3D <&reg_slot_pwr>;
>  	supports-clkreq;
>  	status =3D "okay";
>  };
> =20
> +&pcie1_port0 {
> +	reset-gpios =3D <&pcal6416_i2c3_u46 1 GPIO_ACTIVE_LOW>;
> +	vpcie3v3aux-supply =3D <&reg_slot_pwr>;

[Severity: High]
Will this similarly cause the regulator for the second PCIe controller to
remain disabled, as the pci-imx6 driver will still search the parent &pcie1
node for the vpcie3v3aux supply?

> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611075057.2892=
593-1-hongxing.zhu@oss.nxp.com?part=3D1

