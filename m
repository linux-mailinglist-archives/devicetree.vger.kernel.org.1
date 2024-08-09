Return-Path: <devicetree+bounces-92337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E6194CC76
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 10:41:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D25C1C20E4B
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 08:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7C4918E02F;
	Fri,  9 Aug 2024 08:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p+VuTe2X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A331667ED
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 08:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723192908; cv=none; b=Bine8zAeahmjoYIpgY5Tu96E4/ypigScX7SLLxGz0DVH5fy3mP1jxr5Vcj+urcSCqzIEm/+/YPvIqbAYZGqP5lsRdO7CkgHtkBUJySN4BLObqDZsz8IEtBvufuaQDpnHQywsdawbDsdOSbBe0Cv+dvSn88T3frgGICpToIgB/kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723192908; c=relaxed/simple;
	bh=j/S13d0Z0pYbxJ1hefT/rX+m7h2ctUfYuOzuzKDKYlM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nylkoo0FAKG7c0UEg3ggQk6KZX8F0VqX/YeSyv7MyeQFsJtBhZGuPI8eOWIyN77gZs78zw8VMEoBaXIVOhms4KSNdO7fwGnQ6aTNMiK69mGtGKTmNJ7p6+IX7j0aHXt9n2HZ+ZD4aRnzM1DqcWAELXCcmSIiBkuONL45mNNwjW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p+VuTe2X; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a7d89bb07e7so216570866b.3
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2024 01:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723192905; x=1723797705; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=igOkBgZd7zG3j/GyqH3kh4WPbZ555PZKYMSCL8FnoCE=;
        b=p+VuTe2XeawnOmXqFJhNS+Cb3wj91ONg75BZdUPV1jqvfLSiKUI3qUWRfnVyfcLYBx
         VC69nTojmVmy5QLp5n+y9mTMjSNmzshP2tahhIulLitTLGe4JqyTy0n64JZA8eEvlgvR
         PIlv715Ec/NyNCsBToeCpmzbdJI3rRrrXM1m0zuJbgEBC4kpwkcvsEZQg6WUUgtQh8Ca
         q7d7p7QkULU9W61hBj5IkpuYsgNPB3dVE9qn8S2EpFUTQtZpClCAoP+lXd9Es66euCxp
         xo74GnoJBLMWCIUmxMggLXFNAlpnAV3As/2wDEL8LmBP9ij9ggisiwNeFwNPuBhTYxoH
         2UEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723192905; x=1723797705;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=igOkBgZd7zG3j/GyqH3kh4WPbZ555PZKYMSCL8FnoCE=;
        b=dGSuuYFloXb+H7w5iSi6JBqqR19mupjkJD5YcKvBwv3/bFaL0Xczu4xJox6p3YlwAC
         y/u9pHcsgVjJM2P3aanTwDlJ1l+eZhHY/O++I/+s53fxf5ypz0nhg9O4HlwbiFKzGIVW
         vSSxqcQ7nzp7lJV9ocKoK52kKEaazPYHJbPLCjcZauRN4vfmn53xcujrmnNw66mAIduG
         9diaS3wSCA8/V3hyKV5qFztj843KXSK07I7gGTQLtZWVHpwirhS8NTqCDJ5nqzXhnHU+
         wPALBiPrBFsBbvwGnVbtalT6PbBBJRhjYAqXfwvVJbHjJkKj/BVsFKFL7k6XONXhzFMu
         Stdw==
X-Forwarded-Encrypted: i=1; AJvYcCX+bBZBErUpiw8EU1RFC6Dr4+UFdr2Qrol03WvppDUYz7UsdalEXicE+dxG1hCP1r1kJ1YxdmPlBAEPhM01sepNiHJvPiXOIuNoHQ==
X-Gm-Message-State: AOJu0Yz2pDyQ7b4R9rgMFlVyFxM2lmeyeSMQ0QRFMA0WIkrJKTm0mTGi
	lEDw2ugf90SHFuO7Qy0BYTB8SgXsaufgb9arPlGJafC3WURhzNLIrp9QmudH0Qo=
X-Google-Smtp-Source: AGHT+IHDTfZHQA6DtLuqsLz9Hf4m6jUvCYCNbaS4ALlr+hOs22VeUrtBxQRoVGIhejmLy79jxfiviA==
X-Received: by 2002:a17:907:97c3:b0:a7a:abd8:77a5 with SMTP id a640c23a62f3a-a80aa654862mr66716566b.43.1723192905091;
        Fri, 09 Aug 2024 01:41:45 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff1f:b280:8395:bc08:2fce:1f21])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8067efcf0fsm335600666b.145.2024.08.09.01.41.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2024 01:41:44 -0700 (PDT)
Date: Fri, 9 Aug 2024 10:41:39 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <quic_kdybcio@quicinc.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: x1e80100: Add UART2
Message-ID: <ZrXWPQVXfdL-QLnt@linaro.org>
References: <20240809-topic-sl7-v1-0-2090433d8dfc@quicinc.com>
 <20240809-topic-sl7-v1-3-2090433d8dfc@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240809-topic-sl7-v1-3-2090433d8dfc@quicinc.com>

On Fri, Aug 09, 2024 at 03:43:22AM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <quic_kdybcio@quicinc.com>
> 
> GENI SE2 within QUP0 is used as UART on some devices, describe it.
> 
> Signed-off-by: Konrad Dybcio <quic_kdybcio@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 52 ++++++++++++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 326283822aee..a2a011702752 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -2142,6 +2142,28 @@ &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>,
>  				status = "disabled";
>  			};
>  
> +			uart2: serial@b88000 {
> +				compatible = "qcom,geni-uart";
> +				reg = <0 0x00b88000 0 0x4000>;
> +
> +				interrupts = <GIC_SPI 584 IRQ_TYPE_LEVEL_HIGH>;
> +
> +				clocks = <&gcc GCC_QUPV3_WRAP0_S2_CLK>;
> +				clock-names = "se";
> +
> +				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
> +						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
> +						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +						 &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>;
> +				interconnect-names = "qup-core",
> +						     "qup-config";
> +
> +				pinctrl-0 = <&qup_uart2_default>;
> +				pinctrl-names = "default";
> +
> +				status = "disabled";
> +			};
> +
>  			spi2: spi@b88000 {
>  				compatible = "qcom,geni-spi";
>  				reg = <0 0x00b88000 0 0x4000>;
> @@ -5365,6 +5387,36 @@ qup_spi23_data_clk: qup-spi23-data-clk-state {
>  				bias-disable;
>  			};
>  
> +			qup_uart2_default: qup-uart2-default-state {
> +				cts-pins {
> +					pins = "gpio8";
> +					function = "qup0_se2";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +
> +				rts-pins {
> +					pins = "gpio9";
> +					function = "qup0_se2";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +
> +				tx-pins {
> +					pins = "gpio10";
> +					function = "qup0_se2";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +
> +				rx-pins {
> +					pins = "gpio11";
> +					function = "qup0_se2";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};

Can you combine these into a single entry, i.e.

				pins = "gpio8", "gpio9", "gpio10", "gpio11";

if they are all the same?

Thanks,
Stephan

