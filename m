Return-Path: <devicetree+bounces-252828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF94D030C5
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:33:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EF38E30E962C
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F9F92F9998;
	Thu,  8 Jan 2026 13:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k7IwSznb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B422874F5
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 13:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767877322; cv=none; b=KbOVcILQ+I0NTa+LTuyG9rTXRaMqMAZy0UqUYyUOAAhHDPMPOqIxsQsLQdGRIws5ptaYh8evejDKNzghliQd5JrAQY/DbTFQ1FF1HmP8iYFWUL4+pBc+BdZ4UcgMBe38Hfite53BkMF6qI3p11uQ0n4lg62RqgFXiTF3JIryldo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767877322; c=relaxed/simple;
	bh=+2nlY4acJgu7h9Eenmr7hGs2bJ+9UO4JaRvnsRPVtgE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gaNMP+Ak8pTTZfc77pEzZqaLFk2yLmS2CNaiPl5eh7JDF5vzQL8g1Sf2Whh5/rhs7HkxMHiRWjw0C5nBTz9i5s4RBFogLtGFNDuCetoZSDTZ07zPbGoGUXByRmEwf42bT3XPLmTY+kXvo5zjvOZAdIvnKGq61XQhwybtmIgn7Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k7IwSznb; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7b9387df58cso3454383b3a.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767877320; x=1768482120; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zhMPSQHGQIzOorAJaD3RnY6gMKj70DgK1/kssz98Fqo=;
        b=k7IwSznbIvqTH1MjWSyhSSx3YHtzB1HANiPQs/zd17a1UYgEw9fUajajoSN6fT3PyF
         PZ8YL+Hfyqtp0aHtEfj3pmzlmcm9l/zkiT0A++CSUx5SoY+RiI5rukH+eDrLtBNByx9X
         551AQBKyYyHjiJcUDnGRtM8GrXUrwutRF6QLQbjHfLMaw/qF0MEtEzYp9aMyg3tUf/T7
         Y1Bz4weA5h88IfRXaVe9+ISJTpNFFwK1xAXl1N5xecT8Q21WNW9wDWEhiUfjl3WW6SHZ
         PNB59E0m0mzAHbYIviLELcMt51nvz/uyLbrUHuxnxnMBqFA2qVdsLTIokU78j3k8p8Rd
         vRZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767877320; x=1768482120;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zhMPSQHGQIzOorAJaD3RnY6gMKj70DgK1/kssz98Fqo=;
        b=jnmKR4F9UCTEZLSEODs3pY/EN94Rcfr0HLVaeQwGaL4DJOxGjwYCdSQtlfKszE+g7E
         NqKQSMTkdAjJKmJMjO99CLBQUvoPLNVLSXHYv5RsT7HPlCYg3yhEeIQHmjbFgwBegYLu
         5lz0G9wuSTP4x0M5/AKGpvLW/uwMBcrrj+jFryl2w5Z27wMrR+zH69lTf4pwvY2QLDBC
         OyMQgA5SH/71Jpod5TpXPSDGGiKp2AA43l0obCGfEeXyj6bP0HFSO37N7cf2/Zk2938i
         p4jFDoqB3yYUgihkC+JMvZ7NeRWYpmA/88wWgxyRkSImV0XtaaP+f9uLl4GuXzpJDIhv
         ohpQ==
X-Forwarded-Encrypted: i=1; AJvYcCV33r5u9YdBIyx0c2+3L1iFX5Bn+B71Yx7+TZlmpHnWMj7TQ/jr4abwqC7w5+Sna1XuZTNcMINZe++6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+LRWq0xyvnBgNIkzEGJ4dxRQVLYG5TSvGsT7ZxfkVY1gLzp6h
	Al78dCSVH0Rd7x+Ynac0hDhCBB7d4FSAXQJ0Nqa2KNiI1fiKcAmcNrSt
X-Gm-Gg: AY/fxX7VEvzFPKEgi7yIWSkhIhP4wHZaeW+f7up1yVT3Ln00pZiUmO7XJ1iQVa6W3AM
	zgtadaYZgxFILjX+IR/WNPMnP4IbJVHCYtj0iDAEkxWHtBWPje2Rdb96aORmac4l+6rTlngh3MT
	DYfIkZgbVaQW4JLqrOVURfDLOLv/HzrsvzilC1jgy2AM5DM4F2MPRrwL+XwUS4llAkq12Xffw+M
	6rj878+FdolzHC7huv9pm1MaNgR7iptibG06Rf9DVxkuIprOqJviN0jWlpS8oOsZXBtQ4qPRy9W
	VMIoy0x+l95aXHlg4DVh7SCwzkP4bVKrygvYomNcalW60mcLspC808GSc5SED3KPVaYAH+r5CUh
	AOG9H9NhFuNAbHylyMAyZw3ndRCeQum6+lRc+SOX/R7qVVw/zZMxYls7yXEzlvoNVIO6UHB4FrK
	JprISh6HxYaAkCzcQJTBR16PZFtoLifJuC
X-Google-Smtp-Source: AGHT+IG58rlfxspn/kFapWi4+Z1BtMmNV4nYEmy6MgLlMRA9lzpBsFqdtqwbTBQvgAd11fXY7G7KKg==
X-Received: by 2002:a05:6a20:a10e:b0:33c:2154:d4f4 with SMTP id adf61e73a8af0-3898f9975b1mr5814469637.49.1767877319352;
        Thu, 08 Jan 2026 05:01:59 -0800 (PST)
Received: from [172.16.20.12] ([136.226.245.1])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cc05cd9d9sm8466111a12.16.2026.01.08.05.01.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 05:01:58 -0800 (PST)
Message-ID: <46fac652-e6bd-43c9-a57e-e76d66239407@gmail.com>
Date: Thu, 8 Jan 2026 18:32:23 +0530
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
 <14613f89-6be0-4eb3-beb5-375ab008a313@gmail.com>
 <c3492b90-bb48-4584-99fd-b1b6832d22ff@gmail.com>
 <4d95232c-f59a-42c3-9eb4-934b58429d25@oss.qualcomm.com>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <4d95232c-f59a-42c3-9eb4-934b58429d25@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 08-01-2026 14:06, Konrad Dybcio wrote:
>>>>> + */
>>>>> +/dts-v1/;
>>>>> +/plugin/;
>>>>> +
>>>>> +#include <dt-bindings/gpio/gpio.h>
>>>>> +
>>>>> +&{/} {
>>>>> +	backlight: backlight {
>>>>> +		compatible = "gpio-backlight";
>>>>> +		gpios = <&tlmm 59 GPIO_ACTIVE_HIGH>,
>>>>> +			<&tlmm 115 GPIO_ACTIVE_HIGH>;
>>>>> +		default-on;
>>>>> +	};
>>>>> +
>>>>> +	hdmi_connector: hdmi-out {
>>>>> +		status = "disabled";
>>>>> +	};
>>>> This should be a &label_reference
>>>>
>>> Okay, will add it in the next patch.
>> I noticed that in several existing .dtso files, the root node is
>> commonly referenced as &{/}. In your comment, you suggested using &label_reference. Could you please clarify which specific label or 
>> node you would like me to update here.
> &{/} must be used for root nodes in a .dtso (for it to compile). I meant
> using a &label_reference for hdmi_connector

Thank you for clarifying. I’ve updated the patch to move 
hdmi_connector out of the root node and reference it using 
&hdmi_connector instead of defining it under &{/} like below:

git diff arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.
diff --git a/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso b/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,
index 5393d1dc7fea..bd1cbfc866b7 100644
--- a/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
+++ b/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
@@ -15,10 +15,6 @@ backlight: backlight {
                default-on;
        };

-       hdmi_connector: hdmi-out {
-               status = "disabled";
-       };
-
        panel-lvds {
                compatible = "auo,g133han01";

@@ -49,6 +45,10 @@ lvds_panel_out_b: endpoint {
        };
 };

+&hdmi_connector {
+       status = "disabled";
+};
+
 &i2c1 {
        clock-frequency = <400000>;

Could you please confirm if this change aligns with your 
expectation.




