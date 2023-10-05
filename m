Return-Path: <devicetree+bounces-6183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 184817BA254
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:30:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BB5952817AE
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:30:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E56D430CF8;
	Thu,  5 Oct 2023 15:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B92F51C
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:30:41 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91A1DB2A2;
	Thu,  5 Oct 2023 08:30:37 -0700 (PDT)
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qoQJ3-0006a1-Rc; Thu, 05 Oct 2023 17:30:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588is: Add AV1 decoder node
Date: Thu, 05 Oct 2023 17:30:29 +0200
Message-ID: <2298521.ElGaqSPkdT@phil>
In-Reply-To: <20231005151210.nqdx2uoixqjhrtrx@mercury.elektranox.org>
References:
 <20231005145420.169594-1-benjamin.gaignard@collabora.com>
 <20231005151210.nqdx2uoixqjhrtrx@mercury.elektranox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
	T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Am Donnerstag, 5. Oktober 2023, 17:12:10 CEST schrieb Sebastian Reichel:
> Hi,
> 
> On Thu, Oct 05, 2023 at 04:54:20PM +0200, Benjamin Gaignard wrote:
> > Add node for AV1 video decoder.
> > 
> > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> No need for my SoB. Instead have this one:
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> Also worth mentioning, that this Patch needs one small fix in the DT
> binding (adding "resets") and one small fix in the driver for out of
> the box AV1 support:
> 
> https://lore.kernel.org/all/20231005144934.169356-1-benjamin.gaignard@collabora.com/
> https://lore.kernel.org/all/20231005145116.169411-1-benjamin.gaignard@collabora.com/

additionally the node name should be generic.
The phandle can of course be av1d but the node
name itself needs a change.

Heiko


> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > index 5544f66c6ff4..835e66d85d5f 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > @@ -2304,6 +2304,20 @@ gpio4: gpio@fec50000 {
> >  			#interrupt-cells = <2>;
> >  		};
> >  	};
> > +
> > +	av1d: av1d@fdc70000 {
> > +		compatible = "rockchip,rk3588-av1-vpu";
> > +		reg = <0x0 0xfdc70000 0x0 0x800>;
> > +		interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		interrupt-names = "vdpu";
> > +		clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
> > +		clock-names = "aclk", "hclk";
> > +		assigned-clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
> > +		assigned-clock-rates = <400000000>, <400000000>;
> > +		resets = <&cru SRST_A_AV1>, <&cru SRST_P_AV1>, <&cru SRST_A_AV1_BIU>, <&cru SRST_P_AV1_BIU>;
> > +		power-domains = <&power RK3588_PD_AV1>;
> > +		status = "okay";
> > +	};
> >  };
> >  
> >  #include "rk3588s-pinctrl.dtsi"
> 





