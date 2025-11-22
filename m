Return-Path: <devicetree+bounces-241325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4864AC7CC1E
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 10:58:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EC0D835697A
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 09:58:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC78D273D81;
	Sat, 22 Nov 2025 09:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="KrbzvBi2"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B3724DD17
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 09:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=78.32.30.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763805479; cv=none; b=dWopJYuuKECNm06KDZ4qRdkYasrclHGV0qBYKrI/Fmnswlkg5Q2AN9yH2yZGq4euzQyJc9jtGi/g1eiqB0IUgz53t2X5t3OnYjXEIfgKOYU5LML/1t+5VQ4MhkVWs7+HcxrC+FC+z1MxDZUW0vTrmGFRUzDgpNaG2vESW94cJoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763805479; c=relaxed/simple;
	bh=tf1IU3EXfs02C8fkuQl+eOo+rB6khsrhsCEHB6ubD90=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jYMVSuW9lrOq9JGGZjEGoXOoEyKF365+p0L/XSllcunoDyozq2AFuaVVZJfIbgwPlEhBz5IbCrbMQr6T5hXAqKO2rYH8SSgAk56fj6wxLCHvJ71SRkql8ctOJAc86gCpkKHBJ3d4jTrYlk8CIeEznTlgM4NgPciG6m8eKtkwuMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk; spf=none smtp.mailfrom=armlinux.org.uk; dkim=pass (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b=KrbzvBi2; arc=none smtp.client-ip=78.32.30.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=armlinux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Zvehfl65MP5JLPqg2Zeleos6p4Xa/AzMzTqiQPPMq/g=; b=KrbzvBi2JbmmW81oFDDegm1Qro
	/SHhZ7VyrTxtzbx6hq9qqaOOiRbC9HTyNp0za8yoqnTnunVWUW/2Hh1gB1sAhrBjrgJRWuHMCrzjQ
	bVoqA1Wzec0SC8GGyNeUou7NxNsTFzrLs4W3p1OfCgUvHdco0WKiNguGK+stk++ANbEORqUUlZXcK
	WvJfX6YdtfjQ1oatvSnTC8TJFbN4g/RWvELBrjk4HAnYAiMqNjsfeEywQUuYreimMKikXkQa1pWNt
	KtekbFMAfIing2ZR3lIM5PA7nI6kjPzJ4zGbIl+nn1mxFqViCdlsASagGjETEXTe6o8su532ZtaTu
	ytghGrjA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:50242)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vMkNL-000000008VD-3hPV;
	Sat, 22 Nov 2025 09:57:51 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vMkNJ-000000006EY-2EJT;
	Sat, 22 Nov 2025 09:57:49 +0000
Date: Sat, 22 Nov 2025 09:57:49 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Wei Fang <wei.fang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
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
Message-ID: <aSGJHV9Sga2kBIBX@shell.armlinux.org.uk>
References: <aQAVE96NAD4Z4lgt@shell.armlinux.org.uk>
 <20251028071817.GX13023@pendragon.ideasonboard.com>
 <20251111235434.GA25874@pendragon.ideasonboard.com>
 <aRR3gVsZcr01zwzN@shell.armlinux.org.uk>
 <20251112222551.GB9135@pendragon.ideasonboard.com>
 <20251113010627.GC9135@pendragon.ideasonboard.com>
 <aRW6CxvmIEqkMrfA@shell.armlinux.org.uk>
 <20251114222654.GI30434@pendragon.ideasonboard.com>
 <PAXPR04MB8510E17B2B8C612DD02175CE88D6A@PAXPR04MB8510.eurprd04.prod.outlook.com>
 <20251122072246.GA16239@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251122072246.GA16239@pendragon.ideasonboard.com>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>

On Sat, Nov 22, 2025 at 04:22:46PM +0900, Laurent Pinchart wrote:
> Hello Wei,
> 
> On Tue, Nov 18, 2025 at 01:50:55AM +0000, Wei Fang wrote:
> > Sorry, I only have a little experience with DWMac, add Clark to help look
> > at this issue.
> 
> Thank you.
> 
> I think we're getting close to having a good understanding of the
> problem. I've debugged it as far as I could based on the information
> available publicly. Let's try to get to the bottom of this issue, it
> impacts quite a lot of people and it would be very nice to fix it
> properly in mainline.
> 
> The short summary is that I'm experiencing an interrupt storm on IRQ 135
> when EEE is enabled with the EQOS interface.
> 
> My current theory is that
> 
> - The lpi_intr_o signal of the EQOS is OR'ed into IRQ 135.
> - The issue is triggerted by the PHY exiting LPI mode
> - When it exits LPI mode, the PHY restarts generating the RX clock
>   (clk_rx_i).
> - The MAC detects exit from LPI, and asserts lpi_intr_o.
> - Before the CPU has time to process the interrupt, the PHY enters LPI
>   mode again, and stops generating the RX clock.
> - The CPU processes the interrupt and reads the GMAC4_LPI_CTRL_STATUS
>   registers. This does not clear lpi_intr_o as there's no clk_rx_i.

Please try setting STMMAC_FLAG_RX_CLK_RUNS_IN_LPI in dwmac-imx.c and
see whether that changes the behaviour.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

