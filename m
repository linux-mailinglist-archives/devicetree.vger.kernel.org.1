Return-Path: <devicetree+bounces-193560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0673AFAE86
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 10:21:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42B9A4A0578
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 08:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64F22279DD7;
	Mon,  7 Jul 2025 08:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="ZFXZbWai"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694D31DDC2A
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 08:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751876507; cv=none; b=W/Kv28KdIIqdXOhHnwTTMKtEXmzeCIiVnPgKp5xvSZQsK02jyBCijbpLofdCF7IEGYDcPsBt5slQEaqZ8PwETGHNH/5h36AsCVODpwN2qsk5Oz6BZKk8P2rCYPBICFRC+rhlJ7UqA4OqnWs+RJPmCvKKVcNivz5YFseiYcqNI00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751876507; c=relaxed/simple;
	bh=/oKrqKaCPqGjDAiu1q1q/zy8gihlawhcd8LJ/wh7Ezs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gxRJXsIvhuDgun6yZlsPv0XRf40Xk8m64n/QQ2pSPQHR1uYAoUiseQQl2p7AJ/2vpbPb2J+B28Hgu5+CtsfD3fn/DeXWP7pEXG3Vrpx1bw6Rqf48SSznk9U2hxOsVP8CzKVERb2038gYcWEI/e3woc/os9PeBFvRpEBBkFG0gpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=ZFXZbWai; arc=none smtp.client-ip=1.95.21.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=vyklAUbbO9HgYSarbfvrSepbaUCt1uYyW4m9xUB5+0U=;
	b=ZFXZbWaiUtmErHFH9CffaxylkyhJZiklvZF3zyWzwJbFsFIqCcji6E+nRqzpcS
	CqdA8hk9foYTKXTFj1/3HhRH8184sstDUTL8/ePOtJqQZAJF1d0P/0Pzgre5lwbo
	JViGqloIsfAZFnZ73mJUe2vHDpqMrcWZm8t8IFu0qJna8=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgDXfxBsg2toWId5AA--.22061S3;
	Mon, 07 Jul 2025 16:21:02 +0800 (CST)
Date: Mon, 7 Jul 2025 16:21:00 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Xu Yang <xu.yang_2@nxp.com>, Frank Li <Frank.Li@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Subject: Re: [PATCH] arm64: dts: imx95: add some USB3 PHY tuning properties
Message-ID: <aGuDbE1_9Sbug-NH@dragon>
References: <20250627031348.3455547-1-xu.yang_2@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250627031348.3455547-1-xu.yang_2@nxp.com>
X-CM-TRANSID:Ms8vCgDXfxBsg2toWId5AA--.22061S3
X-Coremail-Antispam: 1Uf129KBjvJXoW7KF1kKw47tF1rGw1DXF45GFg_yoW8ZrW3pr
	4kCFsrXr1fKF1fC3s2qF18Kr98Jan3G3srurWUWr1UKrZxZrnrtF4ftF4fWw4j9r4xua1r
	WF1kuF97ZrnFgw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jowZcUUUUU=
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCRyDZWhrVpmjQQAAsd

On Fri, Jun 27, 2025 at 11:13:48AM +0800, Xu Yang wrote:
> Add some USB3 PHY tuning properties to imx95-15x15-evk and
> imx95-19x19-evk boards to improve USB signal quality.
> 
> Reviewed-by: Jun Li <jun.li@nxp.com>
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts | 6 +++++-
>  arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts | 4 ++++
>  2 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts b/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
> index 6c47f4b47356..b26e9db7832a 100644
> --- a/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
> @@ -1069,8 +1069,12 @@ usb3_data_hs: endpoint {
>  };
>  
>  &usb3_phy {
> -	orientation-switch;
> +	fsl,phy-pcs-tx-deemph-3p5db-attenuation-db = <17>;
> +	fsl,phy-pcs-tx-swing-full-percent = <100>;
>  	fsl,phy-tx-preemp-amp-tune-microamp = <600>;
> +	fsl,phy-tx-vboost-level-microvolt = <1156>;
> +	fsl,phy-tx-vref-tune-percent = <100>;
> +	orientation-switch;
>  	status = "okay";

It conflicts with what I applied from Frank [1].

Shawn

[1] https://lkml.org/lkml/2025/6/6/920

>  
>  	port {
> diff --git a/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts b/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
> index 6886ea766655..e212f12f869a 100644
> --- a/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
> @@ -514,7 +514,11 @@ usb3_data_hs: endpoint {
>  };
>  
>  &usb3_phy {
> +	fsl,phy-pcs-tx-deemph-3p5db-attenuation-db = <17>;
> +	fsl,phy-pcs-tx-swing-full-percent = <100>;
>  	fsl,phy-tx-preemp-amp-tune-microamp = <600>;
> +	fsl,phy-tx-vboost-level-microvolt = <1156>;
> +	fsl,phy-tx-vref-tune-percent = <100>;
>  	orientation-switch;
>  	status = "okay";
>  
> -- 
> 2.34.1
> 


