Return-Path: <devicetree+bounces-73890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D21469012D4
	for <lists+devicetree@lfdr.de>; Sat,  8 Jun 2024 18:50:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4BE0FB21D55
	for <lists+devicetree@lfdr.de>; Sat,  8 Jun 2024 16:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9349617B4F2;
	Sat,  8 Jun 2024 16:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="TCF/3c39"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82981E526
	for <devicetree@vger.kernel.org>; Sat,  8 Jun 2024 16:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717865416; cv=none; b=onvrxxQdIhELUWnPGn4yySuQLoGz2OGE5JFvnnMo83ucUjtXvP/4QtYV/FmEuIMGki+S7RATH1W3XhnUeNCx63AUWSvpJ8Ba1i9nCtd7M9UHyrSDWKsdk9EnVS+Y+pV9bu5j65Ohsqe6QyUZZM0/xu2FTBtVnuUUcxIQTEh1zzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717865416; c=relaxed/simple;
	bh=QgS5qJIzriFvn4pqiJgPYNG7GRqG9zYmYqqA+pBaoF8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H81kQjDSPJObICoVgE5wdxgwtJLtDHm92jjZW+TwfOHJqGIWgHOniiFb4UVgczpLe0Avhs+gbqvA6AO6ewrOhztxplPSJGyC0+I71pBt+Q00HrMzHnSfHY7iaBBmrG9sme6ZUKhyy6btwkcpcXqQTLetBRhKnGbRownDPCMsOcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=TCF/3c39; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C8B0E4CA;
	Sat,  8 Jun 2024 18:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1717865401;
	bh=QgS5qJIzriFvn4pqiJgPYNG7GRqG9zYmYqqA+pBaoF8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TCF/3c39cmM/y8y2k+elenMr5rLz1b5fzuh/oiTQPNDTf72Ni2IneruBaJobfyIgY
	 ObZSj+mO6uv95SxRnmoyJ0SUEHSsi7hWX6cS+dCLOcQKEhP4/1EIuDsXES+bChVPL1
	 NmQHrE/F0WvoX78gNEYbyG0XKiUOxHeKfLlWtFKQ=
Date: Sat, 8 Jun 2024 19:49:52 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
	Marco Contenti <marco.c@variscite.com>,
	Nate Drude <nate.d@variscite.com>,
	FrancescoFerraro <francesco.f@variscite.com>,
	Harshesh Valera <harshesh.v@variscite.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: freescale: Add support for the
 Variscite i.MX8MP DART8MCustomBoard
Message-ID: <20240608164952.GE18479@pendragon.ideasonboard.com>
References: <20231025165058.31697-1-laurent.pinchart@ideasonboard.com>
 <20231025165058.31697-4-laurent.pinchart@ideasonboard.com>
 <314ad280-e3e8-4087-8862-439cf45aa0f9@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <314ad280-e3e8-4087-8862-439cf45aa0f9@pengutronix.de>

Hi Ahmad,

On Mon, Nov 27, 2023 at 07:07:16AM +0100, Ahmad Fatoum wrote:
> On 25.10.23 18:50, Laurent Pinchart wrote:
> > The DT8MCustomBoard is a carrier board for DART i.MX8-based modules.
> > This device tree file adds support for the DT8MCustomBoard v2.0 with a
> > connected DART-MX8M-PLUS module.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> 
> 
> > +&eqos {
> > +	mdio {
> > +		ethphy1: ethernet-phy@1 {
> > +			compatible = "ethernet-phy-ieee802.3-c22";
> > +			reg = <1>;
> > +			eee-broken-1000t;
> > +			reset-gpios = <&gpio_exp_2 0 GPIO_ACTIVE_LOW>;
> > +			reset-assert-us = <10000>;
> > +			reset-deassert-us = <20000>;
> 
> Ouch. So you have a PHY at address 0 (broadcast address) and a PHY at address
> 1 on the same bus? I think it's worth a comment whether broadcast for this
> PHY here is disabled by strapping or in the bootloader.

This particular PHY is an ADI1300. The schematics indicates:

LEDs - active HIGH, address 00001b
SOM PHY MDIO address 00000b

I tried to investigate, and I haven't found any mention of address 0
being a broadcast address in the ADIN1300 documentation. Trying to dig a
bit more, I've read clause 22 of the IEEE 802.3ak specification and
found this:

22.2.4.5.5 PHYAD (PHY Address)

The PHY Address is five bits, allowing 32 unique PHY addresses. The
first PHY address bit transmitted and received is the MSB of the
address. A PHY that is connected to the station management entity via
the mechanical interface defined in 22.6 shall always respond to
transactions addressed to PHY Address zero <00000>. A station management
entity that is attached to multiple PHYs must have prior knowledge of
the appropriate PHY Address for each PHY.

Section 22.6 defines a 40-pin physical connector, which is not
applicable here. I've also found
https://ieee802.org/3/10G_study/email/msg03514.html which states

"People have made all kinds of wild assumptions about the way MDIO/MDC
work in the past. Some people actually believe that PHYADD <00000> is a
broadcast address."

-- 
Regards,

Laurent Pinchart

