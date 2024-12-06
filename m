Return-Path: <devicetree+bounces-127864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 543CF9E6878
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 09:10:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0710E28394C
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 08:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02B631DE2B3;
	Fri,  6 Dec 2024 08:10:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A611DF732
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 08:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733472637; cv=none; b=apXd2NLGJ28/73lFroJBha+QwsZ0KRkXsTdgwGYH3qpK38/UxlwJMg7Ca4MxaQWD9n6TrWcV9QSeKfF8xaGaC9SbpwJmbceTw1GPPSRzkYMe830VLsrX+//6r8fzwIWlfbxy86cwhLOKnbcdg0JcwuuEt4OKVpiyfRa7msKpkXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733472637; c=relaxed/simple;
	bh=WT6K333Hn/1oP2xiL+aIaPJPrM5BmsVifFJnZlbEwx0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fHaT/qHuqExNtBosyr26WM5nPJ02MiSnUomN+AjFwVOVfsY894i3vE+XFPPuKeaJec/wP5UaYvlcdbrSze6B6uc5+fJMDhUhVWm0uQiBeNeWWDoB0+wR7ZiUR7IAVnOudY9Mt7F1S3Etbp+wpCRPvvzK1+Komd4NpLeEI8zNf7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tJTPm-0007sL-09; Fri, 06 Dec 2024 09:10:18 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tJTPh-001xvO-1g;
	Fri, 06 Dec 2024 09:10:14 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tJTPi-000jS9-0a;
	Fri, 06 Dec 2024 09:10:14 +0100
Date: Fri, 6 Dec 2024 09:10:14 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Woojung Huh <woojung.huh@microchip.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH v1 1/5] dt-bindings: net: Add TI DP83TD510 10BaseT1L PHY
Message-ID: <Z1KxZmRekrYGSdd4@pengutronix.de>
References: <20241205125640.1253996-1-o.rempel@pengutronix.de>
 <20241205125640.1253996-2-o.rempel@pengutronix.de>
 <20241205-immortal-sneak-8c5a348a8563@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241205-immortal-sneak-8c5a348a8563@spud>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Thu, Dec 05, 2024 at 05:18:59PM +0000, Conor Dooley wrote:
> On Thu, Dec 05, 2024 at 01:56:36PM +0100, Oleksij Rempel wrote:
> > Introduce devicetree binding for the Texas Instruments DP83TD510
> > Ultra Low Power 802.3cg 10Base-T1L Single Pair Ethernet PHY.
> > 
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  .../devicetree/bindings/net/ti,dp83td510.yaml | 35 +++++++++++++++++++
> >  1 file changed, 35 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/net/ti,dp83td510.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/net/ti,dp83td510.yaml b/Documentation/devicetree/bindings/net/ti,dp83td510.yaml
> > new file mode 100644
> > index 000000000000..cf13e86a4017
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/ti,dp83td510.yaml
> > @@ -0,0 +1,35 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/net/ti,dp83td510.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: TI DP83TD510 10BaseT1L PHY
> > +
> > +maintainers:
> > +  - Oleksij Rempel <o.rempel@pengutronix.de>
> > +
> > +description:
> > +  DP83TD510E Ultra Low Power 802.3cg 10Base-T1L 10M Single Pair Ethernet PHY
> > +
> > +allOf:
> > +  - $ref: ethernet-phy.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - ethernet-phy-id2000.0181
> 
> There's nothing specific here, can someone remind me why the generic
> binding is not enough?

The missing binding was blamed by checkpatch. Haw should I proceed with this
patch?

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

