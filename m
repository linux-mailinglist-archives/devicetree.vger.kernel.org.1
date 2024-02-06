Return-Path: <devicetree+bounces-39101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA2984B679
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 14:34:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3ED4928366A
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 13:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C210130E32;
	Tue,  6 Feb 2024 13:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QZZozFxA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677BA130ADC
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 13:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707226441; cv=none; b=Mv9QHycc7+J3vIy6mq32wOK09H8Ci1tkWdNb0D5/wnaZ3ZmAVd4+rNpLvMgy9EUQvdnCs5r51ehBUvT2zV+vbX36ARLgtt3LF/WV5tF35kScsQM/6kUNRhK00ia0Ld/T11IZm0PXzBEkrCcgD0g5VMlZZTFwk4xcX32zs5IgVmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707226441; c=relaxed/simple;
	bh=BjaUwiHOw79KdfqCv1a2DUls8eJlmOBjneNsNhUNApw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ANMDpHuEv2PBKRlFT4C9E0deHxHU+2R+S0aUGgPS4c3hzP6PlVrSy9QGViNjlzbw4uSZL7ul9bj3RK74i86F6M2SG7JPGImHIAWH3gwUWAPHHS+4++sGkMoKvOqsj+F7B2IyPfBV0fRZLSxvmW/Nv7lBWJeV2Mt6ghdcPIgXUPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QZZozFxA; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-33b4b121e28so30055f8f.1
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 05:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707226437; x=1707831237; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tdzma35Pa3ywWe4Rb4LpWqBdhPwvQwdOCPQBy7x3EGQ=;
        b=QZZozFxAV/px/7e+0PYizp953AfqjpzBdbX3H0WhTkb7lxMYuuSmJf0NIFPLsmqt/G
         wCXfRAghfSk+DApFWPLf9+EkwIe9EvdC2y0kx+HFDQBN+T9BxoO8AGDgiLFeYh0lk3eS
         AyQq8iQUXHkXxpsBTZdECns+iWedejvddyweWS7/Ar6WN+e71fIEmE7F80kDxm2uyulc
         d6IODYCJxXWXg5qa72A7IU61pSu6uYp16zeKy6RWcQ6UfKZJvdMGn7AfahWmkSOcNI/d
         YGMb9mWPrikjyqtqrXX5feXVPvrCjEgQahtklfMVBXumw8AInDn3zLpA5OuMi9wETZFK
         sASg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707226437; x=1707831237;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tdzma35Pa3ywWe4Rb4LpWqBdhPwvQwdOCPQBy7x3EGQ=;
        b=Kcd9KFaql4lQftT+czlIimMig0dhaqDTvps0jB4pGx+IjiOZmWPponFB6U9qOOWG2e
         Rpc8/mnOoK7WOSuSR0PKharJNXF65P66Du5doXtbI7qIT7TScuIOHD661YQ8ezSAmp2g
         71XGUcLo1JwEfWNXekdqVmjzYMPueHejHOrwRl7dqB8xouemG57Os0dQp+CVCdpn5FMC
         F0/Xb2vlZA/U0X1TVgwlznBAVbFbigamv+zTnSSyszCM+5syuwEDH57Ic5ui9g4K+4A1
         9eGF2JxU0JapjDOJ1OWvqilQSjnGkYSnGFcNo5c5qvlQa1YOiU0sSxoCNPLBCfpKkqza
         DKPg==
X-Gm-Message-State: AOJu0YwZRZ69awi7ueGO4uJYVFueVmVxmrO+ThWO9RPXw6rtoYmZINc+
	Vo5GXrUf2d0aNYxN0vpJaXh1fJthsway/Gm4UitzvdQYtxmwfJKOBwIBO+q+4dk=
X-Google-Smtp-Source: AGHT+IHVSP2STmXg/sww5m1OZF9hlZUqwcKw+51azy5Do8WneQNyG6BhgfmYTRAxTHRmg5llfzAYBg==
X-Received: by 2002:adf:db4a:0:b0:33b:3c79:9182 with SMTP id f10-20020adfdb4a000000b0033b3c799182mr1303140wrj.3.1707226437562;
        Tue, 06 Feb 2024 05:33:57 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXFecnjvIsVYExfnnBdGOIrinJp0i2oVTxxwjZx6Yhb0OGwbcbOt1D86vg+sFGPrW0aglgl4bEv4oNdFh/W1ziaVvyeBEZt45O74Jp9PNOzVXz3uZS8IJfXG/+I3gTjCkZ4DA8NEheviB+Bad7f7Cb7huHhZEs/eHD2jS2gtSTZHxTc9sBgl8CTcMiUJPiePO3drqKY/FjF7XNYeeGfW0eiX7eJFYtJO3fqc9Ur8lQfprjmcQTKKynBRZ6F6qIbYZAT4ROVBPuecOgxs7o66gqEPNUBgJvE9xLpgRwMDw4wWxp1rAIal2qvnDUZAICyjd/J9PCWeCI8KfhH7T6dCushWgF3+kxcMiLLBhziXudUZhvsu65QYgFSscNzMKAL
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id 2-20020a5d47a2000000b0033b3cf1ff09sm2139174wrb.29.2024.02.06.05.33.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 05:33:57 -0800 (PST)
Message-ID: <4a0ebbbf-fa46-4dd0-a488-d61d7eb9c933@linaro.org>
Date: Tue, 6 Feb 2024 14:33:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v1] arm64: dts: amlogic: Add Freebox fbx8am boards
Content-Language: en-US
To: neil.armstrong@linaro.org, Marc Gonzalez <mgonzalez@freebox.fr>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>, Jerome Brunet
 <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <8c865c62-cd80-4c78-9fc5-c85491c037ca@freebox.fr>
 <b69a2132-25c0-4acd-808e-d134f5034e58@linaro.org>
 <59ef3824-13d3-40af-9a3a-9b1ec8add9d3@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <59ef3824-13d3-40af-9a3a-9b1ec8add9d3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/02/2024 14:30, Neil Armstrong wrote:
> Hi,
> 
> On 06/02/2024 14:22, Krzysztof Kozlowski wrote:
>> On 06/02/2024 14:12, Marc Gonzalez wrote:
>>> From: Pierre-Hugues Husson <phhusson@freebox.fr>
>>>
>>> The fbx8am boards are based on the Amlogic Meson G12A S905X2 SoC,
>>> and the SEI510 board design.
>>>
>>> Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
>>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>>> ---
>>> Request For Comments to spot obvious mistakes before formal submission
>>> NB: on IRC, narmstrong mentioned:
>>>> adding dtbos for variants seems to be the new preferred way to handle such case
>>>> the fdtoverlay utility works well for this case
>>
>> Please run scripts/checkpatch.pl and fix reported warnings. Some
>> warnings can be ignored, but the code here looks like it needs a fix.
>> Feel free to get in touch if the warning is not clear.
> 
> I don't have checkpatch errors, I'm running with `--strict --terse`.

I easily see 2 warnings, where one is relevant, with or without --strict.

Best regards,
Krzysztof


