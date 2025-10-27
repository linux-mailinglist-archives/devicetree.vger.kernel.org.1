Return-Path: <devicetree+bounces-231411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A107C0D022
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:48:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37DAE1884753
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:48:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E27C29D27E;
	Mon, 27 Oct 2025 10:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="Ol4c2eg2"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5232366
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 10:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=78.32.30.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761562108; cv=none; b=EBKl9bKCJR67kh8R9Fsx9V91dEGVGnyOoC8qhpKj8wSlQ/bcGHxfyQ4Iht61MfmPBYwNc7JnD828UpLLBYTN0bl8PcnL/JLlRFo9LUznN6guoUDhRid5cQ2x6z5rBJQHH+dXH5CJuJn0WX/x/TGtCKep3uXjD26kdy7DdyIk/aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761562108; c=relaxed/simple;
	bh=psqcFzv+mDFoIIvjX17Kk41ClmI8qPMsMCuELuQbPOY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ko0XLS7imQiJI2aYVphtP6zIVYHNBwWBfE5Zm30P2duIjVsBU+8w6c/1qWtsDHay1Vn2w+kSxN6Hq+d/MOmzSsNJKkXx30JcjIstb9k5tLV+AFQ/8p685z0FnJ1JcLKRCgXgzcywzqh7aSgLmZl6UncvUxeE2karQK9LEh7uUAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk; spf=none smtp.mailfrom=armlinux.org.uk; dkim=pass (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b=Ol4c2eg2; arc=none smtp.client-ip=78.32.30.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=armlinux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gRjQEbu4fSBRYviBImLXiY5NsyYQtq0ADZkhXiDh0JM=; b=Ol4c2eg2VklUqA0jaLZmdsQ+23
	HXiu9/ysPF2s5iy4F10cm9+7DJQZq+D7s+rmUlEJiGa5wVAZMCg3BZRK/apKA3OeNKc01ANC59ab7
	qNw8xke7mRndr/7Yu/gLONLbUCpUxhgFZMatCV43CcKiMCPSO+BEpe3ezCQrtUQRxSNbj+NAd7lfd
	+BnwGykGsbUaT8G44puLLBKL52q0kkMNi5Xz9FMDgrl1dytnzVeoFuY2IUtkrLB95zpKf6fPuBmoy
	v/Wwz76Tort4QE6h5p/pPkpNNynfwEzFDIi0WJMQ6P/GSl/cmCG/1sH87/7+61Ty4k9ve2Wmfw7FB
	5+6/TsKQ==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:60878)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vDKm0-000000001gb-0cyJ;
	Mon, 27 Oct 2025 10:48:24 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vDKly-000000005WR-1q0w;
	Mon, 27 Oct 2025 10:48:22 +0000
Date: Mon, 27 Oct 2025 10:48:22 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	imx@lists.linux.dev, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Daniel Scally <dan.scally@ideasonboard.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Stefan Klug <stefan.klug@ideasonboard.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: imx8mp-debix-model-a: Disable EEE for 1000T
Message-ID: <aP9N9tCdlAbBgovC@shell.armlinux.org.uk>
References: <20251026122905.29028-1-laurent.pinchart@ideasonboard.com>
 <e87ff7f2-d16f-41f2-b781-b175cfb84b21@lunn.ch>
 <aP83bMDWCre7-Sjw@pengutronix.de>
 <20251027100227.GE1544@pendragon.ideasonboard.com>
 <aP9IB4y5_gyfJGMW@pengutronix.de>
 <20251027103107.GF1544@pendragon.ideasonboard.com>
 <aP9Kuyndws_dYFna@shell.armlinux.org.uk>
 <aP9NJHtbAEmsd89r@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aP9NJHtbAEmsd89r@pengutronix.de>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>

On Mon, Oct 27, 2025 at 11:44:52AM +0100, Oleksij Rempel wrote:
> On Mon, Oct 27, 2025 at 10:34:35AM +0000, Russell King (Oracle) wrote:
> > On Mon, Oct 27, 2025 at 12:31:07PM +0200, Laurent Pinchart wrote:
> > > On Mon, Oct 27, 2025 at 11:23:03AM +0100, Oleksij Rempel wrote:
> > > > On Mon, Oct 27, 2025 at 12:02:27PM +0200, Laurent Pinchart wrote:
> > > > > Hi Oleksij,
> > > > > > Please note, RTL8211E PHY do use undocumented SmartEEE mode by default.
> > > > > > It ignores RGMII LPI opcodes and doing own thing. It can be confirmed by
> > > > > > monitoring RGMII TX and MDI lines with oscilloscope and changing
> > > > > > tx-timer configurations. I also confirmed this information from other
> > > > > > source. To disable SmartEEE and use plain MAC based mode, NDA documentation
> > > > > > is needed.
> > > > > 
> > > > > That's useful information, thank you. Would you by any chance to know if
> > > > > such NDA would allow contributing the feature upstream ?
> > > > 
> > > > Good question, but the NDA process was actually aborted. We didn't move
> > > > forward due to a lack of time and ultimately, a lack of commercial
> > > > interest from any projects or customers for this PHY.
> > > 
> > > Fair enough. I've tried :-)
> > > 
> > > If we can't disable SmartEEE in the PHY, does it mean we need to somehow
> > > disable EEE in the MAC, but still program the PHY to advertise EEE to
> > > the link partner ?
> > 
> > Or maybe the PHY needs to have EEE capability disabled?
> 
> Ack. With comment in the code, why we prefer this way, in case some one
> wont to spend time on making it work. Probably SmartEEE or some other
> word should be used.

So we have options.

However, we need to get to the bottom of what caused the change of
behaviour before we start throwing solutions at this.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

