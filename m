Return-Path: <devicetree+bounces-254260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD80D169C3
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 05:45:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 280A83026F20
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 04:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E30B2DAFA8;
	Tue, 13 Jan 2026 04:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YuVJsQA3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F2E50097B
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768279532; cv=none; b=EvYXDUnwaitVymd3Cki4G/U8LzV+mfNojy/P3dbc4xjdXNIcPqdWpgNrRmJfz7hY448LZvWVrNIWWdks4ps0r2aBBuQP6B6zilI7BjCXyAtYKSeaCO+T+kenxBFOdEdRAECweVaaxlIxxECfgRRx190hyGLO2wLrzcf2i1J8Tdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768279532; c=relaxed/simple;
	bh=cN1lliBDvJ2161XpgMqnGbtxFjb3awzneHzXZEap+mk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kLIKQt4MEeGm1koGAYEJgbkjWzWHTz/t2PMusJg63fvClsU6fT+tBkN+5PG0ZT4qyYTD631hVs6PYxk1kEAjHhbluRwxE1GvK2F/udbfxy1q98G6j+os/G28lIEG6gY51o+1YEBP7rVU6q9+pjOIyjmMZuDpb+4DSirLsN1Hfo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YuVJsQA3; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-81f223c70d8so2236169b3a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768279530; x=1768884330; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Iy6S9q8/CD1KaKEpgdKuwKLpEadDje8AFP0pfPr3/5I=;
        b=YuVJsQA3Res31y46H78DBm8nL4DRqWkA0OnGcC8aMdPhc7SJgxNz+xh0jWdwp1tTpc
         IKU42eIgHvAmQVhRpj7/TmvHBpDSVJNMNJWujPh6/AC8Qr8fM9J7lalJs60RnF5eazUR
         lnBIlSvxLbwdS8P53zapTA7P/7RqIajhv/pOzfScahgdayojMH2t0IVCQertgK1lZPc7
         tqR4dcwE9UBJawy/MpSB9o6R6Ljy3pryxPV3BrUUeNNvCLdKF+6g8bgTP5nRZK1XsAsY
         9JchQB/IE5Ptnhd45oT4PM4daLNm4ykcT6yskaVhvlkm8d6QKzOBgcPkLagSIL2HST3B
         G0yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768279530; x=1768884330;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Iy6S9q8/CD1KaKEpgdKuwKLpEadDje8AFP0pfPr3/5I=;
        b=dr6p5+sOBuHXVuBkLhSRfcu42egh9jNuvCVLkn/Fj67ejcUBqEu3oCDFCM9sx9HItK
         l4z47mM3aODp9zRWD09TsuqJeE6GeYY4AMBdPHFBEptxXQ6DaNB4uy2gCnjFu0s2yzN9
         WJCR1AdSG75UswL2NKjryb3Q06RO4RjO5/wwcLJ4IuWjHFTNZUlT6e1d+pdK2qrzTOg9
         YYlj0U4t53BTPGln7cpEAEa8KQhGHNk0KBgo8v+FO330/oqFzZDQw6RuPD0ufGbU8pGn
         jceRI1IBuTkJtgGquTy5YSf0/bOT5d2uaiDGctgz1jAdk+75hXaTFqeFa1ikIEY42E4A
         unTw==
X-Forwarded-Encrypted: i=1; AJvYcCUQe1MZRQylWxuG0W0cwvn0bY8sMkgrpJiO82QJunPRZQJnCXIf0sVmB1b7dRVC6XUw4hXBYkv8ub1w@vger.kernel.org
X-Gm-Message-State: AOJu0YzjtYOY6i4gHHx3pLkDhw5Ca11j+RXPiR2/5U9yQdOyC5nqYCmZ
	cTOONR1CbR+b3QGvzJVEP8IlfKWTC4zZidsFn7aLCe9/bHPrqBkIyFC6
X-Gm-Gg: AY/fxX4JqamqH/qWjTNMYE3JkgcCFrJuowoz9hv4OB6ZGXopMxj4sSzd27kuwrEXw1U
	bSmWCTN6J4qujbfTHQOWRJjoW16vxs1AQZ9WoZFSKnxrHt+FVq3Fs3uU5I7V2aSG0EqQ1RImNHR
	hO5Li/B4DKY2+7S8n4ZIDcjNGMbmeIuoC9ellrWRyGBbGHnGEyBkIN0rMQWx24oDudFovy4sePl
	hHQ+EE+t3GmWdWMtMdKt9TwN2bo7rRfuHzs+TZACeR/5yOhdAioV/44lpVcz1q77Y04uI5IULjP
	ILL2B/Vi9RGMY05EAVDMe2Gsd3GMJopCd58ah3lRvn14sgMG96XtIyiEXYsN6Fon7bpB3eqff9q
	EzKGW3xW9ZtKGIox/CdbltBjShL+cZIIRsVOK8/3xBkZ1EFVZaYj596bh7k6kTBLlaoevHQ+9Gh
	U3Xe+cT+vrW8J1wMoJZ023ICuQurL7MY/TsQ==
X-Google-Smtp-Source: AGHT+IFqbGus3DZt4vurEFth5/Rb5XoyKQRcXgMFVDwspPX6ajf+F0/ZgCzEPgnpPLFp0Bu5b44dew==
X-Received: by 2002:a05:6a00:438a:b0:81f:4ce8:d641 with SMTP id d2e1a72fcca58-81f4ce8f745mr5760972b3a.37.1768279530424;
        Mon, 12 Jan 2026 20:45:30 -0800 (PST)
Received: from [172.16.20.12] ([136.226.253.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81f36f88f4bsm8338351b3a.36.2026.01.12.20.45.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 20:45:29 -0800 (PST)
Message-ID: <c182df66-8503-49cf-8d1d-7da17214b843@gmail.com>
Date: Tue, 13 Jan 2026 10:15:53 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: backlight: gpio-backlight: allow
 multiple GPIOs
To: Daniel Thompson <daniel@riscstar.com>
Cc: lee@kernel.org, danielt@kernel.org, jingoohan1@gmail.com, deller@gmx.de,
 pavel@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260105085120.230862-1-tessolveupstream@gmail.com>
 <20260105085120.230862-2-tessolveupstream@gmail.com>
 <aVuKdAyXfWLs-WJI@aspen.lan>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <aVuKdAyXfWLs-WJI@aspen.lan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 05-01-2026 15:25, Daniel Thompson wrote:
> On Mon, Jan 05, 2026 at 02:21:19PM +0530, Sudarshan Shetty wrote:
>> Update the gpio-backlight binding to support configurations that require
>> more than one GPIO for enabling/disabling the backlight.
>>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>> ---
>>  .../bindings/leds/backlight/gpio-backlight.yaml      | 12 +++++++++++-
>>  1 file changed, 11 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
>> index 584030b6b0b9..1483ce4a3480 100644
>> --- a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
>> +++ b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
>> @@ -17,7 +17,8 @@ properties:
>>
>>    gpios:
>>      description: The gpio that is used for enabling/disabling the backlight.
>> -    maxItems: 1
>> +    minItems: 1
>> +    maxItems: 2
> 
> Why 2?
> 

In the current design, the LVDS panel has a single backlight that
is controlled by two GPIOs. Initially, It described as two separate 
backlight devices using the same gpio-backlight driver, since the 
existing driver supports only one GPIO per instance.

So the maintainer suggested to extend the gpio-backlight driver 
and bindings to support multiple GPIOs.
https://lore.kernel.org/all/q63bdon55app4gb2il5e7skyc6z2amcnaiqbqlhen7arkxphtb@3jejbelji2ti/
> 
> Daniel.


