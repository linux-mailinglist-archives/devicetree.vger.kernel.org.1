Return-Path: <devicetree+bounces-53714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EBE88D385
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 01:51:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 02DAA1C2820D
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 00:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3AE4168C7;
	Wed, 27 Mar 2024 00:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="O8NaBgJq"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCB863D0
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 00:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711500687; cv=none; b=Etahpzw5ST2193V/F0ceW3LfodvpG1FCE4LiF4cw7ML1aGFXRLQ/wKXTxZ+0+jBk8BTffw98Lh/vif8CwC5rqBX1H5hHxd4EpnZHyenR93WzLH7JSgfxHoa/YHfyM0NaXY6op8sTPCzEHd9jiW5kLC1b8C6hDAk9VqG1h7NmMbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711500687; c=relaxed/simple;
	bh=XLqVF++2sYQQwN5zavZgNts6rrlqki7tOPN2OuSbgWA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hprKcqLbheI6QUJqrTUKkiY87UfqSWSxaNb2eHz/U14nyDQ3lifzUsUefa2MupS+S7kbUVYX7yezNBYl5MR1WlsbgRzhyY4YZX89TWprg+ue/j9qKyla+zvzBs607A4A7EKa058Z0SG4Cv5zdwhWXkQLF7u/1k9ZjNEnwsLow5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=O8NaBgJq; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3F3BF505;
	Wed, 27 Mar 2024 01:50:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1711500652;
	bh=XLqVF++2sYQQwN5zavZgNts6rrlqki7tOPN2OuSbgWA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O8NaBgJqEyY0xf4GqKytvkDTk67gu0V0oK9ZograZ3QVsmo0pQ3jLL8udaHkxxgAD
	 5A367BvSn7HgWytuT6+xrfZIOJHLPyzNSpTqsCGtVMfllDo77RZpgvmOQgLMELkrit
	 kvN1IWM923w+m4/OE0Y8Nq/makbhG7fMnADLzQAA=
Date: Wed, 27 Mar 2024 02:51:15 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Jacopo Mondi <jacopo@jmondi.org>
Subject: Re: [PATCH] arm64: dts: debix-a: Remove i2c2 from base .dts
Message-ID: <20240327005115.GC14986@pendragon.ideasonboard.com>
References: <20240325225048.1159-1-laurent.pinchart@ideasonboard.com>
 <171144729683.3566204.12672101779935759480@ping.linuxembedded.co.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <171144729683.3566204.12672101779935759480@ping.linuxembedded.co.uk>

On Tue, Mar 26, 2024 at 10:01:36AM +0000, Kieran Bingham wrote:
> Quoting Laurent Pinchart (2024-03-25 22:50:48)
> > From: Jacopo Mondi <jacopo@jmondi.org>
> > 
> > The I2C2 bus is used for the CSI and DSI connectors only, no devices are
> > connected to it on neither the Debix Model A nor its IO board. Remove
> > the bus from the board's .dts and rely on display panel or camera sensor
> > overlsy to enable it when necessary.
> 
> s/overlsy/overlays/

Oops. Shawn, could you fix this when taking the patch in your tree, or
would you live me to submit a v2 ?

> Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> 
> > 
> > Signed-off-by: Jacopo Mondi <jacopo@jmondi.org>
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  .../boot/dts/freescale/imx8mp-debix-model-a.dts    | 14 --------------
> >  1 file changed, 14 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> > index 5ac77eaf23d5..26c303b7c7fa 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> > @@ -210,13 +210,6 @@ ldo5: LDO5 {
> >         };
> >  };
> >  
> > -&i2c2 {
> > -       clock-frequency = <100000>;
> > -       pinctrl-names = "default";
> > -       pinctrl-0 = <&pinctrl_i2c2>;
> > -       status = "okay";
> > -};
> > -
> >  &i2c3 {
> >         clock-frequency = <400000>;
> >         pinctrl-names = "default";
> > @@ -392,13 +385,6 @@ MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA                                    0x400001c2
> >                 >;
> >         };
> >  
> > -       pinctrl_i2c2: i2c2grp {
> > -               fsl,pins = <
> > -                       MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL                                 0x400001c2
> > -                       MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA                                 0x400001c2
> > -               >;
> > -       };
> > -
> >         pinctrl_i2c3: i2c3grp {
> >                 fsl,pins = <
> >                         MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL                                 0x400001c2

-- 
Regards,

Laurent Pinchart

