Return-Path: <devicetree+bounces-200897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D88C4B16827
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 23:16:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1CCAE18C7658
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 21:17:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8729221F0A;
	Wed, 30 Jul 2025 21:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oJYPy0mT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F1721B9E5
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 21:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753910147; cv=none; b=hBMDI8RvMSEM172tVWS/RzOrjlN8yDSs7W3/JeU9hJ6S+8zq7qtzVcv4HhYvcbfIwmmMCyJJ0P1lax0GspgSbUI6uTpc8xWyfyO+sJ3T7NyRilSdHppQXKJdkjaqIS8tiWiuvhCT98BfWVL4QH45DhgXZwA7j9KA9wwAUFpq/SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753910147; c=relaxed/simple;
	bh=OEGRR0GL1Wp5gBBRDstry2Twd8ivbUo1SBiOhiC15Y0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bC+bb3MJyl0TVgkGreXpyntmKc/gK3Hy41ezPixUpmwnpRQ6M3JFEi4l50y9BVruvpcQ6MscbcnhugNeSUzQgqpofNP7CmF1oDY3isnzOofWIyMBG/KRpEmATqM1gT3JFZJDgAjfiLfZfI+aFvyX2XGC+PJ4XTYi09dS9A433Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oJYPy0mT; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3b78d13bf10so299534f8f.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 14:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753910143; x=1754514943; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SQ3CB5Di8XupjMhTVhqFBTkn93P4HElyS0DfwyXNeNs=;
        b=oJYPy0mTuEqtG8TZBBnB4xhhO/K7zUcZbUFlTYpOLjfbMQcgdb2kY7X4LBkGRr3nbY
         +Vb681IkvpNskvZo3prWWY/dljMeKrSEYPV028t5tgfEQvsf/gqTVAMJRMT5R0LO6ibH
         1SVrnj8/nFwd8tpUM6/DAPkOj9G1tFbDHxYmYDLlcVFT5Ox54FD67IDejbGSC7ev3Oe5
         zc3Lh9pbqFVTrv7KYth3mZOyeN922poL7RPwjp7XhK47H1bbGxOF84/9yrxLOy+l1nIS
         Ku688UsB/8AXWcQnXHRKjXMVBHqPOpkbMuOTcLhl+LQsPOTq1+jFAY+imqxAKWcOKSPE
         FgSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753910143; x=1754514943;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SQ3CB5Di8XupjMhTVhqFBTkn93P4HElyS0DfwyXNeNs=;
        b=r5OQ5E71miPU5w8uy0p/PTtQ/3Lok55dh72gI1Yuh9m1z9t7El6gpIdwdfLj189WzV
         1JI8QTL8Ypit956ptxqCjOYtgGYTLRh2dRfWmynTEWH4rg4i+vQMvrLl7c8kLl4Pwd0R
         9Xk9ecVY4V8c5Z2dNKYyUfUb3Tp2b8BYpqlBu6psAAj5Q7NF+JrNtG0+tD/NteUa4mTf
         ZMr5bC5QgBSWVglDzSVueA7TKW0Q3lLrn6Wa9oNwYitA9AfEkcF3Moa4sE6+2v+13Lbt
         ujcT65lL6xnbvovxKquA8Y916qwd3eohAumG3ukBqKoMglyIp/ntEKTCGgm9v3tEW0Tr
         5O9w==
X-Forwarded-Encrypted: i=1; AJvYcCUnL/V3zPNgmwUWlmkDfYxTmfOcY57kDPV2dXp/3tfY8sdrvKKVGYIICI8I3oH8LARSrjRdKOijMX8z@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7dPnIedqqRewvyH0vaWSeXhXL4U5LuEJrLXpjeXuZ2Nfr85XN
	Hr0S/zI5mmfkUKNP3DrMAK17660Quq22cFPBQ0lqNZwOiyEDQ1y9/1KXdurkgJ7/qxA=
X-Gm-Gg: ASbGncvEU7kdm3RB52NlxuWfb/HUwXkr27g54YY25W2Wdl3Om+SYASyVJ7gbYR5vrR0
	RZTxBtW/6xw1kVeQQ5IvCeGE3XOMPap6ZBvwimK2Wcsqn25AYVc9J/LI4paccVW6mwHJcMd/qZi
	DvZKu2gLmxfPZdoxjcLXzn6gJ09mGbaxLTrHfB2Hms//P5BgWH7dTbpFroXu1Ey+TFGG8TvVB8N
	RAFGSHv0FlNUcJrJm4lDpGZ+/TTBJCYhK0F3EN+85ks+llGaEQHHpJwvcTYQZ1BoFjqnU+tpGPL
	YcYp2vRShA4PWYu0PlG4Vf8ov0Z4QOxzyKtzOxxUjbVDNmgx76CcMXS0U0QzDlr1sMn2wCbEE7c
	VLc0u+tSELuzFfe0l28+j6SNFAstRJcgAzsBORcbRVJrPDC7BiY+4PNQbTuLi1g==
X-Google-Smtp-Source: AGHT+IGiGhxu3QjHLE0SDvEDQUGCIkL2WCDhj7kxvNBJ2aCm+04aHd/hjhoJsotzbvOt/yI5531MXw==
X-Received: by 2002:adf:fa41:0:b0:3b5:e6bf:8379 with SMTP id ffacd0b85a97d-3b79502977bmr3012564f8f.28.1753910142356;
        Wed, 30 Jul 2025 14:15:42 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3b79c4533f1sm122572f8f.42.2025.07.30.14.15.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 14:15:41 -0700 (PDT)
Message-ID: <5be6d858-01e1-4c2d-bd5c-0e3385251af7@linaro.org>
Date: Wed, 30 Jul 2025 23:15:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] arm64: dts: s32g2: Add the STM description
To: Frank Li <Frank.li@nxp.com>
Cc: mbrugger@suse.com, chester62515@gmail.com,
 ghennadi.procopciuc@oss.nxp.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, s32@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 imx@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
 Thomas Fossati <thomas.fossati@linaro.org>
References: <20250730195022.449894-1-daniel.lezcano@linaro.org>
 <20250730195022.449894-2-daniel.lezcano@linaro.org>
 <aIp+XTCSpNGee2qx@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <aIp+XTCSpNGee2qx@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Frank,

thanks for the reviews,

On 30/07/2025 22:19, Frank Li wrote:
> On Wed, Jul 30, 2025 at 09:50:14PM +0200, Daniel Lezcano wrote:
> 
> I think replace all 'description' with 'node' is easy to read.

Sure

>> The s32g2 has a STM module containing 8 timers. Each timer has a
>> dedicated interrupt and share the same clock.
>>
>> Add the timers STM0->STM6 description for the s32g2 SoC. The STM7 is
>> not added because it is slightly different and needs an extra property
>> which will be added later when supported by the driver.
>>
>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>> Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
>> Cc: Thomas Fossati <thomas.fossati@linaro.org>
>> ---
>>   arch/arm64/boot/dts/freescale/s32g2.dtsi | 63 ++++++++++++++++++++++++
>>   1 file changed, 63 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
>> index ea1456d361a3..3e775d030e37 100644
>> --- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
>> +++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
>> @@ -503,5 +503,68 @@ gic: interrupt-controller@50800000 {
>>   			interrupt-controller;
>>   			#interrupt-cells = <3>;
>>   		};
>> +
>> +		stm0: timer@4011c000 {
> 
> keep order according to address.
> 
> 4011c000 should less than 50800000.

Ah, sure. I'll fix that.

>> +			compatible = "nxp,s32g2-stm";
>> +			reg = <0x4011c000 0x3000>;
>> +			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
>> +			clock-names = "counter", "module", "register";
>> +			status = "disabled";
> 
> why not default enable.

The S32G2 and S32G3 can have different variants with 2, 4, 8 Cortex-A53 
and 3 or 4 Cortex-M7. We enable the same number of CPUs present on the 
system.

AFAIU:
	S32G233A : 2 x Cortex-A53
	S32G274A : 4 x Cortex-A53

	S32G399A : 8 x Cortex-A53
	S32G379A : 4 x Cortex-A53

Otherwise we would have to do the opposite, that is disable the unused 
ones in the s32g274a-rdb2.dts, s32g399a-rdb3.dts and other dts which 
include the s32g2.dtsi and s32g3.dtsi.


>> +		};
>> +
>> +		stm1: timer@40120000 {
>> +			compatible = "nxp,s32g2-stm";
>> +			reg = <0x40120000 0x3000>;
>> +			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
>> +			clock-names = "counter", "module", "register";
>> +			status = "disabled";
>> +		};
>> +
>> +		stm2: timer@40124000 {
>> +			compatible = "nxp,s32g2-stm";
>> +			reg = <0x40124000 0x3000>;
>> +			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
>> +			clock-names = "counter", "module", "register";
>> +			status = "disabled";
>> +		};
>> +
>> +		stm3: timer@40128000 {
>> +			compatible = "nxp,s32g2-stm";
>> +			reg = <0x40128000 0x3000>;
>> +			interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
>> +			clock-names = "counter", "module", "register";
>> +			status = "disabled";
>> +		};
>> +
>> +		stm4: timer@4021c000 {
>> +			compatible = "nxp,s32g2-stm";
>> +			reg = <0x4021c000 0x3000>;
>> +			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
>> +			clock-names = "counter", "module", "register";
>> +			interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
>> +			status = "disabled";
>> +		};
>> +
>> +		stm5: timer@40220000 {
>> +			compatible = "nxp,s32g2-stm";
>> +			reg = <0x40220000 0x3000>;
>> +			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
>> +			clock-names = "counter", "module", "register";
>> +			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
>> +			status = "disabled";
>> +		};
>> +
>> +		stm6: timer@40224000 {
>> +			compatible = "nxp,s32g2-stm";
>> +			reg = <0x40224000 0x3000>;
>> +			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
>> +			clock-names = "counter", "module", "register";
>> +			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
>> +			status = "disabled";
>> +		};
>>   	};
>>   };
>> --
>> 2.43.0
>>


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

