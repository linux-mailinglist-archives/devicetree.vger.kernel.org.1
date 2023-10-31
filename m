Return-Path: <devicetree+bounces-13043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB717DC68C
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 07:28:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 78E33B20D13
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 06:28:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADD4810780;
	Tue, 31 Oct 2023 06:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3448CDDA8
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 06:27:54 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48292A2
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 23:27:53 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qxiE7-0001r6-JT; Tue, 31 Oct 2023 07:27:47 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qxiE5-005Vb1-UP; Tue, 31 Oct 2023 07:27:45 +0100
Received: from ore by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qxiE5-00HCwB-Rd; Tue, 31 Oct 2023 07:27:45 +0100
Date: Tue, 31 Oct 2023 07:27:45 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Ante Knezic <ante.knezic@helmholz.de>, conor+dt@kernel.org,
	UNGLinuxDriver@microchip.com, andrew@lunn.ch, davem@davemloft.net,
	devicetree@vger.kernel.org, edumazet@google.com,
	f.fainelli@gmail.com, krzysztof.kozlowski+dt@linaro.org,
	kuba@kernel.org, linux-kernel@vger.kernel.org, marex@denx.de,
	netdev@vger.kernel.org, pabeni@redhat.com, robh+dt@kernel.org,
	woojung.huh@microchip.com
Subject: Re: [PATCH net-next v4 2/2] net:dsa:microchip: add property to select
Message-ID: <20231031062745.GO3803936@pengutronix.de>
References: <20231024142426.GE3803936@pengutronix.de>
 <20231027063743.28747-1-ante.knezic@helmholz.de>
 <20231030174225.hqhc3afbayi7dmos@skbuf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231030174225.hqhc3afbayi7dmos@skbuf>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Mon, Oct 30, 2023 at 07:42:25PM +0200, Vladimir Oltean wrote:
> On Fri, Oct 27, 2023 at 08:37:43AM +0200, Ante Knezic wrote:
> > On Tue, 24 Oct 2023 16:24:26 +0200, Oleksij Rampel wrote:
> > 
> > > > That is correct, I guess its a matter of nomenclature, but how do you 
> > > > "tell" the switch whether it has REFCLKI routed externally or not if not by 
> > > > setting the 0xC6 bit 3? Is there another way to achieve this?
> > > 
> > > I do not see any other way to "tell" it. The only thing to change in you
> > > patches is a different way to tell it to the kernel.
> > > Instead of introducing a new devicetree property, you need to reuse
> > > phy-mode property.
> > 
> > > ...
> > 
> > > Since phy-mode for RMII was never set correctly, it will most probably
> > > break every single devicetree using KSZ switches. It is the price of fixing
> > > things :/
> > 
> > To Vladimir Oltean: What are your thoughts on this?
> > 
> 
> In addition to all of that, the MAC/PHY roles are not just about the
> direction of the REF_CLK, but also about the /J/ /K/ codewords that are
> placed by the PHY in the inter packet gap on RXD[1:0]. A MAC doesn't do
> this, and if it did, the PHY wouldn't expect it, and AFAIK, would
> blindly propagate those code words onto the BASE-T wire, which is
> undesirable.

Interesting detail. I didn't knew it, it would be good to document
it somewhere near to revrmii binding :)

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

