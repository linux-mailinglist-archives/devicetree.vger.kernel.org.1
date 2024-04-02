Return-Path: <devicetree+bounces-55321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60916894D20
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 10:06:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1F07282F9B
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 08:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1DE13D3BF;
	Tue,  2 Apr 2024 08:05:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7FD3D3BD
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 08:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712045157; cv=none; b=BLCSvVwlCMDY80L/ApJtxHeFFJv60xmh+nykLgR4IT52Bpf964zVvMEPAJ45ZdSv1eUv9dNTqXdbVJ80jwnFFkS8fzReqwl7CkNr9Ubq2S1WmVJh+JIcLmFEk3UkLWRYUKRSXYxu/DWMFFAgZ1UFDNOLOZOwZUi5Q7xWG0d0tSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712045157; c=relaxed/simple;
	bh=rLoEKAQK6tUKxwzN63ux7GZ+5/xHH5vDLIDMrKO/qyo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=anp8UG7bjSP5Lv0UuHmBsjbXCBDN+kZZLxcBpyDU+lBjglAgP6htziZ3HnDjTzla6VhiZ6OhcvgJp2H8NuAiG0OmVM6oPJqfXCqhOnZWx82PweCe/sAATnh0JVjMW7zUoQdW9wRc6prRmYOLm6A8L3lCcHFCcBA7YkFBAONVxAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rrZ9U-0007yo-FT; Tue, 02 Apr 2024 10:05:52 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rrZ9T-009wbk-N3; Tue, 02 Apr 2024 10:05:51 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rrZ9T-00Akf4-1z;
	Tue, 02 Apr 2024 10:05:51 +0200
Date: Tue, 2 Apr 2024 10:05:51 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Fabio Estevam <festevam@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Jacopo Mondi <jacopo@jmondi.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] arm64: dts: debix-a: Remove i2c2 from base .dts
Message-ID: <20240402080551.t4tmvfumqtylvjtx@pengutronix.de>
References: <20240325225048.1159-1-laurent.pinchart@ideasonboard.com>
 <20240402065443.hpinj7oftcst6fwd@pengutronix.de>
 <20240402075903.GB10288@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240402075903.GB10288@pendragon.ideasonboard.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-04-02, Laurent Pinchart wrote:
> Hi Marco,
> 
> On Tue, Apr 02, 2024 at 08:54:43AM +0200, Marco Felsch wrote:
> > On 24-03-26, Laurent Pinchart wrote:
> > > From: Jacopo Mondi <jacopo@jmondi.org>
> > > 
> > > The I2C2 bus is used for the CSI and DSI connectors only, no devices are
> > > connected to it on neither the Debix Model A nor its IO board. Remove
> > > the bus from the board's .dts and rely on display panel or camera sensor
> > > overlsy to enable it when necessary.
> > 
> > I would rather remove the status line instead of removing the whole node
> > since the bus is intented to be used for CSI and DSI and therefore the
> > muxing should be valid. This makes it easier for overlay authors since
> > they don't need to check the mux setup each time.
> 
> Seems sensible to me. I will drop the clock-frequency property in
> addition to the status property, as the frequency depends solely on the
> devices connected to the CSI and DSI connectors.

Make sense. With these changes, feel free to add my:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco

> > > Signed-off-by: Jacopo Mondi <jacopo@jmondi.org>
> > > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > ---
> > >  .../boot/dts/freescale/imx8mp-debix-model-a.dts    | 14 --------------
> > >  1 file changed, 14 deletions(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> > > index 5ac77eaf23d5..26c303b7c7fa 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> > > @@ -210,13 +210,6 @@ ldo5: LDO5 {
> > >  	};
> > >  };
> > >  
> > > -&i2c2 {
> > > -	clock-frequency = <100000>;
> > > -	pinctrl-names = "default";
> > > -	pinctrl-0 = <&pinctrl_i2c2>;
> > > -	status = "okay";
> > > -};
> > > -
> > >  &i2c3 {
> > >  	clock-frequency = <400000>;
> > >  	pinctrl-names = "default";
> > > @@ -392,13 +385,6 @@ MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA					0x400001c2
> > >  		>;
> > >  	};
> > >  
> > > -	pinctrl_i2c2: i2c2grp {
> > > -		fsl,pins = <
> > > -			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL					0x400001c2
> > > -			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA					0x400001c2
> > > -		>;
> > > -	};
> > > -
> > >  	pinctrl_i2c3: i2c3grp {
> > >  		fsl,pins = <
> > >  			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL					0x400001c2
> 
> -- 
> Regards,
> 
> Laurent Pinchart
> 

