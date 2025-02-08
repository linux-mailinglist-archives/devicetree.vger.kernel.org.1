Return-Path: <devicetree+bounces-144251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D396A2D920
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 23:02:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15E963A5C40
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 22:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B228624113F;
	Sat,  8 Feb 2025 22:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H3/IqjTX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC9AF1A5B80
	for <devicetree@vger.kernel.org>; Sat,  8 Feb 2025 22:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739052135; cv=none; b=bwJx495B7VqEwor6wabbiacqiWW84LpoNeQ5hddvLLzl5jsKvd8/DiItfGq21EmRJUvYHUF7xt44qvp+Zzc7fWyXDQUmpEAUqhtwJH51YNW4PwE33v+U+MQMXFw4iMTb3u/I3YmkNUokOZ8QKkOaaVw+2XdvVUrKVvxI5GzfR8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739052135; c=relaxed/simple;
	bh=PZYYI99jhIEIqaP+P+Fq26AL89DxU2583PVt03DMGQs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DCgwLvuLiICWrCgkNGAlcMGgEtuNX3iz/8aVSZL87rYZqmsQ+IlAXtIbnmAH8gdNXUAtd3tS9ATO4bwTab8c7frJ6NxH4bXAHATCJKD0KEMieY+zB0leHQ1NPL1tlAedNoPJaS0c3KKp+a49GDGbzueowhlFqMDtrE5/PixjZW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H3/IqjTX; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5450681b606so491253e87.0
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 14:02:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739052132; x=1739656932; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WIQpq6SRVuvFzjOMbK2jhLVyaB4vMTGN2KEn5/Ffo+U=;
        b=H3/IqjTXt4AZvx1X4CRN8YQjQg1bs91kE1SbEbf4Z9Dp/GLG2Ew9UfZXHFhdpUa8Bs
         U9mY+1i60WwpSmOdSfs3pUCI0jtKi33zMChnaWoPt4HmgQoeEhvRDsjRZ0hrnsUSJraj
         AX3tNMzkOj+Dubn6RpSOcuWg5Pn+HIEA1i3JIlkms+nogSVm/sM1Vx3Gi3AfHbOKsTpV
         uZEgEUMrHqt8Mz7H2HzeeB/EbhdaA0EpuiywNsseZ2JFTF8E6I5k6ZEhuWYwaasOrviH
         sPRMCfbvhQsWg1a49tQaevNcA9ZAlPGYIz0ySSuBNoSbpwWK9wF+nNvPloI8xlCl4de2
         btig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739052132; x=1739656932;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WIQpq6SRVuvFzjOMbK2jhLVyaB4vMTGN2KEn5/Ffo+U=;
        b=r6SxAitHVgWNb1fOpRve6J7o6lPK3WlE7ArIbEDO8dJRfvIj8XAD3Nj35qSdUgBNLW
         yw41QBLYUEFxMERn/w/XqBqj6rWEd23rJfgXTrZ5a1y42f4aBhv5OFkxOtxMKrbAqbDw
         +emD/PrfJkVls0yBKJYAffDCsN6m48RIz42PV0XnSMlUXQpJMINnPBraO9wZ/pkeom1F
         OSUan0xS2Otd7G6I3Gfi1lwxMWM7ODyPSMkhKkj+7BPpGWTndgEWlmVLXSUzk0fU6SyL
         0Tuo5OlK+ZPcai7+McmlJuGlMtZbPbycrvh4U5ZNBmMPun92ZbHCwXrg6/5SJeNmSAXB
         mCfg==
X-Forwarded-Encrypted: i=1; AJvYcCWD3ju2n/oBTIh7vtxxyXW3dg42DO3y/FC1eg3uonaLojeYdQ4vHDEtB/8PhikFmjwPMeU64W8cBfrj@vger.kernel.org
X-Gm-Message-State: AOJu0YyAasbz8ULO4eO5pDh6G8pbYCeqjbHWJ2jmd5QMqbGHb+4JLBv3
	Py1hfwAm4hFBjnoTst0gIm9WEenJxGkWQKGEaigBZqmm2MwW8pUOJB1D8fG9wcc=
X-Gm-Gg: ASbGnctrzeMc7zJkT45rZqdhIqY2m4g/xdyV/U/9R3mecyik+TwuzGdiQw56ysQR5y+
	RMMZMj9B4IvWCOOc7mhx47FW6373DNmb/5i2RmGSDQckd2PuZvLFq6ZNLHbWDRefuqPe8yCIxBR
	f5NL/pzkaJ2L/gCRcF/eOW6mVS7kXaF9dU/wzgFOXB3UNB+vEJ0sq8BMR1DM+NHOVzbb8g7Bc57
	xvJicK27icTp+XJQGiMkUdS65TEYuU1+QZYJvJ4SWLYYwbXTBX7LimgfrlRG95KKwdsN2Yjqb7F
	LHOt0ukaruL2pUb0i1ToUB7j753dvA5S9pDoIOq07Pk9Psn+oqSl3iPPb+mJqDawN7vmHeU=
X-Google-Smtp-Source: AGHT+IEGKqym5fvj9CtXdUw1nFaJQto9Vstqwb3j/M+lRTuyEhe1tjHO7lGK5RZ6zgQDezCELt/Crg==
X-Received: by 2002:a05:6512:6cc:b0:545:617:6ee0 with SMTP id 2adb3069b0e04-54506177055mr847461e87.33.1739052131696;
        Sat, 08 Feb 2025 14:02:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-544105e5bbdsm832973e87.161.2025.02.08.14.02.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 14:02:10 -0800 (PST)
Date: Sun, 9 Feb 2025 00:02:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Sam Day <me@samcday.com>
Subject: Re: [PATCH] ARM: dts: qcom: msm8960: Add BAM
Message-ID: <3nz6k4oqwpcmu4miohcgv2wlhz3x5hluuytvkhe6txzg2njatx@icgiiyolzt5w>
References: <20250208-expressatt-bam-v1-1-8794ec853442@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250208-expressatt-bam-v1-1-8794ec853442@gmail.com>

On Sat, Feb 08, 2025 at 11:21:40AM -0800, Rudraksha Gupta wrote:
> Copy bam nodes from qcom-ipq8064.dtsi and change
> the regulator values to match msm8960.
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> Co-developed-by: Sam Day <me@samcday.com>
> Signed-off-by: Sam Day <me@samcday.com>
> ---
> To: Bjorn Andersson <andersson@kernel.org>
> To: Konrad Dybcio <konradybcio@kernel.org>
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 28 ++++++++++++++++++++++++++--
>  1 file changed, 26 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> index 865fe7cc39511d7cb9ec5c4b12100404f77e2989..01eed68c8f89b547ff0c173b2ca85a54efa29b7f 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> @@ -275,11 +275,31 @@ rng@1a500000 {
>  			clock-names = "core";
>  		};
>  
> +		sdcc3bam: dma-controller@12182000 {
> +			compatible = "qcom,bam-v1.3.0";
> +			reg = <0x12182000 0x2000>;

APQ8064 has 0x8000 here, but I think 0x2000 should be enough.

> +			interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&gcc SDC3_H_CLK>;
> +			clock-names = "bam_clk";
> +			#dma-cells = <1>;
> +			qcom,ee = <0>;
> +		};

Please keep DT nodes sorted on the @reg part. So sdcc3bam goes after
sdcc3 node, sdcc1bam goes after sdcc1.

> +
> +		sdcc1bam: dma-controller@12402000 {
> +			compatible = "qcom,bam-v1.3.0";
> +			reg = <0x12402000 0x2000>;
> +			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&gcc SDC1_H_CLK>;
> +			clock-names = "bam_clk";
> +			#dma-cells = <1>;
> +			qcom,ee = <0>;
> +		};
> +
>  		sdcc3: mmc@12180000 {
>  			compatible = "arm,pl18x", "arm,primecell";
>  			arm,primecell-periphid = <0x00051180>;
>  			status = "disabled";
> -			reg = <0x12180000 0x8000>;
> +			reg = <0x12180000 0x2000>;
>  			interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&gcc SDC3_CLK>, <&gcc SDC3_H_CLK>;
>  			clock-names = "mclk", "apb_pclk";
> @@ -289,13 +309,15 @@ sdcc3: mmc@12180000 {
>  			max-frequency = <192000000>;
>  			no-1-8-v;
>  			vmmc-supply = <&vsdcc_fixed>;
> +			dmas = <&sdcc3bam 2>, <&sdcc3bam 1>;
> +			dma-names = "tx", "rx";
>  		};
>  
>  		sdcc1: mmc@12400000 {
>  			status = "disabled";
>  			compatible = "arm,pl18x", "arm,primecell";
>  			arm,primecell-periphid = <0x00051180>;
> -			reg = <0x12400000 0x8000>;
> +			reg = <0x12400000 0x2000>;
>  			interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&gcc SDC1_CLK>, <&gcc SDC1_H_CLK>;
>  			clock-names = "mclk", "apb_pclk";
> @@ -305,6 +327,8 @@ sdcc1: mmc@12400000 {
>  			cap-sd-highspeed;
>  			cap-mmc-highspeed;
>  			vmmc-supply = <&vsdcc_fixed>;
> +			dmas = <&sdcc1bam 2>, <&sdcc1bam 1>;
> +			dma-names = "tx", "rx";
>  		};
>  
>  		tcsr: syscon@1a400000 {
> 
> ---
> base-commit: ffd294d346d185b70e28b1a28abe367bbfe53c04
> change-id: 20250208-expressatt-bam-d0ed9863a626
> 
> Best regards,
> -- 
> Rudraksha Gupta <guptarud@gmail.com>
> 

-- 
With best wishes
Dmitry

