Return-Path: <devicetree+bounces-46879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA6986B0E8
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 14:54:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0AE091F268AF
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 13:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20946151CEA;
	Wed, 28 Feb 2024 13:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="3IIaKwd+"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D815F14DFEC
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 13:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709128398; cv=none; b=KmwjH2OTiykQUI3XSPGOrUhuyIjIIbjelq6k55pohQLj81G2XmjASS2EO1R45+1fMuCBlRp+3EYNNoeNtLdIuNcNFlLDmbJB8vz90hRljJUtnqXTfgPaB+MsWngFV7YdRYTyoIf0vlm6LhFP3bSV2WCq6L0N7BppF7ti+ZN24M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709128398; c=relaxed/simple;
	bh=aDp5s5G7OrtB0uIoBVwSnPcVRJu178PpcgCgi3Nls8c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L+fmwZ9iAhWWvEXMemKJ9fNpfV9s7F5T7awa0SKh1ei7VJfJ0cVWBLvDdtLth9B2bfU//S1WP+rcs5e6d+PT8WMIO33kMOvnb6ymW333/nqB5JS6SrQwaUWmnYGKnntFDl6hd29ag29GBe91IH+cXmlbZaJbACHL0VxwqePnujk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=3IIaKwd+; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=2pe7tjaVjjd4HlWp42iye8YNjlaJGT+ZD7kXjbbPCBA=; b=3I
	IaKwd+/8pH0QQCAYWFTKGcwx9r+ZyuJyjZYOdX2LemBIkJkhI1dMkEli5/jC6tjLI16lECOp/pY11
	OgFz7saNHjzuZ5/9GpTXmpV2B3JdBAVYy9igp8DWHJIkPK+rFS28jLoo5emVvHeJ1EEWSEfdhU2J+
	8xArQFWiTSTIKqM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rfKNC-008x6n-KQ; Wed, 28 Feb 2024 14:53:26 +0100
Date: Wed, 28 Feb 2024 14:53:26 +0100
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
Message-ID: <3295af58-4015-4962-91a0-87b70f18754e@lunn.ch>
References: <cover.1709034476.git.ukleinek@debian.org>
 <0d9fa5d730ac1cb91261b25b6809fcef3a12f03a.1709034476.git.ukleinek@debian.org>
 <b48cde05-c583-4414-9424-fbb2db3a53ce@lunn.ch>
 <lcvokzcmifxl7skfz2h2shewuou7xpazuhtpnpkgtcyejcfgcy@vvdn5ypyklsx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <lcvokzcmifxl7skfz2h2shewuou7xpazuhtpnpkgtcyejcfgcy@vvdn5ypyklsx>

On Wed, Feb 28, 2024 at 08:23:33AM +0100, Uwe Kleine-König wrote:
> On Tue, Feb 27, 2024 at 10:00:48PM +0100, Andrew Lunn wrote:
> > > +&gmac0 {
> > > +	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
> > > +	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
> > > +	assigned-clock-rates = <0>, <125000000>;
> > > +	clock_in_out = "output";
> > > +	phy-handle = <&rgmii_phy0>;
> > > +	phy-mode = "rgmii";
> > > +	pinctrl-names = "default";
> > > +	pinctrl-0 = <&gmac0_miim
> > > +		     &gmac0_tx_bus2
> > > +		     &gmac0_rx_bus2
> > > +		     &gmac0_rgmii_clk
> > > +		     &gmac0_rgmii_bus>;
> > > +	rx_delay = <0x2f>;
> > > +	tx_delay = <0x3c>;
> > 
> > Have you tried phy-mode = "rgmii-id"; and not have these two _delay
> > settings?
> 
> I didnt' up to now. I applied the following on top of my dts:
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> index ba7137f80075..a8747d9f36da 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> @@ -39,15 +39,13 @@ &gmac0 {
>  	assigned-clock-rates = <0>, <125000000>;
>  	clock_in_out = "output";
>  	phy-handle = <&rgmii_phy0>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&gmac0_miim
>  		     &gmac0_tx_bus2
>  		     &gmac0_rx_bus2
>  		     &gmac0_rgmii_clk
>  		     &gmac0_rgmii_bus>;
> -	rx_delay = <0x2f>;
> -	tx_delay = <0x3c>;
>  	status = "okay";
>  };
>  
> and this makes the machine unable to complete dhcp. I see the requests
> and replies on the dhcp server side, but the machine tells me not to
> receive a dhcp reply. So the above patch breaks the receive path.

O.K.

This binding is particularly bad. What does 0x3c mean? Generally, we
use rx-internal-delay-ps making it clear what the value means.

RGMII requires a 2ns delay between the clock and the data. Generally,
we have the MAC insert 0 delay, and request the PHY add the 2ns delay
by specifying "rgmii-id". Sometimes you need to fine tune this,
because of the length of the tracks etc. You can then do that fine
tuning either in the PHY, or the MAC.

Looking at the binding:

  tx_delay:
    description: Delay value for TXD timing.
    $ref: /schemas/types.yaml#/definitions/uint32
    minimum: 0
    maximum: 0x7F
    default: 0x30

  rx_delay:
    description: Delay value for RXD timing.
    $ref: /schemas/types.yaml#/definitions/uint32
    minimum: 0
    maximum: 0x7F
    default: 0x10

For your board, you have increased both values from there default
values. My guess is 0x30 tx_delay is 2ns, and 0x10 rx_delay is also
2ns. 

So maybe try:

rx_delay = <0x1f>;
tx_delay = <0x0c>;

combined with rmgii-id.

	 Andrew

