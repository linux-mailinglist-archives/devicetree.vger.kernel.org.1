Return-Path: <devicetree+bounces-103125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E07F979AC7
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 07:31:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 97099B23167
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 05:31:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C56E34CC4;
	Mon, 16 Sep 2024 05:30:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97632134BD
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 05:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726464656; cv=none; b=BAKAl4YL2O6hOJ2P0a6kOEOSbquTkEZVQUpaX9qTv+77G3QvQTc6M7d0DUi43/nmZNaTPxaQsFR72HGTy07oiQwrCffCsKbGF8XnaHAgGZYJIzwnPfNNA/B07zuX32SeuIyhMXV3NgZ38dI2auFaLU2ggJAZd2SgUxh2dqQP3Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726464656; c=relaxed/simple;
	bh=ch5tnLlVOe9cJNNMVr9zmrrMS31Yk6rMJ3g/sUPSTZg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XOEM9gyd34qMvos6KUq9vrbZEQeRoA97MYzZQIjQbZ0NSoqH3RKv1BRgBVE6ywaucOy25ILnTs+/h25ltXud6Ey93Y8Z487Ei+pEz5d6L7+4rBHbQPCxqeWEQB4NLk2Zu/NGiiznG7XgwXAuvFSMLWhm3e9z5LSlAVURZbsF7+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sq4JS-00015p-7r; Mon, 16 Sep 2024 07:30:14 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sq4JQ-008F5v-8m; Mon, 16 Sep 2024 07:30:12 +0200
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sq4JQ-00BH2R-0T;
	Mon, 16 Sep 2024 07:30:12 +0200
Date: Mon, 16 Sep 2024 07:30:12 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Jakub Kicinski <kuba@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <f.fainelli@gmail.com>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	Russell King <linux@armlinux.org.uk>, devicetree@vger.kernel.org
Subject: Re: [PATCH net-next v3 0/2] net: phy: Support master-slave config
 via device tree
Message-ID: <ZufCZAfXB_KFIKmI@pengutronix.de>
References: <20240913084022.3343903-1-o.rempel@pengutronix.de>
 <20240915180630.613433aa@kernel.org>
 <5befa01e-f52d-44de-b356-bc7e1946777a@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5befa01e-f52d-44de-b356-bc7e1946777a@lunn.ch>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Sun, Sep 15, 2024 at 08:41:42PM +0200, Andrew Lunn wrote:
> On Sun, Sep 15, 2024 at 06:06:30PM +0200, Jakub Kicinski wrote:
> > On Fri, 13 Sep 2024 10:40:20 +0200 Oleksij Rempel wrote:
> > > This patch series adds support for configuring the master/slave role of
> > > PHYs via the device tree. A new `master-slave` property is introduced in
> > > the device tree bindings, allowing PHYs to be forced into either master
> > > or slave mode. This is particularly necessary for Single Pair Ethernet
> > > (SPE) PHYs (1000/100/10Base-T1), where hardware strap pins may not be
> > > available or correctly configured, but it is applicable to all PHY
> > > types.
> > 
> > I was hoping we'd see some acks here in time, but now Linus cut the 6.11
> > final so the 6.12 game is over now:
> 
> The device tree binding is not decided on yet. So deferred is correct.

No problem. See you on LPC, my flight starting right now.

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

