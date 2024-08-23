Return-Path: <devicetree+bounces-95978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C45E395C496
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 07:04:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7AF822859DB
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 05:04:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAD684D8B7;
	Fri, 23 Aug 2024 05:04:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF44381BD
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 05:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724389461; cv=none; b=a8GHyfITyPo1lMKxAg2SLP3el5IvMSql+253nCyePkTDn8+K5N8lK0A2feyhqVDfHbwhzXMg0izxHSx0/35A+qT+5db5D8PKNeQ1Bmzv4EogrCfUlNjbTtxBjgl7JHubhpfrBEX7xT6VH+mPISfYc2qxoVUyeO8Ksx4cXq7xbqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724389461; c=relaxed/simple;
	bh=BpZRH566Nrf/9J49kOtGkc1s5kTWBV0aUaGe22m75qg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=njEnKyHSABcQa7t+RFmT8gKnSFzKZ5g1NjeRSJ28fBC2n5vaRuxgsV1yU5I0gOOhpKNwPLCAu7s2ozWaTBzRLpSFHLkGPsHIGenqN8wEy2ioplhtNtteAy9Nl+tc06bos/6PgsreF1pS1YcOYkNcFgKmqbz0LUFORB8G5Cqa4lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1shMSi-0001dy-79; Fri, 23 Aug 2024 07:03:48 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1shMSf-002PNh-3C; Fri, 23 Aug 2024 07:03:45 +0200
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1shMSe-001WhP-3A;
	Fri, 23 Aug 2024 07:03:45 +0200
Date: Fri, 23 Aug 2024 07:03:44 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Kyle Swenson <kyle.swenson@est.tech>
Cc: "kory.maincent@bootlin.com" <kory.maincent@bootlin.com>,
	"davem@davemloft.net" <davem@davemloft.net>,
	"edumazet@google.com" <edumazet@google.com>,
	"kuba@kernel.org" <kuba@kernel.org>,
	"pabeni@redhat.com" <pabeni@redhat.com>,
	"robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"thomas.petazzoni@bootlin.com" <thomas.petazzoni@bootlin.com>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH net-next v2 2/2] net: pse-pd: tps23881: Support
 reset-gpios
Message-ID: <ZsgYMH4X_Oy2rHUi@pengutronix.de>
References: <20240822220100.3030184-1-kyle.swenson@est.tech>
 <20240822220100.3030184-3-kyle.swenson@est.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240822220100.3030184-3-kyle.swenson@est.tech>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Thu, Aug 22, 2024 at 10:01:22PM +0000, Kyle Swenson wrote:
> The TPS23880/1 has an active-low reset pin that some boards connect to
> the SoC to control when the TPS23880 is pulled out of reset.
> 
> Add support for this via a reset-gpios property in the DTS.
> 
> Signed-off-by: Kyle Swenson <kyle.swenson@est.tech>

Acked-by: Oleksij Rempel <o.rempel@pengutronix.de>

Thank you!
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

