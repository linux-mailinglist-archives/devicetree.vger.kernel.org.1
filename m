Return-Path: <devicetree+bounces-216350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7434EB54769
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:28:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5E073BA1D4
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:26:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B1CA2D7DF2;
	Fri, 12 Sep 2025 09:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BcgOVszr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4B329992B
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757668832; cv=none; b=OCKK0p6EW04D05P+cyk3sCePspoGNeb007joRgCgebFlc18gSQrbv+pAwQqVru7dL+vLQG7y01cDWFpBvbnS3jigLD/tV7rX3sEStFsopbxtOp5uPn7+wt/jNjFH6XGNxfqCO3a8bKQR8QWEE0MOhRHrMG5fAQm4QtI/ftdaEWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757668832; c=relaxed/simple;
	bh=+RRd2aFZlOFS202VSsfrM6yuRZpDO2Yo4ZM6NC7Wlgg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sRYdCHEKiHv+rkhSQPXDbN8KOmsl1XcjUB1CoUzSuzcIew+45PkKcuyOUxH+2AmO5R5sSKZ0RWS06kGzFpsZPmwUFs4Getgool1nJ8BRYhrrbvbBXhmMVE1iZbvHWZ0JRNGqfz/BC+rvRyB0F0JN1T9T1kiJSdLUMXjcMt6cYPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BcgOVszr; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45cb6428c46so19790085e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757668828; x=1758273628; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sll6VwA9LDG08bOVdGE11RpaEnaBI9suo9qZQEXHEnQ=;
        b=BcgOVszr4cX2s56S2yuUKpnaTQ4BCKXplvwaxBUTy8w4/VgN97RKSSqE8BJZQkwGLM
         1+y9kuS8Hczbl+6SaXfECwkH7jioB2is+yruJCAfY1wkI2jJguX84aPzkKYIeoAlZ703
         ua6R2zf37gIB5mamkFqJAJKXUOQSk4qnGv4Aae7WcHya1h1AiYs5KwwBfHlxNH1XBMpV
         HA28Kra2Sw1i8QIgLcu6wCCXVggWU3U9dXXBRK5M3Hd5ffdH1jRuF8M7lJmHuVI9zaEq
         eOBfP9a5UJuhQPiG5oKCJFHwZo9ioBGfS/WhaSVkThl/pNJ1/TBao4pmFOsMDH/Xsc7e
         me5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757668828; x=1758273628;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sll6VwA9LDG08bOVdGE11RpaEnaBI9suo9qZQEXHEnQ=;
        b=V6AkpShX0j2eT+UVp/IwO4iuktKVAGvh8/11Wq80lbLfIrp0m13IxryZc/lxvivZNk
         AzqKot9Up3zmLuHQDFWZPtsj5lUjxRLrhCt09ljszt4qggPFPcOI+GuusVQYoK04ZGVH
         gzSauQCkovceQI7CSyCyBu0Xe3ZV0h7NU28Sjh3oYTEFBIYcmz9BvV9VOywUKlOCC4pb
         VwzPH/9sqDDTyhA4QiKFgev3rYTak8GnbLI+POBxhe23hXlEbQHpxm1KojfRD+jMDT/u
         BhyXgkJuu5OF35Io95hWC8841CMgXIByE15XNh5wQ6xZ3v/aVN6lhJYGDhRKKRnuVLxB
         YnPA==
X-Forwarded-Encrypted: i=1; AJvYcCVs3dss00EJTs3yOlm03ighVrnHVLCMvoNre9TBMNsDfL/DDA/K0QgbJcW90qlyD8Xy51WODPKNuXOA@vger.kernel.org
X-Gm-Message-State: AOJu0YxgzWWbFk0t4dMh0aGFOKqUH15+r2NjGnC/7KEsaGDTYDia4VWx
	zlmnctiySDQNoiNY4W90Y7xz8l+KjFVBN1CpOVGrMJ/jBr8B1VeNoI+Dyl36jKKJQgE=
X-Gm-Gg: ASbGncuyOiNrLRr1Qwvq+xmsZU7v3+423lvgpJybl6vM77CoB3d8AgwheH14MTrdf5e
	ZW9dpKnhx2SZEUkphLTLEr0PcH3Igl7yAWD86QVmHeyRJn22OIrqUf3bcVPWD85iPK1UcHOb21K
	ymwQR4WXpizAFZ/V/INDlzlW/zldxWODld4KnJkSgo8urPzJ2Hxh7w0suMcNZ12ELJbKL4+WKQc
	4ZnLNpQ6r7RChqqOWw43zTQLA4GvBXgoYAdzR5Jzp5JwfcIYBeKslnat7eFiW61Aq9n/BHMtXXp
	KA/5s3ZurHRVQ5JxqFH3XHi/SkmAskCzTOR8r6lNJi1arub8UzVKGXfhZjFIVHai3VQXcHg+TzE
	cXRx3t1uo45rngnD0plu6kpq9+wUHJQuPAa9oTzllb9JEAVzEUpjVQLupB7IVQTrTQamwh8hjPJ
	zLuyJK9Nm7RsA+I74dR6Sb6Rj5QpaNHMTaYPyma/fD
X-Google-Smtp-Source: AGHT+IHE+7a3XtW7lEpnoN4PlI4mZCODSy7H+REIbJkPSXZOCUeVGfF9aCWXChHH6hwhx3/N8lVZNw==
X-Received: by 2002:a7b:ca4b:0:b0:45e:395:a3e4 with SMTP id 5b1f17b1804b1-45f211fe9bamr17155685e9.26.1757668828532;
        Fri, 12 Sep 2025 02:20:28 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e037b9215sm55951445e9.12.2025.09.12.02.20.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 02:20:27 -0700 (PDT)
Message-ID: <e7a39867-334b-4e17-a76e-1ee036a80daf@linaro.org>
Date: Fri, 12 Sep 2025 10:20:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: qcom: x1e80100: Add IRIS video codec
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
References: <20250911-x1e-iris-dt-v1-0-63caf0fd202c@linaro.org>
 <20250911-x1e-iris-dt-v1-1-63caf0fd202c@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250911-x1e-iris-dt-v1-1-63caf0fd202c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/09/2025 19:38, Stephan Gerhold wrote:
> Add the IRIS video codec to accelerate video decoding/encoding. Copied
> mostly from sm8550.dtsi, only the opp-table is slightly different for X1E.
> For opp-240000000, we need to vote for a higher OPP on one of the power
> domains, because the voltage requirements for the PLL and the derived
> clocks differ (sm8550.dtsi has the same).
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 87 ++++++++++++++++++++++++++++++++++
>   1 file changed, 87 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index ba602eddfb54616ad38205570bc56a1f0e62c023..d6914165d055cd0c0e80541267e2671c7432799e 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -5234,6 +5234,93 @@ usb_1_ss1_dwc3_ss: endpoint {
>   			};
>   		};
>   
> +		iris: video-codec@aa00000 {
> +			compatible = "qcom,x1e80100-iris", "qcom,sm8550-iris";
> +
> +			reg = <0 0x0aa00000 0 0xf0000>;
> +			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
> +					<&videocc VIDEO_CC_MVS0_GDSC>,
> +					<&rpmhpd RPMHPD_MXC>,
> +					<&rpmhpd RPMHPD_MMCX>;
> +			power-domain-names = "venus",
> +					     "vcodec0",
> +					     "mxc",
> +					     "mmcx";
> +			operating-points-v2 = <&iris_opp_table>;
> +
> +			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
> +				 <&videocc VIDEO_CC_MVS0C_CLK>,
> +				 <&videocc VIDEO_CC_MVS0_CLK>;
> +			clock-names = "iface",
> +				      "core",
> +				      "vcodec0_core";
> +
> +			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
> +					<&mmss_noc MASTER_VIDEO QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "cpu-cfg",
> +					     "video-mem";
> +
> +			memory-region = <&video_mem>;
> +
> +			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
> +			reset-names = "bus";
> +
> +			iommus = <&apps_smmu 0x1940 0>,
> +				 <&apps_smmu 0x1947 0>;
> +			dma-coherent;
> +
> +			/*
> +			 * IRIS firmware is signed by vendors, only
> +			 * enable in boards where the proper signed firmware
> +			 * is available.
> +			 */
> +			status = "disabled";
> +
> +			iris_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-192000000 {
> +					opp-hz = /bits/ 64 <192000000>;
> +					required-opps = <&rpmhpd_opp_low_svs_d1>,
> +							<&rpmhpd_opp_low_svs_d1>;
> +				};
> +
> +				opp-240000000 {
> +					opp-hz = /bits/ 64 <240000000>;
> +					required-opps = <&rpmhpd_opp_svs>,
> +							<&rpmhpd_opp_low_svs>;
> +				};
> +
> +				opp-338000000 {
> +					opp-hz = /bits/ 64 <338000000>;
> +					required-opps = <&rpmhpd_opp_svs>,
> +							<&rpmhpd_opp_svs>;
> +				};
> +
> +				opp-366000000 {
> +					opp-hz = /bits/ 64 <366000000>;
> +					required-opps = <&rpmhpd_opp_svs_l1>,
> +							<&rpmhpd_opp_svs_l1>;
> +				};
> +
> +				opp-444000000 {
> +					opp-hz = /bits/ 64 <444000000>;
> +					required-opps = <&rpmhpd_opp_nom>,
> +							<&rpmhpd_opp_nom>;
> +				};
> +
> +				opp-481000000 {
> +					opp-hz = /bits/ 64 <481000000>;
> +					required-opps = <&rpmhpd_opp_turbo>,
> +							<&rpmhpd_opp_turbo>;
> +				};
> +			};
> +		};
> +
>   		videocc: clock-controller@aaf0000 {
>   			compatible = "qcom,x1e80100-videocc";
>   			reg = <0 0x0aaf0000 0 0x10000>;
> 

Assuming /in/s//on/

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # x1e Inspiron 14p

