Return-Path: <devicetree+bounces-8498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2882A7C85FF
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 14:45:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42D181C209E2
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 12:45:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24EA2111B8;
	Fri, 13 Oct 2023 12:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="jkevdzwj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADB8C11C91;
	Fri, 13 Oct 2023 12:45:37 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19E6491;
	Fri, 13 Oct 2023 05:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=/f7vL7oStkkAMQ4U6sUTV8QFWMT0qFwZK4A+Xow5j+E=; b=jkevdzwj/EEyDdNumVA3NL+86G
	gFM97BQTQMf4vNngS0vplcECx9mhpiAsaHXf/nCbHzFnP3H7ytMsQgIpp9IoZJP+mopqArwXsenAg
	U9POTZbod7aainmcrHh9hAwyLgiUAa7Nbi3BvTfom92Smp62qcnIWr2EneRQrwhIWHaQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qrHXj-0025hs-Jq; Fri, 13 Oct 2023 14:45:27 +0200
Date: Fri, 13 Oct 2023 14:45:27 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH 3/3] RFC: net: dsa: mv88e6xxx: Register mdio-external
Message-ID: <1209f419-acb0-4da8-bd87-03ccc1ee5244@lunn.ch>
References: <20231013-marvell-88e6152-wan-led-v1-0-0712ba99857c@linaro.org>
 <20231013-marvell-88e6152-wan-led-v1-3-0712ba99857c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013-marvell-88e6152-wan-led-v1-3-0712ba99857c@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Oct 13, 2023 at 12:35:16AM +0200, Linus Walleij wrote:
> Make it legal to have a subnode just named "mdio-external"
> and have that be recognized immediately as the external
> MDIO bus, register it and return. Only fallback to the
> old method with a compatible in the external bus node
> if this doesn't work.
> 
> This is the result of deprecating the old DT method
> of providing a node "mdio1" with a compatible string.

What is missing from this description is why do you want to deprecate
the old method? What is wrong with it?

	Andrew

