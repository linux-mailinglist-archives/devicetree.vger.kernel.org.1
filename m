Return-Path: <devicetree+bounces-11328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 967BB7D53C3
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 16:19:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0B221C20BD0
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 14:19:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 773722C857;
	Tue, 24 Oct 2023 14:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="NsAEZaU0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FAF2B75A
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:19:00 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A11D10A;
	Tue, 24 Oct 2023 07:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=AqIOY3MydOW0E4HOkt35Fwk6DE+KKlC+N1Rk35Tgk3g=; b=NsAEZaU08KEjPSnJiMF2LI23mg
	XBEBYzoNHMBCjM7E07r7O2n/niFFR17ntkiAbXgx9bqjOLdZztLH/G/8Yzm5NZPN+PVNdHvp39akk
	kQ0WtrR3Ufkmpms7q3EXrBeY3bWUfWVunLolttcmV34ip3EkAIjLWaJ0epvP8b3646zY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qvIF8-00051D-M4; Tue, 24 Oct 2023 16:18:50 +0200
Date: Tue, 24 Oct 2023 16:18:50 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Elad Nachman <enachman@marvell.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: cn913x: add device trees for COM Express
 boards
Message-ID: <55685b4c-843a-4430-b153-a0eef2e93265@lunn.ch>
References: <20231024131935.2567969-1-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024131935.2567969-1-enachman@marvell.com>

> +&cp0_mdio {
> +	status = "okay";
> +	pinctrl-0 = <&cp0_ge_mdio_pins>;
> +	phy0: ethernet-phy@0 {
> +		marvell,reg-init = <3 16 0 0x1a4a>;

What does this do? I guess it is something to do with LEDs. Polarity?

> +&cp0_mdio {
> +	status = "okay";
> +	pinctrl-0 = <&cp0_ge_mdio_pins>;
> +	phy0: ethernet-phy@0 {
> +		marvell,reg-init = <3 16 0 0x1a4a>;

I'm temped to NACK this, and get you to work on the LED code in the
Marvell PHY driver and phylib to support what you need. This API is
horrible and should not be used any more.

	Andrew

