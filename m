Return-Path: <devicetree+bounces-250231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C060ECE70ED
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 15:32:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C1C90307B998
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 14:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 982703203A0;
	Mon, 29 Dec 2025 14:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mV+aDasU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B9D322523
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 14:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767018510; cv=none; b=JR+XFEr7sIlq/pSAQSAeCqzOL+l0YQBP9ymWWl+wCgdUqE/Gs7Mhpza+uyl8JFkUrC3gZIfO2wiEsmSxckTWbWNDHWUyGn/R33oWFEZ4m8T3uAEhll5zSPfwAtRM9kEMxrV8kIrNyGpMGiYGlDYPkXjz/8pA8MDXlsSttcl/B+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767018510; c=relaxed/simple;
	bh=p19C5fUiaHYuyT8B3f5YKcSGz2HF8sHhEPGkk3Lr+ZA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PIyIkBDx2o5jMkHWTTxfnwTksyUy/y5UqBKMSEm93MtsWyKMWRRRJwolYuOHWGQ2JUvDfTXlKlm0OO7kQesJiaLNgj3jmo3LYjU2eWcKLl9iIejhD+FTae4ydkpQI0r4gx+BRHgJNmVURF37hho4SZcG0r8FaTusX81BiKoH3BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mV+aDasU; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-37a415a22ecso47257691fa.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 06:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767018503; x=1767623303; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JlPQpMhsU9ZTNBtgWJtMFJBp0vgrJMleMmiswLOaeG8=;
        b=mV+aDasUePlqGzyAjJH2QGfpE7xQZxwKq63Ajd8/P3ZGtNuInrsvqx8kVcQE5PcKks
         woRXJTqhfLofmXIEK+cGXChI2pdpvtU8QUmCR7sq2A+MktntkX1rvxI1GuvUtcdNC1zc
         +4ILBAMkZcVD+dBUQWBFAuZs0Qo3OYrR7LhwUHziMZcfEvwkGuqa1rJumjsDueh4rOZA
         fTVfTEc7WimA35mkBq8AzuxNS/zKzcPukJun15oNp3SLGpfJNmo/YeMnz+S2iqa37DxM
         5i2k5R8ITPqH2T4Veo6rrEP+PXI2JXJgaQZcbp3wcJo9FSswOLizUG0CATPlktxxcrWu
         47Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767018503; x=1767623303;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JlPQpMhsU9ZTNBtgWJtMFJBp0vgrJMleMmiswLOaeG8=;
        b=ig8Jk4twD92pG0ZgdEaD2Qx6tjZ5BZoZ69Vonh9/mLDAhnwPrqQwCO8Gtyq9syQalc
         sLsmxqtsUIfGE1R9hKScNIFjn2HgQ3sp1LyZHDW2pGxGDugiM+iLk8Ys63wiDcyWRk8z
         JPkikkWo3SxlLIHGFY78qzhEvfpjZGPqrFW9XLB9I39i52qrN8ko2XEaEij505M+CNNQ
         LypQGKtdWKcOBw+/TAqbDtQAmrvk3yxQnsr2L/lLBKRBndKRNG74thNXDHNO4mxRz6HV
         G3yEGS83QetXqXb2Ry9IaNyBHR9ZURmPlrlb4zlKjhzg/02FnOQdvsmuPLShW5mCQaj2
         tuFw==
X-Forwarded-Encrypted: i=1; AJvYcCW/hdLw0oVDy/e3QR7UbIkYtAxT1KMs2mjAnh7F5DRx0NdTdjNHDf208yKwjqsJs7FeR0uj2v7sPYyL@vger.kernel.org
X-Gm-Message-State: AOJu0YyOjGrf9dXVWBmrUXQ/7OohkpQZEwWKV3i3C+z+j/hV1kWdt/M+
	OxVS/YGccg1oqoax9Tq9AIVHGKWVX9nwQKpeTqH0My7KMoMwUdmFI/WB
X-Gm-Gg: AY/fxX5hjf/2x+J0dvrotRCNv4Qhh8+IZ9tqXbgtW/Joe0Jw4oivIutVkg0WS9lVc97
	sbRAnGroUwpQbbIia89MOsUqMKha3wi1QTziXKKv4cuSe0Njy1o0NDY8wRmht+w1TxaJ1ertrlI
	gMJBwmHgdTPlVGsUnc2CH3FeQ1NTaUBIBdO+HAaq+iZZKfzGh+TwqOijxV1hY2lSA8LCYEfr7rr
	S3jX8LS+TPXK66gF4+tjXou6U3YBgYo7cmODqoB4IM0+MznTB6HBmwJnRHsQ52FfuFMbbY/E2Ij
	6BJrGO2LXQ5PAWANCM2KsMCfk6Ssu0N7rPbrVsoXmO2vrSTIfT37oc7+IYQxo38Biq0vRCdVGQQ
	l4XlF85HGxy0vW0BRrg3fyd1NqQ7Nv+2XC48V1No6aFYLc5uALk9NlX2MN/oehj1+6KHbbcPjMB
	BCGpMTOvplMaHomXbmcQ3J0zUT+Ja+aNppNg==
X-Google-Smtp-Source: AGHT+IHzJs2Slc9So9wW48MzyPul6GDqnIF6AT7GrqTVvPa+W/JUEnh3sVxZGeJbDeSkSP8ozT6dNA==
X-Received: by 2002:a05:651c:30ca:b0:382:624d:a770 with SMTP id 38308e7fff4ca-382624daa40mr38719581fa.15.1767018503034;
        Mon, 29 Dec 2025 06:28:23 -0800 (PST)
Received: from [192.168.0.131] ([194.183.54.57])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812264cc13sm83859981fa.37.2025.12.29.06.28.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 06:28:22 -0800 (PST)
Message-ID: <44ffa209-48b8-439e-a1ce-f9eb2aeb2f26@gmail.com>
Date: Mon, 29 Dec 2025 15:28:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/2] leds: Add optional instance identifier for
 deterministic naming
To: Andriy Shevencho <andriy.shevchenko@linux.intel.com>
Cc: Jonathan Brophy <professorjonny98@gmail.com>, lee Jones <lee@kernel.org>,
 Pavel Machek <pavel@kernel.org>,
 Jonathan Brophy <professor_jonny@hotmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Radoslav Tsvetkov <rtsvetkov@gradotech.eu>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org
References: <20251228182252.1550173-1-professorjonny98@gmail.com>
 <761d6573-3751-47fb-9b0e-8063f3cecf76@gmail.com>
 <aVJ0c3injbP7yRIJ@smile.fi.intel.com>
Content-Language: en-US
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
In-Reply-To: <aVJ0c3injbP7yRIJ@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/29/25 13:30, Andriy Shevencho wrote:
> On Mon, Dec 29, 2025 at 12:16:17PM +0100, Jacek Anaszewski wrote:
>> On 12/28/25 19:22, Jonathan Brophy wrote:
> 
>>> This patch series introduces an optional "led-instance" device tree property
>>> to address non-deterministic LED naming when multiple LEDs share the same
>>> function and color.
>>>
>>> Currently, the LED core appends numerical suffixes (_1, _2, etc.) based on
>>> registration order when duplicate function:color combinations exist. This
>>> creates several problems:
>>>
>>> 1. **Non-deterministic naming**: Registration order determines suffix values,
>>>      which can change across boots due to probe ordering, async initialization,
>>>      or module load order.
>>>
>>> 2. **Non-semantic identifiers**: Names like "lan:green_23" provide no
>>>      indication of which physical LED or subsystem they represent.
>>>
>>> 3. **Breaks userspace automation**: Network management tools, LED control
>>>      daemons, and hardware monitoring cannot reliably identify LEDs.
>>>
>>> 4. **Ambiguous numbering**: "lan:green_23" could be mistaken for LAN port 23
>>>      when it may actually be the 23rd registered LED of any port.
>>>
>>> 5. **Namespace pollution**: The alternative of adding vendor-specific function
>>>      names (LED_FUNCTION_LAN_PORT0, LED_FUNCTION_LAN_PORT1...) pollutes the
>>>      function namespace. The instance identifier keeps standard functions clean
>>>      while allowing contextual differentiation.
>>>
>>> 6. **Breaks naming convention**: The _1, _2 suffix was intended only as a
>>>      collision avoidance workaround, but has become the de facto standard for
>>>      hardware with multiple identical LEDs.
>>>
>>> **Example: 48-port network switch**
>>>
>>> Current behavior (non-deterministic):
>>>     /sys/class/leds/lan:green      ← Port 0? Unknown
>>>     /sys/class/leds/lan:green_1    ← Could be any port
>>>     /sys/class/leds/lan:green_2    ← Could be any port
>>>     ...
>>>     /sys/class/leds/lan:green_47   ← Could be port 1 due to probe order
>>>
>>> Proposed behavior (deterministic):
>>>     /sys/class/leds/lan:green:port0   ← Always port 0
>>>     /sys/class/leds/lan:green:port1   ← Always port 1
>>>     /sys/class/leds/lan:green:port2   ← Always port 2
>>>     ...
>>>     /sys/class/leds/lan:green:port47  ← Always port 47
>>>
>>> **Example: Multi-domain power indicators**
>>>
>>> Current behavior (non-deterministic):
>>>     /sys/class/leds/power:red      ← Which power source?
>>>     /sys/class/leds/power:red_1    ← Which power source?
>>>     /sys/class/leds/power:red_2    ← Which power source?
>>>
>>> Proposed behavior (deterministic):
>>>     /sys/class/leds/power:red:mains    ← Mains power indicator
>>>     /sys/class/leds/power:red:battery  ← Battery power indicator
>>>     /sys/class/leds/power:red:usb      ← USB power indicator
>>>
>>> **Design principles:**
>>>
>>> - Backward compatible: Instance identifier is optional
>>> - Extends existing convention: function:color becomes function:color:instance
>>> - Follows kernel precedent: Similar to eth0/eth1, gpio0/gpio1 naming patterns
>>> - Ignored with deprecated "label" property: Avoids conflicts with legacy code
>>>
>>> **Alternative solutions considered:**
>>>
>>> 1. function-enumerator: Only supports numbers (0, 1, 2), producing names like
>>>      "lan:green-0" which are still non-semantic. The 48-port switch needs "port0"
>>>      to match physical port labels.
>>
>> I think that we have currently everything in place to address the issue
>> you're trying to solve with this patch. Just introduce dedicated
>> function like LAN_PORT, and exploit function-enumerator.
> 
> The problem as I understood not exactly in this. The reporter wants
> deterministic way of the mapping between HW numbered LEDs and their respective
> names. It seems it was already mentioned that current code depends on the
> arbitrary probe ordering. Saying this, I now think that perhaps GPIO led driver
> should somehow allocate a range of the LEDs and then enumerate them in
> accordance with the DT description?

function-enumerator DT property enables deterministic enumeration.

-- 
Best regards,
Jacek Anaszewski


