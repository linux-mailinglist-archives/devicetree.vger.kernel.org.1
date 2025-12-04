Return-Path: <devicetree+bounces-244286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EACCCA32FC
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 11:17:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A3A130BC97B
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 10:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 288C629BDA5;
	Thu,  4 Dec 2025 10:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TZrb3UbZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CB12D47E0
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 10:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764843153; cv=none; b=beWIRpBnm6k0S0a2tpr/l/Jtfw5/BOpVvfsbBRjuA05/R3i/BwUlV9ILt/bKsmzQ6tgKvitq4RV/UMGPKdIEJu0fjbIqTuRJEYuMt0tTSCaz0KtWbYr+vnOzuGU4rOntSeqHJWDL8i4hQP79zMTtq2DKUDVuTOCPhgJXnB2PJMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764843153; c=relaxed/simple;
	bh=YsOKJcsmtl9RFh7hYNKyNdZbOe0xkedmQInL8mbPRSs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R949oPz1Flyp4eI/fwpmXjs3OYF4oZ9mOEmy1FlQjMoGk+yvvIFk1CqCaOGMZ4zl5+XYj9etnrHlLG86MO76RH+g1IqTJUmF8+Oa0vh4qhHVx0vZ2ZjdEUysoD0ndi9ktvAarzOM7gG6U/cVeVJlfVeDdJB7Jwp1W9L1YQvw4eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TZrb3UbZ; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso9709275e9.3
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 02:12:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764843148; x=1765447948; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h5IJKMOR/QpkrPjU/TSKi7iLz5hvF1VE+ImUpSffv78=;
        b=TZrb3UbZWrzz5iGniI/tS1BgB8jCitA9TyHl3SqGJb/jjrZgEnCSAFYrWHujZP3mzo
         HreHc7lw5qbRLazmzXsfJNHZcDrB88FVRg0y+ewpbYYIlMoFZMVXLWBRINF/yH01Adwx
         ljdUW3VWlJr5aa5OuiYLPdxhaw3CdQWA23+Z9hXgIPGyZnAm+pEZ22vAtSOXQPST2WgR
         vdELtUCKs7hJHo7cWX9lXNR02WgKaF318Vy3Vhn3eh81oevRlMfsBhYoPafqbOai6+UD
         sqeiJm+vnu+gnmvUoguESMXx+OQSxNuTyFAC+6tuq/JgxhegBcnDFzduk7/iGgUgMTXf
         LMRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764843149; x=1765447949;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h5IJKMOR/QpkrPjU/TSKi7iLz5hvF1VE+ImUpSffv78=;
        b=IWDMJhVHpP3Nrq8jfLJh5f89Da0Iw+iXNVNcPF/D7D3xBaqYJAkv/Y8GxuJGUs0DAs
         1RrCxPRQNO9VIWmbyFjs04awC/6kgyqECgZ/o4gY3Bgwc4jyVlm4X33pETuMHddd5J3i
         QZvEnoIHr+dvFFhyq2wDm4Vv3B2rAIlBTeegfxABV8+H4xcnyZjheOHnb4A+GpC7OMJ3
         zmXDb8jGQxGCD3WFQXKRSCIYQUKLrkFuUlPTD+QY4JaQwZ2NRTIEz1laAO/NN1n1Fn7U
         zRMAT+9DUngyuAbYSm7FO7WfwIfln6m8nMbEfN7jtRO4U65atWqc/Z9U5VqWgzB/GOvi
         D+pw==
X-Forwarded-Encrypted: i=1; AJvYcCX+CVGaPLBck/AwuT1Age7lLzXem4v7L3tK72ZRTQ8mMcsiSOE1PaicuN8F25Bur5YCIGl+w7NqEg9c@vger.kernel.org
X-Gm-Message-State: AOJu0YzcQ5LQ5a+jZ06EMitwbG2oa1cJ6JYZsjRzXkJvWRwt9gae37MQ
	V29hbcSpooNG8R7QnBLoqb3ihXhrcL5CGpVn6sOmr5npLmfvk5LlM47y2bzwY/WeFPQ=
X-Gm-Gg: ASbGncuX9yAoJfWCIEwJj7mbjin5EWQLN4Gh0J6tpDcmxPvCjUwgNJPb3xtkx8IWWWg
	wT1lF//yB+gO7EwIH6frHHMKRJqmz9JEKazz4dGscmBL12VaumkapFbptTqH6yk3zVvvX4HjI06
	W/wZB62rBqNahZBxhvqNYgqcLHpYaSvwmOjC+zT92KEt18srYHsYMNL+RgvQVAhJDAIQxqTMkue
	Ium8qvcbrqit4NJCm5yqmdOUHKmkDK7+mVaEl2nEEht/q2EGqr7uEKIFnud/336rlrJISpXT5oZ
	C96ufrSQPx0KdEIVd5YDWiaHDC2a1Au3S4E8FutYPzx4JYysSqTk1YhIGeJb6pRaab0rIzzK4PA
	AFqscUppQOcU8N8ORqfl4pwqJNh9WBY019Wp1Q37VPMCdRiD3hZ8wrUbheXdWBLZcHm0WUbpMMo
	ovc4f1tBJZkJ/7CG5veplGGEgz8wDKd959tPAPak3DBo9E/aoZDpYF
X-Google-Smtp-Source: AGHT+IEYlkjvwsiRNqlnYZUSP+QZGuJw0WkwmdY/ol3N/6L9iHDLDTn3zlJTS3O0Rq6p/OPfBU737A==
X-Received: by 2002:a05:600c:198d:b0:477:7b30:a6fe with SMTP id 5b1f17b1804b1-4792af32715mr48073775e9.18.1764843148458;
        Thu, 04 Dec 2025 02:12:28 -0800 (PST)
Received: from [192.168.0.27] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47930c7473bsm37420405e9.10.2025.12.04.02.12.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 02:12:27 -0800 (PST)
Message-ID: <0910c813-a6fb-4f9a-b5a0-72c9b005f836@linaro.org>
Date: Thu, 4 Dec 2025 10:12:25 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] arm64: dts: qcom: sm8650: Add CAMSS device tree
 node
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20251204041505.131891-1-vladimir.zapolskiy@linaro.org>
 <20251204041505.131891-2-vladimir.zapolskiy@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251204041505.131891-2-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/12/2025 04:15, Vladimir Zapolskiy wrote:
> Add Qualcomm SM8650 CAMSS device tree node to the platform dtsi file,
> the SM8650 CAMSS IP contains
> * 6 x CSIPHY,
> * 3 x CSID, 2 x CSID Lite,
> * 3 x IFE, 2 x IFE Lite.
> 
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 187 +++++++++++++++++++++++++++
>   1 file changed, 187 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 07ae74851621..06eedd2cd782 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -5380,6 +5380,193 @@ cci2_i2c1: i2c-bus@1 {
>   			};
>   		};
>   
> +		camss: isp@acb6000 {
> +			compatible = "qcom,sm8650-camss";
> +
> +			reg = <0 0x0acb6000 0 0x1000>,
> +			      <0 0x0acb8000 0 0x1000>,
> +			      <0 0x0acba000 0 0x1000>,
> +			      <0 0x0acbc000 0 0x1000>,
> +			      <0 0x0accb000 0 0x1000>,
> +			      <0 0x0acd0000 0 0x1000>,
> +			      <0 0x0ace4000 0 0x2000>,
> +			      <0 0x0ace6000 0 0x2000>,
> +			      <0 0x0ace8000 0 0x2000>,
> +			      <0 0x0acea000 0 0x2000>,
> +			      <0 0x0acec000 0 0x2000>,
> +			      <0 0x0acee000 0 0x2000>,
> +			      <0 0x0ac62000 0 0xf000>,
> +			      <0 0x0ac71000 0 0xf000>,
> +			      <0 0x0ac80000 0 0xf000>,
> +			      <0 0x0accc000 0 0x2000>,
> +			      <0 0x0acd1000 0 0x2000>;
> +			reg-names = "csid_wrapper",
> +				    "csid0",
> +				    "csid1",
> +				    "csid2",
> +				    "csid_lite0",
> +				    "csid_lite1",
> +				    "csiphy0",
> +				    "csiphy1",
> +				    "csiphy2",
> +				    "csiphy3",
> +				    "csiphy4",
> +				    "csiphy5",
> +				    "vfe0",
> +				    "vfe1",
> +				    "vfe2",
> +				    "vfe_lite0",
> +				    "vfe_lite1";
> +
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CPAS_FAST_AHB_CLK>,
> +				 <&camcc CAM_CC_CPAS_IFE_0_CLK>,
> +				 <&camcc CAM_CC_CPAS_IFE_1_CLK>,
> +				 <&camcc CAM_CC_CPAS_IFE_2_CLK>,
> +				 <&camcc CAM_CC_CPAS_IFE_LITE_CLK>,
> +				 <&camcc CAM_CC_CSID_CLK>,
> +				 <&camcc CAM_CC_CSIPHY0_CLK>,
> +				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSIPHY1_CLK>,
> +				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSIPHY2_CLK>,
> +				 <&camcc CAM_CC_CSI3PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSIPHY3_CLK>,
> +				 <&camcc CAM_CC_CSI4PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSIPHY4_CLK>,
> +				 <&camcc CAM_CC_CSI5PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSIPHY5_CLK>,
> +				 <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
> +				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
> +				 <&camcc CAM_CC_QDSS_DEBUG_XO_CLK>,
> +				 <&camcc CAM_CC_IFE_0_CLK>,
> +				 <&camcc CAM_CC_IFE_0_FAST_AHB_CLK>,
> +				 <&camcc CAM_CC_IFE_1_CLK>,
> +				 <&camcc CAM_CC_IFE_1_FAST_AHB_CLK>,
> +				 <&camcc CAM_CC_IFE_2_CLK>,
> +				 <&camcc CAM_CC_IFE_2_FAST_AHB_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_CSID_CLK>;
> +			clock-names = "camnoc_axi",
> +				      "cpas_ahb",
> +				      "cpas_fast_ahb",
> +				      "cpas_vfe0",
> +				      "cpas_vfe1",
> +				      "cpas_vfe2",
> +				      "cpas_vfe_lite",
> +				      "csid",
> +				      "csiphy0",
> +				      "csiphy0_timer",
> +				      "csiphy1",
> +				      "csiphy1_timer",
> +				      "csiphy2",
> +				      "csiphy2_timer",
> +				      "csiphy3",
> +				      "csiphy3_timer",
> +				      "csiphy4",
> +				      "csiphy4_timer",
> +				      "csiphy5",
> +				      "csiphy5_timer",
> +				      "csiphy_rx",
> +				      "gcc_axi_hf",
> +				      "qdss_debug_xo",
> +				      "vfe0",
> +				      "vfe0_fast_ahb",
> +				      "vfe1",
> +				      "vfe1_fast_ahb",
> +				      "vfe2",
> +				      "vfe2_fast_ahb",
> +				      "vfe_lite",
> +				      "vfe_lite_ahb",
> +				      "vfe_lite_cphy_rx",
> +				      "vfe_lite_csid";
> +
> +			interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING 0>,
> +				     <GIC_SPI 603 IRQ_TYPE_EDGE_RISING 0>,
> +				     <GIC_SPI 431 IRQ_TYPE_EDGE_RISING 0>,
> +				     <GIC_SPI 605 IRQ_TYPE_EDGE_RISING 0>,
> +				     <GIC_SPI 376 IRQ_TYPE_EDGE_RISING 0>,
> +				     <GIC_SPI 477 IRQ_TYPE_EDGE_RISING 0>,
> +				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING 0>,
> +				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING 0>,
> +				     <GIC_SPI 448 IRQ_TYPE_EDGE_RISING 0>,
> +				     <GIC_SPI 122 IRQ_TYPE_EDGE_RISING 0>,
> +				     <GIC_SPI 89 IRQ_TYPE_EDGE_RISING 0>,
> +				     <GIC_SPI 602 IRQ_TYPE_EDGE_RISING 0>,
> +				     <GIC_SPI 604 IRQ_TYPE_EDGE_RISING 0>,
> +				     <GIC_SPI 688 IRQ_TYPE_EDGE_RISING 0>,
> +				     <GIC_SPI 606 IRQ_TYPE_EDGE_RISING 0>,
> +				     <GIC_SPI 377 IRQ_TYPE_EDGE_RISING 0>;
> +			interrupt-names = "csid0",
> +					  "csid1",
> +					  "csid2",
> +					  "csid_lite0",
> +					  "csid_lite1",
> +					  "csiphy0",
> +					  "csiphy1",
> +					  "csiphy2",
> +					  "csiphy3",
> +					  "csiphy4",
> +					  "csiphy5",
> +					  "vfe0",
> +					  "vfe1",
> +					  "vfe2",
> +					  "vfe_lite0",
> +					  "vfe_lite1";
> +
> +			interconnects = <&gem_noc MASTER_APPSS_PROC 0
> +					 &config_noc SLAVE_CAMERA_CFG 0>,
> +					<&mmss_noc MASTER_CAMNOC_HF 0
> +					 &mc_virt SLAVE_EBI1 0>;
> +			interconnect-names = "ahb",
> +					     "hf_mnoc";
> +
> +			iommus = <&apps_smmu 0x800 0x20>,
> +				 <&apps_smmu 0x18a0 0x40>,
> +				 <&apps_smmu 0x1860 0x00>;
> +
> +			power-domains = <&camcc CAM_CC_IFE_0_GDSC>,
> +					<&camcc CAM_CC_IFE_1_GDSC>,
> +					<&camcc CAM_CC_IFE_2_GDSC>,
> +					<&camcc CAM_CC_TITAN_TOP_GDSC>;
> +			power-domain-names = "ife0", "ife1", "ife2", "top";
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
> +
> +				port@2 {
> +					reg = <2>;
> +				};
> +
> +				port@3 {
> +					reg = <3>;
> +				};
> +
> +				port@4 {
> +					reg = <4>;
> +				};
> +
> +				port@5 {
> +					reg = <5>;
> +				};
> +			};
> +		};
> +
>   		camcc: clock-controller@ade0000 {
>   			compatible = "qcom,sm8650-camcc";
>   			reg = <0 0x0ade0000 0 0x20000>;
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

