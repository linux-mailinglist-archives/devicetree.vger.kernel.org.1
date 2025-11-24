Return-Path: <devicetree+bounces-241489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A02A5C7F019
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 06:44:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58D1D3A5300
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 05:44:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 485C221773F;
	Mon, 24 Nov 2025 05:44:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0AF94A21
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 05:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763963056; cv=none; b=ilJpzWdOyt6H/UvCNk6FuIJvV0GiHriAREuKebzBwNBD8KlJXPT3jiMMT7q5PVwikhzsd4Cccc9HXJfllwVAKxVhoED/5RHJaLh7q/+LLUWJYZCZrowp2B22Vqz2FFexa9FYpYewtPZx2GmRIC0nhp1uY7av0n726buZAFvVggM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763963056; c=relaxed/simple;
	bh=emgYiexNsPpCAO52ss4NuADEClHkd1fxuHGn3wixMGg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R958IXHNbXpm3LUCbNXlOyIS7n0ElhaqjsCfa8y0pqJO4UR65aBBOPN+HaqAOuFq8JXDOOdBMZd83HAhtICvS+tvj7P/p1YlyLmWyBnBGEQoTZ262yX6NlWTkIJwuPWg2cIy1uuHWJuB4/P7mGbupzfGJjTvxChyMXSdKr7XXaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vNPMn-000393-DJ; Mon, 24 Nov 2025 06:44:01 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vNPMm-0026fo-1L;
	Mon, 24 Nov 2025 06:44:00 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vNPMm-003s7i-0p;
	Mon, 24 Nov 2025 06:44:00 +0100
Date: Mon, 24 Nov 2025 06:44:00 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>,
	Wei Fang <wei.fang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>,
	Emanuele Ghidoli <ghidoliemanuele@gmail.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	Daniel Scally <dan.scally@ideasonboard.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Stefan Klug <stefan.klug@ideasonboard.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] arm64: dts: imx8mp-debix-model-a: Disable EEE for 1000T
Message-ID: <aSPwoBC3NftJYtEh@pengutronix.de>
References: <aRW6CxvmIEqkMrfA@shell.armlinux.org.uk>
 <20251114222654.GI30434@pendragon.ideasonboard.com>
 <PAXPR04MB8510E17B2B8C612DD02175CE88D6A@PAXPR04MB8510.eurprd04.prod.outlook.com>
 <20251122072246.GA16239@pendragon.ideasonboard.com>
 <aSGJHV9Sga2kBIBX@shell.armlinux.org.uk>
 <20251123053802.GA25329@pendragon.ideasonboard.com>
 <aSLLMMNkHnfwyO0y@shell.armlinux.org.uk>
 <20251123152356.GF15447@pendragon.ideasonboard.com>
 <aSNAP9G4cwRKvxng@shell.armlinux.org.uk>
 <20251124001214.GI15447@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251124001214.GI15447@pendragon.ideasonboard.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Mon, Nov 24, 2025 at 09:12:14AM +0900, Laurent Pinchart wrote:
> On Sun, Nov 23, 2025 at 05:11:27PM +0000, Russell King (Oracle) wrote:
> > On Mon, Nov 24, 2025 at 12:23:56AM +0900, Laurent Pinchart wrote:
> > > On Sun, Nov 23, 2025 at 08:52:00AM +0000, Russell King (Oracle) wrote:
> > > > On Sun, Nov 23, 2025 at 02:38:02PM +0900, Laurent Pinchart wrote:
> > > > > On Sat, Nov 22, 2025 at 09:57:49AM +0000, Russell King (Oracle) wrote:
> > > > > > On Sat, Nov 22, 2025 at 04:22:46PM +0900, Laurent Pinchart wrote:
> > > > > > > Hello Wei,
> > > > > > > 
> > > > > > > On Tue, Nov 18, 2025 at 01:50:55AM +0000, Wei Fang wrote:
> > > > > > > > Sorry, I only have a little experience with DWMac, add Clark to help look
> > > > > > > > at this issue.
> > > > > > > 
> > > > > > > Thank you.
> > > > > > > 
> > > > > > > I think we're getting close to having a good understanding of the
> > > > > > > problem. I've debugged it as far as I could based on the information
> > > > > > > available publicly. Let's try to get to the bottom of this issue, it
> > > > > > > impacts quite a lot of people and it would be very nice to fix it
> > > > > > > properly in mainline.
> > > > > > > 
> > > > > > > The short summary is that I'm experiencing an interrupt storm on IRQ 135
> > > > > > > when EEE is enabled with the EQOS interface.
> > > > > > > 
> > > > > > > My current theory is that
> > > > > > > 
> > > > > > > - The lpi_intr_o signal of the EQOS is OR'ed into IRQ 135.
> > > > > > > - The issue is triggerted by the PHY exiting LPI mode
> > > > > > > - When it exits LPI mode, the PHY restarts generating the RX clock
> > > > > > >   (clk_rx_i).
> > > > > > > - The MAC detects exit from LPI, and asserts lpi_intr_o.
> > > > > > > - Before the CPU has time to process the interrupt, the PHY enters LPI
> > > > > > >   mode again, and stops generating the RX clock.
> > > > > > > - The CPU processes the interrupt and reads the GMAC4_LPI_CTRL_STATUS
> > > > > > >   registers. This does not clear lpi_intr_o as there's no clk_rx_i.
> > > > > > 
> > > > > > Please try setting STMMAC_FLAG_RX_CLK_RUNS_IN_LPI in dwmac-imx.c and
> > > > > > see whether that changes the behaviour.
> > > > > 
> > > > > I have tested that and it worked like a charm ! I have submitted
> > > > > https://lore.kernel.org/r/20251123053518.8478-1-laurent.pinchart@ideasonboard.com
> > > > > 
> > > > > That was quite an adventure. Thank you so much for all your support, I'm
> > > > > not sure I would have managed without you (or at least I would have
> > > > > needed way more time). I really really appreciate it.
> > > > > 
> > > > > If the above patch gets accepted, we will probably be able to remove the
> > > > > eee-broken-* properties from the i.MX8MP device tree files (and possibly
> > > > > from i.MX8DXL and i.MX93 as well). I have mentioned that below the
> > > > > commit message of the patch, with a test procedure as it should be
> > > > > tested on each board.
> > > > 
> > > > As stated in reply to that patch, while this may reduce the severity of
> > > > the storm, I don't think it'll completely eliminate it.
> > > > 
> > > > I made the suggestion to set the flag as a test to confirm whether the
> > > > lpi_intr_o is indeed the problem by ensuring that the receive domain is
> > > > always clocked, and thus ensuring that the signal clears within four
> > > > clock cycles, rather than an indefinite period should the remote end
> > > > re-enter LPI mode quicky.
> > > 
> > > You're right. I've checked replied to the patch with the following
> > > numbers.
> > > 
> > > 100TX link, eee-broken-* set: 7000 interrupts
> > > 1000T link, eee-broken-* set: 2711 interrupts
> > > 100TX link, eee-broken-* unset: 9450 interrupts
> > > 1000T link, eee-broken-* unset: 6066 interrupts
> > 
> > Sadly, I think this means for iMX8MP, the correct answer is to disable
> > EEE completely. What I was thinking when I brought this up is as follows
> > and dwmac-imx.c can set STMMAC_FLAG_EEE_DISABLE for iMX8MP to prevent
> > the use of EEE.
> 
> I suppose there's no way to disable EEE in the RX path while keeping it
> enabled in the TX path ?

In case of 100BaseTX it may work, but not for 1000BaseT - I guess, it is
not worth it.

The other question is: will it work if SmartEEE is active?  If I recall
it correctly, your board is using RTL PHY with SmartEEE support. Will it
work if we disable LPI on the MAC side, but keep announcing EEE on the
PHY side? It will be good to test it as long as you have the reproducer.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

