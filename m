Return-Path: <devicetree+bounces-73861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF53901232
	for <lists+devicetree@lfdr.de>; Sat,  8 Jun 2024 17:06:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A4EC1F21BF0
	for <lists+devicetree@lfdr.de>; Sat,  8 Jun 2024 15:06:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D93AC56446;
	Sat,  8 Jun 2024 15:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="InffNkAR"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E912561B
	for <devicetree@vger.kernel.org>; Sat,  8 Jun 2024 15:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717859195; cv=none; b=I71uQIa9tMwp2bd4JEGEbkdkMVMhoYPjmeUSLSBQw01SMSWPmuocWlhBJ4B8MRGqueg1v/oha8ms3EeGgCi9Z1xZfNkI77D34E3D9LFL1+rOABjVrBcDaY/l2T30Sfk1QNtBX8h9V6/EvncHpn80/5lN37lmJH8y8mkVv3B1dls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717859195; c=relaxed/simple;
	bh=j6BCC+Vbz95kG7AaIGrnoIlXtP848eUSBofX852GX0A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TKSQeqgOLEbl1ghz8JDT1WpNL3bEPDkEsLWyaMnApq1a+wn7ufAUzsSgZ+suM4+aGq6Jq6EscS32zXvWwbRGhA1QYLaRhamtcLbDVhz+CYQXzccLq+Zx6h5LB0AddKj6EB4uu/1P9WzwzBPhzp2nXzLd6EGjdd8fHj0d5c0RocY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=InffNkAR; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A4A23471;
	Sat,  8 Jun 2024 17:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1717859181;
	bh=j6BCC+Vbz95kG7AaIGrnoIlXtP848eUSBofX852GX0A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=InffNkAREm7P3XrO8k/omxY3XXmf6mHcsGG4HXN2aKvO4wbbMdKjPIoOU5bQJFRse
	 gQWnRRAOZd5zJhubb/oZsBpoYQZ8qxlTbJrFELa0OkLdM8/LXVaFLOsbyofxAbvbeG
	 mTU9XY4cD7flNHQshG2iw2z5avS+TimukUNrZndQ=
Date: Sat, 8 Jun 2024 18:06:13 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Marek Vasut <marex@denx.de>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	patchwork-lst@pengutronix.de, kernel@pengutronix.de,
	Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: imx8mp-evk: enable HDMI
Message-ID: <20240608150613.GA13225@pendragon.ideasonboard.com>
References: <20220826192932.3217260-1-l.stach@pengutronix.de>
 <20220826192932.3217260-4-l.stach@pengutronix.de>
 <20230302163525.007503e4@booty>
 <20230525122628.13b0f28b@booty>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230525122628.13b0f28b@booty>

On Thu, May 25, 2023 at 12:26:28PM +0200, Luca Ceresoli wrote:
> On Thu, 2 Mar 2023 16:35:25 +0100 Luca Ceresoli wrote:
> > On Fri, 26 Aug 2022 21:29:32 +0200 Lucas Stach wrote:
> > 
> > > Enable the DT nodes for HDMI TX and PHY and add the pinctrl for the few
> > > involved pins that are configurable.
> > > 
> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>  
> 
> Any updates to these patches? I haven't found any v2 on the list.

This is the last patch in the series that hasn't made it upstream It
would be really nice to get a new version that could be merged in v6.11.
Pretty please :-)

> > I'm joining late to this party... Is this the latest version of this
> > series? I haven't found any more recent, but if it is not the case
> > would you point me to the most recent one please?
> > 
> > > +	pinctrl_hdmi: hdmigrp {
> > > +		fsl,pins = <
> > > +			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL	0x1c3
> > > +			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA	0x1c3  
> > 
> > Is the low nibble (0x3) right?BIT(0) is reserved according too the
> > reference manual.
> > 
> > Also, all the non-reserved bits in that nibble are bits 1 and 2, which
> > set the drive strength. For an I2C line it seems that the minimum drive
> > strength (0x0) should be enough for an I2C line: with any drive
> > strength setting the supported frequency is >= 65 MHz.
> > 
> > > +			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD		0x19
> > > +			MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC		0x19  
> > 
> > Here as well, bits 0 and 3 are reserved.
> 
> About these pinctrls, I am using these settings on the MSC SM2-MB-EP1
> board and they appear to be working just as those you are using (but I
> haven't tested CEC):
> 
>   MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL     0x1c2
>   MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA     0x1c2
>   MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC         0x10
>   MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD         0x10

-- 
Regards,

Laurent Pinchart

