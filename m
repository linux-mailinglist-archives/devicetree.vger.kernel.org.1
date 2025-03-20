Return-Path: <devicetree+bounces-159347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 23017A6A67D
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 13:54:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B92163B1F5B
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 12:52:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F3EF12B73;
	Thu, 20 Mar 2025 12:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="p3bf7TTS"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9592F9EC
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 12:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742475155; cv=none; b=SlJqnL6qsCqXvpRnRgrsD/XDykz8TQbdFU6e2bLp8p4xnKCC1oZ7uD7XNoieNndHZ19fRuQs0QrfIClzn+srtcCcOCNgKDRZzoryTcs57GVdMzD5ePwMl33B+M9bzujPfJSQb3UoLQuPuxrrl11fgW0STVs6FI34bPQyl8nASiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742475155; c=relaxed/simple;
	bh=uA8Qt3KM9A5pXje2bUE/Gv10bmYQLRTZvoDvvuqdJH8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j5I8LId0aF/xqQd6JNRpS68oVMINV8QDHTLwRP6yZFJOLjUH1so1pkUdC7XPTalzYehATD/+u9mwkaiaFn9eXCiGmT7IAv/vw8HHca0HKJsAYJRTm3oDg9UJ4tbkvOTXF3XnUMb9O7gxrm00hifuO+5QsThwwj3+Ehl8GSgJc/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=p3bf7TTS; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=H+sTAz6dqyxPYftC9u0HB4/K7kVqtaa/p/1ZD4PoAEU=; b=p3
	bf7TTSFQTd36LRDyhoubAWAFz+dcsRa8w0/WSfTJAl5bMm0PQVksnXDxhTlHIIqG9HqEOxhcT+ShU
	wNTb4JHyVQB+x8L2AHsvwXAq/dxvGqJytoYognUFgIBTpZwiGrJzPv52A6vC3SHAkifgP+MgAvpGT
	xSJpVyyvqGFGlOg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1tvFNo-006TXo-1G; Thu, 20 Mar 2025 13:52:24 +0100
Date: Thu, 20 Mar 2025 13:52:24 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add gmac phy reset GPIO
Message-ID: <4eaa58b6-72e2-4b83-ab82-500022c90461@lunn.ch>
References: <cover.1742331667.git.ukleinek@kernel.org>
 <49f66206fccc714a8745b9ac35247615ad5cc369.1742331667.git.ukleinek@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <49f66206fccc714a8745b9ac35247615ad5cc369.1742331667.git.ukleinek@kernel.org>

On Tue, Mar 18, 2025 at 10:08:46PM +0100, Uwe Kleine-König wrote:
> While looking through the vendor U-Boot code Heiko spotted that a SoC
> GPIO is connected to the ethernet phy's reset pin. Add the respective
> reset-gpios property with pinmuxing for the GPIO to the phy node.
> 
> Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> index 70e88769e21c..411f8ac7994b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> @@ -485,6 +485,10 @@ rgmii_phy0: ethernet-phy@3 {
>  		/* Motorcomm YT8521 phy */
>  		compatible = "ethernet-phy-ieee802.3-c22";
>  		reg = <0x3>;
> +		pinctrl-0 = <&eth_phy0_reset_pin>;
> +		pinctrl-names = "default";
> +		reset-assert-us = <10000>;
> +		reset-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_LOW>;

Sometimes a reset-deassert-us property is needed, in order to give the
PHY time to get ready. But i assume you have tested this with lots of
reboot.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

