Return-Path: <devicetree+bounces-84381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E00092BEE4
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 17:56:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D0EA1C21878
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 15:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3F3819D898;
	Tue,  9 Jul 2024 15:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MM4sPECc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5D315C9
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 15:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720540561; cv=none; b=tOEyztnFEfAOSG9M1PHz/jumvIH/XQdNU9jZ6LaPBn7OrVD7/4OvddJbndiyFktvh2ETs4umolfiVZD2nbUTjhfxBJDHDAvbPYXN/w8fG8jQx72NAaZg5Wy7XBky+UNX6IyIMYQV6lEtOfPb/8dxneoeRKx9OH9EamsBJj6vjd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720540561; c=relaxed/simple;
	bh=XEnjqKzZBzYWAQR9CwjdJSaL+DHE3+UQikxNM+smtTQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LLJgGtUqmz53lLg2Hfb4e4EpJTVExYrrwdciS2Jke0XXN/OAqTtSXb+d01cppwtZZw4BWktHcz2pfHakBaBb5Nyn6bkAVA7uEMaeim/iBJds+8dfyam92GnuZKSFHDSzX+51Qk9ASMcXZ80z5BaJ8a4hF4ZaNV/IVT4eRpvvXh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MM4sPECc; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52ea3e499b1so5174413e87.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 08:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720540558; x=1721145358; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Kb8hNs2hghjQ2m4soHqnNroceNfOKpKVZ1P76gG8ZLw=;
        b=MM4sPECc3Q/+kbq8qNTfJVV2w4OGZ5DgKEB48s9rK/QLvtZwiyqUhWfZa+oKRdjWJ8
         GJqNI67GZxu/aamk/CfDIbAm+lcl5Sv3FZybtdqmH9iUC18kQhnJAtXvhUJrAy103Z7L
         pN5LxqtMx/LXj/haAEAe2tH5j9PoOD43SQ/2JCymqX9bMDZkVBEnm/dCMdwmS3AMDacM
         Qsi2MKZlvrhvpj08A+9OUllvjf9VRjlJK4hxipDI1qhv6K2OjYvhllIIE0WNQxesjZg5
         IENLkZ9pRDz2PyVkumS+nLUF3xtyNkSqyWHzfaKJDQ8ir2QUjVzpbMYrxFFkr7ttYEZL
         xERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720540558; x=1721145358;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kb8hNs2hghjQ2m4soHqnNroceNfOKpKVZ1P76gG8ZLw=;
        b=AFeyePvK/dsv+kJsj97pktxlwZJ47cz35NZe/3JkwOPzGCopPyV39dwfU41Qc3//W9
         721MWhMoD2eM4RI5s/6lO0YIWysIvZePkZ+e1ANOiABOeVZAnU/d+0YuBsvSTzhgvmXp
         lwkgU3F4IQ4byDgfnS9rIbITzsPZCg8IP2BZ5JlAaucYoV1UE0gfRhKyKf2T56rhP8Ih
         9JsdYiLpu6CozGnjRXAdKrlAfM4wPTVSt5VPNhYA5W5xDrF0HUW7BVQmWOpCPQHOGFMM
         YMlnk7QWYZODYEoyu8r0S8viFjdSUL6KJsdmm7I3y73VluZE3lorGxrIeTW/AkmaSb7T
         gipg==
X-Forwarded-Encrypted: i=1; AJvYcCX6qeKxBbgPq0G9Yqo7hHf3uzxM7aKs/dKF9d6APsoKOFXhcJbCBex9+eZ35TZN1lJ+5vZHMdh3DX18ZeFqB8P98b7OOmnZGYnotw==
X-Gm-Message-State: AOJu0YwdAC8L5oQttSb7zPF0+zN/vgRhJVXKp8++r2i+9appgZML9Owf
	5GW4ri1mHh29JDsdls+AdWGU2kTxymyCNvNSQ10ELymPQKk6FOzJvacse344pEY=
X-Google-Smtp-Source: AGHT+IG4bemecMAsKEDijoZ6HieHROjC0kyQfAlSqxupPftR6S/IFNAB3A7X4FibcRnKEA197tCEBQ==
X-Received: by 2002:a05:6512:1051:b0:52b:c0b1:ab9e with SMTP id 2adb3069b0e04-52eb999124fmr1787618e87.5.1720540558327;
        Tue, 09 Jul 2024 08:55:58 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:cf24:cce:17df:12ab? ([2a05:6e02:1041:c10:cf24:cce:17df:12ab])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4266f6f5a32sm46822925e9.24.2024.07.09.08.55.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jul 2024 08:55:57 -0700 (PDT)
Message-ID: <6806bceb-33c9-4417-aa99-f34dd325d24f@linaro.org>
Date: Tue, 9 Jul 2024 17:55:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/9] clocksource: realtek: Add timer driver for
 rtl-otto platforms
To: Chris Packham <chris.packham@alliedtelesis.co.nz>, tglx@linutronix.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 tsbogend@alpha.franken.de, paulburton@kernel.org, peterz@infradead.org,
 mail@birger-koblitz.de, bert@biot.com, john@phrozen.org, sander@svanheule.net
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-mips@vger.kernel.org, kabel@kernel.org, ericwouds@gmail.com,
 Markus Stockhausen <markus.stockhausen@gmx.de>
References: <20240705021520.2737568-1-chris.packham@alliedtelesis.co.nz>
 <20240705021520.2737568-8-chris.packham@alliedtelesis.co.nz>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240705021520.2737568-8-chris.packham@alliedtelesis.co.nz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 05/07/2024 04:15, Chris Packham wrote:
> The timer/counter block on the Realtek SoCs provides up to 5 timers. It
> also includes a watchdog timer which is handled by the
> realtek_otto_wdt.c driver.
> 
> One timer will be used per CPU as a local clock event generator. An
> additional timer will be used as an overal stable clocksource.
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> Signed-off-by: Sander Vanheule <sander@svanheule.net>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
> 
> Notes:
>      This is derrived from openwrt[1],[2]. I've retained the original signoff
>      and added my own.
>      
>      [1] https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob_plain;f=target/linux/realtek/files-5.15/drivers/clocksource/timer-rtl-otto.c;hb=HEAD
>      [2] https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob_plain;f=target/linux/realtek/patches-5.15/302-clocksource-add-otto-driver.patch;hb=HEAD
>      
>      Changes in v4:
>      - Reword comment about watchdog timer
>      - Add includes for cpumask.h, io.h, jiffies.h and printk.h
>      - Remove unnecessary casts
>      Changes in v3:
>      - Remove unnecessary select COMMON_CLK
>      - Use %p when printing pointer
>      Changes in v2
>      - None
> 
>   drivers/clocksource/Kconfig          |  10 +
>   drivers/clocksource/Makefile         |   1 +
>   drivers/clocksource/timer-rtl-otto.c | 291 +++++++++++++++++++++++++++
>   include/linux/cpuhotplug.h           |   1 +
>   4 files changed, 303 insertions(+)
>   create mode 100644 drivers/clocksource/timer-rtl-otto.c
> 
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 34faa0320ece..70ba57210862 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -134,6 +134,16 @@ config RDA_TIMER
>   	help
>   	  Enables the support for the RDA Micro timer driver.
>   
> +config REALTEK_OTTO_TIMER
> +	bool "Clocksource/timer for the Realtek Otto platform"
> +	select TIMER_OF
> +	help
> +	  This driver adds support for the timers found in the Realtek RTL83xx
> +	  and RTL93xx SoCs series. This includes chips such as RTL8380, RTL8381
> +	  and RTL832, as well as chips from the RTL839x series, such as RTL8390
> +	  RT8391, RTL8392, RTL8393 and RTL8396 and chips of the RTL930x series
> +	  such as RTL9301, RTL9302 or RTL9303.

Please make this option silent and selected by the platform. You can 
refer to the different options in the Kconfig.

eg.

config REALTEK_OTTO_TIMER
	bool "Clocksource/timer for the Realtek Otto platform" if COMPILE_TEST

...

The rest of the code looks fine to me. Thanks for commenting your code.

   -- Daniel


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


