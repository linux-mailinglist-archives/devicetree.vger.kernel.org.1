Return-Path: <devicetree+bounces-7513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9027C4941
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 07:37:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2995B1C20C26
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 05:37:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 098E6D30A;
	Wed, 11 Oct 2023 05:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="latyq0zX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA00847D
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 05:37:13 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D60359B;
	Tue, 10 Oct 2023 22:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697002632; x=1728538632;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=4d8MYiJTPkr6y5liMGmYPg5EU9exgPGQwO1jIwXnptM=;
  b=latyq0zXYulFMn6knInGCkwntc5f4ZDVh2Ng8nXk+iNQTiW8afMFnsvt
   +9lDEKz4QcTYxiVsV1JHndHm1NrQixGm/xtq6HifOkmwnqMNYNTz1nQh7
   6ehbkEo6EvVdaDOuPHyEIexVMuSkCCbqdKXfPf6TS1N5N89Na92kmB4pw
   dwTXl6G4xOyf9E1BFXAGysafNaWJkOybZCc1TT33FjBnO8hYYojpP0sOF
   +sZAHfggItdVFOiozkwvgd+HWs2tzdJbZ/lB9bjMRB99wq5H7RMO2HNkB
   oPTPW/+QVvZEbmLrkF7Gg82Zv1YH0ML6H/JU2hG6pclBxR0cX415Yj7CB
   w==;
X-IronPort-AV: E=Sophos;i="6.03,214,1694728800"; 
   d="scan'208";a="33392644"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 11 Oct 2023 07:37:10 +0200
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.18])
	by vtuxmail01.tq-net.de (Postfix) with ESMTPA id AA1F0280082;
	Wed, 11 Oct 2023 07:37:09 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, Shawn Guo <shawnguo@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, "S.J. Wang" <shengjiu.wang@nxp.com>, Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, Daniel Baluta <daniel.baluta@nxp.com>, Mpuaudiosw <Mpuaudiosw@nxp.com>, Iuliana Prodan <iuliana.prodan@nxp.com>, linux-arm-kernel@lists.infradead.org
Cc: linux-imx <linux-imx@nxp.com>, linux-remoteproc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>, LnxRevLi <LnxRevLi@nxp.com>, "Iuliana Prodan (OSS)" <iuliana.prodan@oss.nxp.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: imx8mp: add reserve-memory nodes for DSP
Date: Wed, 11 Oct 2023 07:37:10 +0200
Message-ID: <2301291.ElGaqSPkdT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20231010090929.4371-3-iuliana.prodan@oss.nxp.com>
References: <20231010090929.4371-1-iuliana.prodan@oss.nxp.com> <20231010090929.4371-3-iuliana.prodan@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Iuliana,

Am Dienstag, 10. Oktober 2023, 11:09:29 CEST schrieb Iuliana Prodan (OSS):
> From: Iuliana Prodan <iuliana.prodan@nxp.com>
>=20
> Add the reserve-memory nodes used by DSP when the rpmsg
> feature is enabled.
>=20
> Signed-off-by: Iuliana Prodan <iuliana.prodan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> cc406bb338fe..22815b3ea890 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -211,6 +211,22 @@
>  			reg =3D <0 0x92400000 0 0x2000000>;
>  			no-map;
>  		};
> +
> +		dsp_vdev0vring0: vdev0vring0@942f0000 {
> +			reg =3D <0 0x942f0000 0 0x8000>;
> +			no-map;
> +		};
> +
> +		dsp_vdev0vring1: vdev0vring1@942f8000 {
> +			reg =3D <0 0x942f8000 0 0x8000>;
> +			no-map;
> +		};
> +
> +		dsp_vdev0buffer: vdev0buffer@94300000 {
> +			compatible =3D "shared-dma-pool";
> +			reg =3D <0 0x94300000 0 0x100000>;
> +			no-map;
> +		};

Please configure these reserved memories on board level. Not every i.MX8MP=
=20
based board uses this DSP or has these memory addresses available.

Best regards,
Alexander

>  	};
>=20
>  	pmu {


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/




