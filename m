Return-Path: <devicetree+bounces-195817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E31A1B03242
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 19:12:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1DB3B189A146
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 17:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E4C027B4EB;
	Sun, 13 Jul 2025 17:11:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="IpZUWctL"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E3927A92F
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 17:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752426719; cv=none; b=cgxW8J9yxlozDik+xl/4e+rZd2FfkMfCvvPVgAPTaKBao6PecyTntW86PA1daDcPCveOOQh67sGH911FPOB53uyO3wyU0eBaOTn2Z0Td5g8tGc5EvS3tXe0kY8tcSkOMqF5IQfgOl2cIcUEAeSCjxPXmceYsX703XByWJR4pEes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752426719; c=relaxed/simple;
	bh=TpQ+Ispov9/8XRHCXHWqGKr44Ds2fnKN8P+JeH1/djk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G9vJ/bF6rzsSHiXHNdjKmm0EUKQzQk1ouBdt+HI+hQNRNBXEx7AExVJYdcJJ47ustDQSUjdgpwjLZ7xUgXuQSJXLYPcaANQdR22QgodC5JvV7uDEpZL2T66JLXbntOr8/ODsy9tPMCKi8UDMSdb0ThYSjmEeDiDRe+Ll0vjh6qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=IpZUWctL; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=zFrEQnPOyh3CgDK5rpfd+i/car9R4H7VSU3yUmUQiEU=; b=IpZUWctL1A8lW/QJNZgbSTBTbj
	z3+Yzc41EDXL4gL5g8KUMsMghn4C0ELvsIgfu8sPnWKxi5nhKemu8bwFOsQXGoQto8vMZi9HOb0zW
	p/CQaiWH+RpMpavOTGX3BT6x9Y+4AvLQZiaeZVN9DHBmzLvkGYb18nQep5J+keJbQaZw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uazsT-001Nvo-Ru; Sun, 13 Jul 2025 18:48:37 +0200
Date: Sun, 13 Jul 2025 18:48:37 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, quentin.schulz@cherry.de, dsimic@manjaro.org,
	naoki@radxa.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add OneThing Cloud OEC turbo
Message-ID: <3387f3d1-6ede-4b71-984a-e0403d72bcec@lunn.ch>
References: <20250713163255.163669-1-jerrysteve1101@gmail.com>
 <20250713163255.163669-4-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250713163255.163669-4-jerrysteve1101@gmail.com>

> +&gmac1 {
> +	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
> +	phy-mode = "rgmii";

This has the usual problem with Rockchip boards. Does the PCB have
extra long clock lines to impose the 2ns delay? I guess not, so this
should be "rgmii-id"

> +	clock_in_out = "input";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac1m1_miim
> +		    &gmac1m1_tx_bus2
> +		    &gmac1m1_rx_bus2
> +		    &gmac1m1_rgmii_clk
> +		    &gmac1m1_rgmii_bus
> +		    &gmac1m1_clkinout>;
> +	snps,reset-gpio = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	/* Reset time is 20ms, 100ms for rtl8211f */
> +	snps,reset-delays-us = <0 20000 100000>;
> +
> +	tx_delay = <0x4f>;
> +	rx_delay = <0x2d>;

And then these should probably be 0, or deleted.

	Andrew

