Return-Path: <devicetree+bounces-18996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE26C7F9640
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 00:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B5731C20826
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 23:06:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 973AC14F6F;
	Sun, 26 Nov 2023 23:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D009910F
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:06:11 -0800 (PST)
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7OCW-0002sV-3l; Mon, 27 Nov 2023 00:06:08 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Date: Mon, 27 Nov 2023 00:06:06 +0100
Message-ID: <4762834.KRxA6XjA2N@diego>
In-Reply-To: <813224c2-398d-4c2d-8909-1839ce63be60@linaro.org>
References:
 <20231122122232.952696-1-tim@feathertop.org>
 <20231122122232.952696-5-tim@feathertop.org>
 <813224c2-398d-4c2d-8909-1839ce63be60@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Krzysztof,

Am Mittwoch, 22. November 2023, 13:29:47 CET schrieb Krzysztof Kozlowski:
> On 22/11/2023 13:22, Tim Lunn wrote:
> > Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126
> > 
> > Signed-off-by: Tim Lunn <tim@feathertop.org>
> > ---
> > 
> > (no changes since v1)
> > 
> >  arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
> >  arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 +++++++++++++++
> >  2 files changed, 25 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> > index 4f85b7b3fc4c..167a48afa3a4 100644
> > --- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> > +++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> > @@ -87,6 +87,16 @@ i2c0_xfer: i2c0-xfer {
> >  				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
> >  		};
> >  	};
> > +	i2c2 {
> > +		/omit-if-no-ref/
> > +		i2c2_xfer: i2c2-xfer {
> > +			rockchip,pins =
> > +				/* i2c2_scl */
> > +				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
> > +				/* i2c2_sda */
> > +				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
> > +		};
> > +	};
> >  	pwm2 {
> >  		/omit-if-no-ref/
> >  		pwm2m0_pins: pwm2m0-pins {
> > diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
> > index 6c5c928f06c7..cf1df75df418 100644
> > --- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
> > +++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
> > @@ -21,6 +21,7 @@ / {
> >  
> >  	aliases {
> >  		i2c0 = &i2c0;
> > +		i2c2 = &i2c2;
> 
> No, this should be per-board to match board labeling/schematics.

At least for i2c, uarts and i.e. spi ... Rockchip manuals, pin namings
and also all board schematics I've seen so far are very consistent for
these ... i2c2 for example is labled i2c2 both in the pins in the socs
and also in the board-schematics using them.

So while I can agree that things like mmc-aliases might be board-specific,
I do think aliases for the core busses should be able to live in the soc dtsi
as for all Rockchip SoCs so far?


Heiko



