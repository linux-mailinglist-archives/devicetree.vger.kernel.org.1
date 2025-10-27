Return-Path: <devicetree+bounces-231408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7109C0D013
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:46:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 613B93BEEB2
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:44:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B6F12F546D;
	Mon, 27 Oct 2025 10:44:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C6512F5462
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 10:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761561895; cv=none; b=tPE8Iv79SgeUdOJXnD6GnB7hX3xIC7eOgR3eNA943A/rEnPar95Phmkc/tQ/itfq7tyOyhNTy5oa9O12jgL+DKhSr+x7y9UZo+QXfIiR7EK0qqLLbBpdoVQG2dXp3r3SjAuKkBahj5ST5W7+U0x1tZ/ADJab8dW8kuQoS0R8eak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761561895; c=relaxed/simple;
	bh=Ubcj3waXWImVhuNpCT/SGdfySsuwAGjNz/1ztlKhhZ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hB5Yku8PE1MdsbrfbdCmbsIKaqvafLtG7BXD2zM8W6xupvIdE0FAxbM7zr50Ba2ybfmX6U0QzdHhPK2wO3Qu42MVDtv/GIryiqZQ02L9KTwI5+HkRclfsjSEL2umxLd/ryrUdVP6qSjNFKOwg8Pz6Y3jW3aFEq+d5/ivnZ3Dps4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vDKia-0006rM-Tt; Mon, 27 Oct 2025 11:44:52 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vDKia-005gp8-28;
	Mon, 27 Oct 2025 11:44:52 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vDKia-0039Jo-1h;
	Mon, 27 Oct 2025 11:44:52 +0100
Date: Mon, 27 Oct 2025 11:44:52 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
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
Message-ID: <aP9NJHtbAEmsd89r@pengutronix.de>
References: <20251026122905.29028-1-laurent.pinchart@ideasonboard.com>
 <e87ff7f2-d16f-41f2-b781-b175cfb84b21@lunn.ch>
 <aP83bMDWCre7-Sjw@pengutronix.de>
 <20251027100227.GE1544@pendragon.ideasonboard.com>
 <aP9IB4y5_gyfJGMW@pengutronix.de>
 <20251027103107.GF1544@pendragon.ideasonboard.com>
 <aP9Kuyndws_dYFna@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aP9Kuyndws_dYFna@shell.armlinux.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Mon, Oct 27, 2025 at 10:34:35AM +0000, Russell King (Oracle) wrote:
> On Mon, Oct 27, 2025 at 12:31:07PM +0200, Laurent Pinchart wrote:
> > On Mon, Oct 27, 2025 at 11:23:03AM +0100, Oleksij Rempel wrote:
> > > On Mon, Oct 27, 2025 at 12:02:27PM +0200, Laurent Pinchart wrote:
> > > > Hi Oleksij,
> > > > > Please note, RTL8211E PHY do use undocumented SmartEEE mode by default.
> > > > > It ignores RGMII LPI opcodes and doing own thing. It can be confirmed by
> > > > > monitoring RGMII TX and MDI lines with oscilloscope and changing
> > > > > tx-timer configurations. I also confirmed this information from other
> > > > > source. To disable SmartEEE and use plain MAC based mode, NDA documentation
> > > > > is needed.
> > > > 
> > > > That's useful information, thank you. Would you by any chance to know if
> > > > such NDA would allow contributing the feature upstream ?
> > > 
> > > Good question, but the NDA process was actually aborted. We didn't move
> > > forward due to a lack of time and ultimately, a lack of commercial
> > > interest from any projects or customers for this PHY.
> > 
> > Fair enough. I've tried :-)
> > 
> > If we can't disable SmartEEE in the PHY, does it mean we need to somehow
> > disable EEE in the MAC, but still program the PHY to advertise EEE to
> > the link partner ?
> 
> Or maybe the PHY needs to have EEE capability disabled?

Ack. With comment in the code, why we prefer this way, in case some one
wont to spend time on making it work. Probably SmartEEE or some other
word should be used.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

