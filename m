Return-Path: <devicetree+bounces-178966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F01A3ABE393
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 21:23:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C20A4188C30A
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 19:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAB4628137B;
	Tue, 20 May 2025 19:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JeK9J3Lg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6BF26C3AD
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 19:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747768989; cv=none; b=Sa7QeZWibJyD8hGGjkVRP/mMB57BJfQtjNFNq15Lea9ZyZpvamQDrBZssk0IOF65xO1dsxMANVfvv1LMxHr9ZUPaURFhj5JlK+1mXp6p3b2/P75yICxeHVZlPxIBrHC8h1NS/bz8g2voY4kiwDULcvJXZzBjUknGkDoJ9tkHhuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747768989; c=relaxed/simple;
	bh=6TpMFpCkvPlOBB1LUpUcgY4bTOER3f6ER+4lCQZhmLA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UhZz13b2zRAtpZBpUO9AwQd9hRABAmFO8N9HMQtcxVrlaU+0WUmwaXaamSNy4x6nMJnO46A1vImrDk2pqfMcXhLrB9F/3OL4b7JxyuVVUoZLIL8HOvQjxmT/2QsH4ciPN5ULLO6oFSq5G15H2wTA5LQIbIGoIWistLrBSa/pfDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JeK9J3Lg; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-442ea341570so41319455e9.1
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 12:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747768985; x=1748373785; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DEQqD52q2NALuN6cUeSz+An4w/k2P2qH9VlxWKEpCBo=;
        b=JeK9J3Lg/mnzX/6KCR9jsKZTXNUYMCZIxLxm0afTXLif/G2r2DKtqoxBAOamFSwfCl
         bg5FDPGi84K89TrL/4LmPLjPEpnlgU7tw40Mzdh0/uScgLhUuWOquGUTa4eb6tA5xq3p
         nIbIoADmQLtV+fNm1JjoqaSh96TcWmjNdrcPefQWbGdCW4G3zkFOtzNAa4V8ca4p4ENu
         /8CC6ZaJWJVSztpQVdSDxPcltTn0/FhXxPN9pDHc24VX3hsbsOlWPIaW9Akj18ucqap9
         SyDxuhvHjcgfy+QUyctaYLtTDFRH4zQr2RXoM4K8pxTtuyOFuKMQSVOgqh8SlEPz4tH4
         YdXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747768985; x=1748373785;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DEQqD52q2NALuN6cUeSz+An4w/k2P2qH9VlxWKEpCBo=;
        b=qU15ewf/gl6S09DNNuNccRGCMbi89FcNa8xabmIZpnHnC1NnVPGCGlhnxsLAqe8STs
         /8QQDOnJAEpIFQh51TUymInE8GpjWE3O1nGi6ErI9G+qtxB0U3n3/mM2yEgZMCvK5qfK
         B7EA9hONjAex+rflH96wV4NtnwtveNTRDoCfrbOe3Lz6/j/tGLFt8jL6+psfsGlPOhsg
         8SH8CWnX8UDlRa+IK4Dwv5DTQ1ALSFHQSrU7sjTy4GsvJlPLf2IFXcKgQLrDyBGeABEA
         f1srSpFfQhzrhpCL9zmFe2k5y5KR4fabLK4hDQ5+J/BdSgCKHdHUEuh+M/ONro1f7a24
         9+QQ==
X-Forwarded-Encrypted: i=1; AJvYcCWv11Qpy/ZdHAQrdsSXJ825As0VzHkC2fIatA3eZroNsotQeUF3Ruc8xq4xWPq90NyadlL2wTXqNbKA@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl6NE2jDIOSbOtRrG05QOV7cfy6/ufSZlWjbYyxtKF7clLL6DY
	hjKjedN/WDhl/aeR4ihnX6JEtr03a/ktvvxqkAOtFjgMQ5h1wf9AqZEsLHF5x/ZCQwI=
X-Gm-Gg: ASbGncv4pufS83z0uWOjWG4hX79t4zrrqKUm9CxOEdOymdV9KR3wMzztQNf956SbI4e
	wB8vxRD2iHH/qfpUjEd4K1Ww93NEJCRa6zyWIpU5BIUv2TC8jaeX8bObJUeeIWZ/S3OwjjAIoqC
	FmlvDnK9xt8a1uvAVTb02XsINWrOdTqPn7jMrFQwWuqnA20I9ir8/a3ySDUHHwlkqGjiV2fq0NS
	daPGR9iL5kidhdVK4DQuvKK37FfL9heo3wiGuZuUQTlPknR+4MNoN8o+B8Odc3KiQdCRMKqoM+J
	aQGjrzu71t9fSlszXC1b1iC6IBFOA7+UBQtyvhokTt0YSCHUGxvH4NvU5CtgwWbr5DgqGW6buZv
	OR1sjavMrcreBqOnx
X-Google-Smtp-Source: AGHT+IFwOQPaUdnYjUJBW7Emm8xsOX6wZ/BiXVqB9Lb7mrsUU/C2TXbeEKHckZsAwsskXj3/Upkusw==
X-Received: by 2002:a05:600c:3ba1:b0:43d:b3:f95 with SMTP id 5b1f17b1804b1-442ff03c1f7mr125915125e9.28.1747768985048;
        Tue, 20 May 2025 12:23:05 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f3dd94f1sm43381335e9.35.2025.05.20.12.23.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 12:23:04 -0700 (PDT)
Message-ID: <30dd203f-d7e7-420a-b310-2c36869f3aa8@linaro.org>
Date: Tue, 20 May 2025 20:23:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: msm8939: Add camss and cci
To: vincent.knecht@mailoo.org, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250520-camss-8x39-vbif-v1-0-a12cd6006af9@mailoo.org>
 <20250520-camss-8x39-vbif-v1-4-a12cd6006af9@mailoo.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250520-camss-8x39-vbif-v1-4-a12cd6006af9@mailoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/05/2025 19:39, Vincent Knecht via B4 Relay wrote:
> From: Vincent Knecht <vincent.knecht@mailoo.org>
> 
> Add the camera subsystem and CCI used to interface with cameras on the
> Snapdragon 615.
> 
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
> ---
>   arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi |   4 +
>   arch/arm64/boot/dts/qcom/msm8939.dtsi        | 152 +++++++++++++++++++++++++++
>   2 files changed, 156 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi
> index adb96cd8d643e5fde1ac95c0fc3c9c3c3efb07e8..659d127b1bc3570d137ca986e4eacf600c183e5e 100644
> --- a/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi
> @@ -11,6 +11,10 @@
>   #include "msm8939.dtsi"
>   #include "pm8916.dtsi"
>   
> +&camss {
> +	vdda-supply = <&pm8916_l2>;
> +};
> +
>   &mdss_dsi0 {
>   	vdda-supply = <&pm8916_l2>;
>   	vddio-supply = <&pm8916_l6>;
> diff --git a/arch/arm64/boot/dts/qcom/msm8939.dtsi b/arch/arm64/boot/dts/qcom/msm8939.dtsi
> index 68b92fdb996c26e7a1aadedf0f52e1afca85c4ab..af4d865b6858f13559838031910bee37b58aca3c 100644
> --- a/arch/arm64/boot/dts/qcom/msm8939.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8939.dtsi
> @@ -1434,6 +1434,151 @@ mdss_dsi1_phy: phy@1aa0300 {
>   			};
>   		};
>   
> +		camss: camss@1b0ac00 {

isp@

> +			compatible = "qcom,msm8939-camss";
> +			reg = <0x01b0ac00 0x200>,
<0x01b0ac00 0x0 0x200 0x0>

> +			      <0x01b00030 0x4>,
> +			      <0x01b0b000 0x200>,
> +			      <0x01b00038 0x4>,
> +			      <0x01b08000 0x100>,
> +			      <0x01b08400 0x100>,
> +			      <0x01b08800 0x100>,
> +			      <0x01b0a000 0x500>,
> +			      <0x01b00020 0x10>,
> +			      <0x01b10000 0x1000>,
> +			      <0x01b40000 0x200>;
> +			reg-names = "csiphy0",
> +				    "csiphy0_clk_mux",
> +				    "csiphy1",
> +				    "csiphy1_clk_mux",
> +				    "csid0",
> +				    "csid1",
> +				    "csid2",
> +				    "ispif",
> +				    "csi_clk_mux",
> +				    "vfe0",
> +				    "vfe0_vbif";
> +
> +			interrupts = <GIC_SPI 78 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 79 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 51 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 52 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 153 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 55 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 57 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "csiphy0",
> +					  "csiphy1",
> +					  "csid0",
> +					  "csid1",
> +					  "csid2",
> +					  "ispif",
> +					  "vfe0";
> +
> +			power-domains = <&gcc VFE_GDSC>;
> +
> +			clocks = <&gcc GCC_CAMSS_TOP_AHB_CLK>,
> +				 <&gcc GCC_CAMSS_ISPIF_AHB_CLK>,
> +				 <&gcc GCC_CAMSS_CSI0PHYTIMER_CLK>,
> +				 <&gcc GCC_CAMSS_CSI1PHYTIMER_CLK>,
> +				 <&gcc GCC_CAMSS_CSI0_AHB_CLK>,
> +				 <&gcc GCC_CAMSS_CSI0_CLK>,
> +				 <&gcc GCC_CAMSS_CSI0PHY_CLK>,
> +				 <&gcc GCC_CAMSS_CSI0PIX_CLK>,
> +				 <&gcc GCC_CAMSS_CSI0RDI_CLK>,
> +				 <&gcc GCC_CAMSS_CSI1_AHB_CLK>,
> +				 <&gcc GCC_CAMSS_CSI1_CLK>,
> +				 <&gcc GCC_CAMSS_CSI1PHY_CLK>,
> +				 <&gcc GCC_CAMSS_CSI1PIX_CLK>,
> +				 <&gcc GCC_CAMSS_CSI1RDI_CLK>,
> +				 <&gcc GCC_CAMSS_CSI2_AHB_CLK>,
> +				 <&gcc GCC_CAMSS_CSI2_CLK>,
> +				 <&gcc GCC_CAMSS_CSI2PHY_CLK>,
> +				 <&gcc GCC_CAMSS_CSI2PIX_CLK>,
> +				 <&gcc GCC_CAMSS_CSI2RDI_CLK>,
> +				 <&gcc GCC_CAMSS_AHB_CLK>,
> +				 <&gcc GCC_CAMSS_VFE0_CLK>,
> +				 <&gcc GCC_CAMSS_CSI_VFE0_CLK>,
> +				 <&gcc GCC_CAMSS_VFE_AHB_CLK>,
> +				 <&gcc GCC_CAMSS_VFE_AXI_CLK>;
> +			clock-names = "top_ahb",
> +				      "ispif_ahb",
> +				      "csiphy0_timer",
> +				      "csiphy1_timer",
> +				      "csi0_ahb",
> +				      "csi0",
> +				      "csi0_phy",
> +				      "csi0_pix",
> +				      "csi0_rdi",
> +				      "csi1_ahb",
> +				      "csi1",
> +				      "csi1_phy",
> +				      "csi1_pix",
> +				      "csi1_rdi",
> +				      "csi2_ahb",
> +				      "csi2",
> +				      "csi2_phy",
> +				      "csi2_pix",
> +				      "csi2_rdi",
> +				      "ahb",
> +				      "vfe0",
> +				      "csi_vfe0",
> +				      "vfe_ahb",
> +				      "vfe_axi";
> +
> +			iommus = <&apps_iommu 3>;
> +
> +			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +				};
> +			};
> +		};
> +
> +		cci: cci@1b0c000 {
> +			compatible = "qcom,msm8916-cci", "qcom,msm8226-cci";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x01b0c000 0x1000>;
> +			interrupts = <GIC_SPI 50 IRQ_TYPE_EDGE_RISING>;
> +
> +			clocks = <&gcc GCC_CAMSS_ISPIF_AHB_CLK>,
> +				 <&gcc GCC_CAMSS_TOP_AHB_CLK>,
> +				 <&gcc GCC_CAMSS_CCI_AHB_CLK>,
> +				 <&gcc GCC_CAMSS_CCI_CLK>,
> +				 <&gcc GCC_CAMSS_AHB_CLK>;
> +			clock-names = "ispif_ahb",
> +				      "camss_top_ahb",
> +				      "cci_ahb",
> +				      "cci",
> +				      "camss_ahb";
> +
> +			assigned-clocks = <&gcc GCC_CAMSS_ISPIF_AHB_CLK>,
> +					  <&gcc GCC_CAMSS_CCI_CLK>;
> +			assigned-clock-rates = <80000000>,
> +					       <19200000>;
> +
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&cci0_default>;
> +
> +			status = "disabled";
> +
> +			cci_i2c0: i2c-bus@0 {
> +				reg = <0>;
> +				clock-frequency = <400000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +
>   		gpu: gpu@1c00000 {
>   			compatible = "qcom,adreno-405.0", "qcom,adreno";
>   			reg = <0x01c00000 0x10000>;
> @@ -1498,6 +1643,13 @@ apps_iommu: iommu@1ef0000 {
>   			#iommu-cells = <1>;
>   			qcom,iommu-secure-id = <17>;
>   
> +			/* vfe */
> +			iommu-ctx@3000 {
> +				compatible = "qcom,msm-iommu-v1-sec";
> +				reg = <0x3000 0x1000>;
> +				interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
> +			};
> +
>   			/* mdp_0: */
>   			iommu-ctx@4000 {
>   				compatible = "qcom,msm-iommu-v1-ns";
> 


