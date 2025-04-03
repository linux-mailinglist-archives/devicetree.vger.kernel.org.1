Return-Path: <devicetree+bounces-162963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 327E3A7A707
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 17:38:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6FA73B8977
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 15:33:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B58E250BE7;
	Thu,  3 Apr 2025 15:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="euke6chF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181C024CEE8
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 15:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743694410; cv=none; b=Nm82ja9K5E8o8/jHk+uudODhF+EsFjdYxv8jCgPmh/WzCMVeM4IbUFTjcd2s+odwMM+0ge5NK9xr3EKqnTGjWL2Dts5o7yDTzR7ygh9g1/+GjcE5Y9pED/vMd8ZqDovAbjPxOu9xhAVmOE136iZ2kJEOUSdEVZUiD/2cUS/Olso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743694410; c=relaxed/simple;
	bh=xUsMfDdsHev4z8y+qrKBCt1T0mcUN+xIFgs5O6KHNTk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jwLsw23ka0XsvOBhxYsV2F0bKGOzaAWyTkIwn4BcXNTBlDQmY6pirRXsIhxi59fA4JmWaHcFQbUP97J3sfHvSNmL3C5yaUCT7VZKJ/pUeJzZoozy1G55X7ooHb2EIpyf/xdxsMFCZqaGYOCLS/9tj2CMuRgq3bjIOogTBYnVIKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=euke6chF; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-39c266c2dd5so923803f8f.3
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 08:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743694407; x=1744299207; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IA3B3Q5eXFyYAQJEPZq6Pd0mFFgGQNKge9PTmDiKXyk=;
        b=euke6chFnB+IvJv/vmegiBgWqdof4AE416F1qKIz2LauJgz0ns/GlLNGOTY0N8B2vK
         NHBudNIk3DPPwbvJ3Vm6mWPiUt1VIxJmRj6UWjzdGBgawXfcX1D0D+5pqk54R4pG9Z2r
         DjeYz3l+cHwsvQwMWbDIJ4kcoez5jgWmoEd1JqSan4S8dYa8Erbfp5BKw2ElatvBqZ+q
         ctKom88/lebu+Y+ZDkD9rIaelBQGSIVV/9CSIHiz0wk1grqsrW/1SgLnb8sSjFTJYhPm
         js2dT3xX99g5FJQDKnJpVB3j9zHRAK938tmr5vkpMWGpXUMMoV1rMkZP/XidPiLBp5km
         n5iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743694407; x=1744299207;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IA3B3Q5eXFyYAQJEPZq6Pd0mFFgGQNKge9PTmDiKXyk=;
        b=Oh12abQ1Nv9vhr4AIrhqSj+YSzfwEe0HAQqBTyverPDwcMXr1yG9WqhbPRyf3Kz+4P
         97hZ4PLhdmVzw9z20qRFGYBU0XR70HaykN2YfCvIJ2Jg9FkDyNmLYsv1NJtvDQ10TkRm
         XBXAyCymcOKRbGQAUdQJuY3u+khupcpZDRc013duIE78jd7H7Cf96f+to7Az6Ys/EGlI
         6aMJQM70KqRjXZpMBHCzxX/wLo75e4zP6D590LfjgGh8AEXU6WswmiCbM1vUzVxxSXeF
         gbe6mNE2fqXpgvrotX1ULnV2ho6VCX0UzKGunJ/SEYJqb3C8RUsEi3fXEk5D21B6vhTc
         I4uA==
X-Forwarded-Encrypted: i=1; AJvYcCVNh5L5tLagPxCrDRPSgaDPB33Ld7BQ6qSo62Y4FJl/+Ga9iRWTaPnuO/JUhh4mOHm8RPYtQaijdDYD@vger.kernel.org
X-Gm-Message-State: AOJu0YyQx3G3miq0efbL3TlBn5N/VbIeXolMfDunc2lnsFt7rPmEBTwT
	5BBU11lcEiUNidlC6TGYzuRa725ZZNjrbof4N0iieqOXYTMHEJe+KMYcEBjKiXA=
X-Gm-Gg: ASbGncvm+CZn4YRHkZelHFUsePkPQMzhiQN3jgJD0WJN7nl7zB9+IZpyrljwybMnxzb
	d+zdeQeL8nHNDzSwISmylVw301z6TVtxyqQAW0tcaSl9EAbWesqLSqhM/v3z5FW8ZQ8eHstFbV7
	vzMsER61YBS3CKwzcWlzLINZ1xHMQBMZ/eKpAx+pHTN+Vnw1RVLLfAtQCsveVuI2t3nTxPwzcDr
	AcrQho0DS4BvOEkEGyBawZRrw6kjmVZ6d+dAaDNamptxtRbpbtTkjZ79vHHU0a8WqvVdb6I5XO/
	Zb5RqbjxGCmGZBpZHjfFXqc46rRe6uxt4HGA9FuNP5cd5aLH4U89Am2f1+uAQr9LR8Wkvh4CahP
	qR8NcceIvdrps0mzVQDk=
X-Google-Smtp-Source: AGHT+IGl0RUQsSLIiDj6J53/hl8O4gfEXAtkKHjNB/Cx3JzQ6eah3TKX1+b1Fw2JSaFT996wTjvNNQ==
X-Received: by 2002:a05:6000:1869:b0:38b:d7d2:12f6 with SMTP id ffacd0b85a97d-39c120c8f07mr18988412f8f.2.1743694407337;
        Thu, 03 Apr 2025 08:33:27 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-39c301ba2dfsm2105782f8f.60.2025.04.03.08.33.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 08:33:26 -0700 (PDT)
Message-ID: <5c2def81-11c2-4e24-b633-aabdb50cab34@linaro.org>
Date: Thu, 3 Apr 2025 17:33:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: Add NXP Software Watchdog
 Timer
To: Krzysztof Kozlowski <krzk@kernel.org>, wim@linux-watchdog.org
Cc: linux@roeck-us.net, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, S32@nxp.com, ghennadi.procopciuc@nxp.com,
 thomas.fossati@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org
References: <20250402154942.3645283-1-daniel.lezcano@linaro.org>
 <20250402154942.3645283-2-daniel.lezcano@linaro.org>
 <ffe49998-f809-458e-8eda-002d0c0fc32a@kernel.org>
 <c449fba0-476e-495b-abbd-65ba2d44d590@linaro.org>
 <9c47cd4d-41c7-42b9-8f00-a1ea9b9f6ed8@kernel.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <9c47cd4d-41c7-42b9-8f00-a1ea9b9f6ed8@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 03/04/2025 16:16, Krzysztof Kozlowski wrote:
> On 03/04/2025 01:01, Daniel Lezcano wrote:
>> On 02/04/2025 17:56, Krzysztof Kozlowski wrote:
>>> On 02/04/2025 17:49, Daniel Lezcano wrote:
>>>> Describe the Software Watchdog Timer available on the S32G platforms.
>>>>
>>>> Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
>>>> Cc: Thomas Fossati <thomas.fossati@linaro.org>
>>>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>>>
>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>
>>> Best regards,
>>> Krzysztof
>>
>> I ran the make dt_binding_check but inadvertently removed the "oneOf:"
>> after :/
> Other errors were also not fixed even though you got report on them on
> 29th of March.

Which ones ?

All errors were coming from the oneOf removal, after re-adding it they 
are all gone


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

