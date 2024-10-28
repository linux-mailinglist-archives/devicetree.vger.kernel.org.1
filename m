Return-Path: <devicetree+bounces-116513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AAB9B31FD
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 14:44:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4CFEF1F2295A
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 13:44:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E99D1DD88E;
	Mon, 28 Oct 2024 13:43:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D391DD537
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 13:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730123013; cv=none; b=fyKq3byF3cyYHVM4U3AmwShMX0smbWE7PjaN6NR3kSFHiCbM/K8YLz3vPso8Lfr/7YDRRNA6pnZc2D2EQcJEJa/xGPRFztZEhQibrOvgdxgJrANkajROIOl1eySkW3tvVr3Wgbr8SH3HhrNREvzX9CDM0nRWKLNsm5bwSSdYYoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730123013; c=relaxed/simple;
	bh=XjkxwnG5qWOvNS8h3k0ZgKe8C6m+oboJq5TSRUggfhU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iZ9kphYwb6fiW6u3lz1LpdmPTy/Tr/iKJ5OX/kCmX03JUpSk46I/9ImX17De4BpyHZTujbdl0q9ZV/9bgLToTNfXVQAzGeFQ+CfUKobCQ0Wmxh1ojSP9BamR33qqOgNLD44EwtjA9ujGozbJRpk+JIOUy5ZoCC3BOjggMqL7Acc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1t5Q1V-0007ns-10; Mon, 28 Oct 2024 14:43:09 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1t5Q1T-000rZ5-1f;
	Mon, 28 Oct 2024 14:43:07 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1t5Q1T-000lon-1I;
	Mon, 28 Oct 2024 14:43:07 +0100
Date: Mon, 28 Oct 2024 14:43:07 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Andrew Lunn <andrew@lunn.ch>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	Woojung Huh <woojung.huh@microchip.com>,
	Arun Ramadoss <arun.ramadoss@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	UNGLinuxDriver@microchip.com,
	"Russell King (Oracle)" <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH net-next v1 5/5] net: dsa: microchip: add support for
 side MDIO interface in LAN937x
Message-ID: <Zx-U69erLsPBmtLw@pengutronix.de>
References: <20241026063538.2506143-1-o.rempel@pengutronix.de>
 <20241026063538.2506143-6-o.rempel@pengutronix.de>
 <20c0ed0f-712d-46d4-8a49-e92835f47f9e@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20c0ed0f-712d-46d4-8a49-e92835f47f9e@lunn.ch>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Mon, Oct 28, 2024 at 01:15:42PM +0100, Andrew Lunn wrote:
> > +static const u8 lan9370_phy_addr[] = {
> > +	[0] = 2, /* Port 1, T1 AFE0 */
> > +	[1] = 3, /* Port 2, T1 AFE1 */
> > +	[2] = 5, /* Port 3, T1 AFE3 */
> > +	[3] = 6, /* Port 4, T1 AFE4 */
> > +	[4] = U8_MAX, /* Port 5, RGMII 2 */
> > +};
> 
> I think it would be good to add a #define for U8_MAX which gives a
> hint at its meaning.

ack
 
> > +	for (i = 0; i < dev->info->port_cnt; i++) {
> > +		if (phy_addr_map[i] == U8_MAX)
> > +			dev->phy_addr_map[i] = phy_addr_map[i];
> > +		else
> > +			dev->phy_addr_map[i] = phy_addr_map[i] + offset;
> > +	}
> 
> My first guess was that U8_MAX means the PHY is external, so could be
> on any address depending on strapping. Looking at this code, i'm not
> sure it does actually mean that.

Yes, the U8_MAX for ports without integrated PHYs. This code calculates address
for integrated PHYs, which can be different depending on strap
configuration.

I'll use some different define.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

