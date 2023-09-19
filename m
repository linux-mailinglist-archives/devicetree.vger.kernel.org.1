Return-Path: <devicetree+bounces-1298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 691C77A5C60
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:20:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A03D1C209C0
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 08:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E84EE38DFE;
	Tue, 19 Sep 2023 08:20:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5087563C8
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 08:20:15 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDE67118
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 01:20:13 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1qiVxf-0003uN-7N; Tue, 19 Sep 2023 10:19:59 +0200
Message-ID: <8ce3f7e172a747100366ebd14d3bd74fe549ae10.camel@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: imx8mp: assign parent clock and rate for
 audio clocks
From: Lucas Stach <l.stach@pengutronix.de>
To: Shengjiu Wang <shengjiu.wang@nxp.com>, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 shawnguo@kernel.org,  s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com,  linux-imx@nxp.com, marex@denx.de, peng.fan@nxp.com, 
 alexander.stein@ew.tq-group.com, laurent.pinchart@ideasonboard.com, 
 aford173@gmail.com, Frank.Li@nxp.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 shengjiu.wang@gmail.com
Date: Tue, 19 Sep 2023 10:19:57 +0200
In-Reply-To: <1695108775-22924-1-git-send-email-shengjiu.wang@nxp.com>
References: <1695108775-22924-1-git-send-email-shengjiu.wang@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Shengjiu,

Am Dienstag, dem 19.09.2023 um 15:32 +0800 schrieb Shengjiu Wang:
> Assign parent clock for audio AHB and AXI clocks, and assign
> clock rate for audio PLL1 and PLL2.
>=20
Please don't do this. Configuring all those clocks in the clock
controller is a pain to override if the board uses the PLLs in any
other way than the reference design.

The audio AXI and AHB clocks are already properly configured with Adams
patch=C2=A0[1], so there is no need for the changes in this patch.

Please set up the audio PLLs in the board DT in peripheral nodes that
are actually using those clocks.

Regards,
Lucas

[1] https://lore.kernel.org/all/20230819105002.132750-1-aford173@gmail.com/

> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/=
dts/freescale/imx8mp.dtsi
> index 6f2f50e1639c..8a8a2c4aff9f 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -734,16 +734,26 @@ clk: clock-controller@30380000 {
>  						  <&clk IMX8MP_CLK_A53_CORE>,
>  						  <&clk IMX8MP_CLK_NOC>,
>  						  <&clk IMX8MP_CLK_NOC_IO>,
> -						  <&clk IMX8MP_CLK_GIC>;
> +						  <&clk IMX8MP_CLK_GIC>,
> +						  <&clk IMX8MP_CLK_AUDIO_AHB>,
> +						  <&clk IMX8MP_CLK_AUDIO_AXI_SRC>,
> +						  <&clk IMX8MP_AUDIO_PLL1>,
> +						  <&clk IMX8MP_AUDIO_PLL2>;
>  				assigned-clock-parents =3D <&clk IMX8MP_SYS_PLL1_800M>,
>  							 <&clk IMX8MP_ARM_PLL_OUT>,
>  							 <&clk IMX8MP_SYS_PLL2_1000M>,
>  							 <&clk IMX8MP_SYS_PLL1_800M>,
> -							 <&clk IMX8MP_SYS_PLL2_500M>;
> +							 <&clk IMX8MP_SYS_PLL2_500M>,
> +							 <&clk IMX8MP_SYS_PLL1_800M>,
> +							 <&clk IMX8MP_SYS_PLL1_800M>;
>  				assigned-clock-rates =3D <0>, <0>,
>  						       <1000000000>,
>  						       <800000000>,
> -						       <500000000>;
> +						       <500000000>,
> +						       <400000000>,
> +						       <800000000>,
> +						       <393216000>,
> +						       <361267200>;
>  			};
> =20
>  			src: reset-controller@30390000 {


