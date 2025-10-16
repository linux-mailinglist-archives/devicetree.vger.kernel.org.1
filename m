Return-Path: <devicetree+bounces-227712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C49BE3CBA
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 15:48:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 952834F9172
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 13:48:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A3EC33CE82;
	Thu, 16 Oct 2025 13:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wf0mGeeX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDC52E6135
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 13:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760622488; cv=none; b=Pyo+aOeNKcYjyRYoAdAyClLm1Ka/+CefZb83n4ZvcbJlNbUcGrla9vPqbW4/lFdKDmus9aHP4t6TdKNHQyuQo0p8J9+MtnJj9bZjpLNe2gpZqd2P+fgfJW6OL5Hskmhl1ZpXhlRcP7b+Pomp8CqC13LFjCy/QohtPnRm9mttbFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760622488; c=relaxed/simple;
	bh=sSDe1mGlkEL2RtCUFKIHhbHVM3TXv73UeokYbvF2fOY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nR45w+pvro/klpQtIBdTcCtaAJlhglSeb43VTWMtdEYVT5dUMUiWPW6WMBQ0Ci4IBVhpDSiLdPAICsumqihiwWrXeEMXq+9IxglIjWTFZVFTrm+xPpCj2DSW622QTQY1o5Ic3cz2c1gpxWiSrFTpd0FBztqsRwCxwnaLF8vwokY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wf0mGeeX; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-582067563fcso127385e87.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 06:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760622484; x=1761227284; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gcAg85FBlDnXHKhY+clR6LHNWXAePe89oWLFHhsgwvw=;
        b=wf0mGeeXXJaeC+ph0tGH1pvKZc02ZCHXYW6ydDgGVrmiB03NAe5eLQ98FshU2Cu6Em
         /UmyNTG6MuiwZjgoa0KX7oIgMs1QL26i2GEBEKh+l8F4jFgB/e3DNNMvhKvC9HnMtMmp
         4utiEufqWdXjm/mejyYDaGc6Vc1xRAhCa+hirOBmJHZ2+AeC1qHm07yh/z3bYhXTtnT7
         peJJUNuCrOSy7bf2b/nsBNHPJi8upVnQKKXvPkfEFYN5/o7LO01NKVM+J0/LAewRqIyK
         tGWaT71xNnuez7SsU0wkvgfcv4Rnbrlheow0yVjS1qOXi0UDfWU9pHdLtWUOfsxJ/1K+
         O3qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760622484; x=1761227284;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gcAg85FBlDnXHKhY+clR6LHNWXAePe89oWLFHhsgwvw=;
        b=rD6uUPd6kxn6ULM++TlPi9TSyx+wCRx00OI7V73Ie+0N508zc4BG2kUN11deIS8GV4
         /KSEDh3kOt92IXntTv6m3XBQc1+T/MeaQFLQMD7FaYQbZ5x6rWCpo6AIN31p0U3e3o3J
         /plDvvsc64Q1YKoQXi4dG5gybOt/0U3YbuWwx5tQQwlEh/VpwGd1ee7sonXoA5uG+idk
         eyqF9sC0u3ju1b6pcPNow8XRgnQh7+eCdUsZUDfwzRSCqNP4cCj/0sWPmMPpgWznKymT
         OPuHcqKuCkaoj9ZG0nxbZFbMR06lIs9rLvHMsZ19kJN3b4nebTYkA3/e2JoBU70lpkqu
         ldpw==
X-Forwarded-Encrypted: i=1; AJvYcCX9nye5Buda0GO4VMqRisG1JS/4ADaEHbCOA9oxL/c9Eb2LFAfpzhYk4g8Wg0N+I3rZN/E3ejZCWaCx@vger.kernel.org
X-Gm-Message-State: AOJu0YwYRCiHx4z/vke5VnzvcspKP4yXmhnIpRkcKUJ3wCRhy3UrbXZ5
	T+6GCrvZ3xTHms/0Zx04JDsmW1MSi/eQTbYfp35nQvLhLMjX6BsDLytQ6JOsL4+U4Q0=
X-Gm-Gg: ASbGnctfjhENh9hKCGx93wWpumX6Qi3w2p8IImFzgqPVEXMQCorIWDa1aLdh44WrJpf
	siHWDT+1AwHE1D9L1qlPNTNnBFxAHS9Svgub5cluvR3kWVbmqx60ajdxwroxOK1+9TRqvvyDnbz
	dxt7HqiuJX/rRw/IWktS4otG2TCIEgAolOddhpTu98LQm+OqahsaOuDegIhv2zMxKCe7T7IEu1o
	bZhC4a01j4SnPE6rIR4ujBidPIKBJ9xMocuyq1fJCP2GKLdeXo+11pYQcurKR8WU8suvcFMKWUP
	Dy1bCjKt/kMXhz0eL8nUnC2lJSdOahRb2Z5VVsztBaRD8Td8xgyO8+dYKmZLsKK8jxEbNT3PvTP
	9/zgimyPEhZnD7q4q4zJSXDKqLPv7Xc/vtF1yATZNbkNPb8OiRSKA8NKZMu2U2ztfSoyXv0Ftzf
	zYWnR6Nlu39U79+uhDao096RO8Ic6dJhb0J5t/O835Wy0t5BjByIhNJRGpLJrTjCIomn1ve5t+0
	oW7qpZW
X-Google-Smtp-Source: AGHT+IFJNT+AAD99Hz3zpEUaGMgFi/cx8sgcMYMp0PdSXJ1mbaKwn/y+9OKRg8oSB9qI/6dBNhERfA==
X-Received: by 2002:a05:6512:3ca5:b0:55f:461e:b458 with SMTP id 2adb3069b0e04-591d8550df2mr36408e87.4.1760622484271;
        Thu, 16 Oct 2025 06:48:04 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590885768desm7109937e87.98.2025.10.16.06.48.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 06:48:03 -0700 (PDT)
Message-ID: <b0224cd8-fe81-4229-94a4-c314c7b19811@linaro.org>
Date: Thu, 16 Oct 2025 16:48:02 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm6150: Add camss node
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251016-sm6150-camss-v1-0-e7f64ac32370@oss.qualcomm.com>
 <20251016-sm6150-camss-v1-3-e7f64ac32370@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251016-sm6150-camss-v1-3-e7f64ac32370@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/16/25 13:22, Wenmeng Liu wrote:
> Add node for the SM6150 camera subsystem.
> 
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/sm6150.dtsi | 121 +++++++++++++++++++++++++++++++++++
>   1 file changed, 121 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6150.dtsi b/arch/arm64/boot/dts/qcom/sm6150.dtsi
> index 3d2a1cb02b628a5db7ca14bea784429be5a020f9..ebfb336439b4fdfa567c0e011cd4da88a6290dfd 100644
> --- a/arch/arm64/boot/dts/qcom/sm6150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6150.dtsi
> @@ -3646,6 +3646,127 @@ videocc: clock-controller@ab00000 {
>   			#power-domain-cells = <1>;
>   		};
>   
> +		camss: isp@acb3000 {
> +			compatible = "qcom,sm6150-camss";
> +
> +			reg = <0x0 0x0acb3000 0x0 0x1000>,
> +			      <0x0 0x0acba000 0x0 0x1000>,
> +			      <0x0 0x0acc8000 0x0 0x1000>,
> +			      <0x0 0x0ac65000 0x0 0x1000>,
> +			      <0x0 0x0ac66000 0x0 0x1000>,
> +			      <0x0 0x0ac67000 0x0 0x1000>,
> +			      <0x0 0x0acaf000 0x0 0x4000>,
> +			      <0x0 0x0acb6000 0x0 0x4000>,
> +			      <0x0 0x0acc4000 0x0 0x4000>;
> +			reg-names = "csid0",
> +				    "csid1",
> +				    "csid_lite",
> +				    "csiphy0",
> +				    "csiphy1",
> +				    "csiphy2",
> +				    "vfe0",
> +				    "vfe1",
> +				    "vfe_lite";
> +
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CSIPHY0_CLK>,
> +				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSIPHY1_CLK>,
> +				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSIPHY2_CLK>,
> +				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
> +				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
> +				 <&camcc CAM_CC_SOC_AHB_CLK>,
> +				 <&camcc CAM_CC_IFE_0_CLK>,
> +				 <&camcc CAM_CC_IFE_0_AXI_CLK>,
> +				 <&camcc CAM_CC_IFE_0_CPHY_RX_CLK>,
> +				 <&camcc CAM_CC_IFE_0_CSID_CLK>,
> +				 <&camcc CAM_CC_IFE_1_CLK>,
> +				 <&camcc CAM_CC_IFE_1_AXI_CLK>,
> +				 <&camcc CAM_CC_IFE_1_CPHY_RX_CLK>,
> +				 <&camcc CAM_CC_IFE_1_CSID_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_CSID_CLK>;
> +
> +			clock-names = "camnoc_axi",
> +				      "cpas_ahb",
> +				      "csiphy0",
> +				      "csiphy0_timer",
> +				      "csiphy1",
> +				      "csiphy1_timer",
> +				      "csiphy2",
> +				      "csiphy2_timer",
> +				      "gcc_axi_hf",
> +				      "soc_ahb",
> +				      "vfe0",
> +				      "vfe0_axi",
> +				      "vfe0_cphy_rx",
> +				      "vfe0_csid",
> +				      "vfe1",
> +				      "vfe1_axi",
> +				      "vfe1_cphy_rx",
> +				      "vfe1_csid",
> +				      "vfe_lite",
> +				      "vfe_lite_cphy_rx",
> +				      "vfe_lite_csid";
> +
> +			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
> +					<&mmss_noc MASTER_CAMNOC_HF0 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "ahb",
> +					     "hf_mnoc";
> +
> +			interrupts = <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "csid0",
> +					  "csid1",
> +					  "csid_lite",
> +					  "csiphy0",
> +					  "csiphy1",
> +					  "csiphy2",
> +					  "vfe0",
> +					  "vfe1",
> +					  "vfe_lite";
> +
> +			iommus = <&apps_smmu 0x820 0x40>;
> +
> +			power-domains = <&camcc IFE_0_GDSC>,
> +					<&camcc IFE_1_GDSC>,
> +					<&camcc TITAN_TOP_GDSC>;
> +			power-domain-names = "ife0",
> +					     "ife1",
> +					     "top";
> +
> +			status = "disabled";

Please remove empty lines between properties all above.

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
> +			};
> +		};
> +
>   		camcc: clock-controller@ad00000 {
>   			compatible = "qcom,qcs615-camcc";
>   			reg = <0 0x0ad00000 0 0x10000>;
> 

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

