Return-Path: <devicetree+bounces-223643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C046ABB923D
	for <lists+devicetree@lfdr.de>; Sun, 05 Oct 2025 00:13:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0BD151899C5B
	for <lists+devicetree@lfdr.de>; Sat,  4 Oct 2025 22:13:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B12523C8C7;
	Sat,  4 Oct 2025 22:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="b0MSsN2r"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849DF1F4165
	for <devicetree@vger.kernel.org>; Sat,  4 Oct 2025 22:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759615981; cv=none; b=lhgZyngVX4IuEEo/AuwoOJ1O1KISwkYHERFlkwLl+nBExocqWoPBRdBzycdGJO9rAO6b6QjXlhalmvHWHz4S0sVgC1NyPURozPKVlb5CQzwTyUynquUj28v8LqtgcWUNKT9W0HBm+pUdbksYQClAxbowwrKT5Qt6hiKOqsG12do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759615981; c=relaxed/simple;
	bh=7zEwwoz1R8HCIU2ON8dWFrotExTqbGgAuger8knEtgk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Anb4sIWNH3EznJy/c4NugpqiUIMNRf0ChxzW8i9vszFTZ3OzNcJV6Oh/szrs3lYCkyjQVrmx8rPODmAynWJMtRzDibIfPUHwK9/f/ootZ3rc99sjzMIKc6/XK+/U5CkNfpvCb83FPSf9yUO5BWVXpSrrmxDpB1udXZKAmQrBnY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=b0MSsN2r; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id D30481122;
	Sun,  5 Oct 2025 00:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759615886;
	bh=7zEwwoz1R8HCIU2ON8dWFrotExTqbGgAuger8knEtgk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b0MSsN2rG0CHm9cHh8Ccb25wlOQttazTuJMD+1IbS+A1l3O4HS8wQwjAG7bOROaNL
	 6kqxRDKfBAF2fqU59tTgvgGG3fLq58DHcqjZ4MsSGvd0g06cGcBOZHG8Z6PeRKeiwO
	 Z+16nL1xoTtpEkIUfH4qf2mNivZX3ofOU+Tz9ZsM=
Date: Sun, 5 Oct 2025 01:12:50 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Algea Cao <algea.cao@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@6tel.net>, Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add rk3588s-orangepi-cm5-base
 device tree
Message-ID: <20251004221250.GD20317@pendragon.ideasonboard.com>
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
 <20251002034708.19248-4-laurent.pinchart@ideasonboard.com>
 <CALWfF7Lhz2brif4xepWZ71mRqMmXKzxqd=0_hO_b6aF6_GkffQ@mail.gmail.com>
 <20251003023955.GA1492@pendragon.ideasonboard.com>
 <CALWfF7K19Pa5889Kp_rDLD8nDxMEhqMb6er1tKYkTV906fRWXw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALWfF7K19Pa5889Kp_rDLD8nDxMEhqMb6er1tKYkTV906fRWXw@mail.gmail.com>

On Fri, Oct 03, 2025 at 09:47:40PM -0500, Jimmy Hon wrote:
> On Thu, Oct 2, 2025 at 9:40 PM Laurent Pinchart wrote:
> > On Thu, Oct 02, 2025 at 07:01:53PM -0500, Jimmy Hon wrote:
> > > A few nitpicks below
> > >
> > > [ snip ]
> > > > +
> > > > +#include "rk3588s-orangepi-cm5.dtsi"
> > > > +
> > > > +/ {
> > > > +       model = "Xunlong Orange Pi CM5 Base";
> > > > +       compatible = "xunlong,orangepi-cm5-base", "xunlong,orangepi-cm5", "rockchip,rk3588s";
> > > > +
> > > > +       aliases {
> > > > +               ethernet0 = &gmac1;
> > > > +               mmc0 = &sdhci;
> > >
> > > Since sdhci is enabled in the SoM.dtsi, this alias should probably go
> > > there instead.
> >
> > Good point, I'll do that.
> >
> > > > +               mmc1 = &sdmmc;
> > > > +       };
> > > > +
> > >
> > > [ snip ]
> > >
> > > > +
> > > > +       vbus_5v0: vbus-5v0 {
> > > > +               compatible = "regulator-fixed";
> > > > +               regulator-name = "vbus_5v0";
> > > > +               regulator-min-microvolt = <5000000>;
> > > > +               regulator-max-microvolt = <5000000>;
> > > > +               enable-active-high;
> > > > +               gpio = <&gpio0 RK_PD3 GPIO_ACTIVE_HIGH>;
> > > > +               vin-supply = <&vcc5v0_sys>;
> > > > +               pinctrl-names = "default";
> > > > +               pinctrl-0 = <&vbus_5v0_en_pin>;
> > >
> > > The property names in these regulators are not as organized as the
> > > regulators for the CPU/NPU.
> >
> > Which properties in particular ? There are more properties in these
> > regulators, but otherwise the order seem to match.
> >
> > > > +       };
> > > > +
> > > > +       vcc_3v3: regulator-vcc-3v3 {
> > > > +               compatible = "regulator-fixed";
> > > > +               regulator-name = "vcc_3v3";
> > > > +               regulator-min-microvolt = <3300000>;
> > > > +               regulator-max-microvolt = <3300000>;
> > > > +               startup-delay-us = <50000>;
> > > > +               enable-active-high;
> > > > +               gpio = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
> > > > +               vin-supply = <&vcc5v0_sys>;
> > > > +               pinctrl-names = "default";
> > > > +               pinctrl-0 = <&vcc_3v3_en_pin>;
> > > > +       };
>
> The majority of the properties should be in alphabetical order. So the
> startup-delay-us and vin-supply are out of place.

OK I'll move those.

> > > > +
> > > > +       vcc5v0_sys: regulator-vcc-5v0 {
> > > > +               compatible = "regulator-fixed";
> > > > +               regulator-name = "vcc5v0_sys";
> > > > +               regulator-always-on;
> > > > +               regulator-boot-on;
> > > > +               regulator-min-microvolt = <5000000>;
> > > > +               regulator-max-microvolt = <5000000>;
> > > > +       };
> > > > +};
> > >
> > > [ snip ]
> > >
> > > > +
> > > > +&gmac1 {
> > > > +       clock_in_out = "output";
> > > > +       phy-handle = <&rgmii_phy>;
> > > > +       phy-mode = "rgmii-id";
> > > > +       phy-supply = <&vcc_3v3>;
> > > > +       pinctrl-names = "default";
> > > > +       pinctrl-0 = <&gmac1_miim
> > > > +                    &gmac1_rx_bus2
> > > > +                    &gmac1_tx_bus2
> > > > +                    &gmac1_rgmii_clk
> > > > +                    &gmac1_rgmii_bus>;
> > > > +       tx_delay = <0x42>;
> > >
> > > When using "rgmii-id", tx_delay will be ignored. Does the ethernet
> > > work without this property?
> >
> > I have to confess this was blindly copied from the BSP :-/ I'll drop the
> > property and test.
> >
> > > See the comment by Jonas in another review.
> > > https://lore.kernel.org/linux-rockchip/da752790-da17-4d26-b9b2-8240b38b3276@kwiboo.se/
> > >
> > > > +       status = "okay";
> > > > +};
> > > > +
> > > > +&gpu {
> > > > +       mali-supply = <&vdd_gpu_s0>;
> > > > +       status = "okay";
> > > > +};
> > >
> > > This is a feature in the SoC itself, so it's not board specific and
> > > can be put into the SoM.dtsi.
> >
> > I'm a bit in two minds here. If a carrier board doesn't have a display
> > output, the GPU isn't very useful (although in theory the GPU can be
> > used without a display). That's why I decided to enable it in the
> > carrier board. I suppose it doesn't hurt to enable it in the SoM, worst
> > case it won't be used and so won't be powered up. I'll move it to the
> > SoM.
>
> The nice thing about the G610 GPU is that OpenCL support via Mesa's
> RustICL was added earlier this year. So even in a headless cluster,
> the GPU can still be useful.

Yes, that's why I decided to move it to the SoM in the end.

> > > [ snip ]
> > >
> > > > +
> > > > +&pd_gpu {
> > > > +       domain-supply = <&vdd_gpu_s0>;
> > > > +};
> > >
> > > Same comment regarding moving to the SoM.dtsi
> >
> > OK.

-- 
Regards,

Laurent Pinchart

