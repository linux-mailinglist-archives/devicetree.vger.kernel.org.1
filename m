Return-Path: <devicetree+bounces-13742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFBA7E03AC
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 14:15:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 845F4281D85
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 13:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A614182D8;
	Fri,  3 Nov 2023 13:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="OZupVKvF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD1D18059
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 13:15:43 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A74E0111;
	Fri,  3 Nov 2023 06:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=nwTWKoYVMjtqg+eD4pQ7/u3X9Unsi7vaWHDlXuxa8bQ=; b=OZupVKvFBP8yY5jXoQBkaxnAtd
	zdbW4wnM7MZgcVIsR5wkmaYoND36VDf+I9mKTcCETsUlI6DlzhH8zVaid2OZVXpQ8bVCC46xFVNxR
	Vd9nXkQa3APkuYXf0Ueqtef+ue3SFWfg/l8CsJS+mzby+e6r/v5ZSPHJ5x3APXBu4+Tk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qyu1F-000of2-It; Fri, 03 Nov 2023 14:15:25 +0100
Date: Fri, 3 Nov 2023 14:15:25 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
	kernel@pengutronix.de, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?iso-8859-1?Q?S=F8ren?= Andersen <san@skov.dk>,
	Sam Ravnborg <sam@ravnborg.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/2] arm64: dts: freescale: Add SKOV IMX8MP CPU revB
 board
Message-ID: <3261c311-4881-41e7-875d-380f711e8ac0@lunn.ch>
References: <20231103105305.2459143-1-o.rempel@pengutronix.de>
 <20231103105305.2459143-2-o.rempel@pengutronix.de>
 <1ee285d7-6bc9-43ad-9ec9-a8aaed4452b5@lunn.ch>
 <20231103125306.GB40819@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231103125306.GB40819@pengutronix.de>

On Fri, Nov 03, 2023 at 01:53:06PM +0100, Oleksij Rempel wrote:
> Hi Andrew,
> 
> On Fri, Nov 03, 2023 at 01:35:46PM +0100, Andrew Lunn wrote:
> > > +			port@2 {
> > > +				reg = <2>;
> > > +				label = "cpu";
> > > +				ethernet = <&eqos>;
> > > +				/* 2ns rgmii-rxid is implemented on PCB.
> > > +				 * Switch should add only rgmii-txid.
> > > +				 */
> > 
> > Its unusual to actually see that. Its even more unusual its only one
> > clock line. Can you actually see it on the PCB?
> 
> Yes. I even made a delay calculation by measuring this trace on PCB,
> just to make sure I see it correctly.

Cool. I need to keep this board in mind, its about the only one i know
of which actually does this.

> > > +				phy-mode = "rgmii-txid";
> > > +				tx-internal-delay-ps = <2000>;
> > 
> > Is this actually needed? rgmii-txid should add 2ns delay. Since this
> > apparently works, i'm assuming setting tx-internal-delay-ps to 2ns
> > does nothing, otherwise you would have a 4ns delay.
> 
> Without it the driver will complain:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/net/dsa/microchip/ksz_common.c?h=v6.6#n3496

Ah! Humm. I forget how this all works. This is the port node, not the
PHY. We are configuring the MAC delays with tx-internal-delay-ps.
There is no PHY here, so phy-mode is not used by any PHY. All that
might matter is that you indicate rgmii or some sort. Have you tried
plain "rgmii". It then looks less like you have 4ns of delay.

      Andrew

