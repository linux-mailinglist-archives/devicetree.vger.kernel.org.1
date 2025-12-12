Return-Path: <devicetree+bounces-246209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 096EECB9ECD
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 23:27:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34CA9308BD90
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 22:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AD3428724D;
	Fri, 12 Dec 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="bRf38v9D"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A26E20C463;
	Fri, 12 Dec 2025 22:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765578352; cv=none; b=qKLFcd0OE8ZpvhYr8ugmx5HFzJBFMz8r443KEqKNJx7vx4U3/lUVaY2Bhv3dIeX/gTPO6JDPWYtTJMQBCv721vryqZF7LVDkPlwloDZVbWPeXcx2ZNBnY5/X1A2KYBiPxt/FmocckgwJa9vV82ay9o8hjLya/emA34LbHr03uT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765578352; c=relaxed/simple;
	bh=cE4Yq/zZ63y+9MPB68aDEPbjIVdKoqsTUzCBwnk0xVY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X26wknWD7P51aqmR8WhHBnyIh8UcH8oNI3U2XxCTPoxxqC/s8wysbZenTjd0XDIf9V/rIxVlSGgxZxZW9wB7qYbBFQ9c5RAPHwssbsiZRIbkIthmFCj7PROnJroCZ+vNdCQ4wRDwLqMjQ/rkQct/PR1V8dP65mcd9jpiGMh+z94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=bRf38v9D; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=5hB/xgi8wkQ2IXSB8CEixUZsLKng335tdHLW4IL6cEQ=; b=bRf38v9Dq/IgsTZNH8Cr1xcg3k
	REVAA7pjWYHtSUB6SkUzsiynj/AUL6jb7xfjL0VbUktp3EPYh7s4uu9e/snOX1MrJzkMNeU0btS+d
	XePz/oFfZfKwLwMcg4HA7X84G6rNUqL4Qcl54d4gBTp4s0hQPwEYpvEVa7oH5oxyA2Os=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vUBZv-00Go4B-8Q; Fri, 12 Dec 2025 23:25:35 +0100
Date: Fri, 12 Dec 2025 23:25:35 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Adrian Kossmann <adrian.kossmann@posteo.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Adjust RGMII TXD/RXD delays for
 the Rock Pi E
Message-ID: <57e99fa1-0e59-4129-bcae-b94df46447e7@lunn.ch>
References: <20251212220151.574860-1-adrian.kossmann@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251212220151.574860-1-adrian.kossmann@posteo.de>

On Fri, Dec 12, 2025 at 10:02:24PM +0000, Adrian Kossmann wrote:
> Current RGMII TXD/RXD delay results in link instability
> under load, with throughput eventually dropping to zero.
> Adjust the RGMII TXD/RXD delay values for stable link
> under load and stable Gigabit throughput
> 
> Signed-off-by: Adrian Kossmann <adrian.kossmann@posteo.de>
> ---
> Changes in v2:
> - Changed the patch subject as the last one contained
>   incorrect changes
> - Drop incorrect PHY compatible string change from v1
> - Adjustments to RGMII RX/TX delay values
> - Link to v1: https://lore.kernel.org/linux-rockchip/20251209210658.458506-2-adrian.kossmann@posteo.de/
> 
>  arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> index a4bdd87d0729..29ff0b8b8f18 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> @@ -153,8 +153,8 @@ &gmac2io {
>  	phy-supply = <&vcc_io>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&rgmiim1_pins>;
> -	tx_delay = <0x26>;
> -	rx_delay = <0x11>;
> +	tx_delay = <0x1a>;
> +	rx_delay = <0x14>;
>  	status = "okay";

You cannot see it here, it appears before this context:

&gmac2io {
        assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
        assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
        clock_in_out = "input";
        phy-handle = <&rtl8211>;
        phy-mode = "rgmii";

rgmii means the PCB provides the delay. I doubt that is the
case. Please try changing this to rgmii-id, as recommended here:

https://elixir.bootlin.com/linux/v6.15/source/Documentation/devicetree/bindings/net/ethernet-controller.yaml#L287

and then try out different rx_delay and tx_delay values.

    Andrew

