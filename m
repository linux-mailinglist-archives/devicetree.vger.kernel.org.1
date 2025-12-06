Return-Path: <devicetree+bounces-244952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E338CAA74C
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 14:42:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D57F306291E
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 13:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA8232FB99E;
	Sat,  6 Dec 2025 13:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eW4ZX2xm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81B352F7AA7
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 13:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765028309; cv=none; b=dD/CUca4WxO1p7TYkj3J9ZFX3ieqZ0m91swV7MrU6hAHlB35EvXm+ll4PLhlOXDwGk6VHr6m0aBvPA99uRVYZR4P6mezGmqOF7dvgWoTUF6Z51nHwYbgZ0Yh17dDSWt00ZCSHHNf4psvBSchBmMUO07H8N49tam19Ow8pXvquTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765028309; c=relaxed/simple;
	bh=ym2C2sVMhc+W20ObHTcDmFSRkzCbP8pObQd9rfJb+4c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j9noBKo7eX3zBRxKHeZG9dqRN/1ms7OKoEQxgejfXjSCymryrj2Rp/H9nqHMAvOlhBdc5EEAJDhOV6vtb/9Vzjqq/hcGPzr727lss6Zjz+vFmv5FEOWG7rH6JH0NK5nuTcRo0xMIFlCILO3jVNSzpZuYM2kX+8YX4IxgIW0V3Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eW4ZX2xm; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b553412a19bso2643599a12.1
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 05:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765028308; x=1765633108; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r6ThddeExf5Und4u30qaitIGfC7qXYJM9H2MDxYn+/s=;
        b=eW4ZX2xmM0ZFaJSsGwvK0AV5B1YYScuasf+DHJC8CT/AyEOKblA2t5XWUMcD9fr+pC
         3boBpyRzE500xj/C/oDGAAFGzGAvhALxNcXqAKWISutxm41UKNPPCtG69znDjxSS8iGi
         tyYkH8Nke1KtcZnUpxjdBnWGbGFF0agxHIoQdaqx+daGdHvSuesa14xFAT097IIVEjl6
         g3L1M+Rh3YyccUaKok00EpN9abL1vic8N1inH99mo7G4Ikb03PKMwU2S3TkjNghjH7g5
         jJIlzS519W6G4hcKLm1d0oB2mCSLkm5mNFj+BLiqQda336Ph6BjD9NLHvJA9Dr0plK/r
         dAEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765028308; x=1765633108;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r6ThddeExf5Und4u30qaitIGfC7qXYJM9H2MDxYn+/s=;
        b=piYmihg0oJ5qNQY2HyOdiqJb8vVe3zH8lCyBJYcV94aJZE5jq5eVloyXezjTWcB/MR
         wQhYBZXRAdDb77Fn4BNHxTlS/T0Edu6VQBzSwbOescV/cyrYf+J7ZJiTAWHZFZn/0xYw
         7KmP+h6hYWqfUtFQX8B27UwNJjklIu42M4tTJyjJxM/+TtyjaCSxg2HasrGupabmu4nn
         ezUHd0/9uPSg22T5yG4ngWqBmRQUkScb50iY1rGpZ3rno0wIsc3IPElmvQ4tICic7AS3
         HhjQcO/mzPWVybF8seeItLjvqare6nX1W1PDFzXGR8dTZjRWe15eqVJhkWYkoOAQx79i
         7BKw==
X-Forwarded-Encrypted: i=1; AJvYcCV4e5BhF5QaUieog1TpIPOfsZp1TTheZBgzdXluIjs8Lc8T1sc4McvAIQ5V5njnhbISaEAvt06CvAxc@vger.kernel.org
X-Gm-Message-State: AOJu0Yydit2iTf6VBTRTrfYsU9LGgRQNnq203seX8+4FE5wDo8PBKgMv
	sQiCPBjRYb4KivOqmV8iGGHDwI1XX0CuJG9sCwGputI5XW8aMrpAvojz
X-Gm-Gg: ASbGncv7n7M/bBIEQk+n0z6EjWBf6hcmzN+2aAD+DqKxNDMvZk8Uk+iAD0Rh47XrAEi
	1f53ahUjnHWUay9kkhRq0qWhg+Zh9fFPnlqMjKXF1kjLudQSqzbds9kZF5zvtPo9yuOAOftZ9vY
	n1YH31lxv61W8RVDTqoHl3z/weds4GtZCOvAnUMyn+qmoYQ0Bt2MIOdHJc5QKVp4ymQrhfwAzuk
	WVk78Aqndp6/sQKeZrIKCBwCjlE+b1HQI81Geujwr06EzmbU0nXA0yKVci09se5RbbfI8Tq6G2x
	vXq67ytpie/9kDsOzYsE0j6c0J80qWuoNs0WyuQnNsugkCXa0HsApYaOipv/zLatSyNti5u8ESx
	LzA6N4F7DOfIbsvCUS7xIovLt/jKfR3M3OhVRP0NYPMKZ5Ivm+hQGu0wxiB+CtPXvYNCPhMXGrh
	Z2oHSTe+qBEvnss1sTJ7xKdiQhRteni56zdIa082mBNpJS/jjAaDJQIRK4+MhN1Kf6VQ==
X-Google-Smtp-Source: AGHT+IHudn4wc9Rw0jaM+dT7ajZ0xLPd+O8RxvshtGbYFKCr+YXAEgY1D8jUpwi2hZh1idoooj33ng==
X-Received: by 2002:a05:7300:f3c6:b0:2a4:3593:6467 with SMTP id 5a478bee46e88-2abc71dc43bmr1174301eec.23.1765028307527;
        Sat, 06 Dec 2025 05:38:27 -0800 (PST)
Received: from ?IPV6:2804:14d:4c64:82a2:4ba7:7b91:594d:8d90? ([2804:14d:4c64:82a2:4ba7:7b91:594d:8d90])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11df7576932sm30215436c88.4.2025.12.06.05.38.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Dec 2025 05:38:26 -0800 (PST)
Message-ID: <de0b9059-30c0-4704-b0b8-9f4f5abfaa04@gmail.com>
Date: Sat, 6 Dec 2025 10:38:19 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: usb: maxim,max3421: convert to DT schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: gregkh@linuxfoundation.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, davidm@egauge.net, ~lkcamp/patches@lists.sr.ht,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251107001812.10180-1-rodrigo.gobbi.7@gmail.com>
 <20251107-agile-alligator-of-philosophy-03d923@kuoka>
Content-Language: en-US
From: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
In-Reply-To: <20251107-agile-alligator-of-philosophy-03d923@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/7/25 05:03, Krzysztof Kozlowski wrote:
> On Thu, Nov 06, 2025 at 09:06:22PM -0300, Rodrigo Gobbi wrote:
>> Convert legacy maxim,max3421.txt to proper format.
>> 
>> Signed-off-by: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
>> ---
>> Hi, all
>> 
>> At this v2, I`m reverting my previous idea about documenting new properties
>> because this is just a conversion from txt file. At v1, a question
>> was raised about that:
>> 
>> On 10/9/25 22:34, Krzysztof Kozlowski wrote:
>> > maxim,vbus-en-pin, maxim,gpx-pin, reset pin and supplies. Also add a
>> > Why new properties? You must explain not only the difference but WHY you
>> > are doing this.
>> In this case, I`ve kept the maxim,vbus-en-pin prop because it was already
>> described in the legacy file and the driver expects that property according
>> to [1] and [2].
> 
> This is not a commit msg. Apply this patch from the lists and look
> whether the information is there.
> 
> So again:
> 
> You commit msg explain any unusual changes - like modifying binding
> while ONLY converting it - and WHY you are doing the unusual changes.
> 
> Best regards,
> Krzysztof
> 

Hi, Krzysztof,
I was wondering about this again and I need to clarify the expectations here. 
So my v2 patch is only doing the conversion from txt to yaml without any additional
changes. That being said, at v2, there are no new properties and no unusual changes.

What happened was that under the ---, in order to save the lore and the previous discussion
from v1, I`ve quoted the sentence about the "maxim,vbus-en-pin" prop from v1. Here, at v2,
what I meant under the --- was that the "maxim,vbus-en-pin" was not new and it already existed
in .txt file and the driver is already expecting that.

So, even if I send a v3, it will be exactly the same direct conversion with the same commit msg
because nothing was changed from txt.
Maybe my intention was not right, my idea was to just save the lore/"answer" a previous point
raised inside ---. 

Tks and best regards.

