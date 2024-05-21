Return-Path: <devicetree+bounces-68165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8858CB029
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 16:15:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 436B22841BB
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 14:15:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4A377F476;
	Tue, 21 May 2024 14:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JCK5Acg0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73AAC1E4A2
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 14:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716300923; cv=none; b=USf0m9u/fUPKEYGZvLys7ECbcCZQ65tmElmHL30jSbdD01+ejM+ddDDWW3/jj/THeC33UBatspLomX1KWr5Uu7h+YRNzJcEMlmZV1HXMfDSb3DtbVDsRvWJn9PWViXA5GvgWQ/UhTgwOGo5ksAKk21VJUH7BGMSmC6mxcyVG8iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716300923; c=relaxed/simple;
	bh=vSByhyGz2yHSA58SYIJzMof1zt9z7gczWFZndZUSbJ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EkxedEgUB34uhdEI2tH7HCSlCNfcvdydBA33VuFepioiJi3n5MkErt+YbkhGi1gGoQUh9NFF9Iw2ZRPU59ONpMwQVGutsD36khk7+JvyjPKzOnWcyEYuGZyPVwp5+nExVu00OPV69OOvRy6ntPJsfaipCEjBKVr8TaEOKjZd3YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JCK5Acg0; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-420104e5336so20733835e9.1
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 07:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716300920; x=1716905720; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GHmH8MqnzRmRTFIkbLl86U1otQxMDzFVgNQ3IvUNMY0=;
        b=JCK5Acg0s/hZcfyCZxVr535n7SVgmsN7SEMoor0Y5ugyfosB6p4GRVuaCKYFnq1dTn
         pt2WJdaEzZoyZxiJpoCwvtp0vn89Dl+VPsm9tTJaP24PuJXfJtjQeiVwpO9OF0JMWMZ5
         YAspS1u83eF65cHUjw0nyBD/b2JCXiEOWo1G37E8UW2/877rUxK8pAShVwANR8BRgDGJ
         SN9RXNXd1fWlTmnfC9nDKWwNGsTb/nY4HTo4Qsz/UvqZ91vUoFS/K2AIfefaN/lOSdIk
         bOEWuFIRovg6qXQCFfBeR04498D5VJQHN8KXC+avDzCRMCe0S35Reb0zoKEM2RDtN2xH
         yMIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716300920; x=1716905720;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GHmH8MqnzRmRTFIkbLl86U1otQxMDzFVgNQ3IvUNMY0=;
        b=S69J/MyZHt+zp7l3TYmdgiQvzJjb1jyVZcVQc8VBwCVNRaMtEtThEB3dwXJAc3IP19
         ixX/nIy255KpC3+niuIcNkMcvMyeU7kaXEpuACpAc1kFUEUjFNTLlJnnYpFjFxzvGM77
         6VWsLYRACIARL9XbZigxF+/lWwzb0+qAa5x+ZXRdve0zVL52Y+JoGkPho69H/wfKgaQc
         aHfaWDFDtXG07qt2MA7gFqANeN/PwmBl6pr45OVBGjtgEZYqfSlMFHkgJqCUAQGayDtV
         XHIaZ24ztlD3QY4jbPiTktzVOzBcrKwLqH8kMqUrAp+kTxPpROCSF932PAOeP8qbIKZI
         7esQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlRJYdL560jL4AepwdDNBQtJWAD7FevywhQ3ocdm2chmUOJP5CgjoOfr9fN7piU03t0Fr1y64vXNNJ+4lqtC94zEg4DXrxtJEHNA==
X-Gm-Message-State: AOJu0YxBIubMTK0kl415RXaxLl8WsBzmaQTeIGJ0ClX+3VuQsRJGnXBK
	AOdUxmHsQYtMab5GoWST9iTBR/ZM0E+raP7QiaaZb2FBzX+j8Nc2mCnLqfO7NeA=
X-Google-Smtp-Source: AGHT+IGynb6ptfvAMU7FyntE+5C5J+L3RDqVBUz4ZlqwSEeION4wGOYacXvpwT0hTDAirBSDcrAuFw==
X-Received: by 2002:a05:600c:1546:b0:418:3ea8:46c0 with SMTP id 5b1f17b1804b1-420e1a2ff5amr82101115e9.13.1716300919774;
        Tue, 21 May 2024 07:15:19 -0700 (PDT)
Received: from [10.2.5.115] (abordeaux-651-1-78-161.w90-5.abo.wanadoo.fr. [90.5.97.161])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42013b4e9aesm358546195e9.40.2024.05.21.07.15.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 May 2024 07:15:19 -0700 (PDT)
Message-ID: <d8fe0be9-2e2e-4111-938f-e9132b96273a@baylibre.com>
Date: Tue, 21 May 2024 16:15:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 15/15] arm64: dts: mediatek: mt8188: add default
 thermal zones
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Nicolas Pitre
 <nico@fluxnic.net>, linux-pm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Cc: Nicolas Pitre <npitre@baylibre.com>
References: <20240402032729.2736685-1-nico@fluxnic.net>
 <20240402032729.2736685-16-nico@fluxnic.net>
 <aab10d22-b1a1-45e9-85bc-a4334aa6c497@linaro.org>
 <02ac5b07-08fe-4abd-8db8-141f4e47f68a@baylibre.com>
 <26f1f9a6-46fa-4f86-ba46-eea454ba902f@linaro.org>
 <f1cc27e1-1aa1-4495-8773-44a1f605be47@collabora.com>
Content-Language: en-US
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <f1cc27e1-1aa1-4495-8773-44a1f605be47@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/21/24 16:07, AngeloGioacchino Del Regno wrote:
> Il 21/05/24 13:31, Daniel Lezcano ha scritto:
>> On 21/05/2024 13:10, Julien Panis wrote:
>>> Hello Daniel,
>>>
>>> On 4/4/24 17:16, Daniel Lezcano wrote:
>>>>
>>>> Hi Nico,
>>>>
>>>> a few comments about this description.
>>>>
>>>> On 02/04/2024 05:25, Nicolas Pitre wrote:
>>>>> From: Nicolas Pitre <npitre@baylibre.com>
>>>>>
>>>>> Inspired by the vendor kernel but adapted to the upstream thermal
>>>>> driver version.
>>>>
>>>> [ ... ]
>>>>
>>>>> +    thermal_zones: thermal-zones {
>>>>> +        cpu-little0-thermal {
>>>>> +            polling-delay = <1000>;
>>>>
>>>> Except if I'm wrong, the driver supports the interrupt mode, so it not necessary to poll 
>>>> constantly when there is no mitigation. You can remove the line and everywhere else.
>>>>
>>>>> +            polling-delay-passive = <250>;
>>>>
>>>> As little CPU, 200ms or 150ms may be more adequate.
>>>>
>>>>> +            thermal-sensors = <&lvts_mcu MT8188_MCU_LITTLE_CPU0>;
>>>>> +
>>>>> +            trips {
>>>>> +                cpu_little0_alert: trip-alert {
>>>>> +                    temperature = <85000>;
>>>>> +                    hysteresis = <2000>;
>>>>> +                    type = "passive";
>>>>> +                };
>>>>
>>>> You may want to add a 'hot' trip point in between, so the userspace can be notified and take an 
>>>> action before reaching 'critical' (like unplugging a CPU)
>>>
>>> There's no "notify" function in the driver.
>>
>> The trip point crossing is always notified to userspace in the core code. It is not driver specific.
>>
>>> Do you think it's worth adding such 'hot' trip point, though ?
>>
>> Having this trip point would allow generic trip point handling in a userspace daemon to do an 
>> action.
>>
>> If the userspace does not take care of this event, it won't hurt.
>>
>>
>>
>
> Hello Julien,
>
> I'll push two series tomorrow to add most of the power domains (all but the
> img_vcore ones, as those require a bit more work), the two vdosys and, more
> importantly, support for the GPU in both panfrost and the MT8188 devicetree.
>
> Actually, if it's not tomorrow, it's going to be on Monday - though I'm not
> sure why you feel like you're blocked by not having the GPU node in there.
>
> Cheers,
> Angelo

Hello Angelo,

Sorry, I sent the v4 a few seconds before receiving your email. :)

OK for the GPU support, thanks. After that, I'll submit a v5 that will include
the related cooling-device. IIUC, this should look something like that:

cooling-maps {
     map0 {
         trip = <&gpu1_alert0>;
         cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
     }
}

That's why I need some 'gpu' node somewhere in the device tree.
The build fails without it.

Julien

