Return-Path: <devicetree+bounces-13731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 471BA7E030A
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 13:36:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C11D1B2147A
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 12:36:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64D3315497;
	Fri,  3 Nov 2023 12:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="ZnJOhG+o"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F6E1802D
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 12:36:00 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 830A4D58;
	Fri,  3 Nov 2023 05:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=dZ2IV2/74//AS93j1vBOgGMskGuc4i5nUoK+wjJWXL0=; b=ZnJOhG+o4n+Wd6QDeV1pGkZQ6M
	GweFsOfUKHJJxIwng/iUsBpnvEuFwrNuT1eKWfhsZl0NB6zDFIPki57FYSU6xiOKr6pgamteZiHaO
	2GyQa2h379WAI0PgGJ+C0pT/b3TdTQ3QGWwnGZt8sendbOFBhclEkmX/4L0L1ULfjv+c=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qytOs-000oTD-Az; Fri, 03 Nov 2023 13:35:46 +0100
Date: Fri, 3 Nov 2023 13:35:46 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?iso-8859-1?Q?S=F8ren?= Andersen <san@skov.dk>,
	Sam Ravnborg <sam@ravnborg.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	NXP Linux Team <linux-imx@nxp.com>,
	Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: freescale: Add SKOV IMX8MP CPU revB
 board
Message-ID: <1ee285d7-6bc9-43ad-9ec9-a8aaed4452b5@lunn.ch>
References: <20231103105305.2459143-1-o.rempel@pengutronix.de>
 <20231103105305.2459143-2-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231103105305.2459143-2-o.rempel@pengutronix.de>

> +			port@2 {
> +				reg = <2>;
> +				label = "cpu";
> +				ethernet = <&eqos>;
> +				/* 2ns rgmii-rxid is implemented on PCB.
> +				 * Switch should add only rgmii-txid.
> +				 */

Its unusual to actually see that. Its even more unusual its only one
clock line. Can you actually see it on the PCB?

> +				phy-mode = "rgmii-txid";
> +				tx-internal-delay-ps = <2000>;

Is this actually needed? rgmii-txid should add 2ns delay. Since this
apparently works, i'm assuming setting tx-internal-delay-ps to 2ns
does nothing, otherwise you would have a 4ns delay.

     Andrew

