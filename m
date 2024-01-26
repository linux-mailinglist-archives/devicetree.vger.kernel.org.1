Return-Path: <devicetree+bounces-35553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C63F083DC96
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 15:43:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 671F6B2B0F7
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 14:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C18F71B81B;
	Fri, 26 Jan 2024 14:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aTS6R28i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7DCE1CA9A
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 14:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706280054; cv=none; b=jARBBcw7s0+bc2Ahoq5IUkIDytQqgIEYVLBDvYRfMX5G9M3QpwHDZJNTHGDxGccyNMfljI39KMqxgs5r37nZ3KunS5eSVNkcIdNEwOEknmb881iMnir2tzYoMrTsXUcT2VW5ClXJUcPBmfcRF6iRPIhyX1Uros26fzxTByIpuZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706280054; c=relaxed/simple;
	bh=ToHVwMkA2rG2Gf0KYv54/WgPDP0igZrev5cweEZsDRE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sQiZu04WRCbvD2ht/NbZQpC+AG1XKKaleIsPZMglKcRfYW4LqajmvVWTM/yWDLl8buOksS2JCWVM8huN2178jHi/rFTwx/TSdHHepoFyVukVjTgyh9m7W/4CyGi61CR7ENUVjcLXudb0XYfhaGuWyoYKZpsneuj43Pp5K2ikqOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aTS6R28i; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40e86a9fc4bso7874005e9.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 06:40:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706280051; x=1706884851; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I68Ldx2ZUNdKEgzY5p5+0BlL/e7BiQBE3Me8iSEys3Y=;
        b=aTS6R28iC5aD98AAHMU8Z3bdzm3/Mx1zv8KDHe20ZpqOW+pHkgiUvpBfX/+29f377+
         7fYACAkkMy+aAVO/TFf57VonxbdDbnL4K5c3y2KlJRGwTfTirfL08Dz5weLj81bqN2FD
         Nt7UWTLFcNrxVo8cm+2dIMFyzhlsyhaG2atNNqqzYyGwQjPw798d+UTlXbKvzXdnONom
         9D246YgWNWZOX4wcZdJpR0L1c1oWw2VtANFHtbbOq4NCvw7WvRWjVQhPm2v1SVoe8jna
         Btry7YXpuoZh89esrVERtHkzx4qbVU0fo2NbL+3HGxWGcV6/aVKHxacRbJ38NfLE7L+V
         xyUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706280051; x=1706884851;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I68Ldx2ZUNdKEgzY5p5+0BlL/e7BiQBE3Me8iSEys3Y=;
        b=dtFql2evsMFTeJmMAo+z9IswaYEDY2jBUNFXcQdNoYiarPJv/Q+LO1cbJVmTq4UoU7
         zxmgCTyqWwAXf3qwzJJxyf4cA3K4BqcYcUgvzFiPikMyM9TqUlwMNycbbQ9JAwPq8Mf5
         AEO6FIJhVOWqRp8qAIZaBrAVYsCl0OeHamis8jwDL7dy/97SIUZ+0QHwl//kFi9IMllD
         fxAEC7+R5v9tI6PHBJkV0dytxkITjruCFfAdm6rFOeyanhhUmeiaTAt9MFvdw6tEIIfs
         cTU11RKMOzhHEHi9taS1dQ/g8jMALuY5EfUHf1ZnTV7YJsLginS8r8ejt1Wtye/0hIRz
         FGug==
X-Gm-Message-State: AOJu0YzLNYA7slaVapgPkJFOe6Ete/ovB7ENAbcMbK4pnYQUjDVyHYIR
	Tk9drCsIXatLq1AJ96UImI4orhsq8CJEvPy5iGMmJ5pWawknkyDzR6yHOzV0KiQ=
X-Google-Smtp-Source: AGHT+IHXzEf5WgqfPoXBoHkDPWdpU3hY9J3uxc6EbtcTE1L6QxNs5WVrS+kXB19hcycpSon17cfgWg==
X-Received: by 2002:a05:600c:580f:b0:40e:d45d:ce41 with SMTP id jz15-20020a05600c580f00b0040ed45dce41mr922611wmb.186.1706280051105;
        Fri, 26 Jan 2024 06:40:51 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id i13-20020a05600c354d00b0040e45799541sm5957740wmq.15.2024.01.26.06.40.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jan 2024 06:40:50 -0800 (PST)
Message-ID: <68e63f98-366b-4558-8819-e37f58e1e3e9@linaro.org>
Date: Fri, 26 Jan 2024 14:40:48 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/28] spi: s3c64xx: explicitly include <linux/io.h>
Content-Language: en-US
To: Sam Protsenko <semen.protsenko@linaro.org>
Cc: broonie@kernel.org, andi.shyti@kernel.org, arnd@arndb.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 alim.akhtar@samsung.com, linux-spi@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-arch@vger.kernel.org, andre.draszik@linaro.org,
 peter.griffin@linaro.org, kernel-team@android.com, willmcvicker@google.com
References: <20240125145007.748295-1-tudor.ambarus@linaro.org>
 <20240125145007.748295-2-tudor.ambarus@linaro.org>
 <CAPLW+4=kEhMz5eUCTLO5e4RCK23g+EWqRqcGQ-V9FNnL6jaFtg@mail.gmail.com>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CAPLW+4=kEhMz5eUCTLO5e4RCK23g+EWqRqcGQ-V9FNnL6jaFtg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 1/25/24 18:58, Sam Protsenko wrote:
> On Thu, Jan 25, 2024 at 8:50 AM Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>>
>> The driver uses readl() but does not include <linux/io.h>.
>>
>> It is good practice to directly include all headers used, it avoids
>> implicit dependencies and spurious breakage if someone rearranges
>> headers and causes the implicit include to vanish.
>>
>> Include the missing header.
>>
>> Fixes: 230d42d422e7 ("spi: Add s3c64xx SPI Controller driver")
> 
> Not sure the "Fixes" tag is needed here. AFAIU, this patch doesn't fix

fixes tag indicates which commit failed to include the necessary header

> any actual bugs, seems more like a style fix to me. In other words,

not yet, but we can't estimate what header get rearranged and whether it
will cause the implicit include to vanish.

> I'm not convinced it has to be necessarily backported to stable
> kernels. The same goes for another similar patch from this series.

It would be good to have this in the stable kernels for the reasons
described in the commit message.

> 
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>> ---
>>  drivers/spi/spi-s3c64xx.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
>> index 7f7eb8f742e4..c1cbc4780a3b 100644
>> --- a/drivers/spi/spi-s3c64xx.c
>> +++ b/drivers/spi/spi-s3c64xx.c
>> @@ -10,6 +10,7 @@
>>  #include <linux/clk.h>
>>  #include <linux/dma-mapping.h>
>>  #include <linux/dmaengine.h>
>> +#include <linux/io.h>
>>  #include <linux/platform_device.h>
>>  #include <linux/pm_runtime.h>
>>  #include <linux/spi/spi.h>
>> --
>> 2.43.0.429.g432eaa2c6b-goog
>>

