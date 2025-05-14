Return-Path: <devicetree+bounces-177313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DBFAB6FDD
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 17:32:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2864166A87
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 15:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 870C3214A81;
	Wed, 14 May 2025 15:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zo1rjdwM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764AB1E0DD9
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 15:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747236631; cv=none; b=fHlVkEf6XddeoRNAZ7f4O3zBGov20DzAORkpBIZkgc8Brf8gzUMV79RxsCgeJEF+PX4G0eHsD7QvWkvH0HU/Sr/zcwOSjIT8W+TVpfx2tAS31apr9r1t6C4MvDOHCn+ua4/8bd8GwW+XbqD3pkwathplFUaN+MKGL+9WySWgXYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747236631; c=relaxed/simple;
	bh=moZFEINmCupMyzsdUOqHVB3JKm+jOMrn4fBI7Ik9468=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=TW2E2Ar96pTW6We8bjdaUJD4JTsoJ+JFRDknwJbFxFoLm/Vtskarf9MjyE9mTlbbcnrRYSx5VmqiPm0+1rmvER/l0tIF2J1GT5QEdaDQDj5X5LM5wS5K7hRI21mVZsrFFFsVqh1DqFCR3+U/iYSpMrBSs8TxJfrejjmHEZQVSeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zo1rjdwM; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43cf628cb14so8563935e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747236628; x=1747841428; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nycOpyBxI5sRC+H1LR7ey+jyRhRD4iCs0HcWJtxwtvU=;
        b=zo1rjdwMWVdUfHn0DPJL2RiafHIcfHF1pyTtVUPGCApTtGkNU+K2QRtfk68+B0TgPV
         aod01e7J8yAiBTBpAFH8dL4PYOn7KI5RstxdaEgOhACd0S/uolb+NYgLIKGCMJxoxane
         qZFU7/Zf1yBj/xxfbzig5EpoIUyPQqrMJO5xSCUEo3qF/Y1DiBA4PdAhLU8qduMI6VJG
         VaAIUKkiRsa8XMTRSUDwM9XDxHLQnqYgotwwZR03w0/tBW5VsYejn0pkLrgz0engiLMY
         r4TrWT35P3tC+znhTFSVbluC83y1+5XuNA4iRsVn1LtfArZ6Kt2n6P+z8I0OvcO5Q5Vy
         ygGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747236628; x=1747841428;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nycOpyBxI5sRC+H1LR7ey+jyRhRD4iCs0HcWJtxwtvU=;
        b=e58NL4YnNRSjYQgHchwHpQ27hV5EoAc5EDBwnKgJuxubFWUwHFXa8jbemepNzl/cgf
         7AeNb7N7/lTktNyBTXJxZRxum35Os7xudPhyRuqgy6GWCSg+eHVnszMS/SIfXP9PsFpC
         f54e0YTFXG3TCF7KcFNpMv1LPbITzdDPFXqxOFcPvFrJhpSM0ETqAqnjmTEo0jkCJi/h
         A6dKOlmCbjRDN+62II7n6CrIQ/7Db9zmGyjF6/wvPMwJCPlJkLgB8zhUMelCH/He+Iin
         3eK7/1rjwhOtaK3sEvqpW9GxXLcCfHYLW6OjMkJYQGt6aIvHwxnUOBGJJi0MX83o5Bj5
         d5Nw==
X-Forwarded-Encrypted: i=1; AJvYcCVuA816fd14VXTp6SKmF+h6wY/yFSRMOBASrJfzRESmndeIW654uZEwPApBa5g9uS1ph/zGHWOcU0/i@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7++NWHzMBNogfZFXvG6pv7HM9FviE4QwDO8IJLSytv9RkdJTS
	pU1MXuaZleXPIvw+KdO3EOhK7clt8oIzsfCLIzSRcYPFzRfoE9q9mtGADZBuQJ0=
X-Gm-Gg: ASbGncvdoLFGft+qnliEeidoDl8PS9WTb4HK6VCLE6wWXdPAk91MnKsgAwFI99aFcSG
	tL7vovhC0BxTV42CVOyK8nbfwfNmUCixtsWUP76k6DfcazLMFdXLGGfwCnNxWIDp/GwhZXLbR45
	kE35KFz4Ji9y7VN9gnYplEyLLXGrXJmDpFQvqacHCZfAze1wNWGzXbj1tHKcNPMk9m7g2ujpy1o
	aAUBtqOSh6NJmiON6B9nB9i+yQH7NvSw/0zPzIha5VsJYwrUs01AWsjhj6a+hMr5XyX6O/XpaJ0
	SsnppVnmgiUWaxG7MJWF2DfYGgDG8GtTJq3SsTbQijBxDidzy4eaUrutjIWTqpcKeGKFCYgwrFB
	iVWiUQVCO5BUEB1iMG9/0OYQ=
X-Google-Smtp-Source: AGHT+IHTYDs/TaBgsdW3hxCoxJZWvcRCJr5SkxDS89aSiJtpbn9D4/TYDukFeKcnbKmAmLbDJRJzOg==
X-Received: by 2002:a05:6000:2486:b0:3a0:92d9:da4 with SMTP id ffacd0b85a97d-3a340d159e1mr7054344f8f.6.1747236627686;
        Wed, 14 May 2025 08:30:27 -0700 (PDT)
Received: from [192.168.2.1] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3a1f5a4c599sm20435689f8f.94.2025.05.14.08.30.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 08:30:26 -0700 (PDT)
Message-ID: <650c336b-a698-42f5-ad59-7dcdf24667f4@linaro.org>
Date: Wed, 14 May 2025 17:30:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] Add the NXP S32 Watchdog
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wim@linux-watchdog.org
Cc: linux@roeck-us.net, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, S32@nxp.com, ghennadi.procopciuc@nxp.com,
 thomas.fossati@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 alexandru-catalin.ionita@nxp.com
References: <20250410082616.1855860-1-daniel.lezcano@linaro.org>
Content-Language: en-US
In-Reply-To: <20250410082616.1855860-1-daniel.lezcano@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 4/10/25 10:26, Daniel Lezcano wrote:
> The NXP S32 watchdog, referenced in the documentation as the Software
> Watchdog Timer is actually a hardware watchdog. The system has one
> watchdog per core but an assertation does not directly reset the
> system as this behavior relies on a particular setup and another
> component which is not part of these changes. However the first
> watchdog on the system, tied with the Cortex-M4 #0 is a particular
> case where it will reset the system directly. This is enough for the
> watchdog purpose on Linux.
> 
> The watchdog relies on the default timeout described in the device
> tree but if another timeout is needed at boot time, it can be changed
> with the module parameter.
> 
> If the kernel has to service the watchdog in place of the userspace,
> it can specify the 'early-enable' option at boot time.
> 
> And finally, if starting the watchdog has no wayback then the option
> 'nowayout' can be also specified in the boot option.
> 
> Changelog:
> 
>   - v4:
>      - Update the watchdog timeout when the callback is called (Alexandru-Catalin Ionita)
>      - Fix the clocks bindings to have all the clocks described (Krzysztof Kozlowski)
> 
>   - v3:
>      - Add the clocks for the module and the register (Ghennadi Procopciuc)
>      - Use the clock name from the driver
>      - Removed Review-by tag from Krzysztof Kozlowski as the bindings changed
> 
>   - v2:
>      - Removed debugfs code as considered pointless for a such simple
>        driver (Arnd Bergmann)
>      - Replaced __raw_readl / __raw_writel by readl and writel (Arnd Bergmann)
>      - Reordered alphabetically the headers (Guenter Roeck)
>      - Enclosed macro parameter into parenthesis (Guenter Roeck)
>      - Fixed checkpatch reported errors (Guenter Roeck)
>      - Clarified a ping on a stopped timer does not affect it (Guenter Roeck)
>      - Used wdt_is_running() to save an extra IO (Guenter Roeck)
>      - Fixed a misleading comment about starting the watchdog at boot time (Guenter Roeck)
>      - Replaced allocation size sizeof(struct ...) by sizeof(*var) (Krzysztof Kozlowski)
>      - Drop old way of describing the module and use table module device (Krzysztof Kozlowski)
>      - Replaced additionalProperties by unevaluatedProperties (Rob Herring)
>      - Removed the DT bindings description as it is obvious (Ghennadi Procopciuc)
>      - Fixed DT bindings compatible string (Krzysztof Kozlowski)
> 
>   - v1: initial posting
> 
> Daniel Lezcano (2):
>    dt-bindings: watchdog: Add NXP Software Watchdog Timer
>    watchdog: Add the Watchdog Timer for the NXP S32 platform
> 
>   .../bindings/watchdog/nxp,s32g2-swt.yaml      |  54 +++
>   drivers/watchdog/Kconfig                      |   9 +
>   drivers/watchdog/Makefile                     |   1 +
>   drivers/watchdog/s32g_wdt.c                   | 315 ++++++++++++++++++
>   4 files changed, 379 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml
>   create mode 100644 drivers/watchdog/s32g_wdt.c

Hi,

Gentle ping, we are close to the merge window.

Thanks!

   -- Daniel


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

