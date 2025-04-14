Return-Path: <devicetree+bounces-166500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFE4A8782D
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 08:49:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5442B1684E8
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 06:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CE531AF0C7;
	Mon, 14 Apr 2025 06:49:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB8501B412B
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 06:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744613380; cv=none; b=I82x82bDZWYqCoTj8C5KybOT6pVgnsJ7UBm8qRI7bvzGcMrhAkILQQD6HxiiNuONEku3A8Xf1CjSgjhUy2f4E641I06u+qlAd41H+qN6MvQoEZ/3+1Vvuk4tvffRaOpu5jWmxXEOahKp6rU9QQRCNnXlZasd3mYpqgLJ7pwavPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744613380; c=relaxed/simple;
	bh=HszDIsDDdPi+LLqbGeL2rwAlUkU1fiYytm1bZ60r5cA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pnlVV/1DSyJxRboYrTwP9FCCyAvWBOQSoGGdNXD5ihEUxhpwFUyvLzFbYSrGig1uMNzK/fzIpMMiyqUJ+RWfZq4TuHol9E2gK4V+TEK4dilWynJK3YhlUrpHG7jqRHDfuup37/tSRghzSG480OxX5KF1n77fRzE7k1XMnekPZ/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u4Dd7-0006Bf-4K; Mon, 14 Apr 2025 08:49:17 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4Dd6-000CoZ-2M;
	Mon, 14 Apr 2025 08:49:16 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4Dd6-000Aoc-1x;
	Mon, 14 Apr 2025 08:49:16 +0200
Date: Mon, 14 Apr 2025 08:49:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	kernel@pengutronix.de,
	Alvin =?iso-8859-15?Q?=A6ipraga?= <alsi@bang-olufsen.dk>
Subject: Re: [PATCH v3 2/3] dt-bindings: clock: add TI CDCE6214 binding
Message-ID: <Z_yv7NKXs-JlmV63@pengutronix.de>
References: <20250410-clk-cdce6214-v3-0-d73cf9ff3d80@pengutronix.de>
 <20250410-clk-cdce6214-v3-2-d73cf9ff3d80@pengutronix.de>
 <20250411172149.GA3468525-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250411172149.GA3468525-robh@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Fri, Apr 11, 2025 at 12:21:49PM -0500, Rob Herring wrote:
> On Thu, Apr 10, 2025 at 12:34:57PM +0200, Sascha Hauer wrote:
> > The CDCE6214 is a Ultra-Low Power Clock Generator With One PLL, Four
> > Differential Outputs, Two Inputs, and Internal EEPROM. This patch adds
> > the device tree binding for this chip.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  .../devicetree/bindings/clock/ti,cdce6214.yaml     | 155 +++++++++++++++++++++
> >  include/dt-bindings/clock/ti,cdce6214.h            |  24 ++++
> >  2 files changed, 179 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/clock/ti,cdce6214.yaml b/Documentation/devicetree/bindings/clock/ti,cdce6214.yaml
> > new file mode 100644
> > index 0000000000000..12737e67dcf2d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/ti,cdce6214.yaml
> > @@ -0,0 +1,155 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/ti,cdce6214.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: TI CDCE6214 programmable clock generator with PLL
> > +
> > +maintainers:
> > +  - Sascha Hauer <s.hauer@pengutronix.de>
> > +
> > +description:
> 
> Needs '>' modifier

Ok.

> 
> > +  Ultra-Low Power Clock Generator With One PLL, Four Differential Outputs,
> > +  Two Inputs, and Internal EEPROM
> > +
> > +  https://www.ti.com/product/CDCE6214
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - ti,cdce6214
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    minItems: 1
> > +    maxItems: 2
> > +
> > +  clock-names:
> > +    minItems: 1
> > +    maxItems: 1
> 
> How can you have 2 clocks, but only 1 name? See my reply on v2.

maxItems: 1 is wrong. Should be 2.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

