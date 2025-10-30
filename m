Return-Path: <devicetree+bounces-233157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C48C1FA8E
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:55:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFB561894421
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AA8434DB64;
	Thu, 30 Oct 2025 10:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Y9DOBuDq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay50-hz3.antispameurope.com (mx-relay50-hz3.antispameurope.com [94.100.134.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FBF351FD5
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.239
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761821706; cv=pass; b=heTw71YeB7Fco2CxOsYzsXNP01WfE0qj6PjWIeI1cbqtOKTMsJ4AAZQc2dKlZBKQHSoxOwVUdyNbq3EEFU1m2JomXByf006YRyWYtVpHPSrnX4je3RdTDsINJzpb1d3c9vqD5xSuz2msFF2EkqH3OeZj0lAl05N8KBhTQtYP08E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761821706; c=relaxed/simple;
	bh=vDit2WSKvXsPyuyNqgDJsL23mSpwqoWbEjwmAU0lRtY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Y/N1TPmy2TNqaDMybRZMwql+zYkbpwvg+mnK8GdrSNptklT2omH/jB53+Sr3hOt1pI1UKh+CBqr+Ju3+TEGaVBSdlrkhN3grEypvFFhpQPHJcC+tyULaNPDvXF+HNZuSO6LJWpFw0J8dgi+NpTA5oqy/MJw1G3I6qEn/WTJ7xyk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Y9DOBuDq; arc=pass smtp.client-ip=94.100.134.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate50-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=Oz0ZhBQQWSFQZWJgTI1NfCDVGIjRIKKmdygZqOMsjqk=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761821660;
 b=VhwM6AUZWbonDBr7OgYJXRd7rW4REjuhxUypxqNpg5Ud10e7N8JIBQ02eDCZrgtONdF3d8qt
 tyUyPoHqMMFKdHZxXx1qiuiiU1ybDnh8zP1ZuSSgbBspoulnCDtYQzO8sBffIw3CFxhtkbOjpYi
 XVQ9mTWuAyLF3+swdRYhJrJxgQOsAsnpVZECTZtoTyJZ6Ddp2pCdo4XcVncMtl88lmROeI+7xfj
 WtAsxGFSb2Q1Z8ES/CnGX4GfFUb0rM/PN2V4CZazCHk1LPnLSo0yyLfbGrwgPsoxyOm87X5p7rx
 ZlVie1WooCiKWDamP8EQgL/QOTXShApq7cmRwZS1rwJQw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761821660;
 b=rnN63x/epeB1TCxKJRh45yP12jMO6tpl85Zc8Nj+Q1ZJeFtq9Y6a/di8a1XQh0mcwGUDUs+d
 //NEJS/nf9zEzlMvbTXxLGmvo3e2MUKByozed01Pp0voBCKZDTqfvL5kuHRWKtCGAyBOddhi+Hv
 EWshm6M5eh6TXIF52hZii6hGlwjxbePht8YUCRReWB6//sMxbVbX4AXjPuEsmx8xMwuYsb+PnhO
 KQXyE1QakhvTRYOW7Ip89oTpqrKCJRsjglJWX6jNi4ioRs6vZigUQoD4w1mOAA50ZIJn7pxZ3l9
 Z7I2qGQ60JAGkoWvWYlO0Zulce0L0ax3OBTWe4XdOUZCw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay50-hz3.antispameurope.com;
 Thu, 30 Oct 2025 11:54:19 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 257195A0A3E;
	Thu, 30 Oct 2025 11:54:12 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: frank.li@nxp.com, l.stach@pengutronix.de, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, bhelgaas@google.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Cc: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org, Richard Zhu <hongxing.zhu@nxp.com>,
 Richard Zhu <hongxing.zhu@nxp.com>
Subject:
 Re: [PATCH v6 10/11] PCI: imx6: Add CLKREQ# override to enable REFCLK for
 i.MX95 PCIe
Date: Thu, 30 Oct 2025 11:54:11 +0100
Message-ID: <3022129.e9J7NaK4W3@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20251015030428.2980427-11-hongxing.zhu@nxp.com>
References:
 <20251015030428.2980427-1-hongxing.zhu@nxp.com>
 <20251015030428.2980427-11-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay50-hz3.antispameurope.com with 4cy1Fd1F7pz2nGYZ
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:868febba0787f9587ee8ceef14de3c14
X-cloud-security:scantime:1.954
DKIM-Signature: a=rsa-sha256;
 bh=Oz0ZhBQQWSFQZWJgTI1NfCDVGIjRIKKmdygZqOMsjqk=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761821659; v=1;
 b=Y9DOBuDqUhzboiPgwDtVYPKMzvpbcRR2wbZsf6Xjo7ui4215SJybF2AfbmVVDPLXzMoou4xU
 8zJudWLgFtm4otbi05W4hmTdStK4V2CPkcLUbvTK9yWv/E0i++p+puZQX/aOP7NJzMZpqOiFlGg
 fsK92f76LmkSKZ+bxmV65eXrze54yqeSvEBvFEiqru+OxRbhUvrVDmtOlU12MShDS8d9gYMIOra
 YQUsLaV+zj5QMxjNKoRLI5ZsG7PIpm0kK3lKJZS+XNC2IAg7bht0W2WcI6YSg86z7PmDVM0ZgXv
 1ST75mwsdXFWHA2ZMyGRpigsKhGhztgJl7aW7fcv3qT/A==

Hi,

Am Mittwoch, 15. Oktober 2025, 05:04:27 CET schrieb Richard Zhu:
> The CLKREQ# is an open drain, active low signal that is driven low by
> the card to request reference clock. It's an optional signal added in
> PCIe CEM r4.0, sec 2. Thus, this signal wouldn't be driven low if it's
> reserved.
>=20
> On i.MX95 EVK board, the PCIe slot connected to the second PCIe
> controller is one standard PCIe slot. The default voltage of CLKREQ# is
> not active low, and may not be driven to active low due to the potential
> scenario listed above (e.x INTEL e1000e network card).
>=20
> Since the reference clock controlled by CLKREQ# is required by i.MX95
> PCIe host too. To make sure this clock is ready even when the CLKREQ#
> isn't driven low by the card(e.x the scenario described above), force
> CLKREQ# override active low for i.MX95 PCIe host to enable reference
> clock.
>=20
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>

Thanks, this is actually required on TQMa95xxSA.
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>=20
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controll=
er/dwc/pci-imx6.c
> index a60fe7c337e08..aa5a4900d0eb6 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -52,6 +52,8 @@
>  #define IMX95_PCIE_REF_CLKEN			BIT(23)
>  #define IMX95_PCIE_PHY_CR_PARA_SEL		BIT(9)
>  #define IMX95_PCIE_SS_RW_REG_1			0xf4
> +#define IMX95_PCIE_CLKREQ_OVERRIDE_EN		BIT(8)
> +#define IMX95_PCIE_CLKREQ_OVERRIDE_VAL		BIT(9)
>  #define IMX95_PCIE_SYS_AUX_PWR_DET		BIT(31)
> =20
>  #define IMX95_PE0_GEN_CTRL_1			0x1050
> @@ -711,6 +713,22 @@ static int imx7d_pcie_enable_ref_clk(struct imx_pcie=
 *imx_pcie, bool enable)
>  	return 0;
>  }
> =20
> +static void  imx95_pcie_clkreq_override(struct imx_pcie *imx_pcie, bool =
enable)
> +{
> +	regmap_update_bits(imx_pcie->iomuxc_gpr, IMX95_PCIE_SS_RW_REG_1,
> +			   IMX95_PCIE_CLKREQ_OVERRIDE_EN,
> +			   enable ? IMX95_PCIE_CLKREQ_OVERRIDE_EN : 0);
> +	regmap_update_bits(imx_pcie->iomuxc_gpr, IMX95_PCIE_SS_RW_REG_1,
> +			   IMX95_PCIE_CLKREQ_OVERRIDE_VAL,
> +			   enable ? IMX95_PCIE_CLKREQ_OVERRIDE_VAL : 0);
> +}
> +
> +static int imx95_pcie_enable_ref_clk(struct imx_pcie *imx_pcie, bool ena=
ble)
> +{
> +	imx95_pcie_clkreq_override(imx_pcie, enable);
> +	return 0;
> +}
> +
>  static int imx_pcie_clk_enable(struct imx_pcie *imx_pcie)
>  {
>  	struct dw_pcie *pci =3D imx_pcie->pci;
> @@ -1918,6 +1936,7 @@ static const struct imx_pcie_drvdata drvdata[] =3D {
>  		.core_reset =3D imx95_pcie_core_reset,
>  		.init_phy =3D imx95_pcie_init_phy,
>  		.wait_pll_lock =3D imx95_pcie_wait_for_phy_pll_lock,
> +		.enable_ref_clk =3D imx95_pcie_enable_ref_clk,
>  	},
>  	[IMX8MQ_EP] =3D {
>  		.variant =3D IMX8MQ_EP,
> @@ -1974,6 +1993,7 @@ static const struct imx_pcie_drvdata drvdata[] =3D {
>  		.core_reset =3D imx95_pcie_core_reset,
>  		.wait_pll_lock =3D imx95_pcie_wait_for_phy_pll_lock,
>  		.epc_features =3D &imx95_pcie_epc_features,
> +		.enable_ref_clk =3D imx95_pcie_enable_ref_clk,
>  		.mode =3D DW_PCIE_EP_TYPE,
>  	},
>  };
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



