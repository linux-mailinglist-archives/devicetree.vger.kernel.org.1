Return-Path: <devicetree+bounces-168183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F6CA91C1F
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 14:30:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8888F3AEB2B
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 12:29:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A90D24C072;
	Thu, 17 Apr 2025 12:26:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F3E24BCE8
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 12:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744892813; cv=none; b=Me/HaQf8uJk1Rm4vbt2+TrkrV7WQpGbOW2OhgYD5xoY01pcBgF20xUVic0ryQ5Pe4TyeeclPVpyCLaFAoAxv/nlzGZ7TMbaX3fzvbx4NZ+xzAtLrH/T4e6olC7sF4Y1k4Rc/KSQYNMK/d6yz2cmY8pmlicOVNgycHxvZ1pV7imY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744892813; c=relaxed/simple;
	bh=4BErrztFzhMYlEHn54HA3jkGmjG1cbrPBT2s2/tlpT4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PRJ/bXHSUxADAVSehCGktciuGydYNdkGIIEzuhEu5M15pso2mlzIdEnq1H6f8HnoPxc+gIEjpqemwd5mEcn0YsuKmBhUZ4io9HZ2f0m9YJK/Kce2a37eecwfLKCc1o48Nd8efjdhJdflXNxpw8pC/qEuum7bB69iUGVzjeS9oDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1u5OJp-0001Yv-1v; Thu, 17 Apr 2025 14:26:13 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1u5OJn-000kQl-2l;
	Thu, 17 Apr 2025 14:26:11 +0200
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1u5OJn-005xWZ-2I;
	Thu, 17 Apr 2025 14:26:11 +0200
Date: Thu, 17 Apr 2025 14:26:11 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Donald Hunter <donald.hunter@gmail.com>,
	Rob Herring <robh@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
	Simon Horman <horms@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	netdev@vger.kernel.org, linux-doc@vger.kernel.org,
	Kyle Swenson <kyle.swenson@est.tech>,
	Dent Project <dentproject@linuxfoundation.org>,
	kernel@pengutronix.de,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next v8 04/13] net: pse-pd: Add support for PSE power
 domains
Message-ID: <aADzY3d7HV4Uhjoy@pengutronix.de>
References: <20250416-feature_poe_port_prio-v8-0-446c39dc3738@bootlin.com>
 <20250416-feature_poe_port_prio-v8-4-446c39dc3738@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250416-feature_poe_port_prio-v8-4-446c39dc3738@bootlin.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Wed, Apr 16, 2025 at 03:44:19PM +0200, Kory Maincent wrote:
> From: Kory Maincent (Dent Project) <kory.maincent@bootlin.com>
> 
> Introduce PSE power domain support as groundwork for upcoming port
> priority features. Multiple PSE PIs can now be grouped under a single
> PSE power domain, enabling future enhancements like defining available
> power budgets, port priority modes, and disconnection policies. This
> setup will allow the system to assess whether activating a port would
> exceed the available power budget, preventing over-budget states
> proactively.
> 
> Signed-off-by: Kory Maincent (Dent Project) <kory.maincent@bootlin.com>

Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>

Thank you!

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

