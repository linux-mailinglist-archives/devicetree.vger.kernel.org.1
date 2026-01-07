Return-Path: <devicetree+bounces-252194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB3ECFC42F
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 07:58:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 86E52301558A
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 06:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E948254B19;
	Wed,  7 Jan 2026 06:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jB+Fy0uR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E2320468E
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 06:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767769086; cv=none; b=o/BsaVvYFnq9u0CEJYVos5lmoGUXAkyNmPPIoTf+noTVFkKZPHJ68hVmx7niv3RbIa4AjsGo0DeDUwoB9u/wBargpTjejPbiVg0oZKMqXmbOJ0OXHAHjEvkigBFzogFSsEDsPmrSUQFU8T3FM5guzKURj4C/TwS6rEC3XE/w1n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767769086; c=relaxed/simple;
	bh=h/hjUe/EE/3PSq+SDKA2uU8CDeM2m6D10ErSYppFyNo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mYMHTL3iY24j/Bb5xJgfklmYLIGfBBhUov2xH9WSi3pKM41NntZzFANG6MP8786eHpaNu1VO/5vTk3QMqAJIpFhIcAwYNcbwvvDWE8hRLZE9ads1dpm4w4KtmxcooGIaQLwuRrwUz55cj5CT4YC/3G0HoIWAjcKNBmxbt6+4vvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jB+Fy0uR; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a0d52768ccso15368475ad.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 22:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767769084; x=1768373884; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6TFQzAD4cExpKXiU3IgEY1vncCxeqHff9zhX4PPRmSI=;
        b=jB+Fy0uR38FG1rmZtKvNyiD51Wa+j7sMgqBgeADMFlk+paY80rXamQyWtx6J4c98UD
         Ql2sDjhzHfrqF12pKeJlcoq7UJ8qcSJk1H497myGuHvzb5E+IcKFqZFhJZvnXVbL18au
         6Pg1NUEsE+tbZYTCGADxtiLKUIlKk84Eq1fIihnBqM1r+VBPvs7Hi5ZP6zAgkiOv/JzI
         /5zWY4rF3zp7+oC0A81whluLik67L0cOwbTEyvHm03xIhZtNz0rxyIwvLy2KEMpWL7bk
         MCpx9zZ9/3yBzIZu2kUqhsk+6ESHSLviytK0k1WobTOoj8A79IEzph8YGJu1TVBkcmqO
         2WZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767769084; x=1768373884;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6TFQzAD4cExpKXiU3IgEY1vncCxeqHff9zhX4PPRmSI=;
        b=ZwmHcgXSD3RKFUs/7vqv8QG+Yy7Al2kg6hVNUOYWRieobE5/pOCLSwKOwvcmw/bpeJ
         vy68U+2IJvn2P0x/x1lv2GlLMLCYqa/VW5y83U7C/NNh0pOAUHZefC44kwbP/GWnMGgs
         PPITcoUhZFa8XISVDGAkkVtAdC3T5y5rLvhJlp33Cjvu7bieH3RMME2CGprS3o1plSlj
         bylM7QDjl1Icv9lpJ+r1bTpQzqKXPEYxyctS116tI0NW4MA2POjGUAYsm+Z+kyN1Hebo
         8oJmUxTH/gc4mM7+jSX1m5w3pTd9E4VlXPShEbfv/acSdtyqABdO1hyiLW2NHs6IEXCU
         ByKw==
X-Forwarded-Encrypted: i=1; AJvYcCV2LYjjxJdN5YebIkRJeHCfK6IHvappRVlkBFrV3vCmNDSvX91F70kGXIORkIQ/lSfhaxlhqW3SRyyM@vger.kernel.org
X-Gm-Message-State: AOJu0YwLpLpV+gUzHY4cAJOnslM5Vu3GtnRP83Q5cnGpxmshrZPDoidl
	NEhnrRjJXAhKIBO/+9qHRlv3EFUIQVYHtYXCoSQJeYIyV9pjD9qsXxzA
X-Gm-Gg: AY/fxX4XZb/44/cdZSej1HEA6AYaxFpmZgjcrXpLKX3LuS+LSN0L/Sx41UlDjqxXWEB
	4BfTAv1XWvKT9S03slCS3sxrhZTzIpKWm7XK/WeaecUot0E4YN3F58ZMOqQjur5iX+krynwPBBl
	uJv1PNipdcR7FMuNHnmC5Ew+38GAL/LfgckSY+L+ZmeRQHr28OMa4oWJMXrM756oV4vj0sQlo1Q
	sIodGGtgICFdcOzJRmQipke2JHh4S7nrfhO/J/XsvYUMsZsssrtEPStcziip+J5JmBBewyD92bs
	Y9HIT9JOyG7L++oMunLZb2KeMAWMEqIZgcuo0yXNkkN2wA3+B2npgXn2Knp4Ke1HGCieT1PZx/K
	kiYUHQ2ryG56MK4YCz5qZdbo7RjchJbWs6jJbqVjxlL5BWVZyms/o7xYkSC+ZyGa/dc8Sp4Uk6/
	g5J1ddxABcvRvWLHQLbPeDr4QpBQFjiT3A8Q==
X-Google-Smtp-Source: AGHT+IEcs4NBq8H4fFrSYs8fPYZFfN64Sy7nKxMok/ResdzgJ/ADE3P0J3wz890e8k344EJwHst7Bg==
X-Received: by 2002:a17:902:cecb:b0:295:8a2a:9595 with SMTP id d9443c01a7336-2a3ee4e8276mr12662105ad.39.1767769084387;
        Tue, 06 Jan 2026 22:58:04 -0800 (PST)
Received: from [172.16.20.12] ([136.226.245.14])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47303sm40012345ad.24.2026.01.06.22.58.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 22:58:03 -0800 (PST)
Message-ID: <dce7702f-e845-4940-8679-a8d80563988a@gmail.com>
Date: Wed, 7 Jan 2026 12:28:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/5] dt-bindings: arm: qcom: talos-evk: Add QCS615
 Talos EVK SMARC platform
To: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
 konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251230130227.3503590-1-tessolveupstream@gmail.com>
 <20251230130227.3503590-2-tessolveupstream@gmail.com>
 <2e533b51-399a-47e8-bc3e-ab61797d6762@kernel.org>
 <f6ff2086-19f2-46cc-ac89-d8ef3847b9f0@gmail.com>
 <d23e3693-0cf8-4b31-a3e4-e562621911d5@kernel.org>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <d23e3693-0cf8-4b31-a3e4-e562621911d5@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 05-01-2026 12:42, Krzysztof Kozlowski wrote:
> On 04/01/2026 14:11, tessolveupstream@gmail.com wrote:
>>
>>
>> On 30-12-2025 20:33, Krzysztof Kozlowski wrote:
>>> On 30/12/2025 14:02, Sudarshan Shetty wrote:
>>>> Add binding support for the Qualcomm Technologies, Inc. Talos EVK
>>>> SMARC platform based on the QCS615 SoC.
>>>>
>>>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>>>> ---
>>>
>>>
>>> Why did you decide to drop the tag and where did you explain that?
>>>
>>> <form letter>
>>> This is a friendly reminder during the review process.
>>>
>>> It looks like you received a tag and forgot to add it.
>>>
>>> If you do not know the process, here is a short explanation:
>>> Please add Acked-by/Reviewed-by/Tested-by tags when posting new versions
>>> of patchset, under or above your Signed-off-by tag, unless patch changed
>>> significantly (e.g. new properties added to the DT bindings). Tag is
>>> "received", when provided in a message replied to you on the mailing
>>> list. Tools like b4 can help here. However, there's no need to repost
>>> patches *only* to add the tags. The upstream maintainer will do that for
>>> tags received on the version they apply.
>>>
>>> Please read:
>>> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
>>>
>>> If a tag was not added on purpose, please state why and what changed.
>>> </form letter>
>>>
>>
>> I apologize for missing the Acked-by tag in this version.
> 
> How missing? It WAS THERE ALREADY!
> 
> You had to explicitly remove it.

While updating the linux-next kernel source and reapplying the 
changes, the Acked-by tag was inadvertently omitted. I’ll ensure 
that all previously received tags are retained in future revisions
in accordance with the submission guidelines. My apologies for
the oversight.
> 
>> I will make sure to include all received tags in the next patch
>> as per the submission guidelines.
> 
> Best regards,
> Krzysztof


