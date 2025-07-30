Return-Path: <devicetree+bounces-200898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 61822B1682A
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 23:17:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A242C18C775F
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 21:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34D01225419;
	Wed, 30 Jul 2025 21:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iGoTZh3y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B49C224B00
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 21:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753910160; cv=none; b=afOy96DhwEYYAX43yV2sMm+4w9QxWLj3LACNL/8oomUI1T27z+3DtHP/yTk3ZWlDetGjGdxX0H6dCEF9qlZpVpfvAf4KE2mqnC2nfeUhoTL6YCy2B+6PtV67A/Xf5j1Zj99TxwifNUiTYTnp/Fl9HeDCxrBmpe6QfNHSDOii2u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753910160; c=relaxed/simple;
	bh=MhTEx3J9zNXBfEucck8oQ1XK6cImKP7msyEGVpc96GA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XOFBdDfjerm4U+UiVMIQCFICQVas1ITYNkDwzWQ7x3unVm3Qu4pVzwLIuME6o7DcsF3wthYZqzw54y0mYXEcwrJpDYeR8JjamJGTD0yKFrio2dXLY3cdIkx/D98tY9eOm9y9rGmh+Wwiax3HrxeAKNLqsfUQf2cxqUhHX8nz3fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iGoTZh3y; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3b788feab29so167538f8f.2
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 14:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753910156; x=1754514956; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HTZ24rJm+Pue1YLQjE0bpMb81Dlei+K5VJgH8GnuVPg=;
        b=iGoTZh3yqMhkGbVUwAGNa3yWeMRXke/HcbbjKcqr9LSmMDrzjfKXodlb8MlBefsDCW
         PVMgAr7zikSK4LFrzohEHjBDRFZzjDuRVF7TxkxrplDBK4ruxSAsEvxBnbNScrt9WMFd
         FymfnGfCSKrecpwFS59gdc+8nm+Xyj0XjTb8/fbuEN7IeC7UiW79Qbx37JnPR2bIi9lQ
         uE5Z8Z3ocH3luKJQMlv13RAtfqmhWCeRUOfdwaTl0qf5R81ZRALPI2MxK1wO5X2pxpBT
         Sp8IC7+KiP2js8pwxPkIBOFAcwPjucKn9IbjkcQZXg4C+kcAP/g/W7qO10ORlzSM241I
         pGNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753910156; x=1754514956;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HTZ24rJm+Pue1YLQjE0bpMb81Dlei+K5VJgH8GnuVPg=;
        b=aM8qkBO4buCDJTtEGlgfvoJ1A0cp5uqEn7F7EqWW4mpv1Uku8PAgHQfwXExPjtZ0Qu
         Gu54t0bXOmUZsBg4rnIimFu3ZRTLmom8nXTvdSX1ULXrXH0NSYWnZZ9Z6UKz3cjJORcC
         wI6aPSK/Og2KrFIczlo4lkC/EOMrvN2ZN/TZin9utUkCewMGnn1NMb3mt6Ky4PYlm6jE
         G6FAdHLnL9/mGYvVpEztcIHpxICqrFpPLW9Dy/dbU2Y8kVh8ioEj0EApnAHY73d0pc9T
         1ZBU6sobKM3iZJTHE/zIy3q0/kNRIKITZhUkM3w+AaOvn+LJC8CEn+U9rv8ItpuxIrZy
         arog==
X-Forwarded-Encrypted: i=1; AJvYcCXTDoKmC4VA9TVSYvfEi8W/lvfAmrhVD+CgU07Ok0jeZRs1MqgvvDrIS755ZEUDkIxCdJSWrFgXIUdl@vger.kernel.org
X-Gm-Message-State: AOJu0YxLGtVisoD4JOgei8uAVcQNrkcpPub6gmbsXTSukpcVNnPV07V+
	Xyr+rz3cOR+Uwyu6+pbeBaVyrfZaCYPr6nhwbgQIXAlzjjqMR+UWxmEPJiba8rIiHK4=
X-Gm-Gg: ASbGnct/PkTj5JTpY4wB0S17wTHp+MWW+4xtL3VY+WelgaPwyuYaU18/oZICBLDtcy7
	lgyrCw8ZgkKS99V2ZsMP1Jby3A4MxkyWAqTLzSjOpJVT/pAeT4Zk1uU0cp1+8j9Ri7c0WNWy42U
	z16WdUhHZ3k4NlS66k8HNpkeENhd7Rw6g6y4QPkp07atO2sChQB19tfVjbWRoRT1mJvLxZDDjMF
	/zkijxpI0ZggvEUSD8JtYivWWxti19qikxo87MVdWCcyj0AoxCTzGhjKwB9Y1y2N+oAZdYO3bhO
	R5Fro+H6urPjUeHXjtvPHIg3wrqhwidoTi3Zxvy6yEZbpb/ou8ETSdCCbFoEUEiQR/3aRt3Pjm9
	zxxKEblP812YHzJLzy9RSp9KqDF8B4Q+qAIVwqIr8wkYyScJP464A9moB8T6R3A==
X-Google-Smtp-Source: AGHT+IHQkznpibqUF8XL+omLAf+uDsGuaH8lAZ0YQHFkhu+hPUSUSN7QyTWCfS2BgMUd882X/GeefQ==
X-Received: by 2002:a05:6000:1a8d:b0:3b7:8481:e365 with SMTP id ffacd0b85a97d-3b794fbe269mr3794834f8f.10.1753910156462;
        Wed, 30 Jul 2025 14:15:56 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3b79c45346asm122454f8f.39.2025.07.30.14.15.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 14:15:55 -0700 (PDT)
Message-ID: <87d40626-8789-4e71-8ac3-fa8fff0a7435@linaro.org>
Date: Wed, 30 Jul 2025 23:15:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] arm64: dts: s32g274-rd2: Enable the STM timers
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
 <20250730195022.449894-3-daniel.lezcano@linaro.org>
 <aIp+4mWS1k73Vf/A@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <aIp+4mWS1k73Vf/A@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 30/07/2025 22:21, Frank Li wrote:
> On Wed, Jul 30, 2025 at 09:50:15PM +0200, Daniel Lezcano wrote:
>> Enable the timers STM0 -> STM3 on the s32g274-rd2
>>
>> The platform has 4 CPUs and the Linux STM timer driver is per
>> CPU. Enable 4 timers which will be used, other timers are useless for
>> the Linux kernel and there is no benefit to enable them.
> 
> S32 have not ARM local timer? It is quite strange!

I'm not saying there is no architected timers but there are the STM. May 
be I can reword the sentence to prevent this ambiguity.

>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>> Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
>> Cc: Thomas Fossati <thomas.fossati@linaro.org>
>> ---
>>   arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts | 16 ++++++++++++++++
>>   1 file changed, 16 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts b/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
>> index b5ba51696f43..505776d19151 100644
>> --- a/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
>> +++ b/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
>> @@ -40,6 +40,22 @@ &uart1 {
>>   	status = "okay";
>>   };
>>
>> +&stm0 {
>> +	status = "okay";
>> +};
>> +
>> +&stm1 {
>> +	status = "okay";
>> +};
>> +
>> +&stm2 {
>> +	status = "okay";
>> +};
>> +
>> +&stm3 {
>> +	status = "okay";
>> +};
>> +
>>   &usdhc0 {
>>   	pinctrl-names = "default", "state_100mhz", "state_200mhz";
>>   	pinctrl-0 = <&pinctrl_usdhc0>;
>> --
>> 2.43.0
>>


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

