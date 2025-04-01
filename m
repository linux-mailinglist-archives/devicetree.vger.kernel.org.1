Return-Path: <devicetree+bounces-162205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB36A776C0
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 10:46:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E76CD16958B
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 08:46:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 297991EA7E6;
	Tue,  1 Apr 2025 08:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kQeWFFMi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558841D7E52
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 08:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743497184; cv=none; b=FJTLSGCN7XKSsjFD3S7z+0SLE9IoVqb2Wpxl4HOATvMV42YNO+wjnc9BuX3AvweJVvzs1pKpFhqVFfy6iKkg0Sk3Jewp91H8GOLueUL7ol6VCsvQWxJy4Xem7ON7FomQqg7Gh3AfptJ6xQ84NialuMIYtJJhjH5VocYohAlz6as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743497184; c=relaxed/simple;
	bh=Eceui0TVVx2rDkmcA8Cj1isv6eadBCZ/Qq9koYryIFs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZZESjKmZ4qP1H6rXrhNyG/OBJqak0O2gvoSKq4WKBKJlohdngYXllOT2TliBtQoFzRjfYH2+i7HnPgo2KZLHvV/dwyMM+CD2RTloZN8CwzldXTnuY7FNR17QiMOYMiR9ave6JwJufELXVt24uKhZhaTMWIWvcvb6jJfliUvfq+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kQeWFFMi; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43ce71582e9so37124565e9.1
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 01:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743497180; x=1744101980; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h1OcP8KDLM4UIUl5mqjKNbP+KOXXApDs25FTbj9zEoI=;
        b=kQeWFFMiMQ0Sph6Tj7CQ5FpWvtPDqT3E1OOLjVm7vsvT2rLSaZM+0+1nx85xofWRp8
         5yTyDvPOLB1d97fRMrscO+0XhuD4+C9O1DIkayRE+phyujPEbmAW2dmMdo3RY+Azz6zE
         U51kZo8ngmtjLwWf+5g67+HLD9zoCFeIOm8DXjXj0QwE9oIppzVBJT5x+3iFg+IV/c1T
         deeVYZnPaKSOqj/eWbQevfEDn4CLqUndPw7OE8yhm/KZIOloFQnlRAJotRacSuLtyU1n
         ctzMbniHNtiDuSEzFBzI52YO/k6O7Szneo0VNIWiP9box/ktD72MKVQ9QgbA2OZ65Ibc
         rNlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743497180; x=1744101980;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h1OcP8KDLM4UIUl5mqjKNbP+KOXXApDs25FTbj9zEoI=;
        b=iBrfTn532pwSdb36vQcve7+4uwuzyUU6PH97TM4qg7x4PjooTKzoNMLnhZLL6NZlgx
         OPQ8/tbExACPYfts73OzgUQzFJhqkwgtr/VxBytTQ68a9xw/9IwpP38K7T+JuXzkvdTZ
         2BCH+BqKfUOUYAiPJRIuDx/aRkEJXB43S9Se6vmuXIDutSMGazgF0gFvBV2RcPWsJDCv
         +qQsvH7egAJPclgbknh1leTRqdHc9NtQbaMHFYj4bL3+t0ZeTIuFQ/ysuiKDxzB9jKbN
         VxkohTOP5C5YuXb3nBFfuLUtlLexNUbU6jVWf7AYXDJ0JrKNYRZVO8I+JiRrk2WNeNkU
         O54g==
X-Forwarded-Encrypted: i=1; AJvYcCWhPpmBWI74mKqRBoeGnHcdE0evLQBaD4t5esJ39uph0Xoncu9GOvBCwkALHnm0jf9ygt0W01L5YLLi@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb66faUparHHx98zwGJSGnXGWC6WkgRzveaGn4UjeklDGJN2Ic
	zt6N8r8uErs+YU4GcWlAipQ52PvyxFcaZspoqQHC1DMaQp3hduXen3Bn0qBYfAA=
X-Gm-Gg: ASbGnctyJ5aYUGrnJREY6FHYwyvoGnEmA9Oqlv31agosBx5gfN329LEWk4ycoH865LH
	TfXJPKD0b9cO4YhJ71azxevpt5qHr0M2l/1VqgRjY4NebRhgrd3bt6BK3iKW8PhRE0bFw7y7IyA
	SYJFe4QFThhREw62t45ZygEy6Q6FzpdEx0esy6QvKVxrv6Wte6opTlcEK59jpoKgXLuPXBPegSC
	+PVs9XJhuwULu56hGLn0QWVaMGvVy0HzP97kOEkEwL5skZcBM27usrntLzXX0+fGyPHlQmU+6m3
	hhs6VZfXrdOlX9+QMmxgxX3rtGj3AECCSveUX/9QZ7XaAbunWUdU3reyg9pGc5c8I1cTQ/OJj0i
	RFyk4KGLsd4iuryyhfrg=
X-Google-Smtp-Source: AGHT+IG6UQfLzzABD8iS83hdAejooKKRJG1thikhxbGDPDbzft10tjn9XKnzJSrWol6GxnExTBubfQ==
X-Received: by 2002:a05:6000:4282:b0:390:f738:246b with SMTP id ffacd0b85a97d-39c120dc8bamr9918539f8f.15.1743497180629;
        Tue, 01 Apr 2025 01:46:20 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43d900013afsm149321615e9.36.2025.04.01.01.46.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 01:46:20 -0700 (PDT)
Message-ID: <16a0832a-7645-44ee-867f-fde8822f219c@linaro.org>
Date: Tue, 1 Apr 2025 10:46:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: Add NXP Software Watchdog
 Timer
To: Krzysztof Kozlowski <krzk@kernel.org>, wim@linux-watchdog.org
Cc: linux@roeck-us.net, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, S32@nxp.com,
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
 Thomas Fossati <thomas.fossati@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
References: <20250328151516.2219971-1-daniel.lezcano@linaro.org>
 <c433c28d-c88d-4647-b472-7bc81b332d8c@kernel.org>
 <0638eb8c-d87f-44aa-9f1c-eee529b1e1a1@linaro.org>
 <b14718f2-add3-436d-95a5-908eb9217120@kernel.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <b14718f2-add3-436d-95a5-908eb9217120@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 31/03/2025 13:42, Krzysztof Kozlowski wrote:
> On 31/03/2025 09:57, Daniel Lezcano wrote:
>> On 29/03/2025 06:04, Krzysztof Kozlowski wrote:
>>> On 28/03/2025 16:15, Daniel Lezcano wrote:
>>>> +description:
>>>> +  The System Timer Module supports commonly required system and
>>>> +  application software timing functions. STM includes a 32-bit
>>>> +  count-up timer and four 32-bit compare channels with a separate
>>>> +  interrupt source for each channel. The timer is driven by the STM
>>>> +
>>>> +allOf:
>>>> +  - $ref: watchdog.yaml#
>>>> +
>>>> +properties:
>>>> +  compatible:
>>>> +    enum:
>>>> +      - nxp,s32g-wdt
>>> This wasn't tested, so limited review - this also has wrong compatible,
>>> There is no such soc as s32g in the kernel. If that's a new soc, come
>>> with proper top-level bindings and some explanation, because I am sure
>>> previously we talked with NXP that this is not s32g but something else.
>>
>> If I refer to Documentation/devicetree/bindings/arm/fsl.yaml
>>
>> We found the entries:
>>
>>         - description: S32G2 based Boards
>>           items:
>>             - enum:
>>                 - nxp,s32g274a-evb
>>                 - nxp,s32g274a-rdb2
>>             - const: nxp,s32g2
>>
>>         - description: S32G3 based Boards
>>           items:
>>             - enum:
>>                 - nxp,s32g399a-rdb3
>>             - const: nxp,s32g3
>>
>> I guess it should nxp,s32g2-wdt and nxp,s32g3-wdt
>>
> Yes, with one being the fallback.

Like that ?

properties:
   compatible:
     oneOf:
       - const: nxp,s32g2-wdt
       - items:
           - const: nxp,s32g3-wdt
           - const: nxp,s32g2-wdt

Why a fallback is needed for this case ? It is exactly the same hardware 
for s32g2 and s32g3. Could it be:

properties:
   compatible:
     oneOf:
       - const: nxp,s32g2-wdt
       - const: nxp,s32g3-wdt

?

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

