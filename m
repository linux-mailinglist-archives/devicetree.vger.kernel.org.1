Return-Path: <devicetree+bounces-47754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C1586E66C
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 17:57:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF0DB28A5DD
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 16:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 019062837E;
	Fri,  1 Mar 2024 16:49:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513636AA2
	for <devicetree@vger.kernel.org>; Fri,  1 Mar 2024 16:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709311761; cv=none; b=Q6k69ddLBP06PIVoZCmmYwr4tbWjHWj9+LflMpSUE8JGA21IUbnYdCdgIbcpMWJ54hxCpsrZPSD3UWuMMs75VswdOA7pnV5OtH4YIIaG2PxC7r8PBDrElbymW0Rx3xdqhsMhxcGgY/CqpaX+LxCzBeBmdlhZvsE/BM/zQqAol9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709311761; c=relaxed/simple;
	bh=2U+NFf8VzBL7i5JecqNdGXv70qAxb5ESPa2lPEXW6Jw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D8lMQa1vc7bQMnouy/cx7VX2vdsv0cp6R28YUQh7UFzwhuLgzSOg8utXsWYG/EwmcHZW4a6s+yDGTS0qLn7j43VYG8pcds+iH8m0IXps/eU3uQhVq9ucyP60CQAkf8Jtxk0NIrwFm9PgckYvfbBqsYiDQNoFPdGl1j66tqn/cSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rg63j-0005DY-Vp; Fri, 01 Mar 2024 17:48:32 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rg63i-003ofQ-4h; Fri, 01 Mar 2024 17:48:30 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1rg63i-00F8ob-06;
	Fri, 01 Mar 2024 17:48:30 +0100
Date: Fri, 1 Mar 2024 17:48:30 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: =?utf-8?B?S8O2cnk=?= Maincent <kory.maincent@bootlin.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Russ Weight <russ.weight@linux.dev>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org, devicetree@vger.kernel.org,
	Dent Project <dentproject@linuxfoundation.org>
Subject: Re: [PATCH net-next v5 10/17] net: pse-pd: Add support for PSE PIs
Message-ID: <ZeIG3rsLJg2rgV58@pengutronix.de>
References: <20240227-feature_poe-v5-0-28f0aa48246d@bootlin.com>
 <20240227-feature_poe-v5-10-28f0aa48246d@bootlin.com>
 <ZeHlB8DLEqWxBRYH@pengutronix.de>
 <20240301171005.43188d02@kmaincent-XPS-13-7390>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240301171005.43188d02@kmaincent-XPS-13-7390>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hay Köry,

On Fri, Mar 01, 2024 at 05:10:05PM +0100, Köry Maincent wrote:
> Hello Oleskij,
> 
> Thanks you for the review.

I'll try to review more at weekend.

> > > +		/* Legacy OF description of PSE PIs */
> > > +		pcdev->of_legacy = true;  
> > 
> > It is not "legacy" :) PoDL do not providing definition of PSE PI since there
> > is only one pair. May be: single_pair, no_pse_pi or any other idea.
> 
> You right it is not needed for PoDL. Maybe no_pse_pi is better according to the
> following thoughts.
> 
> Just wondering, how a pse controller that support PoE and PoDL simultaneously
> would be exposed in the binding. In that case I suppose all the PIs (PoE and
> PoDL) need to use the pse-pi subnode. Then the "alternative pinout" and
> "polarity" parameter would not be requested for PoDL PIs.

In case of hybrid device I would expect that we will have an 4 pair
connector where only one pair will be used. In this case we will need to
know what pair and polarity is supported or can be configured for PoDL.
It will be full blown PSE PI node with PoDL specific extras.

Don't worry about it right now.

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

