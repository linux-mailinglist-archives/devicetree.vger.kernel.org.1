Return-Path: <devicetree+bounces-81951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5B191E05D
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 15:17:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 628C7B21FB3
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 13:17:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A626515ADA5;
	Mon,  1 Jul 2024 13:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q9txVLT3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5ECF15A869
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 13:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719839828; cv=none; b=TZKzlO1LXMAZ16NRLl2m0pphi1OW8kGP/3krROcEeF+ds5msSXf4Bc6KUjJ0TNmiOjjz9WPHaH7rnsxOpx7+Q2Jalx7wGCv8q5sr7riN6LgbXiLgvbnSLQnH1U6aK2Zwrs5ZFmJFjz6RwyOE861ugG/RPl/zVDAxb6Ef5zsDFvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719839828; c=relaxed/simple;
	bh=84GKtdvsfDggTxG3tR23U4I4btum+7MtvVR/KCb6JrY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bH/4Dpl1slnrxfUblnwOpYCEtngKgeXt54FrrLpyanpzMkny2CPeXd35GJ5EER+Ngf1uaJzjUU/DvIu79PvEDZFRXwrZr1XzCUBd32voYnHnv2EEfF9pAjKYUfHtL5gNjbpZnh27CVQuwa56qdypJP/vuK3DHFs3I5uu99XiQWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q9txVLT3; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4256f102e89so20336675e9.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 06:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719839825; x=1720444625; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WDfoGKlIKdR6A3RcZgmOG3TGuVOGKN/gx0BFWtmG53E=;
        b=q9txVLT3BuG34PQX7OW0QrmPuDkQa3jyQUAxp4EUL9kBJ/baSkOqtg+qnium3Lu+ge
         +p/5Hgw9W3wQNoK4vdpKf2GkCKuBZlHlibD9GdYyPYpcqyDk4G0b5bq/QrNwItRAZn4+
         SpEh6qLHSz4ur3vYgreRyO3FehYHt/zoDg4xXoz7QdeDsfdWXq2OFUIPaHVcxt3sbGWG
         ijaqRrHbkyKIRYuYbCfzniL8IDO0YFChHxkxiTgophsa+tAIx+XxG0FWWqkra1icWyCj
         ledcnWDFoc2B7Si9NqPUj5gnlZiY2SUsslHoAzOr+S5UAo9GJ61gTdjpC8+FUQUEtFLk
         NP2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719839825; x=1720444625;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WDfoGKlIKdR6A3RcZgmOG3TGuVOGKN/gx0BFWtmG53E=;
        b=CIdD7MFv9HZK7DH6f9WD3m1aNCZNajXrHr1/d7/nl11+K0+td6fZoe1OXS9r4d3vXc
         8Gq6Q4QiSA5I8+miakk5gX6FYHxpqjDaBrpPSf/X4OMSCG1boXPkiH0MYoUdALZmruzK
         tRhjUmlm9aqLhXoNbHuJfSk3MQwodKJlvfUmkPV8KlfSpsEgAk5lgYklEdYzfsxiiXeG
         VKE/pp05+9y3P7ByxOnurKkXG/kGAf5ZHOUztiEkOCC8DapYVVnLhsjunvcwc2njPHX8
         wYAPBmW9wPPtK15DI7VAZKFqqUBqRP80mUXHnFHUdFatyzPNOvo39f3GiLKdesF0Dpe0
         HXTg==
X-Forwarded-Encrypted: i=1; AJvYcCX2Ajg16VeGtDOaRWP8V4M5y7cgQrc2s+c6HDWPveNbjYujTjEFEY8XpW2HBLttrqEEaOV4Td7I17INK99DtIWaHuJj0uMd6+By4g==
X-Gm-Message-State: AOJu0YzgIMurhxqQtSuJ7jIG4GdmU1Zl4PmF8zSzWkEjMO8YZur9F87J
	UZKX8B7QTJ2zviYVyrCBo6yC5VlIDKEwKJrC1EoenVjUrz9Olfj3mjiEtYGVGl8=
X-Google-Smtp-Source: AGHT+IHkBfoP4v4QMxXcR1bWHc9hcJjpRR6wiB0ZAwlodHQGeXh8pzUBFPOZyamackKhLJ+5vGVTDg==
X-Received: by 2002:a05:600c:181b:b0:424:aa83:ef01 with SMTP id 5b1f17b1804b1-4257a00d057mr38661955e9.10.1719839825118;
        Mon, 01 Jul 2024 06:17:05 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:d5d7:31af:53ed:6dbc? ([2a05:6e02:1041:c10:d5d7:31af:53ed:6dbc])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4256af3cf9bsm155864955e9.8.2024.07.01.06.17.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jul 2024 06:17:04 -0700 (PDT)
Message-ID: <f78d50e2-cda5-48a6-b591-96218bd83e2b@linaro.org>
Date: Mon, 1 Jul 2024 15:17:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] thermal/core: Introduce user trip points
To: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: linux-pm@vger.kernel.org, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20240627085451.3813989-1-daniel.lezcano@linaro.org>
 <CAJZ5v0iO6MrX3QxAu4Wj4grUL2g7gPPXO3f8PFmZBot-Ud32TQ@mail.gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CAJZ5v0iO6MrX3QxAu4Wj4grUL2g7gPPXO3f8PFmZBot-Ud32TQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 28/06/2024 15:56, Rafael J. Wysocki wrote:
> On Thu, Jun 27, 2024 at 10:55 AM Daniel Lezcano
> <daniel.lezcano@linaro.org> wrote:
>>
>> Currently the thermal framework has 4 trip point types:
>>
>> - active : basically for fans (or anything requiring energy to cool
>>    down)
>>
>> - passive : a performance limiter
>>
>> - hot : for a last action before reaching critical
>>
>> - critical : a without return threshold leading to a system shutdown
>>
>> A thermal zone monitors the temperature regarding these trip
>> points. The old way to do that is actively polling the temperature
>> which is very bad for embedded systems, especially mobile and it is
>> even worse today as we can have more than fifty thermal zones. The
>> modern way is to rely on the driver to send an interrupt when the trip
>> points are crossed, so the system can sleep while the temperature
>> monitoring is offloaded to a dedicated hardware.
>>
>> However, the thermal aspect is also managed from userspace to protect
>> the user, especially tracking down the skin temperature sensor. The
>> logic is more complex than what we found in the kernel because it
>> needs multiple sources indicating the thermal situation of the entire
>> system.
>>
>> For this reason it needs to setup trip points at different levels in
>> order to get informed about what is going on with some thermal zones
>> when running some specific application.
>>
>> For instance, the skin temperature must be limited to 43°C on a long
>> run but can go to 48°C for 10 minutes, or 60°C for 1 minute.
>>
>> The thermal engine must then rely on trip points to monitor those
>> temperatures. Unfortunately, today there is only 'active' and
>> 'passive' trip points which has a specific meaning for the kernel, not
>> the userspace. That leads to hacks in different platforms for mobile
>> and embedded systems where 'active' trip points are used to send
>> notification to the userspace. This is obviously not right because
>> these trip are handled by the kernel.
>>
>> This patch introduces the 'user' trip point type where its semantic is
>> simple: do nothing at the kernel level, just send a notification to
>> the user space.
>>
>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>> ---
>>   .../devicetree/bindings/thermal/thermal-zones.yaml        | 1 +
>>   drivers/thermal/thermal_core.c                            | 8 ++++++++
>>   drivers/thermal/thermal_of.c                              | 1 +
>>   drivers/thermal/thermal_trace.h                           | 4 +++-
>>   drivers/thermal/thermal_trip.c                            | 1 +
>>   include/uapi/linux/thermal.h                              | 1 +
>>   6 files changed, 15 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
>> index 68398e7e8655..cb9ea54a192e 100644
>> --- a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
>> +++ b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
>> @@ -153,6 +153,7 @@ patternProperties:
>>                 type:
>>                   $ref: /schemas/types.yaml#/definitions/string
>>                   enum:
>> +                  - user     # enable user notification
>>                     - active   # enable active cooling e.g. fans
>>                     - passive  # enable passive cooling e.g. throttling cpu
>>                     - hot      # send notification to driver
>> diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
>> index 2aa04c46a425..506f880d9aa9 100644
>> --- a/drivers/thermal/thermal_core.c
>> +++ b/drivers/thermal/thermal_core.c
>> @@ -734,6 +734,14 @@ int thermal_bind_cdev_to_trip(struct thermal_zone_device *tz,
>>          if (tz != pos1 || cdev != pos2)
>>                  return -EINVAL;
>>
>> +       /*
>> +        * It is not allowed to bind a cooling device with a trip
>> +        * point user type because no mitigation should happen from
>> +        * the kernel with these trip points
>> +        */
>> +       if (trip->type == THERMAL_TRIP_USER)
>> +               return -EINVAL;
> 
> Maybe print a debug message when bailing out here?
> 
> A check for "user" trips would need to be added to
> thermal_governor_trip_crossed() and to the .manage() callbacks in the
> power allocator, step-wise and fair-share governors, if I'm not
> mistaken.  Especially fair-share and power allocator should not take
> them into account IMV.

I'm not sure the power_allocator needs to change anything. The trip 
point used is switch_on which is only derived from passive or active 
trip point, so it is not possible to have a user trip point used in the 
manage callback.

Did I miss something ?


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


