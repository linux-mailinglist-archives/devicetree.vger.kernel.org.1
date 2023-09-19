Return-Path: <devicetree+bounces-1338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C937A5F65
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:23:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3E63281BF1
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92D03110B;
	Tue, 19 Sep 2023 10:23:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3BD538C
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:23:00 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66924EA
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:22:59 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1qiXsf-0008HL-2b; Tue, 19 Sep 2023 12:22:57 +0200
Message-ID: <1ea4b72b75f87db5e5ceb0cc88355b44ca2e5884.camel@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: imx8mp: assign parent clock and rate for
 audio clocks
From: Lucas Stach <l.stach@pengutronix.de>
To: Shengjiu Wang <shengjiu.wang@gmail.com>
Cc: marex@denx.de, devicetree@vger.kernel.org, conor+dt@kernel.org, 
 kernel@pengutronix.de, alexander.stein@ew.tq-group.com, festevam@gmail.com,
  Shengjiu Wang <shengjiu.wang@nxp.com>, Frank.Li@nxp.com, peng.fan@nxp.com,
 linux-kernel@vger.kernel.org,  robh+dt@kernel.org, linux-imx@nxp.com,
 krzysztof.kozlowski+dt@linaro.org,  aford173@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, 
 linux-arm-kernel@lists.infradead.org, laurent.pinchart@ideasonboard.com
Date: Tue, 19 Sep 2023 12:22:55 +0200
In-Reply-To: <CAA+D8AM5Lp_vRBVgWXBQ2DFxf1AUG5702rrYrSgvn994GAaFAw@mail.gmail.com>
References: <1695108775-22924-1-git-send-email-shengjiu.wang@nxp.com>
	 <8ce3f7e172a747100366ebd14d3bd74fe549ae10.camel@pengutronix.de>
	 <CAA+D8AM5Lp_vRBVgWXBQ2DFxf1AUG5702rrYrSgvn994GAaFAw@mail.gmail.com>
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
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Am Dienstag, dem 19.09.2023 um 17:59 +0800 schrieb Shengjiu Wang:
> On Tue, Sep 19, 2023 at 4:20=E2=80=AFPM Lucas Stach <l.stach@pengutronix.=
de> wrote:
> >=20
> > Hi Shengjiu,
> >=20
> > Am Dienstag, dem 19.09.2023 um 15:32 +0800 schrieb Shengjiu Wang:
> > > Assign parent clock for audio AHB and AXI clocks, and assign
> > > clock rate for audio PLL1 and PLL2.
> > >=20
> > Please don't do this. Configuring all those clocks in the clock
> > controller is a pain to override if the board uses the PLLs in any
> > other way than the reference design.
> >=20
> > The audio AXI and AHB clocks are already properly configured with Adams
> > patch [1], so there is no need for the changes in this patch.
> >=20
> > Please set up the audio PLLs in the board DT in peripheral nodes that
> > are actually using those clocks.
> >=20
> > Regards,
> > Lucas
> >=20
> > [1] https://lore.kernel.org/all/20230819105002.132750-1-aford173@gmail.=
com/
>=20
> For this patch, it changes the AXI clock to 600M.  But the parent clock
> is 800M,  so the result AXI clock is 400M actually, the 800M can't be div=
ided
> to 600MHz.
>=20
That's right. Please review that patch and suggest changes if you see a
better option. Adding another conflicting clock setup in the clk
controller node isn't the solution to this.

One possible solution would be to promote the VPU PLL to be the system
PLL running at 600MHz, as there are quite a few peripherals which seem
to need a 600MHz clock for nominal drive mode and we don't need any
other specific VPU clocks, which couldn't be sourced from the system
PLLs + VPU PLL running at 600MHz.

Regards,
Lucas

> Best regards
> Wang shengjiu
>=20
>=20
>=20
> >=20
> > > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > > ---
> > >  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 16 +++++++++++++---
> > >  1 file changed, 13 insertions(+), 3 deletions(-)
> > >=20
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/b=
oot/dts/freescale/imx8mp.dtsi
> > > index 6f2f50e1639c..8a8a2c4aff9f 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > > @@ -734,16 +734,26 @@ clk: clock-controller@30380000 {
> > >                                                 <&clk IMX8MP_CLK_A53_=
CORE>,
> > >                                                 <&clk IMX8MP_CLK_NOC>=
,
> > >                                                 <&clk IMX8MP_CLK_NOC_=
IO>,
> > > -                                               <&clk IMX8MP_CLK_GIC>=
;
> > > +                                               <&clk IMX8MP_CLK_GIC>=
,
> > > +                                               <&clk IMX8MP_CLK_AUDI=
O_AHB>,
> > > +                                               <&clk IMX8MP_CLK_AUDI=
O_AXI_SRC>,
> > > +                                               <&clk IMX8MP_AUDIO_PL=
L1>,
> > > +                                               <&clk IMX8MP_AUDIO_PL=
L2>;
> > >                               assigned-clock-parents =3D <&clk IMX8MP=
_SYS_PLL1_800M>,
> > >                                                        <&clk IMX8MP_A=
RM_PLL_OUT>,
> > >                                                        <&clk IMX8MP_S=
YS_PLL2_1000M>,
> > >                                                        <&clk IMX8MP_S=
YS_PLL1_800M>,
> > > -                                                      <&clk IMX8MP_S=
YS_PLL2_500M>;
> > > +                                                      <&clk IMX8MP_S=
YS_PLL2_500M>,
> > > +                                                      <&clk IMX8MP_S=
YS_PLL1_800M>,
> > > +                                                      <&clk IMX8MP_S=
YS_PLL1_800M>;
> > >                               assigned-clock-rates =3D <0>, <0>,
> > >                                                      <1000000000>,
> > >                                                      <800000000>,
> > > -                                                    <500000000>;
> > > +                                                    <500000000>,
> > > +                                                    <400000000>,
> > > +                                                    <800000000>,
> > > +                                                    <393216000>,
> > > +                                                    <361267200>;
> > >                       };
> > >=20
> > >                       src: reset-controller@30390000 {
> >=20
>=20


