Return-Path: <devicetree+bounces-250144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC15DCE67CE
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:16:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 844653005EA2
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:16:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E18703009CB;
	Mon, 29 Dec 2025 11:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L3+65GmC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101CE26CE1A
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767006983; cv=none; b=JMGrgEeh3/B0Z6uOLSKEQb5NacqSBrnkzMecr4ia4RCnSZGTBjLcdgp1UEgLHbGR3ic9r6FasaNISn1Riuyd2FCQBuYYs0Ba3g7xGliIENN/oWQ1QJ9Q2j4TaFlc12kspAN419fr+Esm9NQBA6aWHJrmSTQan1g8URj9Ssd4mxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767006983; c=relaxed/simple;
	bh=ZQQOOq3J06q9HQkwugPKsnI36Nbe/3XF9AOJM8pW3Go=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F6kxi/UMLn+YciFICC2LwnQK/rAYyZJHD9soJGTlwySGHtSfLQiA9Rv8ZK6Y88m7XYsHsDZyPeImMx8rKRqzoInMPwsZ+FTUyrH2hT1RwHWLZ2RCkZmXvUCaVkcJrdjjjy7DcGDgUIvNd95hkzU1+ZAm15KRS+Qxc5KgeWZ3Nz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L3+65GmC; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-598f59996aaso10925092e87.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 03:16:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767006980; x=1767611780; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FSTxVA+UpdDc1ZmElpfIC/aV5PLsLoOrEsjmeAVLdGc=;
        b=L3+65GmCbpQ7huhzAXDi9LRmYMqL0acz4hJAa86eaqiVAcNGSuiJAl2rOBmZlgqPkz
         dAQ+MaW6cBL8VX7Pn3I6BjXjgQzzSLSohQIkzr0LOilai5nNBMUysh7JLRy6i20uGKL9
         22760Hft/bwpaEFN4styJIdRX+3uEJXEajhZCYpTHLrtMhSEw/Z1B7W6CBNznAvahZDo
         DB9fiwHBgRCWsYp9KfmiZ/qQo4E2icrcfhC8Slac3Z7B1sDg5LG3xib9LnD3mlr9/AAQ
         kpLMUcOIQb/K2y9By73Ux5YYu/UTQQ754JEWDNEmeEo9aJKy9pPUZd9i9p6Cr+TduOP+
         Td1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767006980; x=1767611780;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FSTxVA+UpdDc1ZmElpfIC/aV5PLsLoOrEsjmeAVLdGc=;
        b=xGy1UlKy8uccH+jIOtVX/xy42A6VCo/kpr4Caa4gvORjBNx/JxthvK2bprfXvYFxX0
         VdPqlerW8Tv2m09aQY6gtZYrvkHh0SDW6b9wHkvkNpphbo4iGCVt7oKh+5dm8NqBJZm/
         xkU4KyrwQb2z0Muq3Ynv5PPPRL9nWyjaJ0pTielPKCOUBMDDCRUj4CnggUdw+OICiBqk
         AzSP+SDoCTT5+0DaOpbaHazuf1xME0/uznFW+2LEYf81d5qIQBTTGIA32l5l96W5I+3U
         FwbNuFqPLBmqviX+uOY8qIX0YtfapMlNypfbh601leT1Zg5ZAnxi8Mcj4lkAKfTowG9A
         rpsw==
X-Gm-Message-State: AOJu0Yy9GFGi1XEkpDi4BHZOsxAVClfFsUOges1cSpNIdYV/tDPTpnoW
	es5Q4BgDTfTO1MpJ3YtPrRkSTIDXG3hOXtEOAleuf9Crk26YoBvm0kvk
X-Gm-Gg: AY/fxX5aSkK0He+t0sVeDEDbWuCeDv9RPgwFYW6msXCtChDBNtsc97rdyyiJasAx8IN
	wGptYNz7DKNNopDVXAKbNGvnRxYQU+43uYMRgLc2PVrBUDkONRhZBLk5FWB+ZLmPflrV7pKI/Mw
	Mp4MQak59z3sPbMsA6T18WkLpve8LQpnBiDHmD4ly4OKeAp2Srdm4b4HZpQLRR5PkcElwCnlPrZ
	KE9LwN0fNhRGaDhKLWPyWxU4grH7lx7Xgf9VuhX9YceWCpuFgT4Arw/9WZWeyOJmLkfDNJXvq1L
	ytFvsVDUQQPWTojOdnI9EZkg8RLQ+sgxdUsEug/z6L5ztdnfmb+ogNZgC0XXDd/ILiZpHEEgPa8
	RVaMAzvo+pU2Ui+6Izbsnya9tc8MOJzkDKeXhgRcjiwCuE7mWbJfzFbHJzlDFYm5TCpfxY7nC9F
	fklqxVHvjOTVCtnHwqw9EKoLM=
X-Google-Smtp-Source: AGHT+IFrjSCLmpiymAWVa5hIY6Uie8jA2l6zY469GZ3/K8APJClqrMl9pjFAcdjnwIQ+QfBdIe2z/A==
X-Received: by 2002:a05:6512:128c:b0:595:7cf5:f7cf with SMTP id 2adb3069b0e04-59a17d4692emr10834823e87.38.1767006979842;
        Mon, 29 Dec 2025 03:16:19 -0800 (PST)
Received: from [192.168.0.131] ([194.183.54.57])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185d5ee4sm9350180e87.17.2025.12.29.03.16.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 03:16:19 -0800 (PST)
Message-ID: <761d6573-3751-47fb-9b0e-8063f3cecf76@gmail.com>
Date: Mon, 29 Dec 2025 12:16:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/2] leds: Add optional instance identifier for
 deterministic naming
To: Jonathan Brophy <professorjonny98@gmail.com>, lee Jones <lee@kernel.org>,
 Pavel Machek <pavel@kernel.org>,
 Andriy Shevencho <andriy.shevchenko@linux.intel.com>,
 Jonathan Brophy <professor_jonny@hotmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org
References: <20251228182252.1550173-1-professorjonny98@gmail.com>
Content-Language: en-US
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
In-Reply-To: <20251228182252.1550173-1-professorjonny98@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Jonathan,

On 12/28/25 19:22, Jonathan Brophy wrote:
> From: Jonathan Brophy <professor_jonny@hotmail.com>
> 
> This patch series introduces an optional "led-instance" device tree property
> to address non-deterministic LED naming when multiple LEDs share the same
> function and color.
> 
> Currently, the LED core appends numerical suffixes (_1, _2, etc.) based on
> registration order when duplicate function:color combinations exist. This
> creates several problems:
> 
> 1. **Non-deterministic naming**: Registration order determines suffix values,
>     which can change across boots due to probe ordering, async initialization,
>     or module load order.
> 
> 2. **Non-semantic identifiers**: Names like "lan:green_23" provide no
>     indication of which physical LED or subsystem they represent.
> 
> 3. **Breaks userspace automation**: Network management tools, LED control
>     daemons, and hardware monitoring cannot reliably identify LEDs.
> 
> 4. **Ambiguous numbering**: "lan:green_23" could be mistaken for LAN port 23
>     when it may actually be the 23rd registered LED of any port.
> 
> 5. **Namespace pollution**: The alternative of adding vendor-specific function
>     names (LED_FUNCTION_LAN_PORT0, LED_FUNCTION_LAN_PORT1...) pollutes the
>     function namespace. The instance identifier keeps standard functions clean
>     while allowing contextual differentiation.
> 
> 6. **Breaks naming convention**: The _1, _2 suffix was intended only as a
>     collision avoidance workaround, but has become the de facto standard for
>     hardware with multiple identical LEDs.
> 
> **Example: 48-port network switch**
> 
> Current behavior (non-deterministic):
>    /sys/class/leds/lan:green      ← Port 0? Unknown
>    /sys/class/leds/lan:green_1    ← Could be any port
>    /sys/class/leds/lan:green_2    ← Could be any port
>    ...
>    /sys/class/leds/lan:green_47   ← Could be port 1 due to probe order
> 
> Proposed behavior (deterministic):
>    /sys/class/leds/lan:green:port0   ← Always port 0
>    /sys/class/leds/lan:green:port1   ← Always port 1
>    /sys/class/leds/lan:green:port2   ← Always port 2
>    ...
>    /sys/class/leds/lan:green:port47  ← Always port 47
> 
> **Example: Multi-domain power indicators**
> 
> Current behavior (non-deterministic):
>    /sys/class/leds/power:red      ← Which power source?
>    /sys/class/leds/power:red_1    ← Which power source?
>    /sys/class/leds/power:red_2    ← Which power source?
> 
> Proposed behavior (deterministic):
>    /sys/class/leds/power:red:mains    ← Mains power indicator
>    /sys/class/leds/power:red:battery  ← Battery power indicator
>    /sys/class/leds/power:red:usb      ← USB power indicator
> 
> **Design principles:**
> 
> - Backward compatible: Instance identifier is optional
> - Extends existing convention: function:color becomes function:color:instance
> - Follows kernel precedent: Similar to eth0/eth1, gpio0/gpio1 naming patterns
> - Ignored with deprecated "label" property: Avoids conflicts with legacy code
> 
> **Alternative solutions considered:**
> 
> 1. function-enumerator: Only supports numbers (0, 1, 2), producing names like
>     "lan:green-0" which are still non-semantic. The 48-port switch needs "port0"
>     to match physical port labels.

I think that we have currently everything in place to address the issue
you're trying to solve with this patch. Just introduce dedicated
function like LAN_PORT, and exploit function-enumerator.

-- 
Best regards,
Jacek Anaszewski

