Return-Path: <devicetree+bounces-90574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 51841945EE2
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 15:52:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 844711C21296
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 13:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B5961E3CA6;
	Fri,  2 Aug 2024 13:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H2kRNgY6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A04E1E213C
	for <devicetree@vger.kernel.org>; Fri,  2 Aug 2024 13:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722606732; cv=none; b=rMxVw1L2jLeJ3ERjmKgOwAWHEN514+noKrruoBsIosu958N0exi02f6OtlSRRkUmJzkFIlkK2PkMOqKkiHS3avsnECZa/Fv2V4pfsEAmRzLQG0WmB8jgn0O272pMtsBsrQp89026a51rQRzFpTXuQqBvrqcI8R9a9c89RGe6bag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722606732; c=relaxed/simple;
	bh=ou0DITIpMt48ak8JPLbfXRmSg/K+0yvdjanPFGT+N/0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SPSOV29UrwnmsVsO1BhBXbzLzk+h7QoUfWu4Rr+1SRa4BOqI3/bhvMfaqLu6DAvCXFTkhJBQ0pD06uCCkkTSFt9M1iiSa/OU4h+9z0XCa7tAyX9iYr6cjdSDNEEpXOWTznoNKL/JARJi5EsjyvFAhDfe4FFPcvRolKfvVnalLSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H2kRNgY6; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52efe4c7c16so11934303e87.0
        for <devicetree@vger.kernel.org>; Fri, 02 Aug 2024 06:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722606729; x=1723211529; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4ux3ZfNQ7ZOcoxTiKnqgkpQxKEOA6xyXfmnITSx+smY=;
        b=H2kRNgY6O8exEdrS2NcMyhoqOSyemNdNZYVKpvgBgjC6BFYrRfNYWoUBPT5ESblZNY
         YSOLyzv7T9xTQvcgfoh//woOiSeGvgCyndxpoXwZp+H5LExqbNqclD0RAwQcwuE8ECfo
         +umOa08cIGgUbTmPnMcBdRbobQeYYGe1FtVsnFOI8sqUQDXmB6xxvakcx6+p9NditWyy
         5x0tqg2h+PemxGRTXBr+nXklWtN14jMTTh4HWOxZ8nbuOJhqxc23ee4ZzqCT5IDK6jtP
         an4I/XVzEw5GLvSMPTv0A/+m+xk29CA99ngI4Eon8j1exky2lgF2wZWgdpkF3iuioE8j
         /nzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722606729; x=1723211529;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ux3ZfNQ7ZOcoxTiKnqgkpQxKEOA6xyXfmnITSx+smY=;
        b=jPwjk8vhrwNzbG+mPGvqO0tszPnnzEatiOeUdav8pOoZiel22VNSe3VT483mnlrHMs
         oe6eWzRAtSmLBpqj02wevd8dmSk4wXCfkavXRDKqhsIFll2QMBXB2GCWHjrWnr927XKt
         otBWE5Bi5nry6D1sGBgGysz2c8eLXvO2zFvX3xe/gEo9E9cna0O0RmaFrv6M8nwnBAQy
         5Q82KXtNMPwuee76rI+MZKUjLB3pG0m2e8SlLvuziDcmuTULblwDcs7RBgEqF0wbcTGQ
         Ls+QfJKmVBoC+Rf9T2w/rZghRSlnZX54asAb7M0uhhQu23FgkGcZODFhz8uDfaMRYTDt
         p/SQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIkQewnUat/xJSB1aOqNLOIOQwD7GzpOjxKmpbwmVEZCLpAt+kjftmEx2hpDWRyHX0z6xNmC2NviFponWhH6kdZZmG31PxeN00dw==
X-Gm-Message-State: AOJu0YyB3Bgq7TDIJGq6Gdd1IQ9OHBEzU9RPtX758iKSFRXPTq7pZo2g
	FLUj6UGlNC5In7gafXmR4kY2qVoaUfHEWTEqznhyjZ4c2i8jtLEuJDOx5Xw0eyU=
X-Google-Smtp-Source: AGHT+IEINrdmFAx3zONnth4QNFrZH1h1meVudf30GLFqW4gmfs8ViUeInYhBNlmQrFmaR8IU0V+aZg==
X-Received: by 2002:a05:6512:108b:b0:52c:8a12:3d3b with SMTP id 2adb3069b0e04-530bb3c8259mr2169856e87.56.1722606728406;
        Fri, 02 Aug 2024 06:52:08 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-530bba35252sm233281e87.196.2024.08.02.06.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Aug 2024 06:52:08 -0700 (PDT)
Date: Fri, 2 Aug 2024 16:52:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, Frank.Li@nxp.com, 
	jun.li@nxp.com, l.stach@pengutronix.de, aford173@gmail.com, hongxing.zhu@nxp.com, 
	alexander.stein@ew.tq-group.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH 3/5] phy: fsl-imx8mq-usb: add tca function driver for
 imx95
Message-ID: <i2o5pk7jnni4bgc6txktus26dtnd6quivxkslgqkelmyb334k6@s5waxd5ep75f>
References: <20240802091702.2057294-1-xu.yang_2@nxp.com>
 <20240802091702.2057294-3-xu.yang_2@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240802091702.2057294-3-xu.yang_2@nxp.com>

On Fri, Aug 02, 2024 at 05:17:00PM GMT, Xu Yang wrote:
> The i.MX95 USB3 phy has a Type-C Assist block (TCA). This block consists
> two functional blocks (XBar assist and VBus assist) and one system
> access interface using APB.
> 
> The primary functionality of XBar assist is:
>  - switching lane for flip
>  - moving unused lanes into lower power states.
> 
> This info can be get from:
> i.MX95 RM Chapter 163.3.8 Type-C assist (TCA) block.
> 
> This will add support for TCA block to achieve lane switching and tca
> lower power functionality.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> Reviewed-by: Jun Li <jun.li@nxp.com>
> ---
>  drivers/phy/freescale/Kconfig              |   1 +
>  drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 238 +++++++++++++++++++++
>  2 files changed, 239 insertions(+)
> 

[..]

> @@ -398,6 +624,10 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
>  
>  	phy_set_drvdata(imx_phy->phy, imx_phy);
>  
> +	if (device_is_compatible(dev, "fsl,imx95-usb-phy") &&
> +			imx95_usb_phy_get_tca(pdev, imx_phy) < 0)
> +		return dev_err_probe(dev, -ENODEV, "failed to get tca\n");

Pleas propagate error returned by imx95_usb_phy_get_tca() instead of
always returning -ENODEV.

> +
>  	imx8m_get_phy_tuning_data(imx_phy);
>  
>  	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> @@ -405,8 +635,16 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
>  	return PTR_ERR_OR_ZERO(phy_provider);
>  }
>  
> +static void imx8mq_usb_phy_remove(struct platform_device *pdev)
> +{
> +	struct imx8mq_usb_phy *imx_phy = platform_get_drvdata(pdev);
> +
> +	imx95_usb_phy_put_tca(imx_phy);
> +}
> +
>  static struct platform_driver imx8mq_usb_phy_driver = {
>  	.probe	= imx8mq_usb_phy_probe,
> +	.remove = imx8mq_usb_phy_remove,
>  	.driver = {
>  		.name	= "imx8mq-usb-phy",
>  		.of_match_table	= imx8mq_usb_phy_of_match,
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

