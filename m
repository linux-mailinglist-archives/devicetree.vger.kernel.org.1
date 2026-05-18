Return-Path: <devicetree+bounces-299094-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFlbOZeFCmpg2gQAu9opvQ
	(envelope-from <devicetree+bounces-299094-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 05:20:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D07C56562F
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 05:20:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36F38300E269
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 03:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C521337FF5A;
	Mon, 18 May 2026 03:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARe46AMI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1F7037F8AD;
	Mon, 18 May 2026 03:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779074446; cv=none; b=txjSRePU0MIPlpT/7+x/fM7TtD9pnSAksZjnewAVTXJX88cSA9ogcC1JAXNGjKnokN8CSjKgFPu9rSPlMAZF+d52bTLmkNW4NaivELBHnpfsVjzpCF+nfCLDz4mqMAcA4CcFvOfpo+GBTxmJ5C5K9WT15QpussKV45+y48Iy4G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779074446; c=relaxed/simple;
	bh=+uxIrVnT2ecTFM8iinW9prL096Cs3ptyGswkwlISofM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=H4IhSMUhSAfUtnluLqKEceORTpGOi3WwnYxcmX0v4r/unCDxj1MHi3ENpajoWREox9KJ4twBXHeclFi/p0D5k4q+lTBt4lafMxMBUzJrvR9bmm+v/aF9HkL/BhAr3kO6onQg536n9mowj6NI0QGpibpQql+tOiTjtSgfnT/Sw/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARe46AMI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 198F0C2BCB3;
	Mon, 18 May 2026 03:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779074446;
	bh=+uxIrVnT2ecTFM8iinW9prL096Cs3ptyGswkwlISofM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=ARe46AMIG0hBv/jlQdT5RBCo6iGb1hsaPI3SkhFwc1NZno55w+I3ah1wUIkMu6NtQ
	 xwT6XXK1QI9rYChFeURoDVDlO02dAKP+wkM6+ucL/UtICSZTUiBFfO8+GuWlqT55l/
	 33/1w4kEGtpPpC2KdAH5FDTybUXh0fRsGcC56bzycsTxbKVZCjUjzL/czDAVUzfGnB
	 SztO4FngHYSCxox7713LpXgf9dqzxOcddfJffU/jqpt5auRCZwNjjkg38oep4TL+qJ
	 FseqGdHGn9dhEOa8xoo6XYm+Ki3SjWjK/3STQlfuYR4wyir4XJMuq9z0sr+2QqI2DK
	 zIylhTEpMBOPw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/2] arm64: dts: freescale: add i.MX95 19x19 FRDM PRO
 board dts
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joseph Guo" <qijian.guo@nxp.com>
Cc: imx@lists.linux.dev, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260518-imx95_frdm_pro-v4-2-975346555a9b@nxp.com>
References: <20260518-imx95_frdm_pro-v4-2-975346555a9b@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 03:20:45 +0000
Message-Id: <20260518032046.198F0C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 4D07C56562F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299094-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,nxp.com:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] Architectural flaw preventing the M7 core from using the CAN1 tran=
sceiver.
- [High] Incorrect drive strength in `pinctrl_usdhc2_200mhz` causing potent=
ial SD card instability.
- [Medium] Mismatch between commit message claiming 10G ETH support and dev=
ice tree implementation.
- [Medium] Dead pinctrl configuration in the reserved `flexcan1` node.
- [Low] Unused `reg_3p3v` regulator node.
--

commit 65457c99452cde3ade57a7afda12053dd0e2d5ee
Author: Joseph Guo <qijian.guo@nxp.com>

arm64: dts: freescale: add i.MX95 19x19 FRDM PRO board dts
   =20
This commit adds the device tree for the NXP i.MX95 19x19 FRDM PRO board,
which is based on the i.MX95 19x19 SoC. It configures various peripherals
including USB, PCIe, ethernet, CAN, and regulators.

> - 10G ETH interface

The commit message claims support for a 10G ETH interface, but the device t=
ree
only configures enetc_port0 and enetc_port1 as 1 Gbps rgmii-id interfaces a=
nd
entirely omits the i.MX95 10G Ethernet MAC. Is this omission intentional?

> diff --git a/arch/arm64/boot/dts/freescale/imx95-19x19-frdm-pro.dts b/arc=
h/arm64/boot/dts/freescale/imx95-19x19-frdm-pro.dts
> new file mode 100644
> index 0000000000000..b87a26b0d7fcf
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx95-19x19-frdm-pro.dts
> @@ -0,0 +1,1021 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2026 NXP
> + */

[ ... ]

> +	flexcan1_phy: can-phy0 {
> +		compatible =3D "nxp,tja1057";
> +		#phy-cells =3D <0>;
> +		max-bitrate =3D <5000000>;
> +		silent-gpios =3D <&i2c4_gpio_expander_22 11 GPIO_ACTIVE_HIGH>;
> +	};

[ ... ]

> +	reg_3p3v: regulator-3p3v {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "+V3.3_SW";
> +		regulator-max-microvolt =3D <3300000>;
> +		regulator-min-microvolt =3D <3300000>;
> +	};

Is this regulator used anywhere? It doesn't have the regulator-always-on
property and isn't referenced by any device node as a supply.

[ ... ]

> +&flexcan1 {
> +	phys =3D <&flexcan1_phy>;
> +	pinctrl-0 =3D <&pinctrl_flexcan1>;
> +	pinctrl-names =3D "default";
> +	status =3D "reserved";
> +};

Will the M7 core be able to use the CAN1 transceiver with this setup?

Since flexcan1 is marked as reserved, the Linux CAN driver won't probe it.
As a result, Linux will never power on flexcan1_phy or drive the standby GP=
IO
low. The Linux driver core will also ignore the pinctrl-0 configuration.

If the M7 core depends on Linux to set up the pin multiplexing and enable t=
he
PHY, does this need a gpio-hog on the expander and the pinctrl moved to an
active pinctrl_hog group instead?

[ ... ]

> +	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
> +		fsl,pins =3D <
> +			IMX95_PAD_SD2_CLK__USDHC2_CLK				0x158e
> +			IMX95_PAD_SD2_CMD__USDHC2_CMD				0x138e
> +			IMX95_PAD_SD2_DATA0__USDHC2_DATA0			0x138e
> +			IMX95_PAD_SD2_DATA1__USDHC2_DATA1			0x138e
> +			IMX95_PAD_SD2_DATA2__USDHC2_DATA2			0x138e
> +			IMX95_PAD_SD2_DATA3__USDHC2_DATA3			0x138e
> +			IMX95_PAD_SD2_VSELECT__USDHC2_VSELECT			0x51e
> +		>;
> +	};

Are these pad settings correct for 200MHz operation?

These use the exact same pad settings (0x138e and 0x158e) as the 100MHz gro=
up,
whereas usdhc1 and usdhc3 correctly configure higher drive strength (0x13fe=
 and
0x15fe) for 200MHz. Can this lower drive strength cause signal integrity
issues or CRC errors with the SD card at 200MHz?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518-imx95_frdm=
_pro-v4-0-975346555a9b@nxp.com?part=3D2

