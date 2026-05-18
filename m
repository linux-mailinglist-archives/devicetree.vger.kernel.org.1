Return-Path: <devicetree+bounces-299132-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCzsCva1CmoB6QQAu9opvQ
	(envelope-from <devicetree+bounces-299132-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 08:47:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F26E566E9C
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 08:47:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A89830037E6
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 06:46:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21D073CDBD1;
	Mon, 18 May 2026 06:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3RLYH4+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5033C1F37;
	Mon, 18 May 2026 06:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779086795; cv=none; b=AEZWbfKxERVxO253sdKSQl8AlbG1hxYLPT1bn0GU6zC90nuMujoVGGJkIEpS4+cDxwnKWcPUFoJX6gukshHfUK+I3ymSPhxax1p+JKs+bMEDlbIe5E7TGlYSteUXqMStpcCJN2ZkSuSAEpNWcH9P4NP7UAvwd1eIvxRmxxR6jZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779086795; c=relaxed/simple;
	bh=nyUvwxOERFiKlrwpt376CsF/RFVPO90hyYEOTpqZkSI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PLtVdNgFLpckTs6jJfcUE76eHEDucl/1YMlcKqwH/5LY1Dj4ixJgPvMl+3qTbi0vbr162I7jwxUGsDZKHCfP6r6q8PqTAjujjoQO2dpbOysJgKT2Ms5xkuwEWll/LktSdLF7KmNfwleBcSAIh1nA/z7cZgou8SPCqJRssZNpShY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3RLYH4+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86F5FC2BCB7;
	Mon, 18 May 2026 06:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779086794;
	bh=nyUvwxOERFiKlrwpt376CsF/RFVPO90hyYEOTpqZkSI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=I3RLYH4+iHTTxBCDBtgF1Rn+vLlbLcxMk5dw6Hq22zJLF/pDsJzeyJLRg6i7OPbJ6
	 Q5Yg2QN6jiLK6I4VUz5OuBSll+v8SmAdzsfbsOBFfgHm/FEZhCB7vm190n+6AHCfip
	 yONHyKV9ya1yUf5QvxuHqa9gdUnDKZQkKGZEpqM+YUDiV8MyBD5Zo1JZbcOFqJ7Hxl
	 A9QlpRweUeUANOip/LM8cOKIGPafqrxCBDJV5w7ytPHbgw5PycNMfVbTpG0o6H3tXe
	 6RZfkPNaZGyAH6QY5Egb40ZbXHXN5aFI+BT2qy7TaHRef0A3y8X8x3tH5fLkZVTP29
	 m1JnzQS9U7PCw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/1] arm64: dts: s32g: add PIT support for s32g2 and
 s32g3
Reply-To: sashiko-reviews@lists.linux.dev
To: "Khristine Andreea Barbulescu" <khristineandreea.barbulescu@oss.nxp.com>
Cc: Frank.Li@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260518063547.2890353-2-khristineandreea.barbulescu@oss.nxp.com>
References: <20260518063547.2890353-2-khristineandreea.barbulescu@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 06:46:33 +0000
Message-Id: <20260518064634.86F5FC2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 7F26E566E9C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299132-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[2.101.56.96:email,lists.linux.dev:replyto,2.100.140.128:email,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,2.102.191.0:email,nxp.com:email];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[2.102.19.32:email];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The newly added device tree nodes `pit0` and `pit1` are named `pit@=
...` instead of the generic name `timer@...`.
--

commit 296fdf97d8d5f42b2426eda4d41b0132d74ccbbd
Author: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.c=
om>

arm64: dts: s32g: add PIT support for s32g2 and s32g3

This commit adds device tree nodes for the Periodic Interrupt Timer (PIT0 a=
nd
PIT1) blocks on the NXP S32G2 and S32G3 SoCs.

> diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/d=
ts/freescale/s32g2.dtsi
> index 51d00dac12deb..57ff97e445075 100644
> --- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
[ ... ]
> @@ -417,6 +417,15 @@ edma0: dma-controller@40144000 {
>  			clock-names =3D "dmamux0", "dmamux1";
>  		};
> =20
> +		pit0: pit@40188000 {

This isn't a bug, but should these nodes use the generic name timer instead=
 of
pit? The Devicetree Specification recommends using generic names that refle=
ct
the primary function of the device rather than specific IP block acronyms.

> +			compatible =3D "nxp,s32g2-pit";
> +			reg =3D <0x40188000 0x3000>;
> +			interrupts =3D <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&clks 61>;
> +			clock-names =3D "pit";
> +			status =3D "disabled";
> +		};
> +
[ ... ]
> @@ -622,6 +631,15 @@ edma1: dma-controller@40244000 {
>  			clock-names =3D "dmamux0", "dmamux1";
>  		};
> =20
> +		pit1: pit@40288000 {

Could this node also be named timer@40288000 for the same reason?

> +			compatible =3D "nxp,s32g2-pit";
> +			reg =3D <0x40288000 0x3000>;
> +			interrupts =3D <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&clks 61>;
> +			clock-names =3D "pit";
> +			status =3D "disabled";
> +		};
[ ... ]
> diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/d=
ts/freescale/s32g3.dtsi
> index e314f3c7d61d0..efe5398e12403 100644
> --- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
[ ... ]
> @@ -475,6 +475,15 @@ edma0: dma-controller@40144000 {
>  			clock-names =3D "dmamux0", "dmamux1";
>  		};
> =20
> +		pit0: pit@40188000 {

And similarly, could this node be updated to timer@40188000?

> +			compatible =3D "nxp,s32g3-pit", "nxp,s32g2-pit";
> +			reg =3D <0x40188000 0x3000>;
> +			interrupts =3D <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&clks 61>;
> +			clock-names =3D "pit";
> +			status =3D "disabled";
> +		};
> +
[ ... ]
> @@ -693,6 +702,15 @@ edma1: dma-controller@40244000 {
>  			clock-names =3D "dmamux0", "dmamux1";
>  		};
> =20
> +		pit1: pit@40288000 {

And timer@40288000 here?

> +			compatible =3D "nxp,s32g3-pit", "nxp,s32g2-pit";
> +			reg =3D <0x40288000 0x3000>;
> +			interrupts =3D <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&clks 61>;
> +			clock-names =3D "pit";
> +			status =3D "disabled";
> +		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518063547.2890=
353-2-khristineandreea.barbulescu@oss.nxp.com?part=3D1

