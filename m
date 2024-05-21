Return-Path: <devicetree+bounces-68102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 048E98CAD66
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 13:32:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF62B1F23175
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 11:32:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A994C65E20;
	Tue, 21 May 2024 11:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DBDsLFf2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B0C1F951
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 11:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716291117; cv=none; b=aTjCMJVuNkyxXAgbKz/Nnbq0y/w6xmt6W8pJpEfGwVAKRPzynybep9Y2IZBQr010PM52PQ6XIXJh0bSnB7ukq6whEQVRihJcklhdgfQcUsn3sSa+jyDNedIQOx6xhNcAY3w321p802TIhcOt0vFf8CAtbQvNzzHBqQuHlQvJLp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716291117; c=relaxed/simple;
	bh=Q3GFaguW3jFTZMFGC7FiP883vZ4tPmpmKprX1le7gC0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=slvy/C7vg0jx6D00WBCOYqApzfCpIgRNOJ3veXq639FRC7b7xFxfzG7j0aLGUVCovlCs7W+OD/LmW8nWwV6ddLrxkAieuJeIffVvnKuJXp8pG4M8l9DOs7wDJW+9FXqYhihZM0JM0pUDB1kU6B4pvru1ecv++b3wX9XPxUTWi+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DBDsLFf2; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42016c8daa7so28740005e9.2
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 04:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716291114; x=1716895914; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2JFH2lxXujNwLkkqMdhKO1Da8BcCgn2IjUNWIWwi5/g=;
        b=DBDsLFf2kW7AI5fXK1VeLqq0iYS8BClzWjhLfqgmoCPMl9iyOaMRz9efPUAHVITWhI
         Aef1dMIocHKuM6u3filBCqofodiFd31d8gMmA85RRzViyyExL/H7Foguyr+VUkwRpT7b
         uKwpj79XV9XWQluPU4BZb1cUPFgp0BwCfyfin+XXYR/F/h5KoMcdCKfPXMFfFrlbAvT9
         Ez26bROjkE4kvv/f26nRh3KWdordG71revE1p8uH0PLjS3oauIXJAolMCJHuln/sXsUI
         GnGozUCBOPjA1/g8Y66JhFoEqJQpfWFs8NeQPZyDPnue6z6OCTy5BosrNDkom+3iUobn
         e/xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716291114; x=1716895914;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2JFH2lxXujNwLkkqMdhKO1Da8BcCgn2IjUNWIWwi5/g=;
        b=Bj+OSL4F0elpO3xCLQjNl0CyiAnzn6vwZ0JLEgF04El8VlLrLlvVxxhZxI0Oj7JhHd
         SspwErAtNR/tVIMAjwfuv3Tyk5hBjkUge/R1NluhXk+4yVFfZfYJSccHRPIyLrshjBOe
         IA2iSWaYNgv60LKfoZPIzV0IbMhbfXjmVv18X7e85ZnM7Hw2Kve80EB0KJg9Nxi0u0Qx
         4IC2xMXzAVr9O8LsYkiY3mbJB4lSSprCntAm7UTjVcJI4WfXX8YB7PSuus1l6grwPqTc
         yYWqoqc4Xb2iR+ifB39GIGply8TMoNuYaSTrgVGOLJOaPITTfu0MDODHq8nPv6FMSLFc
         QlYg==
X-Forwarded-Encrypted: i=1; AJvYcCWpNgwZw0Pzt+yzTfMQ3NdC9gVAN+9E2d5zdE2Y5eA6n72/6OKjuxmx7/4U1VkpiARKeC1fQpfkBGZQ99o5W0YciI2mQKoAhuo2WA==
X-Gm-Message-State: AOJu0YzLApWPxfy5w+FljjzxinrgNZGwB/YPD0QPlQXJ0B8IjHMW1y/X
	pOyPIsM0OwCBIvlYOVMhtjh77yNAxF3YOIDMCGAOzgaN20vv2m7Gn6NYC2w4lHc=
X-Google-Smtp-Source: AGHT+IEZtNtQQzN8LPfrUmrIF04SBuch56Npn6yjY1fPcTnhtEc4nsxKxAQc/JbKcKmKekWEkBLBgA==
X-Received: by 2002:a05:600c:4e8c:b0:41a:408b:dbaa with SMTP id 5b1f17b1804b1-41fea539875mr256321905e9.0.1716291114001;
        Tue, 21 May 2024 04:31:54 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-420e1462e1asm89644515e9.0.2024.05.21.04.31.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 May 2024 04:31:53 -0700 (PDT)
Message-ID: <26f1f9a6-46fa-4f86-ba46-eea454ba902f@linaro.org>
Date: Tue, 21 May 2024 13:31:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 15/15] arm64: dts: mediatek: mt8188: add default
 thermal zones
Content-Language: en-US
To: Julien Panis <jpanis@baylibre.com>, Nicolas Pitre <nico@fluxnic.net>,
 linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Nicolas Pitre <npitre@baylibre.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
References: <20240402032729.2736685-1-nico@fluxnic.net>
 <20240402032729.2736685-16-nico@fluxnic.net>
 <aab10d22-b1a1-45e9-85bc-a4334aa6c497@linaro.org>
 <02ac5b07-08fe-4abd-8db8-141f4e47f68a@baylibre.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <02ac5b07-08fe-4abd-8db8-141f4e47f68a@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 21/05/2024 13:10, Julien Panis wrote:
> Hello Daniel,
> 
> On 4/4/24 17:16, Daniel Lezcano wrote:
>>
>> Hi Nico,
>>
>> a few comments about this description.
>>
>> On 02/04/2024 05:25, Nicolas Pitre wrote:
>>> From: Nicolas Pitre <npitre@baylibre.com>
>>>
>>> Inspired by the vendor kernel but adapted to the upstream thermal
>>> driver version.
>>
>> [ ... ]
>>
>>> +    thermal_zones: thermal-zones {
>>> +        cpu-little0-thermal {
>>> +            polling-delay = <1000>;
>>
>> Except if I'm wrong, the driver supports the interrupt mode, so it not 
>> necessary to poll constantly when there is no mitigation. You can 
>> remove the line and everywhere else.
>>
>>> +            polling-delay-passive = <250>;
>>
>> As little CPU, 200ms or 150ms may be more adequate.
>>
>>> +            thermal-sensors = <&lvts_mcu MT8188_MCU_LITTLE_CPU0>;
>>> +
>>> +            trips {
>>> +                cpu_little0_alert: trip-alert {
>>> +                    temperature = <85000>;
>>> +                    hysteresis = <2000>;
>>> +                    type = "passive";
>>> +                };
>>
>> You may want to add a 'hot' trip point in between, so the userspace 
>> can be notified and take an action before reaching 'critical' (like 
>> unplugging a CPU)
> 
> There's no "notify" function in the driver.

The trip point crossing is always notified to userspace in the core 
code. It is not driver specific.

> Do you think it's worth adding such 'hot' trip point, though ?

Having this trip point would allow generic trip point handling in a 
userspace daemon to do an action.

If the userspace does not take care of this event, it won't hurt.



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


