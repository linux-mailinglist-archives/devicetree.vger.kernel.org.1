Return-Path: <devicetree+bounces-179634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 501A0AC0FBF
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 17:18:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1051D3A451E
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 15:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C0192980D2;
	Thu, 22 May 2025 15:18:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="s+CKhy5C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB6DA28C5C1
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 15:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747927091; cv=none; b=WJpv4y7M3Ev+SKFfrAvqVVOc1XDZiH4IFRMGNCjX8oN5kIwzLo9GgIqfRPyb/ILnSW8N5BOHGG7+V9Bg51KuSuLepkQ9RZKXVObJejvxnEmaATIEkDF0orloXWP/w6hcWYPTbR+FduE3NcFaovDSD0If5MAO+WcScwEW9rCkrwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747927091; c=relaxed/simple;
	bh=n3WzFJZrJyJy3TRd5omO9YN7XI0Mkwu2gw8e8lrvv2Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tGoe0vwXceFZ8e/GCRLMIeA0gtRpENzTdNSu8LgknhHzDXbohSuWonMIeYzj/K3119f7t5qON5Z7WtYtHe42WdkFJxA/QC+JE71hz/5VG+5CXykKWh+sSPcwq3biKYyN6tW8wnNzr1lowDe2sh0OlibEdBNtwfpnupA11VrvG60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=s+CKhy5C; arc=none smtp.client-ip=209.85.217.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-4dfa28eb4d8so4594045137.1
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 08:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747927088; x=1748531888; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wG8eMfbS1Z2h99L0XVTgKxECmu1kCXg6XXKVFHh4NHw=;
        b=s+CKhy5CcIK902m8CfdzFw2LphNNt//rzxkIkEzjX00qD3UzrXMvFHfSM9cTeZzHNS
         CXSPtmgUNojzXz5zNu5SoLq0L/v3OZ6wWcQXDFKF7QRvV/KFrcfRacXo65KbjyJeSwv/
         7TPBuR4pgeJV80YMPdlCbU9fpafhMG+haVrPHofOPP/h8W+YsuQFnv2L8JhAjs6xfjkF
         bt7YZDplaYc1Bkfl9N0bkpup8DgbDhj3QTS4MkAay6IYlCzbAoHNuPVL8seqXXoDAfoo
         1HK0tgjWfk04m1DHI7b9GA170GWmxZ+j3/Mvfp7MxW90P6634pAe6MhrCvk+7VV06OeK
         DKLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747927088; x=1748531888;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wG8eMfbS1Z2h99L0XVTgKxECmu1kCXg6XXKVFHh4NHw=;
        b=WuTjcicreu9KT1iOd7BpNVErQjEsGQQ6/zaMuiLyWrYZnZjwvJll7ROzCWXKZrSXP0
         jbvklb+zkxyPGrkXMiZBlxSeFizRoo2bDsvfLCj7sz8agIYfhTGQB7s9hNbqxicvqf0W
         W7nNTHnacTHww8Bsv43aTHUD/gFPd39WbfdoNRYu6L0szFV9CCtW8wM81jxG8nDdgI0H
         VFZg0nCeCJ72GY5mVGK4SU+WKDa7xh1QObKCMhkFLFnd+CwNLmWksLkaT1VlTPdN6DTZ
         UjxBOPdfqG9wwpFDy6K2RRWT9tOR9fqQ+udWCo0w3bFu01zEt0arWkILhFlRmm9Uca75
         AycA==
X-Forwarded-Encrypted: i=1; AJvYcCVyTBhd8XYMGoMeJpLauYc83A0JFURCS/QkDBuXb3wtslMsOEVSrgRnLIyu4BqTpsjoiIc2HA+dxFxL@vger.kernel.org
X-Gm-Message-State: AOJu0YzcdBYIeWZfyFKyJBgpKZ7Usn7kT+bjrZ/v3Zk+d4qWFivVoiru
	rl0sW54Va+zFA94qEOPCrof0dUNIEuD+T9K3zhNV0AwH9e7n2IYK1drJ0m4cvSQ9tFDU5sOXAYe
	cgrd0
X-Gm-Gg: ASbGnctmIGGq4YrpckD55lhRC7z9Q4117dfgRg/vYNW3fctIbpU90N1OyjQ3d2lQPLA
	ck5xk4cvMmO7zcSyDUoffqF1717T2LD3AaPd2twhVd1MZwpNDvXOvOPSCbFIaG8qrYHNjuMLTAh
	tv10cPp9wVGDzF7Ox2LAvIdrfYiXHfPzIl9Ky4JQTKYuRZ2MfTAcX8sRS+PSucTdWEAST/Enwvy
	KxjfeXfvu80R0zDOJKzGbaW0R9dCGfzYvL6vifNGqb5P1iUxx213s0uzXJRnnq+hjXt3T+DZ1sK
	z9hGDA61QuW/XBaFT+3GbmmNHmDcRqyiKjT5FBP7gBuC+MraVeGL6kbJhMlHPLQdDpgNR1pNUs1
	kPM/FQWz959akDDQKcectoEnukgpy
X-Google-Smtp-Source: AGHT+IG4cmOcmx7gmFRPhK4CoG7looRWEaWGa32WYscTOU9GGWS+L94+fsjsZe/U24v6RyYPVb5H1Q==
X-Received: by 2002:a05:6871:781:b0:2da:87a2:f223 with SMTP id 586e51a60fabf-2e3c28935c4mr15226304fac.11.1747927077489;
        Thu, 22 May 2025 08:17:57 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:3407:53d5:68cd:400d? ([2600:8803:e7e4:1d00:3407:53d5:68cd:400d])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2e3c0b21e70sm3073148fac.41.2025.05.22.08.17.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 08:17:57 -0700 (PDT)
Message-ID: <a364f588-03aa-4fac-a35e-d1cf201e924f@baylibre.com>
Date: Thu, 22 May 2025 10:17:56 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: pwm: adi,axi-pwmgen: fix clocks
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Trevor Gamblin <tgamblin@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250522-pwm-axi-pwmgen-add-external-clock-v2-0-086ea9e6ecf0@baylibre.com>
 <20250522-pwm-axi-pwmgen-add-external-clock-v2-2-086ea9e6ecf0@baylibre.com>
 <4ed39a7f-bfca-4095-98ea-56b3c183b8f1@kernel.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <4ed39a7f-bfca-4095-98ea-56b3c183b8f1@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/22/25 10:00 AM, Krzysztof Kozlowski wrote:
> On 22/05/2025 16:49, David Lechner wrote:
>> Fix a shortcoming in the bindings that doesn't allow for a separate
>> external clock.
>>
>> The AXI PWMGEN IP block has a compile option ASYNC_CLK_EN that allows
>> the use of an external clock for the PWM output separate from the AXI
>> clock that runs the peripheral.
>>
>> This was missed in the original bindings and so users were writing dts
>> files where the one and only clock specified would be the external
>> clock, if there was one, incorrectly missing the separate AXI clock.
>>
>> The correct bindings are that the AXI clock is always required and the
>> external clock is optional (must be given only when HDL compile option
>> ASYNC_CLK_EN=1).
>>
>> Fixes: 1edf2c2a2841 ("dt-bindings: pwm: Add AXI PWM generator")
>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>> ---
>>  Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml | 14 ++++++++++++--
>>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> Please test your patches. This does not pass build (binding_check). :/
> 

Oh no, I knew I was forgetting something. :-(

Maybe time to see about building this into b4 prep --check so it won't
be so easy to forget.

The correct will be:


  clock-names:
    oneOf:
      - const: axi
      - items:
          - const: axi
          - const: ext




