Return-Path: <devicetree+bounces-161081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7CEA726D0
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 00:02:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 424043B7FBD
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 23:02:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 927E91B4141;
	Wed, 26 Mar 2025 23:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q/cbg21N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A2977E110
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 23:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743030142; cv=none; b=PVHU2ap0wMaS5h1S5EK87d6R/PnWzXk/RCGOzsVIYPsSJrziVli6Z/JHScvyjuGSywvE3IN5zXfU/WteD2Mabqai80xe4esD6tzTBz8s2DQ4AT2/P5Z90C7pONQFbfygvdpd+2cKZy9FdQTHo3MUFK9sLKUhpxPrhqY/COjRD+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743030142; c=relaxed/simple;
	bh=xSOAajQntCtHl4GLaye/tTmnfrS75eoHWjSB4wSRKsY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TOx34x3OMcv4kOBzNR9C8sdvaLDvK4DbrKOijPfmnorAVezF4O7FpqGTfEgo1hV3uKzMh2tK/8NKK8ZYuw8UfyeeinhhsunS01KFCNLaiTuICOv4HSzfrdgtFPlnRL/6O/N1k+D4FvEZjFDaQ+o2q7rJJPv4SFGoSzdU7+nPhBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q/cbg21N; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cf3192f3bso3719645e9.1
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 16:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743030139; x=1743634939; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VBAey2CYAn1IfkgNKIKzYr/G0OGSAHAFC+JscJQi/kk=;
        b=Q/cbg21NH9FjHxm5/Jj/DXB0u84IrpgBzaHiJeVhn74WIjdngs2DiBqU8BInt190P7
         hpWaiquGLDPTEUPARwiLB8HY9Vo8SNExKJLzObpGPWJr1Z4O48v5D01NlwfqURq+tUW2
         GoJzaJLDPSyTMmgyHx8OudbERsZHY+0iYnPGLBwf/GRGlEbXaShdId62SD/XBbGjRdmz
         rBRScD+wYkYXk266i/JHKTJYA9roZzEaOIJ8cUdzp23vVoa3ALySLnSvnRpZgQn/g9rQ
         BjiCdmTLm/80vmTrMd4ityn5Z8kW4EVJehPh6s+wECeWUt3rw+Fe2zrfwMyHHkY+YV04
         U3og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743030139; x=1743634939;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VBAey2CYAn1IfkgNKIKzYr/G0OGSAHAFC+JscJQi/kk=;
        b=K5zS7oRX4nAWhQUR10G96K94aJkptvg7/aFhchbpUPKpiZGKQ/sInjLcZHLJDxG2gR
         FepaKDh9OtyTGMaiX1fQSGN5On19RI3SLIMTyJ2e3lTu2tWjT8T7OsJhTLlWV6E1vloN
         iZozNLQHVgFOigmc8RPp3JcnDj1Pjq5tFKwpLGR1N+5jyV1kPO/jEWXLNGcs3cTrAgim
         V6nTPUcvdTcvyI7rTVqFaYEtqzsqenuLE+9Lg8XXd1npNtHwfm3Sb8mTBbaAMlrhiZGD
         0GSn6L1othYPzrnr0NifPkrQa0TNXn4PEVhhPaEMVq4LD3GhfbwZRxb8lYz3Zp/Tba/3
         5Gsw==
X-Forwarded-Encrypted: i=1; AJvYcCVics5KIdwiYycMQq6dMVdDAntNZYLP5PaxY00gRSNAAuAcSlmcCbZtjUi3EJIEY4sJpl2Gxu9gz4Sy@vger.kernel.org
X-Gm-Message-State: AOJu0YzHSI9Pr01l/5I6ck2ZkK47zywTotV67mXGf45yV7UcWHk/aXYE
	CGkrcayRPOW0oe1J0MX4yPJsDq88NUfMpLRYV+dN2ps11LbbPhzXOYixeu9CbnQ=
X-Gm-Gg: ASbGncv6eaUPf5tGsLMsCOmarg+2tmtvWH29stjgzpVc+31B6xQNTS4XWrmEqL3fRq9
	E5tpVdlFvmjck51x1h/r+FTTTWtuGQOkOwwfq7kWnRBUTYD9llS2Dc+1dn86jdq5O/6ulxfnE9N
	S4rPq84Fh6u3ZqdHbZmWGaBgAuc/7TK77dihwt+WwVNC8k0DMuySbEYKTiH87qcAbO8uPgsulNe
	yKFNo3niqsBub+hcAPtNgiA2TfT5/kpKEiUBBqrfDcVteQoZittz4m03mLeHcE5602tMUcZFDBX
	yp8Ii7nPY1alNR0iGZCItBEXCxxOsVeMf7R4hH7uZAPfTtDw4ebLcIa0Cd8l9dA5OP1JCuy4wMj
	ogC+d40P1hA==
X-Google-Smtp-Source: AGHT+IHo3V3WAkhhLW/juCyU+C0ZLz5NgHhcA8b9a1zmLzsrrFgyHzgv+rPSmP54zNjAkwZ1Y7+wdg==
X-Received: by 2002:a05:600c:138e:b0:43c:eb63:415d with SMTP id 5b1f17b1804b1-43d84fb70a0mr13406635e9.14.1743030138757;
        Wed, 26 Mar 2025 16:02:18 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9e65casm18360073f8f.69.2025.03.26.16.02.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Mar 2025 16:02:18 -0700 (PDT)
Message-ID: <9fd63681-28c3-4797-9ed0-f4b05e77e330@linaro.org>
Date: Wed, 26 Mar 2025 23:02:16 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/8] arm64: dts: qcom: sc7280: Add WSA SoundWire and
 LPASS support
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250317054151.6095-1-quic_pkumpatl@quicinc.com>
 <NEOU_bSQGIua5HanDOIfAKJq_XghfrHr5H_120hNUkXtFyurq1rHIe-4_cKpCtH7rr4MJzu89TrHWrpxUfR0_Q==@protonmail.internalid>
 <20250317054151.6095-3-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250317054151.6095-3-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/03/2025 05:41, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Add WSA macroLPASS Codecs along with SoundWire controller.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sc7280.dtsi | 68 ++++++++++++++++++++++++++++
>   1 file changed, 68 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 39fbd3c40e47..90b2f6e2b7c0 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -2602,6 +2602,64 @@ swr1: soundwire@3230000 {
>   			status = "disabled";
>   		};
> 
> +		lpass_wsa_macro: codec@3240000 {
> +			compatible = "qcom,sc7280-lpass-wsa-macro";
> +			reg = <0x0 0x03240000 0x0 0x1000>;
> +
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&lpass_wsa_swr_clk>, <&lpass_wsa_swr_data>;
> +
> +			clocks = <&lpass_aon LPASS_AON_CC_TX_MCLK_CLK>,
> +				 <&lpass_aon LPASS_AON_CC_TX_MCLK_2X_CLK>,
> +				 <&lpass_va_macro>;
> +			clock-names = "mclk", "npl", "fsgen";

clocks* go before pinctrl*

> +
> +			power-domains = <&lpass_hm LPASS_CORE_CC_LPASS_CORE_HM_GDSC>,
> +					<&lpass_aon LPASS_AON_CC_LPASS_AUDIO_HM_GDSC>;
> +			power-domain-names = "macro", "dcodec";
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "mclk";
> +			#sound-dai-cells = <1>;
> +
> +			status = "disabled";
> +		};
> +
> +		swr2: soundwire@3250000 {
> +			compatible = "qcom,soundwire-v1.6.0";
> +			reg = <0x0 0x03250000 0x0 0x2000>;
> +
> +			interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&lpass_wsa_macro>;
> +			clock-names = "iface";
> +
> +			qcom,din-ports = <2>;
> +			qcom,dout-ports = <6>;
> +
> +			resets = <&lpass_audiocc LPASS_AUDIO_SWR_WSA_CGCR>;
> +			reset-names = "swr_audio_cgcr";

vendor prefixes should come after standard names

Documentation/devicetree/bindings/dts-coding-style.rst
"Order of Properties in Device Node"

> +
> +			qcom,ports-sinterval-low = /bits/ 8 <0x07 0x1f 0x3f 0x07
> +								0x1f 0x3f 0x0f 0x0f>;
> +			qcom,ports-offset1 = /bits/ 8 <0x01 0x02 0x0c 0x06 0x12 0x0d 0x07 0x0a>;
> +			qcom,ports-offset2 = /bits/ 8 <0xff 0x00 0x1f 0xff 0x00 0x1f 0x00 0x00>;
> +			qcom,ports-hstart = /bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
> +			qcom,ports-hstop = /bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
> +			qcom,ports-word-length = /bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
> +			qcom,ports-block-pack-mode = /bits/ 8 <0xff 0xff 0x01 0xff 0xff 0x01
> +							       0xff 0xff>;
> +			qcom,ports-block-group-count = /bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff
> +								0xff 0xff>;
> +			qcom,ports-lane-control = /bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff
> +							    0xff 0xff>;
> +
> +			#address-cells = <2>;
> +			#size-cells = <0>;
> +			#sound-dai-cells = <1>;
> +
> +			status = "disabled";
> +		};
> +
>   		lpass_audiocc: clock-controller@3300000 {
>   			compatible = "qcom,sc7280-lpassaudiocc";
>   			reg = <0 0x03300000 0 0x30000>,
> @@ -2808,6 +2866,16 @@ lpass_tx_swr_data: tx-swr-data-state {
>   				pins = "gpio1", "gpio2", "gpio14";
>   				function = "swr_tx_data";
>   			};
> +
> +			lpass_wsa_swr_clk: wsa-swr-clk-state {
> +				pins = "gpio10";
> +				function = "wsa_swr_clk";
> +			};
> +
> +			lpass_wsa_swr_data: wsa-swr-data-state {
> +				pins = "gpio11";
> +				function = "wsa_swr_data";
> +			};
>   		};
> 
>   		gpu: gpu@3d00000 {
> --
> 2.34.1
> 
> 


