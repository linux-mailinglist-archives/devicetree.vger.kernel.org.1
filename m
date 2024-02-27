Return-Path: <devicetree+bounces-46558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3D486A149
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 22:01:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FA671F246B8
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 21:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3D8D14EFDA;
	Tue, 27 Feb 2024 21:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="B2NMJlbv"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C6314E2CD
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 21:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709067639; cv=none; b=aFmmS6enIT6X0AO0N9eK1VXIsdrMlBtiBvFlubID/sIIbQsQKxiJqDsCu0wL49xTRRA1h6x0CcdeK29+lJC2xiuhq9mRhHfLLF55CqB4U5oVy1E7Of7lKSgkgJJm5jgn6P3d9ZDJzRqx6X4g9ZJL87mF2rhmBNBTImhly8JD2+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709067639; c=relaxed/simple;
	bh=YcZKUGavYY15zjszTnCWYT3wX4veqUwiweM8akSVWvI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WpAtArR2UlIqxrOpgUTZOIpCVmjZxrV0vSSDj0R5B4Jbov8vhzMWwAV5qVEnl+VyphG6QfMsAInErn/aRCPr9MrykVoLSPmCyhX9PpVAGAh8oiJUYzbBNdZB8mPA5FHd77YSwcLn50LyzcRlHdCRCE8Qb/pLBt5/DRWdeiKUiME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=B2NMJlbv; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=Rk9Vo0mBfgVKHqc4fUhHA256f+oW4rOARrZgd+9glVE=; b=B2NMJlbvJ6T41+c4sj3UExauga
	5MQf7AvV1VrT99Hii+DiDMtxwseRhjT5BjxfMH/knu4QYblQlN7hJMep9Apz4Nt6lQBHp7pL2bRHr
	ajp3Ep7YdsbmPOaL5ZNr3UCxEai31hBYSQH/oGCq3gV6D5XvpgBXZeZC7QQHMmAKp9ew=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rf4ZE-008t9w-TL; Tue, 27 Feb 2024 22:00:48 +0100
Date: Tue, 27 Feb 2024 22:00:48 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add basic support for QNAP
 TS-433
Message-ID: <b48cde05-c583-4414-9424-fbb2db3a53ce@lunn.ch>
References: <cover.1709034476.git.ukleinek@debian.org>
 <0d9fa5d730ac1cb91261b25b6809fcef3a12f03a.1709034476.git.ukleinek@debian.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0d9fa5d730ac1cb91261b25b6809fcef3a12f03a.1709034476.git.ukleinek@debian.org>

> +&gmac0 {
> +	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
> +	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
> +	assigned-clock-rates = <0>, <125000000>;
> +	clock_in_out = "output";
> +	phy-handle = <&rgmii_phy0>;
> +	phy-mode = "rgmii";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac0_miim
> +		     &gmac0_tx_bus2
> +		     &gmac0_rx_bus2
> +		     &gmac0_rgmii_clk
> +		     &gmac0_rgmii_bus>;
> +	rx_delay = <0x2f>;
> +	tx_delay = <0x3c>;

Have you tried phy-mode = "rgmii-id"; and not have these two _delay
settings?

In general, we try to have the PHY do the delay, not the MAC, so that
all devices work the same.

	Andrew

