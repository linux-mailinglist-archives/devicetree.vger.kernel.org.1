Return-Path: <devicetree+bounces-68099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9F18CAD25
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 13:10:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 925942819C0
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 11:10:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A7FB6E5E8;
	Tue, 21 May 2024 11:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0xX08vPX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3A9F6CDA3
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 11:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716289811; cv=none; b=ktTcRFJq4uaFCSirnJRrH7Ut1NmoIpXsnRJV8Cm4bqztQsV870AIM6gOOx0cE2cYo1IB7pI48qAuH+UOH+r0RuE0jO410KlZnDttHYbfOsQ3508hv4q9sfXlWsEiu4D/qzhpBlABFTRR3YM5dJKTImfk8qa4msHz9hNCcIz1c5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716289811; c=relaxed/simple;
	bh=lRXa1zvsE6ldJXKcr6zn/8NN+2s2ntBYhXKSUUKDCa4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nhSFWwdJEjzVle5bpuvgqugvNzOo5q8m4k0uwN0tXIVnsojzFMg0hQbwOWTc/gHLhzaVd5B5HKwU8fMKQZ21ki4cI8WBIKWpPVSbVy0gxiyzMHFBtzhTBLQ2j+kXR72u4K3SiIdHaOfV0lvRj8D/WQ1GPPi3ARt3fu9nzlGcGoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0xX08vPX; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4202ca70289so29026675e9.1
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 04:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716289807; x=1716894607; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yekSUgU6gW9c7daSNKDfWsfCSZwLmZNtbFfvqtYv9ko=;
        b=0xX08vPXZUqitt4zE8qUWfdVtZP3D2KL8p2Ka/C71EGB60hjmMkUBPAb4o3ISQrG6x
         diZTM5Tru149aOzu25+6PtQAJCX7Oly8ltZIscom2f/6uyyXHbIJa3jY5Ss5BRM8f0bo
         17BfwqcDIKlIY+8bmGjPfDeQI79SrANGOAMYZyzcJTkwAb1MgSsfypKy6Yo/W0ZpJfpg
         DXIh7A6x+Ceg0v5NcX2SWSAaHs/+FHJVmGr0yYtts+tcXN9m5Vm1O0RLS++unp1+UAxo
         h5fVEBvnZa3LD/DcrjIqQhLInMjcebpgKXGoywNOpb1iQc+i90v/1kAjLLaD8cmZEOE0
         RubQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716289807; x=1716894607;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yekSUgU6gW9c7daSNKDfWsfCSZwLmZNtbFfvqtYv9ko=;
        b=t0W6K7IxW/4cbkXuQSvj1jAmsVMHbJZgGeHQpGDalpJcoFofpWz7mZE9OnBReowsLu
         L+B1id4DzssyigVKWv8zLKPEg3CEXWKij07tKdisLWpRDnacllb6fggdHE5OZqc2+YjI
         W35AuNShfSO05e0QD989/sHU72srFefiTzK8/pslYHHXx0dHK5YtlXIge2d4kKHrZ7FY
         j7EJk4oXeFmpKhm6WzHoLrj5hn3ZJmczxTbEEFo80Qlk/6w7ZSEcdW7bZL4KWPzBLEor
         4mZxHzncrCdVHS205wHY88roJVSwpIPU3m3589znhCD2sBvoVIZc7FWTawqFvdWT1zFG
         L1rQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVCDvGwdNxpDkmqYNwQaeh2KNutBhV/p2W5cqaRzex2TGuPMMwa2Me+LUWvk4sKqkF25LKbPejEQs4zNgmh+tQZ62n61Smxe31pQ==
X-Gm-Message-State: AOJu0YzFPTczIAMopk2CsQu15+H3w/z/G6yYamMGGa8INppt/hNv4IL1
	jllj+M6y63JabqNC0DiWbmsAcC6CLZjna96LRVDOqPgN/Q25yH/WH78EFvUYW8I=
X-Google-Smtp-Source: AGHT+IEH0V+1FeX72CKXMBZiES4IfoQK/48eH4j+2M88Xp9MgFb8mIijZezThw5L5R7NhVyxPd4jAQ==
X-Received: by 2002:a05:600c:5116:b0:41f:afa6:3d85 with SMTP id 5b1f17b1804b1-41feac55f95mr280887895e9.31.1716289806826;
        Tue, 21 May 2024 04:10:06 -0700 (PDT)
Received: from [10.2.5.115] (abordeaux-651-1-78-161.w90-5.abo.wanadoo.fr. [90.5.97.161])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41f87c235b4sm492430445e9.11.2024.05.21.04.10.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 May 2024 04:10:06 -0700 (PDT)
Message-ID: <02ac5b07-08fe-4abd-8db8-141f4e47f68a@baylibre.com>
Date: Tue, 21 May 2024 13:10:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 15/15] arm64: dts: mediatek: mt8188: add default
 thermal zones
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Nicolas Pitre <nico@fluxnic.net>, linux-pm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Cc: Nicolas Pitre <npitre@baylibre.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
References: <20240402032729.2736685-1-nico@fluxnic.net>
 <20240402032729.2736685-16-nico@fluxnic.net>
 <aab10d22-b1a1-45e9-85bc-a4334aa6c497@linaro.org>
Content-Language: en-US
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <aab10d22-b1a1-45e9-85bc-a4334aa6c497@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello Daniel,

On 4/4/24 17:16, Daniel Lezcano wrote:
>
> Hi Nico,
>
> a few comments about this description.
>
> On 02/04/2024 05:25, Nicolas Pitre wrote:
>> From: Nicolas Pitre <npitre@baylibre.com>
>>
>> Inspired by the vendor kernel but adapted to the upstream thermal
>> driver version.
>
> [ ... ]
>
>> +    thermal_zones: thermal-zones {
>> +        cpu-little0-thermal {
>> +            polling-delay = <1000>;
>
> Except if I'm wrong, the driver supports the interrupt mode, so it not necessary to poll 
> constantly when there is no mitigation. You can remove the line and everywhere else.
>
>> +            polling-delay-passive = <250>;
>
> As little CPU, 200ms or 150ms may be more adequate.
>
>> +            thermal-sensors = <&lvts_mcu MT8188_MCU_LITTLE_CPU0>;
>> +
>> +            trips {
>> +                cpu_little0_alert: trip-alert {
>> +                    temperature = <85000>;
>> +                    hysteresis = <2000>;
>> +                    type = "passive";
>> +                };
>
> You may want to add a 'hot' trip point in between, so the userspace can be notified and take an 
> action before reaching 'critical' (like unplugging a CPU)

There's no "notify" function in the driver.
Do you think it's worth adding such 'hot' trip point, though ?

>
>> +                cpu_little0_crit: trip-crit {
>> +                    temperature = <100000>;
>> +                    hysteresis = <2000>;
>
> critical is a point of no return. Hysteresis does not make sense.
>
> These comments apply to all thermal zones.
>
> [ .. ]
>
>> +        cpu_big0-thermal {
>> +            polling-delay = <1000>;
>> +            polling-delay-passive = <250>;
>
> Same comments as the little but may be an even lower value. eg. 100ms.
>
>> +            thermal-sensors = <&lvts_mcu MT8188_MCU_BIG_CPU0>;
>> +
>> +            trips {
>> +                cpu_big0_alert: trip-alert {
>> +                    temperature = <85000>;
>> +                    hysteresis = <2000>;
>> +                    type = "passive";
>> +                };
>> +
>> +                cpu_big0_crit: trip-crit {
>> +                    temperature = <100000>;
>> +                    hysteresis = <2000>;
>> +                    type = "critical";
>> +                };
>> +            };
>> +
>> +            cooling-maps {
>> +                map0 {
>> +                    trip = <&cpu_big0_alert>;
>> +                    cooling-device = <&cpu6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>> +                             <&cpu7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>> +                };
>> +            };
>> +        };
>
> [ ... ]
>
>> +        gpu1-thermal {
>> +            polling-delay = <1000>;
>> +            polling-delay-passive = <250>;
>> +            thermal-sensors = <&lvts_ap MT8188_AP_GPU1>;
>> +
>> +            trips {
>> +                gpu1_alert: trip-alert {
>> +                    temperature = <85000>;
>> +                    hysteresis = <2000>;
>> +                    type = "passive";
>> +                };
>> +
>> +                gpu1_crit: trip-crit {
>> +                    temperature = <100000>;
>> +                    hysteresis = <2000>;
>> +                    type = "critical";
>> +                };
>> +            };
>> +        };
>> +
>> +        gpu2-thermal {
>> +            polling-delay = <1000>;
>> +            polling-delay-passive = <250>;
>> +            thermal-sensors = <&lvts_ap MT8188_AP_GPU2>;
>> +
>> +            trips {
>> +                gpu2_alert: trip-alert {
>> +                    temperature = <85000>;
>> +                    hysteresis = <2000>;
>> +                    type = "passive";
>> +                };
>> +
>> +                gpu2_crit: trip-crit {
>> +                    temperature = <100000>;
>> +                    hysteresis = <2000>;
>> +                    type = "critical";
>> +                };
>> +            };
>
> You can add a devfreq cooling device for the GPU here.

I tried but realized then that GPU support has not been added in the DT yet.
So, I added the gpu node (from vendor's kernel), but there are many missing
dependencies. I guess it should be part of another series.
As a result, I can't add such cooling device here.

Julien

