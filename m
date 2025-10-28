Return-Path: <devicetree+bounces-232138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BD501C149E7
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 13:26:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C726F4F00E6
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 12:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DD1B32D43F;
	Tue, 28 Oct 2025 12:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kYlD7P4u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A57F730FC16
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 12:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761654373; cv=none; b=Wqrty7eTzudOcHaUXqhd5GNILr/PST9pdMZabhBRUDjvFCtMhpb3SyueDDs/5z2sVf72KIta9pRoqJpE4PZot44SiQLrkqU2HDZl9UIBh3LjTTEnCnADEOYU71a05H7vn4jZ25pCqMGb7eENVXnYtVXrmKgm7R4Uawd8MGyAPS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761654373; c=relaxed/simple;
	bh=uwxUcsIuPM1BspwiCN2LGPuwEz/Q8DZ08H0eTBjEAf0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iCKmeI2O18KhT9wMk750/00m6zabA4hcSl1HNxAqH4BYKhYYOkxYO0iN54rsEMjfIEQ412vFVym00aLl0xH1itYEu6xsnLBt8LQ4ZfZrQUKOXxHG7Ok+3MSsdBH4B9xroY8JPb8KYNkGGlSSUS49pPFf9zPu3rkFZ9ckoLUSYdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kYlD7P4u; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7a26ea3bf76so7783305b3a.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 05:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761654371; x=1762259171; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0+2SA2fObPLKSwZ239eSz2VGkbI8LDqGXNPqULUKng4=;
        b=kYlD7P4uals5GyNzKYNygh3FgppLdPTr8Evs27+t+9D+EIaU7lCb/W8kyZRBLGwmex
         xSLoqlHtnjgBIQ0yv++DE5sfyu09zb7DuP9Q22/GzHEUbqH9WBohG4lee1lDFOi9U4vx
         WR9eNtAn/56MDjSDRAkFBMksO0cbu3GsF0vqTgAa3RRmJYApBXhAUiZZpfd3fNmsMlXx
         5KRR2Hs3rGDcIySnl5SFKURkXhVmAGTPyE0etu+1Q2pVdBdUXhl10XcecWwuKILrhbQN
         eaFTHWcEMBqTzldLfDTkJCEQdIvULr2AvH0YFgkc3qWcpf0MUTsa8bcwsF+PGx/oNQlD
         fskg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761654371; x=1762259171;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0+2SA2fObPLKSwZ239eSz2VGkbI8LDqGXNPqULUKng4=;
        b=iDR1Cb1fdISRFb3uLcfno6ciAcLr22sxX0U3iOUV/OrmUFMbPOYvaBlzYro6KAeJXn
         oG1m9BwbvFmaJQHKSOjlpLn4aFfAkj5SMiKJJxsEX4/VEPcVJtTBCA4O2Zq9L8s+nP9K
         dKELp0zpxBre1pt/V9LGeXcGmlJ2Xd7NwndTFb1UbDHAOuzzVpZTLwrt7hcw8j0Iyz1W
         qsCK+pZh4m8ZTQwUSvV57S69JTEXJ2moc/LO49PdZsvPMVxbBOboIYvW3chDW4kZIZPD
         9jNqWA9TNyRyc3F0MNfu7gaICjiV/D9mg2C/SB5pE6av2o6q7bGOuRzz09L1fKoXiRgk
         2mIw==
X-Forwarded-Encrypted: i=1; AJvYcCVY6pCY8NRuLqFiErM12LKRTauRm1WPlDSeX5wST2DMMWlLpwpZXXvlEAaLXlI7C3FhSCluXM+0ByhG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw47oEgthiqTfdRzxlbQ0akHSPa3q1FsMbg7a715tGXhMU2+5/E
	ifrnJtuPUUFe0/HL00fMz40o7kGTuKK7AWPP3M2rbCt7R6ee2cLY92IU
X-Gm-Gg: ASbGncvw+QnEM+0qIa695iRB2Gt4hr1cKUjeJSbjtwee5eUlIAt2Bq2VfladZ98lYDt
	YaBkK+FY4EqOwwjxqo7pXG+cfZMS2KSlNl2dcEeK82bOvs8ysYfCLi21YStfIIxpivRyolgMLqA
	gbFwVI9f20xTtgqSlRfddQBObxMdh1nhrjYGQjJMYAonMfqbdg8YwuRBgZ6rHIljKK+duwt6+bh
	Gx/pzOCv8tccfgllTqfXCZp8wu/yT2YTcr5QH44bZEXlTrVdPuMX1E7ChyIisxMjhaxUISSDWZ8
	Dhb+7KgzWIBVpcscTQmeSGL2/TWd9Q5D5gUizgU8haXVPqWacpmaRo1FpSZzoC8zL+69cYjej22
	c5JO2P1B98kuEAj1hAi15ULDRp2L5sPolYZOaT9uAgaitldLEjpMuLSVrzRuITej8bTX4/YZyrs
	2O5uY+BGAtQRzH
X-Google-Smtp-Source: AGHT+IFM5B90MTRkuycXatN32S0HgK0Vtm5Ew5XZWHko31fO5/IEORcqfpvvKXUVxG2pP/bPcEvg3w==
X-Received: by 2002:a05:6a21:999c:b0:32e:af06:177b with SMTP id adf61e73a8af0-344d1da6059mr4308288637.12.1761654370740;
        Tue, 28 Oct 2025 05:26:10 -0700 (PDT)
Received: from [172.17.49.162] ([103.218.174.2])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b7127bf47a1sm10303431a12.10.2025.10.28.05.26.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 05:26:10 -0700 (PDT)
Message-ID: <8012fbff-0fcd-41dd-b15e-5604345a078c@gmail.com>
Date: Tue, 28 Oct 2025 17:56:05 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251028053248.723560-1-tessolveupstream@gmail.com>
 <20251028053248.723560-3-tessolveupstream@gmail.com>
 <20251028-proud-bullfrog-of-aurora-e2cdba@kuoka>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <20251028-proud-bullfrog-of-aurora-e2cdba@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 28/10/25 13:29, Krzysztof Kozlowski wrote:
> On Tue, Oct 28, 2025 at 11:02:48AM +0530, Sudarshan Shetty wrote:
>> Introduce the device tree support for the QCS615-based talos-evk
>> platform, which follows the SMARC (Smart Mobility ARChitecture)
>> standard. The platform is composed of two main hardware
>> components: the talos-evk-som and the talos-evk carrier board.
>>
>> The talos-evk-som is a compact System on Module that integrates the
>> QCS615 SoC, PMIC, and essential GPIO connectivity. It follows the
>> SMARC standard, which defines a modular form factor allowing the SoM
>> to be paired with different carrier boards for varied applications.
> 
> Drop paragraph, completely redundant. Please write concise, informative
> messages, not something redundant and obvious. Or worse - marketing
> junk.

Okay, will update in next patch.
> 
>>
>> The talos-evk is one such carrier board, designed for evaluation
>> and development purposes. It provides additional peripherals
>> such as UART, USB, and other interfaces to enable rapid
>> prototyping and hardware bring-up.
>>
>> This initial device tree provides the basic configuration needed
>> to boot the platform to a UART shell. Further patches will extend
>> support for additional peripherals and subsystems.
> 
> Drop paragraph, it is contradictory to the next one.

Okay, will update in next patch.
> 
>>
>> The initial device tree includes basic support for:
>>
>> - CPU and memory
>>
> 
> Drop blank lines
> 
> between
> 
> each
> 
> of
> 
> points. No need to inflate already huge commit msg.

Okay, will update in next patch.
> 
> 
>> - UART
>>
>> - GPIOs
>>
>> - Regulators
>>
>> - PMIC
>>
>> - Early console
>>
>> - AT24MAC602 EEPROM
>>
>> - MCP2515 SPI to CAN
>>
>> - Hook up the ADV7535 DSI-to-HDMI bridge
>>
>> - Add DP connector node and MDSS DisplayPort controller.
>>
>> QCS615 talos-evk uses a Quectel AF68E WiFi/BT module (PCIe for
>> WiFi and UART for Bluetooth), which is different from the RIDE
>> platform. Plan to enable these in a follow-up patch series.
> 
> Drop plans, not related. I also do not understand why you mention here
> RIDE. Does it mean you are duplicating the board?
> 
This comment is added as per Dmitry feedback.
https://lore.kernel.org/all/qq4aak33bn3mqxd2edu6zgkkshby63mmitg7zqkly2rj4c2lh7@4s7sndb7e2jr/T/#m6f653d7b4bd9b014dcbd86a4680cfd64583e784d

Let me know your thought on this again, 
I can remove and send the updated patch.
>>
> 
> ..
> 
> 
>> +&sdhc_1 {
>> +	pinctrl-0 = <&sdc1_state_on>;
>> +	pinctrl-1 = <&sdc1_state_off>;
>> +	pinctrl-names = "default", "sleep";
>> +
>> +	bus-width = <8>;
>> +	mmc-ddr-1_8v;
>> +	mmc-hs200-1_8v;
>> +	mmc-hs400-1_8v;
>> +	mmc-hs400-enhanced-strobe;
>> +	vmmc-supply = <&vreg_l17a>;
>> +	vqmmc-supply = <&vreg_s4a>;
>> +
>> +	non-removable;
>> +	no-sd;
>> +	no-sdio;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&spi6 {
>> +	status = "okay";
>> +
>> +	mcp2515@0 {
> 
> Still no improvements.
> 
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> If you cannot find a name matching your device, please check in kernel
> sources for similar cases or you can grow the spec (via pull request to
> DT spec repo).

Understood, will update in next patch.
> 
>> +		compatible = "microchip,mcp2515";
>> +		reg = <0>;
>> +		clock-frequency = <20000000>;
>> +		interrupts-extended = <&tlmm 87 IRQ_TYPE_LEVEL_LOW>;
>> +		spi-max-frequency = <10000000>;
>> +		vdd-supply = <&vreg_v3p3_can>;
>> +		xceiver-supply = <&vreg_v5p0_can>;
>> +	};
>> +};
> 
> ..
> 
>> diff --git a/arch/arm64/boot/dts/qcom/talos-evk.dts b/arch/arm64/boot/dts/qcom/talos-evk.dts
>> new file mode 100644
>> index 000000000000..5c2ac67383e7
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/talos-evk.dts
>> @@ -0,0 +1,133 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +/dts-v1/;
>> +
>> +#include "talos-evk-som.dtsi"
>> +
>> +/ {
>> +	model = "Qualcomm QCS615 IQ 615 EVK";
>> +	compatible = "qcom,talos-evk", "qcom,qcs615", "qcom,sm6150";
>> +	chassis-type = "embedded";
>> +
>> +	aliases {
>> +		mmc1 = &sdhc_2;
>> +	};
>> +
>> +	dp0-connector {
> 
> dp-connector, unless there is here dp1. But then follow standard
> practice of adding suffixes, so connector-0, connector-1, etc. I could
> understand dp-connector-1 if you find dp-connector here:
> 
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

Understood, will update in next patch.
> 
>> +		compatible = "dp-connector";
>> +		label = "DP0";
>> +		type = "full-size";
>> +
>> +		hpd-gpios = <&tlmm 104 GPIO_ACTIVE_HIGH>;
>> +
>> +		port {
>> +			dp0_connector_in: endpoint {
>> +				remote-endpoint = <&mdss_dp0_out>;
>> +			};
>> +		};
>> +	};
> 
> ...
> 
>> +
>> +&i2c1 {
>> +	clock-frequency = <400000>;
>> +
>> +	status = "okay";
>> +
>> +	adv7535: adv7535@3d {
> 
> Still no improvements.
> 
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> If you cannot find a name matching your device, please check in kernel
> sources for similar cases or you can grow the spec (via pull request to
> DT spec repo).

Understood, will update in next path.
> 
> Best regards,
> Krzysztof
> 


