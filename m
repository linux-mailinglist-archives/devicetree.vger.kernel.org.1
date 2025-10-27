Return-Path: <devicetree+bounces-231587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCF7C0EA14
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 15:55:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 378A94FED50
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DF8C29346F;
	Mon, 27 Oct 2025 14:50:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B501239567
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 14:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761576659; cv=none; b=jnoR2FT/CFD3PYKb1TC003xvAjsN+hxpvIhjmc74CcGvpFZxPoMJcMmbKRmi6zNfv/BSIe7tbEMOTYNS2TtQj4muOjQMr3Mxuu8LQbxOod0JGterlpvLsaL9Ki2rZG5/P/7eKhmfr66HeFRQr5tEiSRlclS5jXUB24DKAaZ5BDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761576659; c=relaxed/simple;
	bh=YnYr+2uN9p8Wy5e6baDAXbycSnvRdc+rm4lMHQd2wCQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fm2T1OFQjuAE7orbmBxZJn5040QxVMZSFzlT/RML1CmOMQU8lDVwd2b0GX9Gt34KxOkXOoB1++tiH20zqfSvqu8LQ889zPKePec8Zp6kiQa3E+zHcU015NaFi8Gmh+0iPjkraR04K7bLVUEdvDyOe98EpM8c6DQmvuYJSn6eBiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vDOYg-0003Tf-0O; Mon, 27 Oct 2025 15:50:54 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vDOYf-005j1D-1r;
	Mon, 27 Oct 2025 15:50:53 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vDOYf-003DTB-1K;
	Mon, 27 Oct 2025 15:50:53 +0100
Date: Mon, 27 Oct 2025 15:50:53 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Andrew Lunn <andrew@lunn.ch>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	imx@lists.linux.dev, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Daniel Scally <dan.scally@ideasonboard.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Stefan Klug <stefan.klug@ideasonboard.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: imx8mp-debix-model-a: Disable EEE for 1000T
Message-ID: <aP-GzR_pVvXvCIn-@pengutronix.de>
References: <20251026122905.29028-1-laurent.pinchart@ideasonboard.com>
 <e87ff7f2-d16f-41f2-b781-b175cfb84b21@lunn.ch>
 <aP83bMDWCre7-Sjw@pengutronix.de>
 <20251027100227.GE1544@pendragon.ideasonboard.com>
 <aP9IB4y5_gyfJGMW@pengutronix.de>
 <20251027103107.GF1544@pendragon.ideasonboard.com>
 <aP9Kuyndws_dYFna@shell.armlinux.org.uk>
 <aP9NJHtbAEmsd89r@pengutronix.de>
 <aP9N9tCdlAbBgovC@shell.armlinux.org.uk>
 <f66d181d-7dd9-4955-bad5-478db2876e47@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f66d181d-7dd9-4955-bad5-478db2876e47@lunn.ch>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Mon, Oct 27, 2025 at 01:50:21PM +0100, Andrew Lunn wrote:
> > > Ack. With comment in the code, why we prefer this way, in case some one
> > > wont to spend time on making it work. Probably SmartEEE or some other
> > > word should be used.
> > 
> > So we have options.
> > 
> > However, we need to get to the bottom of what caused the change of
> > behaviour before we start throwing solutions at this.
> 
> It also seems like the PHY is FUBAR. If the standard 802.3 EEE
> registers are being used, a management plane is using them to
> negotiate EEE with the link partner, the PHY firmware should disable
> SmartEEE and only provide 802.3 EEE.
> 
> It sounds like this PHY is not 802.3 compatible.

I do not know better place to post it, so I add it here for archive.
At least, it explains a reason why EEE fails. Something like this is not
possible to handle on the MAC side. At same time it is hard to
diagnose:

In 100BASE-TX EEE mode, the link partner may drop link or loss packet
when the local MAC/PHY (device) starts to transmit the “Wake” signal
immediately following the “Sleep”/“Refresh” signal to exit Low-Power
Idle mode and return to Active mode.

Many EEE PHY link partners require a short “Quiet” (Tq) duration after
receiving the “Sleep”/“Refresh” signal. Without this short Tq wait time,
that is not specified in the IEEE 802.3az Standard, link drop or packet
loss can occur.

https://ww1.microchip.com/downloads/aemDocuments/documents/OTH/ProductDocuments/Errata/80000708B.pdf

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

