Return-Path: <devicetree+bounces-135129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BC59FFD49
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 18:58:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF2F33A0654
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 17:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 585051B3958;
	Thu,  2 Jan 2025 17:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BomG9JDS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1DC1B0F0B
	for <devicetree@vger.kernel.org>; Thu,  2 Jan 2025 17:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735840686; cv=none; b=KHC4nDWc1XxJc/UbdE7qEzBsQdp6fCA/VHMmjUX35Td+1pbrm5gg3JT0k+CMbY4e1LuI2JnnWB/8YN/6VPJFZEUPpxmoSF14aA/oVdA4lpA3dpXj4Pd0M9M4Fy2O2kEeOlw1EBD3LokbKP0ZuHPl0A8CWRiPW/guzIUdslZYrPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735840686; c=relaxed/simple;
	bh=70wPxSyGoP1AIDAlE5kyW2D9wBgD5qtMuvxi7M6K9L0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hfokymi2Wsh7LIL4p/ms1uMgkHwU5nRV35V39F6Lu/iErH59W2rQQ56Rc6INW+ZN4MQceKblDLumyArEh78XnFPUxdKszMLAA+4WSD+0XB5OvIuiV2psXV/+81SiSi6rFQ0mr8aDAH8BBcvRXOifQAkL8vXKIIRzNmBbW/GNFzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BomG9JDS; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-436246b1f9bso18886285e9.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 09:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735840680; x=1736445480; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tCngGj3ERzx+kGRd3Llf5o6LEqqH/9Whmo07Um1JaOU=;
        b=BomG9JDSyu52J9S4FiPl+ABC3au+K3EEbW8Vx2OlEK8uuZcYz8ReZPWflc40FWB7PJ
         Q+x5wH1dG00mt7Trpm53yh63usv4ixlqXUdS9yere4yBnKnJ1pa/OxnXqu4AcmDQfunC
         NQs3zYbVq9QaY1ir3IB6F6bcPU9DznZUJe3terIkhmwyT3OuvZpYnUD0pjlBZ05daHEe
         2qshQkv8ECDE/zV3U5ctC5u33aukrq36113HiQC7/NRQyV6sw46ViVWzsfbtXKzMwdNl
         1x8m+zHQSrOUP3zwS35EqvBCmgrr15lUmgBYP0FvZITFzAgTcxOeh/FPmOtGHvDI+Jec
         pt0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735840680; x=1736445480;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tCngGj3ERzx+kGRd3Llf5o6LEqqH/9Whmo07Um1JaOU=;
        b=jowKk3xqCZqJ3kQU57I6l6ONMcusMakfBF0muGaXBKOfJ9qYoYOUt8NVO7zmV6pMKu
         atcZUTY7dbPUe2EJHNhOLgp7CK+z5pSt2G7sa4XKC/ag+X56rdMm9fr8hF1X2hYqc3Y4
         AMKe+6dqUAsOKfgmmMqFipPw6rILTQkOmasU6oadAbhtnUx1350+WvgsCrpILZ0BhA5X
         Tz97rNtLuKEx8x0cII3K5sKE/CNgkVjmUZxffcHXvKcuQCHEcElpQwSCBHQkK5c78RO9
         n+Nq93izFBorp5rW2qQiMYmqNoXUXjDi8KD3X2eqlSnXRG1JkRfA4OS+2BMDvPcUSWhN
         5nhw==
X-Forwarded-Encrypted: i=1; AJvYcCV7LgM8llrWtli3XMuar26OELFa4qx8VJWxfoz81ase8jiQuq76IT/cPA5NW9dD3/CaLB+O4JFdjftY@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe/JmP4kJML86CtLufmq4XUrlxrsP1HrKHZ4j8qSoNkmgIbgVN
	0R8i0BdXSZzG9WB2IQjoVCe6Xnz2velhf9DJsh+Dp3BTLaJQuTkS7sbL5ZFJTJlS0hdgNbIjp1F
	1
X-Gm-Gg: ASbGncskDne2ayX15BxpQ3C4gI+7ObPN7JW597rvVRnCTk8DS9iAo5PbSW7TZsYWQIi
	XA8F1dXfs0U4RajiEQN4S8Hs28lFlB0thaDTGG1nY/gebtm/wMcnvrirLkM9QGZUHaIFB/MTEKa
	YFOLvFasoa892uZfhnw1lbPsJGCiA3F1CzHzZVnwcTGWfnAM6tD/lu+dJ6xAyyvp2hT8FHng6Ov
	8xrgGRA9z3HCjN+DaFLTI9XqvDBGw7IOfcydqMBAmzfLeSH8r+dNHa+rL0EHIMS5DKXskG+
X-Google-Smtp-Source: AGHT+IFgkYrJOCTXgJymqCv1qh1ladO5Vd6MkMz8g2qcOcczFLlXadnGD88iWWbyvyZwZM17zNXKOA==
X-Received: by 2002:a05:600c:4e41:b0:436:1902:23b5 with SMTP id 5b1f17b1804b1-43668b5e060mr158353075e9.4.1735840680579;
        Thu, 02 Jan 2025 09:58:00 -0800 (PST)
Received: from [172.16.0.204] ([79.164.49.199])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43661289995sm456989895e9.36.2025.01.02.09.57.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jan 2025 09:58:00 -0800 (PST)
Message-ID: <a017543d-a27e-466e-bf51-9eb7e70ab215@linaro.org>
Date: Thu, 2 Jan 2025 19:57:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: x1e80100: Add CCI definitions
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-clk@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250102-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v3-0-cb66d55d20cc@linaro.org>
 <20250102-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v3-5-cb66d55d20cc@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250102-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v3-5-cb66d55d20cc@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Bryan.

On 1/2/25 18:32, Bryan O'Donoghue wrote:
> Add in 2 CCI busses. One bus has two CCI bus master pinouts:
> cci_i2c_scl0 = gpio101
> cci_i2c_sda0 = gpio102
> cci_i2c_scl1 = gpio103
> cci_i2c_sda1 = gpio104
> 
> A second bus has a single CCI bus master pinout:
> cci_i2c_scl2 = gpio105
> cci_i2c_sda2 = gpio106

I notice that the change assigns "aon_cci" function to gpio235 and gpio236
pins, and they do serve as cci1_i2c1 sda/scl pins, thus here is the second
CCI bus master.

So, I assume the commit message is not correct...

> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 150 +++++++++++++++++++++++++++++++++
>   1 file changed, 150 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 5c7b0c048d41a4ba3d74bbf77216ad09b652ed30..97ebf5596dfc3caa920ef85722ca8afd49cd3c24 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -4648,6 +4648,84 @@ usb_1_ss1_dwc3_ss: endpoint {
>   			};
>   		};
>   
> +		cci0: cci@ac15000 {
> +			compatible = "qcom,x1e80100-cci", "qcom,msm8996-cci";
> +			reg = <0 0x0ac15000 0 0x1000>;
> +
> +			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
> +
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CCI_0_CLK>;
> +			clock-names = "camnoc_axi",
> +				      "cpas_ahb",
> +				      "cci";
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +			pinctrl-0 = <&cci0_default>;
> +			pinctrl-1 = <&cci0_sleep>;
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
> +		cci1: cci@ac16000 {
> +			compatible = "qcom,x1e80100-cci", "qcom,msm8996-cci";
> +			reg = <0 0x0ac16000 0 0x1000>;
> +
> +			interrupts = <GIC_SPI 271 IRQ_TYPE_EDGE_RISING>;
> +
> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CCI_1_CLK>;
> +			clock-names = "camnoc_axi",
> +				      "cpas_ahb",
> +				      "cci";
> +
> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
> +
> +			pinctrl-0 = <&cci1_default>;
> +			pinctrl-1 = <&cci1_sleep>;
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
>   		camcc: clock-controller@ade0000 {
>   			compatible = "qcom,x1e80100-camcc";
>   			reg = <0 0x0ade0000 0 0x20000>;
> @@ -5271,6 +5349,78 @@ tlmm: pinctrl@f100000 {
>   			gpio-ranges = <&tlmm 0 0 239>;
>   			wakeup-parent = <&pdc>;
>   
> +			cci0_default: cci0-default-state {
> +				cci0_i2c0_default: cci0-i2c0-default-pins {
> +					/* cci_i2c_sda0, cci_i2c_scl0 */
> +					pins = "gpio101", "gpio102";
> +					function = "cci_i2c";
> +					drive-strength = <2>;
> +					bias-pull-up;
> +				};
> +
> +				cci0_i2c1_default: cci0-i2c1-default-pins {
> +					/* cci_i2c_sda1, cci_i2c_scl1 */
> +					pins = "gpio103", "gpio104";
> +					function = "cci_i2c";
> +					drive-strength = <2>;
> +					bias-pull-up;
> +				};
> +			};
> +
> +			cci0_sleep: cci0-sleep-state {
> +				cci0_i2c0_sleep: cci0-i2c0-sleep-pins {
> +					/* cci_i2c_sda0, cci_i2c_scl0 */
> +					pins = "gpio101", "gpio102";
> +					function = "cci_i2c";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +
> +				cci0_i2c1_sleep: cci0-i2c1-sleep-pins {
> +					/* cci_i2c_sda1, cci_i2c_scl1 */
> +					pins = "gpio103", "gpio104";
> +					function = "cci_i2c";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +			};
> +
> +			cci1_default: cci1-default-state {
> +				cci1_i2c0_default: cci1-i2c0-default-pins {
> +					/* cci_i2c_sda2, cci_i2c_scl2 */
> +					pins = "gpio105","gpio106";
> +					function = "cci_i2c";
> +					drive-strength = <2>;
> +					bias-pull-up;
> +				};
> +
> +				cci1_i2c1_default: cci1-i2c1-default-pins {
> +					/* aon_cci_i2c_sda3, aon_cci_i2c_scl3 */
> +					pins = "gpio235","gpio236";
> +					function = "aon_cci";
> +					drive-strength = <2>;
> +					bias-pull-up;
> +				};
> +			};
> +
> +			cci1_sleep: cci1-sleep-state {
> +				cci1_i2c0_sleep: cci1-i2c0-sleep-pins {
> +					/* cci_i2c_sda2, cci_i2c_scl2 */
> +					pins = "gpio105","gpio106";
> +					function = "cci_i2c";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +
> +				cci1_i2c1_sleep: cci1-i2c1-sleep-pins {
> +					/* aon_cci_i2c_sda3, aon_cci_i2c_scl3 */
> +					pins = "gpio235","gpio236";
> +					function = "aon_cci";
> +					drive-strength = <2>;
> +					bias-pull-down;
> +				};
> +			};
> +
>   			qup_i2c0_data_clk: qup-i2c0-data-clk-state {
>   				/* SDA, SCL */
>   				pins = "gpio0", "gpio1";
> 

--
Best wishes,
Vladimir

