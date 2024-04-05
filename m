Return-Path: <devicetree+bounces-56546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B84899A58
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 12:09:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8328D1C21AAA
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 10:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75C29161337;
	Fri,  5 Apr 2024 10:09:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F002B15FD17
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 10:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712311757; cv=none; b=Zn8z/vh5v+lpfMWDe7WGLJfSKUmV9rm1O4PzuCTUdIJCesXLYD6LEFctUsBURgZ2bJssK1+9QepPfP+uYNAqAUGO2ewBzKryg1zCCXZ8XFBza741bDEeZgdrEn3e8jWCFqwDlihSUFvFRp3zgFo80w++FeCcwnkZXA8AfrAgQ0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712311757; c=relaxed/simple;
	bh=3z1V1yFkK7QVYQRREAv0f7Hj3YGHVm1xuW1J6axhZSM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JFVmDlyV+242FV8JcCnCOHHz9kdq3wGIf9p+NWhsnm8LbSrVcJUP3YpF/glF5Grifdqqq9zgaH85FQXYtSGwcjbTz4d/deb75jShmT+ixBpU1vG/jY7dJI9mkDofUPNEgMkTtfmPbymEzjx+hAVfb4qPekl5Cgg4inPmDe+UV98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rsgVO-0003n8-Ol; Fri, 05 Apr 2024 12:09:06 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rsgVN-00AY48-7T; Fri, 05 Apr 2024 12:09:05 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rsgVN-00Fea4-0P;
	Fri, 05 Apr 2024 12:09:05 +0200
Date: Fri, 5 Apr 2024 12:09:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add Protonic MECSBC device-tree
Message-ID: <Zg_NwfxLhzdCjN87@pengutronix.de>
References: <20240404-protonic-mecsbc-v1-0-ad5b42ade6c6@pengutronix.de>
 <20240404-protonic-mecsbc-v1-2-ad5b42ade6c6@pengutronix.de>
 <9d325b4e-031c-4f6c-9788-fa5a68470efa@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9d325b4e-031c-4f6c-9788-fa5a68470efa@lunn.ch>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Thu, Apr 04, 2024 at 05:10:41PM +0200, Andrew Lunn wrote:
> > +&gmac1 {
> > +	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
> > +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
> > +	phy-handle = <&rgmii_phy1>;
> > +	phy-mode = "rgmii";
> > +	clock_in_out = "output";
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&gmac1m1_miim
> > +		     &gmac1m1_tx_bus2
> > +		     &gmac1m1_rx_bus2
> > +		     &gmac1m1_rgmii_clk
> > +		     &gmac1m1_clkinout
> > +		     &gmac1m1_rgmii_bus>;
> > +	status = "okay";
> > +	tx_delay = <0x30>;
> > +	rx_delay = <0x10>;
> > +};
> 
> There was a discussion about phy-mode = "rgmii"; and these
> tx/rx_delays last month. Please could you go read that discussion and
> them make use of rgmii-id, and change the delays.

Ok, I'll switch to rgmii-id.

> 
> Also, where did you copy this from? If possible, it would be good to
> fix the example everybody copies into new DT blobs.

These are the default values used in over a dozen boards and a also
given in the example in
Documentation/devicetree/bindings/net/rockchip-dwmac.yaml.
These are also the default values the driver uses when tx_delay and
rx_delay are not given in the device tree.

I can prepare a patch to fix the example.

Do you have a pointer why setting the delays in the phy is preferred
over setting them in the network driver? In the end this requires us
to have the correct phy driver whereas setting them in the network
driver would just work for any phy driver?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

