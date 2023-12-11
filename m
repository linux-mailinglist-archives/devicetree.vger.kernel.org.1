Return-Path: <devicetree+bounces-24011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FC980D46C
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 18:49:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A09C1C20FAB
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 17:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 422924EB31;
	Mon, 11 Dec 2023 17:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="RUZnVOGm"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1556010F;
	Mon, 11 Dec 2023 09:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=0ZgwSSmETwPOx2MBHd7WKiGHSpo5OarsGyxFMerd5k8=; b=RUZnVOGmomQjq99WgxMW5kpqrN
	RnmEWkqb6uCM26YLqNXhlXlrymcXJ7Oev+ZtCXKCAZhV8E/DJwdnGdW3/BYSJo2XE2t3sE6ytq0HO
	nkmElMML6TObE/o8nuZiUpdYhBLXO73iYZSsKRe9+MvFzeottL/KhVBdfmaZa9HqSgH8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rCkOs-002e52-SP; Mon, 11 Dec 2023 18:49:02 +0100
Date: Mon, 11 Dec 2023 18:49:02 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [net-next PATCH 1/2] dt-bindings: Document QCA808x PHYs
Message-ID: <2698eda5-af84-494f-844b-2ea87aa510d2@lunn.ch>
References: <20231209014828.28194-1-ansuelsmth@gmail.com>
 <242759d9-327d-4fde-b2a0-24566cf5bf25@lunn.ch>
 <65772f36.050a0220.678b6.ef84@mx.google.com>
 <74b7fc4f-88d2-41c0-8d98-6530f0fc2d70@lunn.ch>
 <657744b5.050a0220.dfa0d.11a4@mx.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <657744b5.050a0220.dfa0d.11a4@mx.google.com>

On Mon, Dec 11, 2023 at 06:19:46PM +0100, Christian Marangi wrote:
> On Mon, Dec 11, 2023 at 04:54:12PM +0100, Andrew Lunn wrote:
> > > Mhhh with a generic property and LED core or phylib handling it... How
> > > it would work applying that setting on PHY side?
> > 
> > Add a .led_set_polarity callback to the PHY driver structure?
> > 
> > Take a look at other LED drivers. Does anything similar already exist?
> > It is unlikely that PHYs are the only sort of LED to have a polarity.
> >
> 
> Interesting topic... With a quick grep on Documentation for polarity of
> high, I can't find any use of it...

As i said, active-high is the default. So there is no need to specify
it. But if you look in Documentation/devicetree/binding/leds for
'active-low' you will find a few examples.

> Also main problem is that the thing is controlled globally and not per
> LED. (can be handled internally to the driver with some priv and check
> magic)

Ah, missed that. Marvell PHYs have polarity per LED.

It would be better to describe this correctly, so one property at a
higher level. We can then in the future add an 'active-low' property
per PHY.

> Is it worth to impemement the additional API to control this? And I
> guess a egenric binding should be added to ethernet-phy? Or should it be
> added to LEDs?

Since it is above individual LEDs, i would not add it to the generic
LED binding. But it could go inside the leds object of
ethernet-phy.yaml.

           leds {
                #address-cells = <1>;
                #size-cells = <0>;

		active-low;

                led@0 {
                    reg = <0>;
                    color = <LED_COLOR_ID_WHITE>;
                    function = LED_FUNCTION_LAN;
                    default-state = "keep";
                };

	Andrew

