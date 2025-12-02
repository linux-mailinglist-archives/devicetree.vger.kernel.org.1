Return-Path: <devicetree+bounces-243728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C9EC9BAFB
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 14:59:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7198A3A6A01
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 13:59:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27757322551;
	Tue,  2 Dec 2025 13:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x00jzQT+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFBA31ED7C
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 13:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764683958; cv=none; b=GqVCcxdILUc90GQKmQ5lfYql3695G2wNrOLJGAXbxqZnVizky55cOkC0cvggsXtT8hkxuB0ZhaBI4oojVXKeIYVT+i7Gi2IiFZf51qigwN8KlLLVCkmz1tAqKfbek2wsPmZKLBWOwAIjdYTg36Ye8mN/RfFAqiZ0AtcesrnMvuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764683958; c=relaxed/simple;
	bh=HmaqoQIuPwqbMuc4xvu1kJ7krWxxfT7T6CGXIcKTfPE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hvj5lbSOveO73V95dDpF9OI1K9/BWBnK5VbkFTnpDlroNwwDCXRueEL01OFlB4MRFuo8O9YnhblmywaPCrZ42CWNdM1YD25GP0a1ZUdauxRGo5Nh57BB7nA5BtVKsdoX9SH67A5P+2AZxjF0dtlLHXZY9/nPV9/NpdEnClVyk3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x00jzQT+; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-37bba981c5cso3793721fa.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 05:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764683953; x=1765288753; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DNSMC7M9xl88C1slHGyNkETiEDgHYTw4VftIhWKCaB8=;
        b=x00jzQT+JVQdt8pBJv9imkGZdpnyn/sGqUZFS5rwzM6m0m4g6s3SVOl7j9ATO4zDwa
         YhXGzNth4l/foZpj2Vsvwhms+xYATWfCt2tEgpcj1neKYLHohXDGwQuum6MMyon2LPgl
         GGFY3b4atMowb9AbQfuubuhq7VtHj4SvetHS2xKZxa8V0P2zcblbd8E2FP9jVeAP+vaD
         06pHMQzQnuDBmu1C3pOigxYVDYMXXlEK5JGulh/VkIBRPh7pSwOEC4zZ2rXhiUEeXXVi
         HB1trdJxXmL4FVJi+MkWTGigZ4/bE5ahtWP2NiJ/QlW8d/egp11tLWBGGTjg0PM3OIs6
         l70Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764683953; x=1765288753;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DNSMC7M9xl88C1slHGyNkETiEDgHYTw4VftIhWKCaB8=;
        b=G0OS40x8L8zJ1rh+EBg5XMwZNI57biRHwHlTEKYJH41GWYGM7Vu9X6kdbt5VK5HP6A
         QgmdSWzA3tKagPMXQ1l0S/Aqbtk/TYqBvEU+hFbGBjss12JlyKvXoU5HjSzfb4IQ55jC
         MnXdbjWHKhI+tnDgSeJCFEX72/iGNj0luVBLgjy4qFkHqRvairJtwlstiExl9lxgSvHi
         edlowLpdOSzVpQs6L4yyYq4Ld6J++roEg+3poXZ/bjEHMx5rdO0YQAcGwxKo90yIGg0O
         ja8n8nUY59CMvHUByUk+8W/uFGWu9D/eg25pLTEDDFFhcOIyezwPnXhWoP57N8jDNHXH
         W5QA==
X-Forwarded-Encrypted: i=1; AJvYcCVbrOb8KOF7rw+Hw/RXaK3XCawCUGTlKzMFRD8X0foYACCrX0ljYu6wXk7aiy44JgiUGMpo/GJHJUKP@vger.kernel.org
X-Gm-Message-State: AOJu0YwO0VFnopDGxY2XcqH22NKLYV2vtA2Zq78zBNJVpkLP8rSwvkn/
	spbawKdjyGUmOzaJVSn6jX0a/vKW6VTd0AAdZqnNKkL7SGJD4Rsgg3MLVrYgyA8FOy8=
X-Gm-Gg: ASbGncsZ9wRabkStLRT6wQpQ2TgtrQeyD8Poj4R1wIT6EwQu44WSMH+9qRTyUxx1mRt
	oKRuZE7S77249wgQub/n2Waf0YsTYl5wiCZr71Qzgyq4/Qilkr3cz+pSpaSPcUl+Lje/fEOQncD
	YwYUEMegUzTwA1dtADWra3Pzc7Cl+QI0JpT3GBmXiK56cf4jOpVUknuVL5knqD8Sc3tEGPi6FbH
	N33JBsBLff00RyuIFad0/LCHb00/5ExEKF2jMT6m9dPVG28NpsIHx8L6FxeI4rKsDl+wEeo7aze
	zB5cJz2bpwZNddIrWySl8RoPsuLGMnco8dSF/BQD6wTJsTYtmljB2OS123b8O8zf/4zwjfwcXkf
	Yi2c/pBqjHppFR3e9gFWj6VrvpGlVyc/VRH0xZw0VtbW0oqh75PtIZmhR/7jYVBFKdjD0njskwv
	vn46IeKk6r5yc7UP19akyBnA0eSOKNSPI2GSsjjXurdbbD1/1i9po3vfGzXYtuboBs4A==
X-Google-Smtp-Source: AGHT+IFD4ygiTUwpVetjY+YcyYspKUcJU2+mn6x1QGz+FyWnrBex+TX+bFnUsxdCU1JKBbVgW8WtTQ==
X-Received: by 2002:a05:651c:221f:b0:378:f0d6:8fb1 with SMTP id 38308e7fff4ca-37cdc416570mr63309411fa.5.1764683953036;
        Tue, 02 Dec 2025 05:59:13 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37d2412a091sm38320371fa.50.2025.12.02.05.59.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 05:59:12 -0800 (PST)
Message-ID: <8ff6ab79-a3d3-48e3-9340-8b91a9ce1b27@linaro.org>
Date: Tue, 2 Dec 2025 15:59:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/3] arm64: dts: qcom: qcs8300: Add CCI definitions
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, nihalkum@qti.qualcomm.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ravi Shankar <quic_rshankar@quicinc.com>,
 Vishal Verma <quic_vishverm@quicinc.com>,
 Suresh Vankadara <quic_svankada@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20251126081057.4191122-1-quic_vikramsa@quicinc.com>
 <20251126081057.4191122-3-quic_vikramsa@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251126081057.4191122-3-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/26/25 10:10, Vikram Sharma wrote:
> From: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> 
> Qualcomm QCS8300 SoC contains three Camera Control Interface (CCI).
> Compared to Lemans, the key difference is in SDA/SCL GPIO assignments
> and number of CCIs.
> 
> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> Co-developed-by: Ravi Shankar <quic_rshankar@quicinc.com>
> Signed-off-by: Ravi Shankar <quic_rshankar@quicinc.com>
> Co-developed-by: Vishal Verma <quic_vishverm@quicinc.com>
> Signed-off-by: Vishal Verma <quic_vishverm@quicinc.com>
> Co-developed-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/monaco.dtsi | 345 +++++++++++++++++++++++++++
>   1 file changed, 345 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
> index 774255c3f6fc..7c575e1c5e10 100644
> --- a/arch/arm64/boot/dts/qcom/monaco.dtsi
> +++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
> @@ -4776,6 +4776,117 @@ videocc: clock-controller@abf0000 {
>   			#power-domain-cells = <1>;
>   		};
>   
> +		cci0: cci@ac13000 {
> +			compatible = "qcom,qcs8300-cci", "qcom,msm8996-cci";
> +			reg = <0x0 0x0ac13000 0x0 0x1000>;
> +
> +			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
> +
> +			clocks = <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CCI_0_CLK>;
> +			clock-names = "cpas_ahb",
> +				      "cci";
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +			pinctrl-0 = <&cci0_0_default &cci0_1_default>;
> +			pinctrl-1 = <&cci0_0_sleep &cci0_1_sleep>;
> +			pinctrl-names = "default", "sleep";
> +
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			status = "disabled";
> +
> +			cci0_i2c0: i2c-bus@0 {
> +				reg = <0>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +
> +			cci0_i2c1: i2c-bus@1 {
> +				reg = <1>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +
> +		cci1: cci@ac14000 {
> +			compatible = "qcom,qcs8300-cci", "qcom,msm8996-cci";
> +			reg = <0x0 0x0ac14000 0x0 0x1000>;
> +
> +			interrupts = <GIC_SPI 271 IRQ_TYPE_EDGE_RISING>;
> +
> +			clocks = <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CCI_1_CLK>;
> +			clock-names = "cpas_ahb",
> +				      "cci";
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +			pinctrl-0 = <&cci1_0_default &cci1_1_default>;
> +			pinctrl-1 = <&cci1_0_sleep &cci1_1_sleep>;
> +			pinctrl-names = "default", "sleep";
> +
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			status = "disabled";
> +
> +			cci1_i2c0: i2c-bus@0 {
> +				reg = <0>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +
> +			cci1_i2c1: i2c-bus@1 {
> +				reg = <1>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +
> +		cci2: cci@ac15000 {
> +			compatible = "qcom,qcs8300-cci", "qcom,msm8996-cci";
> +			reg = <0x0 0x0ac15000 0x0 0x1000>;
> +
> +			interrupts = <GIC_SPI 651 IRQ_TYPE_EDGE_RISING>;
> +
> +			clocks = <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CCI_2_CLK>;
> +			clock-names = "cpas_ahb",
> +				      "cci";
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +			pinctrl-0 = <&cci2_0_default &cci2_1_default>;
> +			pinctrl-1 = <&cci2_0_sleep &cci2_1_sleep>;
> +			pinctrl-names = "default", "sleep";
> +
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			status = "disabled";
> +
> +			cci2_i2c0: i2c-bus@0 {
> +				reg = <0>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +
> +			cci2_i2c1: i2c-bus@1 {
> +				reg = <1>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +
>   		camss: isp@ac78000 {
>   			compatible = "qcom,qcs8300-camss";
>   
> @@ -5071,6 +5182,240 @@ tlmm: pinctrl@f100000 {
>   			#interrupt-cells = <2>;
>   			wakeup-parent = <&pdc>;
>   
> +			cam0_avdd_2v8_en_default: cam0-avdd-2v8-en-state {
> +				pins = "gpio73";
> +				function = "gpio";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cam0_default: cam0-default-state {
> +				pins = "gpio67";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cam1_avdd_2v8_en_default: cam1-avdd-2v8-en-state {
> +				pins = "gpio74";
> +				function = "gpio";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cam1_default: cam1-default-state {
> +				pins = "gpio68";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};

MCLK pad function declatarions has nothing in common with the CCI, thus it
should be split into a separate commit.

> +
> +			cam2_avdd_2v8_en_default: cam2-avdd-2v8-en-state {
> +				pins = "gpio75";
> +				function = "gpio";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};

All declarations of GPIOs to enable regulators shall be moved to a board
specific .dts file.

-- 
Best wishes,
Vladimir

