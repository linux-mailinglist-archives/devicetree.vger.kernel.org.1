Return-Path: <devicetree+bounces-157009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D482AA5E642
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 22:09:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED8381632B9
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 21:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF70D1E9B32;
	Wed, 12 Mar 2025 21:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fOh+ayNS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCCDE1ADC6C
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 21:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741813735; cv=none; b=X0CZ1u54HE/AGLCAJSGCUUzWD2FXlxhQ0UOhwT66iLNewuez7s5sTz0qRvBmvOb12b58DESwXoSUbr9uZ1kvnhn8mfYbX032yCD8AzJxkMZ62v+mCCNcmiJOrNA+YMri8KJmdTJWiDfg1VhDtlqDKDlh78jO+0SzAtfa0LKKHaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741813735; c=relaxed/simple;
	bh=2SADhtRscCayEWIilVsOvVg+MYIKsQ1fFuXlAmHgLmo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lH8baXZMKHI+g33H3ChggApi7UMG8rBZDvf6eFw9MPLm4pj7KMnAMcaYIbF6ZhuZRJBPir1PwYlG5lKJL8Hac23z0prBC/9ON4xb79yWUQLzcy7ycfHlXH1abwAtLKj8Vh+mhGt854QEkQisN8XTJgzwv9M/2AfHp4l/haWOjqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fOh+ayNS; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5dccaaca646so575885a12.0
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 14:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741813732; x=1742418532; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IsN0yxxswAlGhNym0IDJR3BHiKwcdQHi9QIjjoxz35M=;
        b=fOh+ayNS2cpEo069ObI+/hJLmsJBvzIAhU6ObbZbqvB6dNcunNkKoSkhqEPfkDi1Lg
         8iGczDQIUx91PZb6zbTypn95XEeWdAJR0KrTYEY2uquxI5vJmAUKj1e10UvkPJPoM4Xy
         Azfl/JPju/u5lVADhcdV+nQhBstu0xNQ7uKCQMvDSGkSGhFrJciH0bIucPW/rdOmVDxc
         qWqth3F5fukMfAaenZLbIi7zCBKImvmyuhmUwnVKNUkKwfUQzYdvwpg72h58RVxayib3
         Yt80g0P963VUEabCQqDkqgiHsRYwiA+F+ltyc3l9vyUo9gRSVYKIfiIBtGc3AzoYt8iJ
         Et0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741813732; x=1742418532;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IsN0yxxswAlGhNym0IDJR3BHiKwcdQHi9QIjjoxz35M=;
        b=MgLvgU8HNqHqOiY3DacdNgsTJVA+GVqDfNkAYSIEhzH5RJf5zEbZJV/nyyVZi8jqiS
         XitTSqq6SjOoQ6be1pV/BZXBR15DujKXiA7KORoQ9oFOM0SS7Kvx/iuBMxJwLdZ5nA3k
         eW6iE9P+eP8jolNJ9/csWNhD8eyBKufKAWrQOdf1i9u6R+ppfHAtq4w3RjpIphLd1EKy
         aa8CEXs4hE61nBOnDJoAThcRbWqhqEGwvMWz8Q467VKe/1G2u3spOctQitOPpTGZ9bXp
         N2rtgYCYru84mzot6/rrf4XcD36nqZd3mx9RP0iAjQ46qzQmuxb81xWOyMwxgsbUdX20
         qvUw==
X-Forwarded-Encrypted: i=1; AJvYcCU30S4s0n1Lj6+Ivfd4qsQH5v0+pkQkeeOHdDSNkT1JsgHaX6U7aKeBnU2XPtQsKevFmBZLGqAPecbM@vger.kernel.org
X-Gm-Message-State: AOJu0YxHglUTWvxxuxJlzJ9iyvu68WWqGuIFBOMrPu8j8Cnwk2rb26RL
	V79AnQpSZgUqAxhpTnSw4Se+QNA5WKAKipfupd9Ko+xSVLcmHKtvUhcgZ3ZFGK8=
X-Gm-Gg: ASbGncu5GLTtyNsRop1Virxav6uk8lQidzDHecsNGWr9NSbuN2vvGpQCruXTfISbXIW
	kB9orxq5PeSP9c3McW8kDEqYDiJmMF67sFiQ7Nl2jXT1RUMGnoq0aDjLas+2UflXLk965cD0mgh
	1bc1iYUVm2to9Hb1wRF3AFEPZr1fHq9TXaMxuPu9s/mqtCXx5VysFYhIOW30PVx6u1XXPdTb9j5
	mf8J1MKTuustlZPxeiYm2slo76l6G11Ac7A5/YR/Fc62RmwyeTsY1G4JZC8g1JLwkTyE0/47WYg
	FcI5Vb5vgCREKDYvrsBNvhte9D8Jsrr+OfZQckk/+Dr0SyIX1PRbjrZfoLLjj4aG34VLzHSc84f
	HMe751FYvtmRW3FyOzGoAX9G1nROOZbjL7PfUWWYG9T2ZNmNWK99pwAnTpW9Ufe/srALwFnao5c
	43j6J2JsUUzu1TXRBrKTYLORc803MoqDk=
X-Google-Smtp-Source: AGHT+IGu9QSi3oHsmEZcocabYYmsMoC3bELw0Bk9y7r00YGcGUiF1uhL8B16Ug87tfivCjf/Yx1FNQ==
X-Received: by 2002:a05:6402:278f:b0:5e7:87cd:2479 with SMTP id 4fb4d7f45d1cf-5e814e26e0bmr40071a12.8.1741813732063;
        Wed, 12 Mar 2025 14:08:52 -0700 (PDT)
Received: from ?IPV6:2001:1c06:2302:5600:7555:cca3:bbc4:648b? (2001-1c06-2302-5600-7555-cca3-bbc4-648b.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:7555:cca3:bbc4:648b])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5c74a8f3bsm10361448a12.44.2025.03.12.14.08.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Mar 2025 14:08:51 -0700 (PDT)
Message-ID: <2ac587e5-374b-4486-b6f5-6b23f37da973@linaro.org>
Date: Wed, 12 Mar 2025 21:08:50 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8650: Add CAMSS block definition
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250312001132.1832655-1-vladimir.zapolskiy@linaro.org>
 <20250312001132.1832655-3-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250312001132.1832655-3-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/03/2025 00:11, Vladimir Zapolskiy wrote:
> Add SM8650 CAMSS device tree node to the platform dtsi file,
> it contains of
> * 6 x CSIPHY
> * 3 x CSID
> * 2 x CSID Lite
> * 3 x IFE
> * 2 x IFE Lite
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 184 +++++++++++++++++++++++++++
>   1 file changed, 184 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 719ad437756a..bf5e238a93c3 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -4903,6 +4903,190 @@ cci2_i2c1: i2c-bus@1 {
>   			};
>   		};
>   
> +		camss: isp@acb8000 {
> +			compatible = "qcom,sm8650-camss";
> +			reg = <0 0x0acb8000 0 0x1000>,
> +			      <0 0x0acba000 0 0x1000>,
> +			      <0 0x0acbc000 0 0x1000>,
> +			      <0 0x0accb000 0 0x1000>,
> +			      <0 0x0acd0000 0 0x1000>,
> +			      <0 0x0acb6000 0 0x1000>,
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
> +			reg-names = "csid0",
> +				    "csid1",
> +				    "csid2",
> +				    "csid_lite0",
> +				    "csid_lite1",
> +				    "csid_wrapper",
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
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_NRT_CLK>,
> +				 <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
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
> +				 <&gcc GCC_CAMERA_AHB_CLK>,
> +				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
> +				 <&gcc GCC_CAMERA_SF_AXI_CLK>,
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
> +			clock-names = "camnoc_axi_nrt",
> +				      "camnoc_axi_rt",
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
> +				      "gcc_ahb_clk",
> +				      "gcc_axi_hf",
> +				      "gcc_axi_sf",
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
> +			interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 603 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 605 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 376 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 122 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 602 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 604 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 688 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 606 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 377 IRQ_TYPE_EDGE_RISING>;
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
> +			interconnects = <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_CAMERA_CFG 0>,
> +					<&mmss_noc MASTER_CAMNOC_HF 0 &mc_virt SLAVE_EBI1 0>;
> +			interconnect-names = "ahb",
> +					     "hf_0_mnoc";
> +			iommus = <&apps_smmu 0x800 0x20>,
> +				 <&apps_smmu 0x18a0 0x40>,
> +				 <&apps_smmu 0x1860 0x00>;
> +			power-domains = <&camcc CAM_CC_IFE_0_GDSC>,
> +					<&camcc CAM_CC_IFE_1_GDSC>,
> +					<&camcc CAM_CC_IFE_2_GDSC>,
> +					<&camcc CAM_CC_TITAN_TOP_GDSC>;
> +			power-domain-names = "ife0", "ife1", "ife2", "top";
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

Missing some \n between reg/reg-name and the next logical group.

---
bod

