Return-Path: <devicetree+bounces-7489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDEE7C47A6
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 04:13:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 84FBE1C20922
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 02:13:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CCC235511;
	Wed, 11 Oct 2023 02:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDGJJYi+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA67819
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 02:13:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5EF2C433C8;
	Wed, 11 Oct 2023 02:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696990384;
	bh=lG6rawy4X9gm+VqftM08XTwbZ4iz+veHtEzTIwQLgfQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BDGJJYi+xBrmCw1RnpxLc6BmrW34E9zVS1YqtTQ4SP1WvVhM2jXoIHILGxOSJUn+c
	 9PfOpgW4h6zNfhIZsI6YN+UaExFMUcyHnbn1O5wVg13fJTkdUemugsBMIcXMnMdh22
	 M+gWGtpSlfjK2CTnGfBs9wImUqpvQyt9SmNhMMav9Vxeo6IFcCJJYZlE/vV6Rbhbcj
	 jaVUnPZc7Q1GPngxq9wPWf/c2Uq7Ol1zzvapfhPZQUeEUVOy3wF+ULZUa8OPikFZ6o
	 TQ4UVH6lfPPN4Uz4iFYN50k0Zq0FVl/5q5PCXC9hmkhNyUjOUmcaCfTAzeAoit/tMu
	 VF4y4EmFLSPbg==
Date: Wed, 11 Oct 2023 10:12:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Describe VDD_ARM run and standby
 voltage for Data Modul i.MX8M Plus eDM SBC
Message-ID: <20231011021251.GQ819755@dragon>
References: <20230831181850.154813-1-marex@denx.de>
 <20230924142150.GM7231@dragon>
 <b74f092d-52d6-4a39-8a99-056800c98f62@denx.de>
 <20231009123606.GA733979@dragon>
 <18174105-de83-436c-9e77-2c61e1ef2c71@denx.de>
 <20231010005813.GG733979@dragon>
 <884b473b-40fb-4f71-9328-9da49b5d01f9@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <884b473b-40fb-4f71-9328-9da49b5d01f9@denx.de>

On Tue, Oct 10, 2023 at 03:42:14PM +0200, Marek Vasut wrote:
> On 10/10/23 02:58, Shawn Guo wrote:
> > On Mon, Oct 09, 2023 at 04:03:01PM +0200, Marek Vasut wrote:
> > > On 10/9/23 14:36, Shawn Guo wrote:
> > > > On Sun, Oct 08, 2023 at 08:37:34PM +0200, Marek Vasut wrote:
> > > > > On 9/24/23 16:21, Shawn Guo wrote:
> > > > > > On Thu, Aug 31, 2023 at 08:18:50PM +0200, Marek Vasut wrote:
> > > > > > > Describe VDD_ARM (BUCK2) run and standby voltage in DT.
> > > > > > > 
> > > > > > > Signed-off-by: Marek Vasut <marex@denx.de>
> > > > > > > ---
> > > > > > > Cc: Conor Dooley <conor+dt@kernel.org>
> > > > > > > Cc: Fabio Estevam <festevam@gmail.com>
> > > > > > > Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
> > > > > > > Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > > > > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > > > > > > Cc: Magnus Damm <magnus.damm@gmail.com>
> > > > > > > Cc: Marek Vasut <marex@denx.de>
> > > > > > > Cc: NXP Linux Team <linux-imx@nxp.com>
> > > > > > > Cc: Peng Fan <peng.fan@nxp.com>
> > > > > > > Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> > > > > > > Cc: Rob Herring <robh+dt@kernel.org>
> > > > > > > Cc: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > > > Cc: Shawn Guo <shawnguo@kernel.org>
> > > > > > > Cc: devicetree@vger.kernel.org
> > > > > > > Cc: linux-arm-kernel@lists.infradead.org
> > > > > > > ---
> > > > > > >     arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts | 2 ++
> > > > > > >     1 file changed, 2 insertions(+)
> > > > > > > 
> > > > > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
> > > > > > > index 13674dc64be9d..d98a040860a48 100644
> > > > > > > --- a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
> > > > > > > +++ b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
> > > > > > > @@ -362,6 +362,8 @@ buck1: BUCK1 {	/* VDD_SOC (dual-phase with BUCK3) */
> > > > > > >     			};
> > > > > > >     			buck2: BUCK2 {	/* VDD_ARM */
> > > > > > > +				nxp,dvs-run-voltage = <950000>;
> > > > > > > +				nxp,dvs-standby-voltage = <850000>;
> > > > > > 
> > > > > > Buck2 is not turned off in DSM on i.MX8MP?
> > > > > 
> > > > > It is turned off in SUSPEND/SNVS/OFF , not in IDLE/RUN .
> > > > 
> > > > Right.  But nxp,dvs-standby-voltage specifies the voltage when PMIC
> > > > is in STANDBY mode.  My understanding is that the SoC will be in SUSPEND
> > > > state while PMIC is in STANDBY mode.
> > > 
> > > I agree
> > > 
> > > > Is it possible that the SoC in
> > > > IDLE/RUN while PMIC is in STANDBY mode at all?
> > > 
> > > No, I don't think so, but there's still the PMIC part:
> > > 
> > > https://www.nxp.com/docs/en/data-sheet/PCA9450.pdf
> > > 
> > > 7.3.7 STANDBY mode
> > > "
> > > PCA9450 transitions to STANDBY mode from RUN mode when
> > > both PMIC_ON_REQ and PMIC_STBY_REQ are driven high. BUCK1
> > > and BUCK3 output voltage is set to BUCK1OUT_DVS1 and
> > > BUCK3OUT_DVS1 and BUCK2 are turned off when DVS_CTRL bit
> > > in each BUCKx_CTRL register is configured to 1.
> > > "
> > > 
> > > Specifically
> > > "
> > > BUCK2 are turned off when DVS_CTRL bit in each
> > > BUCKx_CTRL register is configured to 1.
> > > "
> > > 
> > > 8.2.19 0x13 BUCK2CTRL
> > > "
> > > 4
> > > DVS_CTRL
> > > DVS Control configuration
> > > 0b = BUCK voltage is determined by BUCK2VOUT_DVS0 register regardless of
> > > PMIC_STBY_REQ
> > > 1b = DVS control through PMIC_STBY_REQ
> > > "
> > > 
> > > Notice that the reset-default is '0b' , so unless the PMIC is reconfigured,
> > > the BUCK2 will stay powered on even in STANDBY/SUSPEND.
> > 
> > Hmm, isn't B2_ENMODE controlling on/off of BUCK2?
> > 
> > BUCK2 enable mode
> > 00b = OFF
> > 01b = ON by PMIC_ON_REQ = H
> > 10b = ON by PMIC_ON_REQ = H && PMIC_STBY_REQ = L (default)
> > 11b = Always ON
> > 
> > So unless you reconfigure the field, BUCK2 will be off when PMIC_STBY_REQ
> > goes high, right?
> 
> I think so.
> 
> But since the buck2 in DVS behavior is user-configurable, and this can be
> configured by the bootloader, I would say that it is a good idea to keep the
> buck2 DVS value defined in the DT, rather than keep it undefined.
> 
> Also note that this board is a development kit, so we just don't know what
> users might do with it.

Honestly, I just do not see any reason why one would change the most
power efficient default configuration to something consuming much more
power.

Also, even if DVS control is enabled, 0.85 V is already the target
voltage for STANDBY mode by default.

Bottom line is that we should have some comment on this change, because
it makes eDM SBC so unique among all those PCA9450 based boards and
makes people like me wonder why eDM SBC board needs this setting.

Shawn

