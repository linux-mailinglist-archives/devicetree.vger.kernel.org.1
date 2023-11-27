Return-Path: <devicetree+bounces-19220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 901E37FA0E2
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:22:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C118F1C20E4F
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:22:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E429A2E634;
	Mon, 27 Nov 2023 13:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="cVxuJfOI"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 320CFD5B;
	Mon, 27 Nov 2023 05:22:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=czNXjKBE5YCosfT9d3RwTB4c1szf3nqsIBvuFOt820Q=; b=cVxuJfOIsAlvcd2dxILBDwNiDO
	aR+cVzzhcIVXGgC2Ncj1rTIcY8yiK61dUAQFJ4BM9myTRy9Knzel936lpaxGamFriHTMhdc3H2J0w
	TwO8tkpZvJDRVxw1s1r6E09iKYD0ARynBDWzgS9KPKxoQlwq8zbcIi05S46A8lDHocJQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1r7bZ9-001LLX-GV; Mon, 27 Nov 2023 14:22:23 +0100
Date: Mon, 27 Nov 2023 14:22:23 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jie Luo <quic_luoj@quicinc.com>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	hkallweit1@gmail.com, linux@armlinux.org.uk, corbet@lwn.net,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v6 3/6] net: phy: at803x: add QCA8084 ethernet phy support
Message-ID: <8e4046dd-813c-4766-83fb-c54a700caf31@lunn.ch>
References: <20231126060732.31764-1-quic_luoj@quicinc.com>
 <20231126060732.31764-4-quic_luoj@quicinc.com>
 <0b22dd51-417c-436d-87ce-7ebc41185860@lunn.ch>
 <f0604c25-87a7-497a-8884-7a779ee7a2f5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f0604c25-87a7-497a-8884-7a779ee7a2f5@quicinc.com>

On Mon, Nov 27, 2023 at 02:21:46PM +0800, Jie Luo wrote:
> 
> 
> On 11/27/2023 1:31 AM, Andrew Lunn wrote:
> > > +		/* There are two PCSs available for QCA8084, which support the
> > > +		 * following interface modes.
> > > +		 *
> > > +		 * 1. PHY_INTERFACE_MODE_10G_QXGMII utilizes PCS1 for all
> > > +		 * available 4 ports, which is for all link speeds.
> > > +		 *
> > > +		 * 2. PHY_INTERFACE_MODE_2500BASEX utilizes PCS0 for the
> > > +		 * fourth port, which is only for the link speed 2500M same
> > > +		 * as QCA8081.
> > > +		 *
> > > +		 * 3. PHY_INTERFACE_MODE_SGMII utilizes PCS0 for the fourth
> > > +		 * port, which is for the link speed 10M, 100M and 1000M same
> > > +		 * as QCA8081.
> > > +		 */
> > 
> > How are these 3 modes configured? I don't see any software
> > configuration of this in these drivers. Can it only by configured by
> > strapping?
> 
> The interface mode is passed in the .config_init, which is configured
> by the PCS driver, the hardware register is located in the PCS, this
> driver will be pushed later.

Is this the same as how the syqca807x works? Can the PCS driver be
shared by these two drivers?

What i don't like at the moment is that we have two driver
developments going on at once for hardware which seems very similar,
but no apparent cooperation?

	Andrew

