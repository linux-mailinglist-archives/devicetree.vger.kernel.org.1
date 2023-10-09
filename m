Return-Path: <devicetree+bounces-6927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 787227BDC3A
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 14:36:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8BB51C208E1
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 12:36:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1BF563DF;
	Mon,  9 Oct 2023 12:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsTI+DSh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92F9063D5
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 12:36:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CC18C433C8;
	Mon,  9 Oct 2023 12:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696854984;
	bh=c0y/Sd2/3poO8nSE24c5ez6G0oE8QesIU7bpvamMg3Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bsTI+DShpVW7TJ/ku9P5433DUrtqotmPJNac2HwHLailMSdlVP7Dr1En76KoHNTqG
	 0q9bXxHjS4aUL9239PUvOxISMSKSBXW5XwfpvGgzCLxE7lvGHqgH1PawKQ3XtI2Pu/
	 oQC8M/MKUXI56UmNkViOZotCRSDhrGYcb3jvs8qDjUt8qUS5+nRjBgNDvcAOXuDlmG
	 /1rHi5rdvkAYFBenN8ZmfcjLslnJNrgs2iKDmQO4tVmSYFv2Rgjx766wkbSmSxKK8l
	 0SUk5HOE3Bn1i8iwnvrdEu7LRhrz+ttmVw8SjEL5/oE9HS2LaBDCd6s08EsrLz474F
	 wS7DZMyUDQ+pA==
Date: Mon, 9 Oct 2023 20:36:06 +0800
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
Message-ID: <20231009123606.GA733979@dragon>
References: <20230831181850.154813-1-marex@denx.de>
 <20230924142150.GM7231@dragon>
 <b74f092d-52d6-4a39-8a99-056800c98f62@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b74f092d-52d6-4a39-8a99-056800c98f62@denx.de>

On Sun, Oct 08, 2023 at 08:37:34PM +0200, Marek Vasut wrote:
> On 9/24/23 16:21, Shawn Guo wrote:
> > On Thu, Aug 31, 2023 at 08:18:50PM +0200, Marek Vasut wrote:
> > > Describe VDD_ARM (BUCK2) run and standby voltage in DT.
> > > 
> > > Signed-off-by: Marek Vasut <marex@denx.de>
> > > ---
> > > Cc: Conor Dooley <conor+dt@kernel.org>
> > > Cc: Fabio Estevam <festevam@gmail.com>
> > > Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
> > > Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> > > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > > Cc: Magnus Damm <magnus.damm@gmail.com>
> > > Cc: Marek Vasut <marex@denx.de>
> > > Cc: NXP Linux Team <linux-imx@nxp.com>
> > > Cc: Peng Fan <peng.fan@nxp.com>
> > > Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: Sascha Hauer <s.hauer@pengutronix.de>
> > > Cc: Shawn Guo <shawnguo@kernel.org>
> > > Cc: devicetree@vger.kernel.org
> > > Cc: linux-arm-kernel@lists.infradead.org
> > > ---
> > >   arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts | 2 ++
> > >   1 file changed, 2 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
> > > index 13674dc64be9d..d98a040860a48 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
> > > @@ -362,6 +362,8 @@ buck1: BUCK1 {	/* VDD_SOC (dual-phase with BUCK3) */
> > >   			};
> > >   			buck2: BUCK2 {	/* VDD_ARM */
> > > +				nxp,dvs-run-voltage = <950000>;
> > > +				nxp,dvs-standby-voltage = <850000>;
> > 
> > Buck2 is not turned off in DSM on i.MX8MP?
> 
> It is turned off in SUSPEND/SNVS/OFF , not in IDLE/RUN .

Right.  But nxp,dvs-standby-voltage specifies the voltage when PMIC
is in STANDBY mode.  My understanding is that the SoC will be in SUSPEND
state while PMIC is in STANDBY mode.  Is it possible that the SoC in
IDLE/RUN while PMIC is in STANDBY mode at all?

Shawn

