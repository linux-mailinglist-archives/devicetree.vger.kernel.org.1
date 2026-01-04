Return-Path: <devicetree+bounces-251298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B8ECF1078
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 14:47:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 051A930142D2
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 13:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 365492C0F73;
	Sun,  4 Jan 2026 13:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZrkykxA4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91C9F2E7F0A
	for <devicetree@vger.kernel.org>; Sun,  4 Jan 2026 13:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767534359; cv=none; b=g8AjlMh3mx+/UfWNYjMvtvtLIz9e13UF5mDLTD8rE2VJ+JZejU8uRBcZ+3fZKcMSCpdfu3jlRNib+crKxRwvfVqgD/BvbvgTrzeZA3XhZeUePbGwqlCjIZOymIvmYXO+k02uBfipQp7djLi4Ip/6icCn3uCdv7R/AwvWQU9EGIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767534359; c=relaxed/simple;
	bh=ZaU491GHPP0X/mXK+gkH+UwnJTZO6s2faCvGdDKp3x4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ml1tllJMBXEpPaz5Jjei103q+oIvEp3/9HrZwSIP0HGj53yOlgU8z0iNZpdhd1QromzruwidHKTl23VmuNXhYfVEiqwsrndC1OBTkibPnXgEFeUkuRwdI/dq3vjvES3C/YCg/h0Zj+05UcNhKghatVOU/ztSg7lzr5iTcbCpe14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZrkykxA4; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a0a95200e8so111530685ad.0
        for <devicetree@vger.kernel.org>; Sun, 04 Jan 2026 05:45:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767534357; x=1768139157; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+NZZFl+MT1vAjqUFcrCoiCgpusqylZRq7mNgr8aK7XI=;
        b=ZrkykxA4HZIRx74+G+sdJ1gxQ+NwBRtMoAoAyqmA5WrCxSrK6Y9s/ZDflp/G2YR4rN
         vcZfyaK0IAe17ukdcpxd1i7AGzX1ENlRs8i+0aCji2vGxtToeqIMZgSE5+a+do5NU4T0
         W4x3oOQgzMknAa8TpAWqzcqmmFQzDq5AJEii5d9or59+JD8ERFnbz67awGDgJwgC0Hyu
         VR2enscLhrcn1GQ6AVXunQO0TCWc/Qmo/i2TywjH1U7HWu5xMYJY85DuYgxYYJPWNz1+
         X3fSshPPypNmg9oE2TN6XZt6PmsaFOKA/Zdp2lEEGlosgbqtGdiVkpAnjTimaBkc8y+D
         Opxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767534357; x=1768139157;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+NZZFl+MT1vAjqUFcrCoiCgpusqylZRq7mNgr8aK7XI=;
        b=j7D876ME+UEg5Wz8oKfVs8jupl/vLBfDU+uc6NmjgehnbzKrv73zENdCyp3HZ3Fr/6
         uOH0sluhth97cMYRp+L9eJE/6d8GUuoE/ZSpS7AAzgCcTSjEp+6oFTtG5uHrgcAUGNaU
         XK0dk/tyswVe1ZRArJ8J+HXPQK3dl2uE4wK8g1rfW09G7qVGcBIAkVTMFJ4t3JGF7DFv
         5iFjgOb12lOG/p4cZpP+s3eVZwmgU5dFOC6wkR9DRrMKqdWJdxfOeAum1htSBmLtWuTy
         tGLzj41JXHV02asoGzfxUKRevJbOJMUQtaFWvH5gOW3ZhOIabBJUt05QKJ0dTq5ONh3f
         IrIw==
X-Forwarded-Encrypted: i=1; AJvYcCUBt+o+zVWHj86syfY0ZES3UPjEioDorAnQiMfgzry63y5ECve4QFIcBf+q76vQh7EG/TI03WJP+oGb@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4KdYs5k9FwL5bNAXWrWuUCFcad0YT1+n6JzsuCKJmngR+l+ms
	tqZbUHtF+QBh524wz6QWUMVHvtta9AD7oFxmDGVyPzPcY4/F6bGMlGgT
X-Gm-Gg: AY/fxX4zfiggFzWtd8S7TQSKowgmkmMQ7bC3FBGj0PB4v7ckLOxgNNqBP1N6V5fI9Yv
	KUHHvjbmRUatfwekaCCr8QpktT1GXbPXYiw40ToDV7Cv0euIv+dO63gt3EScygYZwa6fiK+y13L
	eSou/Sv1QHceEBQryQxSsSE5XinQt8n7p16thgm6LaBGAY/rA0TWerpzvIb5MoF0lOEvXsjvmUS
	TQ8LqImSgGiX9v6k/Mj15px67A4m9XUZJVRjkWcygQBXMbSTukKdjlM5JlpWod8I++N1IyiAzH9
	zWvBE9jHk+eeFmEg5hHO37EarsIPGa33EcFZKy9eJqWbIw1x5iG86KK1r56dpQbF9qfhy7d9LEu
	TrFjUKtjSsq4nRfFDbCcB0w0QjtukRJe0cyBLETpRxJSBMXocsmGS3m49M6K1gM0oAN7hrnsJSZ
	gHvgsfVWMB9vQw2tcQ7RSLSXHTONJj3ErEn6VZ
X-Google-Smtp-Source: AGHT+IEDApM6jMUqXmOQC79GFfIC4sIy6cb+Qboy5rbJD8Tyd7ltuTIgica7oqnktpgaeoZ9nZgMgg==
X-Received: by 2002:a17:902:cecb:b0:2a0:8859:3722 with SMTP id d9443c01a7336-2a2f232baa8mr372016715ad.25.1767534356794;
        Sun, 04 Jan 2026 05:45:56 -0800 (PST)
Received: from [192.168.31.239] ([167.103.54.183])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c82bbesm431959055ad.35.2026.01.04.05.45.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Jan 2026 05:45:56 -0800 (PST)
Message-ID: <14613f89-6be0-4eb3-beb5-375ab008a313@gmail.com>
Date: Sun, 4 Jan 2026 19:16:20 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 5/5] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
 konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251230130227.3503590-1-tessolveupstream@gmail.com>
 <20251230130227.3503590-6-tessolveupstream@gmail.com>
 <30ee8541-3ec2-49ac-8fe0-987cdc5b16e7@oss.qualcomm.com>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <30ee8541-3ec2-49ac-8fe0-987cdc5b16e7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 30-12-2025 20:21, Konrad Dybcio wrote:
> On 12/30/25 2:02 PM, Sudarshan Shetty wrote:
>> Add the device tree for the QCS615-based Talos EVK platform. The
>> platform is composed of a System-on-Module following the SMARC
>> standard, and a Carrier Board.
>>
>> The Carrier Board supports several display configurations, HDMI and
>> LVDS. Both configurations use the same base hardware, with the display
>> selection controlled by a DIP switch.
> 
> [...]
> 
>> +++ b/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
>> @@ -0,0 +1,126 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +/dts-v1/;
>> +/plugin/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +
>> +&{/} {
>> +	backlight: backlight {
>> +		compatible = "gpio-backlight";
>> +		gpios = <&tlmm 59 GPIO_ACTIVE_HIGH>,
>> +			<&tlmm 115 GPIO_ACTIVE_HIGH>;
>> +		default-on;
>> +	};
>> +
>> +	hdmi_connector: hdmi-out {
>> +		status = "disabled";
>> +	};
> 
> This should be a &label_reference
>

Okay, will add it in the next patch.
> [...]
> 
>> +	wifi_1p8v: regulator-wifi-1p8v {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "wifi_1p8v";
>> +		regulator-min-microvolt = <1800000>;
>> +		regulator-max-microvolt = <1800000>;
>> +		gpio = <&tlmm 91 GPIO_ACTIVE_HIGH>;
>> +		enable-active-high;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&wifi_reg_en_pins_state>;
> 
> property-n
> property-names
> 
> consistently, please
>

I didn’t fully understand your comment.
Could you please elaborate a bit more so I can make the
necessary changes correctly. >> +		regulator-boot-on;
>> +		regulator-always-on;
>> +	};
>> +
>> +	wifi_3p85v: regulator-wifi-3p85v {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "wifi_3p85v";
>> +		regulator-min-microvolt = <3850000>;
>> +		regulator-max-microvolt = <3850000>;
>> +		gpio = <&tlmm 91 GPIO_ACTIVE_HIGH>;
>> +		enable-active-high;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&wifi_reg_en_pins_state>;
> 
> ditto
> 
> [...]
> 
>> +&tlmm {
>> +	bt_en_state: bt-en-state {
>> +		pins = "gpio85";
>> +		function = "gpio";
>> +		bias-pull-down;
>> +		output-low;
> 
> output-low/high should be unnecessary as these pins are governed
> by the kernel driver
> 

Okay,got it. Will make the necessary change in the next patch.
> lg otherwise
> 
> Konrad


