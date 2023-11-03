Return-Path: <devicetree+bounces-13817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E177E0954
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 20:17:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B7BC1C21033
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 19:17:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 257FF1C285;
	Fri,  3 Nov 2023 19:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEBBB33E2
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 19:17:00 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E359D51
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 12:16:56 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qyzes-0006vn-Cx; Fri, 03 Nov 2023 20:16:42 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qyzer-006OQX-A0; Fri, 03 Nov 2023 20:16:41 +0100
Received: from ore by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qyzer-000FWp-7D; Fri, 03 Nov 2023 20:16:41 +0100
Date: Fri, 3 Nov 2023 20:16:41 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?utf-8?B?U8O4cmVu?= Andersen <san@skov.dk>,
	Sam Ravnborg <sam@ravnborg.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	NXP Linux Team <linux-imx@nxp.com>,
	Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: freescale: Add SKOV IMX8MP CPU revB
 board
Message-ID: <20231103191641.GD40819@pengutronix.de>
References: <20231103105305.2459143-1-o.rempel@pengutronix.de>
 <20231103105305.2459143-2-o.rempel@pengutronix.de>
 <1ee285d7-6bc9-43ad-9ec9-a8aaed4452b5@lunn.ch>
 <ZUTynJpOSZVowuJk@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZUTynJpOSZVowuJk@shell.armlinux.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Fri, Nov 03, 2023 at 01:16:12PM +0000, Russell King (Oracle) wrote:
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
> > 
> > > +				phy-mode = "rgmii-txid";
> > > +				tx-internal-delay-ps = <2000>;
> > 
> > Is this actually needed? rgmii-txid should add 2ns delay. Since this
> > apparently works, i'm assuming setting tx-internal-delay-ps to 2ns
> > does nothing, otherwise you would have a 4ns delay.
> 
> Umm... I think we're getting confused again.
> 
> Mode		Local end		Remote end
> RGMII		No added delays		No added delays
> RGMII-TXID	No added delays		2ns delay on TX
> RGMII-RXID	No added delays		2ns delay on RX
> RGMII-ID	No added delays		2ns delay on both TX and RX
> 
> In the case of a network interface with a PHY, "local end" is the
> MAC and "remote end" is the PHY.
> 
> For a switch port connected to an external PHY, the switch port is
> as the "MAC" as above.
> 
> For a switch port connected to an ethernet MAC:
>  - for the MAC declaration, the local end is the MAC. There is no
>    communication of the interface mode with the remote end under
>    Linux, so this is irrelevant for Linux. However, this is an
>    implementation, and it should be chosen according to the hardware.
> 
>  - for the switch port declaration, the local end is the switch port.
>    There is no communication of the interface mode with the remote
>    end under Linux. However, it should be chosen according to the
>    hardware.
> 
> So, if the 2ns delay is implemented on the RX lines (from the switch
> perspective) then shouldn't the MAC side be using "rgmii-txid" to
> indicate that the delay is being applied by the remote end (switch).
> The switch side should be using "rgmii" because no delays are required
> from the remote end (MAC), and the delay on the TX lines should be
> specified using "tx-internal-delay-ps"?

Ack. It make sense. Will fix it.

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

