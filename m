Return-Path: <devicetree+bounces-9916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 265D37CEFC3
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 08:01:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4489280FC3
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 06:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2874E46699;
	Thu, 19 Oct 2023 06:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="SQcFSLKz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3883C17C2
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:00:59 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A32701A7;
	Wed, 18 Oct 2023 23:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697695256; x=1729231256;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=730YXzJM/veidNKheQX/2/WJuZLbsKNszAfJOtRDQjk=;
  b=SQcFSLKzIHJEDOA7F/XPFFQheHAtN443vno+gcCPT2tC1ksc25Bw9kda
   vLOUsgouUKKxSgcyb4JMVk6Q6YOGIn1uiuqv9rSx3vMKLGaMRrWz+kAYD
   6ybPYi5yhFxKSe1EDXZa15/mZ5Uj2lxoJDfoG7A3ApoJEruEVXSz2x76G
   D7jA2uynUuhoWPAhy5QBhQ18RaLPUdGVBs6N15gpQ0oJ6LcN/+STYwdYd
   bNhUWP53yaYU0qYf3Sgx+vms9BB03B+vEdTy1T1lvNwJ1gXG+tjMctIUD
   xO8rWmDFc46aG3bW46mKPK3JtG91bZtPKVXaBnpIePbF0up/giFKAMju/
   Q==;
X-IronPort-AV: E=Sophos;i="6.03,236,1694728800"; 
   d="scan'208";a="33540707"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Oct 2023 08:00:51 +0200
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id A3141280082;
	Thu, 19 Oct 2023 08:00:51 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: linux-arm-kernel@lists.infradead.org
Cc: l.stach@pengutronix.de, aford@beaconembedded.com, Adam Ford <aford173@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: Add NPU Node
Date: Thu, 19 Oct 2023 08:00:53 +0200
Message-ID: <4261115.mogB4TqSGs@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20231019022300.1588041-1-aford173@gmail.com>
References: <20231019022300.1588041-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Adam,

thanks for the patch I tried a similar one.

Am Donnerstag, 19. Oktober 2023, 04:23:00 CEST schrieb Adam Ford:
> The NPU is based on the Vivante GC8000 and it enumerates as
>=20
>  etnaviv-gpu 38500000.npu: model: GC8000, revision: 8002
>=20
> Signed-off-by: Adam Ford <aford173@gmail.com>
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> c9a610ba4836..1ef8d17726ac 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -2012,6 +2012,25 @@ vpumix_blk_ctrl: blk-ctrl@38330000 {
>  			interconnect-names =3D "g1", "g2", "vc8000e";
>  		};
>=20
> +		npu: npu@38500000 {
> +			compatible =3D "vivante,gc";
> +			reg =3D <0x38500000 0x20000>;

Do you have some more information about the actual memory range? RM says 2M=
iB,=20
but NPU memory map lists up to 0x664.

> +			interrupts =3D <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&clk IMX8MP_CLK_NPU_ROOT>,
> +				 <&clk IMX8MP_CLK_NPU_ROOT>,
> +				 <&clk IMX8MP_CLK_ML_AXI>,
> +				 <&clk IMX8MP_CLK_ML_AHB>;
> +			clock-names =3D "core", "shader", "bus", "reg";
> +			assigned-clocks =3D <&clk IMX8MP_CLK_ML_CORE>,
> +				  <&clk IMX8MP_CLK_ML_AXI>,
> +				  <&clk IMX8MP_CLK_ML_AHB>;
> +			assigned-clock-parents =3D <&clk=20
IMX8MP_SYS_PLL2_1000M>,
> +					 <&clk=20
IMX8MP_SYS_PLL1_800M>,
> +					 <&clk=20
IMX8MP_SYS_PLL1_800M>;
> +			assigned-clock-rates =3D <1000000000>,=20
<800000000>, <400000000>;

1GHz for ML_CLK_ROOT is only available in overdrive mode, 800MHz in nominal=
=20
mode. See datasheet IMX8MPIEC Rev 2.1. I don't think it's a good idea to=20
configure for overdrive mode by default.
Same goes for CLK_ML_AHB regarding 400 vs. 300 MHz.

Best regards,
Alexander

> +			power-domains =3D <&pgc_mlmix>;
> +		};
> +
>  		gic: interrupt-controller@38800000 {
>  			compatible =3D "arm,gic-v3";
>  			reg =3D <0x38800000 0x10000>,


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



