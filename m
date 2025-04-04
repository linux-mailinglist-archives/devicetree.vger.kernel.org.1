Return-Path: <devicetree+bounces-163188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4715CA7BC61
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 14:10:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 560A73AD456
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 12:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5D8E1DE4D6;
	Fri,  4 Apr 2025 12:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tuRaU1gz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C14155CB3
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 12:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743768610; cv=none; b=fRkXRi/EZZxIP63ElHT3ag7Mc24jyW8lnY7r4I/JgAW+AdXbptwld9NzgkwciePgCb+G8l3o2+R0eECKzNCSvPcIR8d3Kowt5zaCLjepDXP1ZnTsc/eZiJgPaG6HhENFa65vG4KSfX9BRDD7aZHnBDNsAUc4pWjV3jCLg8gvweY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743768610; c=relaxed/simple;
	bh=MgHuAR2KaGlMfN8tReCPFlabjidLcFBKbOmQATKd/sc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eG/ig4QVpRhrZX8lEcJazl9jIEDQLur1m7XSPySYsHbzy1ZeJ7p+xOD+Mv3i5GCpuDw6j1fqfX/6uGKplfA6slD2tNXPXf7BXJd6ORePcOYOZF9Gw4Q9GcUpKaw1PhyaPXqQ9tqo+hI4mGHkuGOaQqe5dGTWuZT+xbTx/+M6Ixw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tuRaU1gz; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43cf06eabdaso17499525e9.2
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 05:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743768607; x=1744373407; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Uw21iOfeEdk3463J9ORbvRKcjzeh75OKbdf6KpxN7ys=;
        b=tuRaU1gz7yY/UPylGPtFCbmv1QtUpGR/239TkdiecfVRIUMMoZPaYXDPUWI0KoApnC
         C7GP0GVkM4hPJUTgcmNzuzSdf9aI0gahvBckksILQORuPzoo+Yjlv91VOHX63YAL7k4o
         cCSVvRmmlFy87drUwPiLW5qIgVDh+j/eGouXi5tT2Wnyjm51fpZOPmNkvzlfIND7fuNU
         5HXlu+pgwPra/zrP6Pu1fnyo0YUKhnnofQzqMO23/7NvZlfJCen1Lzd6+33LuS4bDJxO
         umgfGGDjBmb7KT6bwlfODoR9X89WbpJCXZ9gJylNLer9UC2UjrkqgCT3FJ7qyIwei1NT
         +PKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743768607; x=1744373407;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Uw21iOfeEdk3463J9ORbvRKcjzeh75OKbdf6KpxN7ys=;
        b=oUzOSi4cVm+KHMbAGSlZQKQxtJ9rz6b10YIw0L5I+m4GAsKIysVRdnJwNJY6o2pTAV
         XbsCVUKWtf9rnni1ndhJK0YhGdvu64kkOhOJzmoDQLXIXb6o5RyLen5BEZb4VioDzTeM
         Tjhe+ttzRSRV5RE3vbNeSmU061Z15oJeiLpqodhURggb6HYD/xT5Uwo/YFo4Y+vXWRFf
         u5jbkzC9/Za/cTs1KGg1VoaoSnWTcAHhS+ay3v19hYFDKGPYBXMIUIOHbLft+x3p3d6b
         PtInB+ZrF9KKRCoYe9z1rp//my/6yHf124HMGYCGYCaQO34CDUe0+6Ujf5NqSf3+WcYo
         oR/g==
X-Forwarded-Encrypted: i=1; AJvYcCXxpJuQVGhJFgpOzMTCfTHzHUDInnxGzKlCudvn262iGaUm4S47RUffZok3A2QE7jQr7Br9kOd4Hsoj@vger.kernel.org
X-Gm-Message-State: AOJu0YyNNmxrQAGnmNkCJwfNa0PL0rwHjbi7/5AfQArS44lXDYQCzfZ1
	o2FLdueSUJ46dckaXDvVOwkrItjKmNuSkdjLL4uqeWPZhJ3jrw2wCytJ0RDLVc0=
X-Gm-Gg: ASbGnctc/KwmmcWbhzzpsxgUlsqn/QzyYG62MkrSQO3T7XPfafYFMSx8XthDQztd35F
	NoaVXFPbXtPvRPtgmXqDDy3sUrWtbu7RvSs/1j1JZbylAyZalXMmJQxd8UzPNWw1xvA94+rIHsO
	ni94Nfn5gf5JSOcQHXO2TZFl5CE7e7S5Cd5EmJkHQ25PQNJcrnFQUH4o8uz3/1vzAkaxSYvNCv8
	vN6hSgafAJQcgsINr/r40Eyeo5MeZ+PrY7oLFlu4hgI10+Ri5Yj8ECCGbMingtOmEWzK6Ttj3rS
	wh2z4Nlu51VwbiJ70ict07EXt3liWaXQzhipGFlkAQooGDUpDSuLSTZo/PHrR5+biXC0wRNh7ot
	9Z6OuBGmD3g==
X-Google-Smtp-Source: AGHT+IGmy1dhSXCxdlE9WpZ8lmIMDAlaM4Cd7sK9OrwG+JdRJ0Iokwp3vZ4pNShGrMEF3QlAaP/nig==
X-Received: by 2002:a05:600c:3103:b0:43d:300f:fa4a with SMTP id 5b1f17b1804b1-43ecf89dd3emr27944265e9.12.1743768607082;
        Fri, 04 Apr 2025 05:10:07 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec3669002sm44795565e9.33.2025.04.04.05.10.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Apr 2025 05:10:06 -0700 (PDT)
Message-ID: <1b649ead-f6d6-4fb0-b5ac-02cf2dba92ca@linaro.org>
Date: Fri, 4 Apr 2025 13:10:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcm2290: Add CCI node
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
 konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 krzk+dt@kernel.org, robh@kernel.org
References: <20250403102256.101217-1-loic.poulain@oss.qualcomm.com>
 <0YH8BNtmMcywwRXI3xHiLyB_zFED-XbjzCyyI1Vc4184BPadVJ-GWj23lpEwaXEHqDPiMiraMsWlOd1qA_hiog==@protonmail.internalid>
 <20250403102256.101217-2-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250403102256.101217-2-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/04/2025 11:22, Loic Poulain wrote:
> Add Camera Control Interface (CCI), supporting two I2C masters.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>   v2: Reorder commits; Update dts properties order and style
>   v3: No change for this patch
> 
>   arch/arm64/boot/dts/qcom/qcm2290.dtsi | 50 +++++++++++++++++++++++++++
>   1 file changed, 50 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> index 7fb5de92bc4c..43fcb4f40a8c 100644
> --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> @@ -557,6 +557,20 @@ qup_uart4_default: qup-uart4-default-state {
>   				bias-disable;
>   			};
> 
> +			cci0_default: cci0-default-state {
> +				pins = "gpio22", "gpio23";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cci1_default: cci1-default-state {
> +				pins = "gpio29", "gpio30";
> +				function = "cci_i2c";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
>   			sdc1_state_on: sdc1-on-state {
>   				clk-pins {
>   					pins = "sdc1_clk";
> @@ -1603,6 +1617,42 @@ adreno_smmu: iommu@59a0000 {
>   			#iommu-cells = <2>;
>   		};
> 
> +		cci: cci@5c1b000 {
> +			compatible = "qcom,qcm2290-cci", "qcom,msm8996-cci";
> +			reg = <0x0 0x5c1b000 0x0 0x1000>;
> +
> +			interrupts = <GIC_SPI 206 IRQ_TYPE_EDGE_RISING>;
> +
> +			clocks = <&gcc GCC_CAMSS_TOP_AHB_CLK>, <&gcc GCC_CAMSS_CCI_0_CLK>;
> +			clock-names = "camss_top_ahb", "cci";

do you not need an axi clock GCC_CAMSS_AXI_CLK ?

> +			assigned-clocks = <&gcc GCC_CAMSS_CCI_0_CLK>;
> +			assigned-clock-rates = <37500000>;
> +
> +			power-domains = <&gcc GCC_CAMSS_TOP_GDSC>;
> +
> +			pinctrl-0 = <&cci0_default &cci1_default>;
> +			pinctrl-names = "default";
> +
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			status = "disabled";
> +
> +			cci_i2c0: i2c-bus@0 {
> +				reg = <0>;
> +				clock-frequency = <400000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +
> +			cci_i2c1: i2c-bus@1 {
> +				reg = <1>;
> +				clock-frequency = <400000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +
>   		mdss: display-subsystem@5e00000 {
>   			compatible = "qcom,qcm2290-mdss";
>   			reg = <0x0 0x05e00000 0x0 0x1000>;
> --
> 2.34.1
> 
> 

other than that

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

