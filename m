Return-Path: <devicetree+bounces-1420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB4E7A62D1
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:26:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7FED281DB1
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:26:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05F05374D4;
	Tue, 19 Sep 2023 12:26:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0022010E3
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF915C433C9;
	Tue, 19 Sep 2023 12:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695126369;
	bh=OnEUCFS4cHitzCR7uggS8zW5KMJ/VY7vW2pRNgs+7/I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qyft4lyhCZ4WkH52m3Qm5Bkbe4FtSGuSCsac20JrU7kx8jLTyzoVUIrVOuVkJdIDa
	 cbUr+xEIFMSFuVr1MbvdHNi6JKyPPYy8bNDGhD5meCRgpdDhRVEg5d22dxg99TGT3j
	 shllbp1BKquJ+s+ckpk6Z7y60fNu2gu3w1qiKNq5t/H5NGsvsw7yuxzVL6t4WL3tff
	 BLGfQQgj3wc1xyHFh52T834bXfCjx2Yw4NUXonQO8h3rFSlgDWY2iDJDHWkyheYIB3
	 Ixbgc46ehRzQDoK5v5nFq7UiT70JeQsCOYn+oLZokSBUg+ppyRLAFEVYGDWvliRyOK
	 cjiV3w0xJ2B5A==
Date: Tue, 19 Sep 2023 14:26:03 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Ming Qian <ming.qian@nxp.com>
Cc: mirela.rabulea@oss.nxp.com, robh+dt@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, linux-imx@nxp.com,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8-ss-img: Assign slot for imx jpeg
 encoder/decoder
Message-ID: <20230919122602.GC11740@T480>
References: <20230601023801.25229-1-ming.qian@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230601023801.25229-1-ming.qian@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Jun 01, 2023 at 10:38:01AM +0800, Ming Qian wrote:
> assign a single slot,
> configure interrupt and power domain only for 1 slot,
> not for the all 4 slots.
> 
> Signed-off-by: Ming Qian <ming.qian@nxp.com>
> ---
>  .../arm64/boot/dts/freescale/imx8-ss-img.dtsi | 22 +++++--------------
>  1 file changed, 6 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi
> index a90654155a88..176dcce24b64 100644
> --- a/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi
> @@ -18,10 +18,7 @@ img_ipg_clk: clock-img-ipg {
>  
>  	jpegdec: jpegdec@58400000 {
>  		reg = <0x58400000 0x00050000>;
> -		interrupts = <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 310 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 311 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 312 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupts = <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>;
>  		clocks = <&img_jpeg_dec_lpcg IMX_LPCG_CLK_0>,
>  			 <&img_jpeg_dec_lpcg IMX_LPCG_CLK_4>;
>  		clock-names = "per", "ipg";
> @@ -29,18 +26,13 @@ jpegdec: jpegdec@58400000 {
>  				  <&img_jpeg_dec_lpcg IMX_LPCG_CLK_4>;
>  		assigned-clock-rates = <200000000>, <200000000>;
>  		power-domains = <&pd IMX_SC_R_MJPEG_DEC_MP>,
> -				<&pd IMX_SC_R_MJPEG_DEC_S0>,
> -				<&pd IMX_SC_R_MJPEG_DEC_S1>,
> -				<&pd IMX_SC_R_MJPEG_DEC_S2>,
> -				<&pd IMX_SC_R_MJPEG_DEC_S3>;
> +				<&pd IMX_SC_R_MJPEG_DEC_S0>;
> +		slot = <0>;

I do not find this 'slot' property in bindings doc.

Shawn

>  	};
>  
>  	jpegenc: jpegenc@58450000 {
>  		reg = <0x58450000 0x00050000>;
> -		interrupts = <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupts = <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
>  		clocks = <&img_jpeg_enc_lpcg IMX_LPCG_CLK_0>,
>  			 <&img_jpeg_enc_lpcg IMX_LPCG_CLK_4>;
>  		clock-names = "per", "ipg";
> @@ -48,10 +40,8 @@ jpegenc: jpegenc@58450000 {
>  				  <&img_jpeg_enc_lpcg IMX_LPCG_CLK_4>;
>  		assigned-clock-rates = <200000000>, <200000000>;
>  		power-domains = <&pd IMX_SC_R_MJPEG_ENC_MP>,
> -				<&pd IMX_SC_R_MJPEG_ENC_S0>,
> -				<&pd IMX_SC_R_MJPEG_ENC_S1>,
> -				<&pd IMX_SC_R_MJPEG_ENC_S2>,
> -				<&pd IMX_SC_R_MJPEG_ENC_S3>;
> +				<&pd IMX_SC_R_MJPEG_ENC_S0>;
> +		slot = <0>;
>  	};
>  
>  	img_jpeg_dec_lpcg: clock-controller@585d0000 {
> -- 
> 2.38.1
> 

