Return-Path: <devicetree+bounces-120836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7919C45A4
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 20:13:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 24D0B1F2121B
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 19:13:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AEBC1AAE3A;
	Mon, 11 Nov 2024 19:13:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4A61AAE2C
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 19:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731352414; cv=none; b=t7UZ4mwSxR2vmngimMOq6PTuYhdBVX1Vb2hg8mQLHLZsRCMpQgKhL+rDNutbGK/X43JKmXkHk56H1TTuKWQn+j++1gO8R7FCqWiwpEcEW0LSnLk+fMlIC0iPbzSMV/jcHLlxJlbNfo6fdsnXZRqPWcAYnCDudYLDBuS5Qieosec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731352414; c=relaxed/simple;
	bh=rNCETCsFbwJ3MZxiiirkV28BI1ZQDxtrLsU5IoQRMJs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jOcza06QZhvIyPbutsW8X4oYxmy+c+Hv4/38Ct0tLPujf6NnGr+Y1SqB05sA8CfoWLmKkMtUeCFiQpFAoNRY8uTTtTHWXlJAOT9tYGCRgR7qDscK602qIDBNehDJUSvCAugmyqWBRErF6yOPbVtzgfWyo6TjRd75A2sZ2cVZcD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1tAZqa-0002SF-2g; Mon, 11 Nov 2024 20:13:12 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tAZqZ-000IHO-10;
	Mon, 11 Nov 2024 20:13:11 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tAZqZ-0060xb-0c;
	Mon, 11 Nov 2024 20:13:11 +0100
Date: Mon, 11 Nov 2024 20:13:11 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 5/5] arm64: dts: imx93-9x9-qsb: add temp-sensor
 nxp,p3t1085
Message-ID: <20241111191311.qallf3xrz2vlylak@pengutronix.de>
References: <20241111-p3t1085-v3-0-bff511550aad@nxp.com>
 <20241111-p3t1085-v3-5-bff511550aad@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241111-p3t1085-v3-5-bff511550aad@nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi,

On 24-11-11, Frank Li wrote:
> Add temp-sensor nxp,p3t1085 for imx93-9x9-qsb boards.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> change from v1 to v3
> - none
> ---
>  arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts b/arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts
> index 20ec5b3c21f42..36f2995acbe29 100644
> --- a/arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts
> +++ b/arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts
> @@ -221,6 +221,11 @@ wm8962: audio-codec@1a {
>  		>;
>  	};
>  
> +	p3t1085: temperature-sensor@48 {
> +		compatible = "nxp,p3t1085";
> +		reg = <0x48>;
> +	};

Out of curiosity, did you tested that the I3C is working on a real
device, since you added the node here as I2C device? If not, please skip
adding the I3C part and keep it as TODO for later.

Regards,
  Marco

>  	ptn5110: tcpc@50 {
>  		compatible = "nxp,ptn5110", "tcpci";
>  		reg = <0x50>;
> 
> -- 
> 2.34.1
> 
> 
> 

