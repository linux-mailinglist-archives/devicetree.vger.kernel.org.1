Return-Path: <devicetree+bounces-208525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 730F0B32A83
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 18:12:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FAD5188B279
	for <lists+devicetree@lfdr.de>; Sat, 23 Aug 2025 16:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDD352DAFBA;
	Sat, 23 Aug 2025 16:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jGNB+A2F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBDF15B971
	for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 16:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755965367; cv=none; b=DaBm7v56/Ai5Yqv1RUspT8abBAlXiXdV771Ny9KSMqmYwDcQECBmin7G99AlwFWBn+38aoEGJYSe/KCfilKAzkiDkyfc/fvxxqhapPcFzVNypd8kx+5ggoxjAN+3lgFwnn2M28DKdW9+MYQLhtlkUB4m9mz4EOFquE/c5ZIV4/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755965367; c=relaxed/simple;
	bh=FUwG/gxyGRQKB+JXXx4gl4iOhP78u/f5e7nmclaCeBQ=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=ddk7U7B2msdxTopdz027YfbgXBLQGa5j05zRr1z3Tna8sKiUQQYVmyAkj1SziuOCyBgobgviDBenFgeMsoaQhHV7Uc6i++l2idtCo9Myyiq6ERvFeEotGqZ7mA8i/WdnY2aVPS6KIhxE0wnvTiDVAwNexpXem1vs3zyyiRM5flY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jGNB+A2F; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-30cce892b7dso995140fac.1
        for <devicetree@vger.kernel.org>; Sat, 23 Aug 2025 09:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755965365; x=1756570165; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I5ldSROTTtv9X2BePkbpO0dlILqeRBO/FfySSS6QlUo=;
        b=jGNB+A2FuEYuDCudvAgrB3t2VSxPLsK17VqiRczwe2ZJMgRNW3ZO6OKRhlTHMUhXXe
         gldsn8a5JNQGeD1FfC0QLm8lttxHBEcpvKPpXBzFEx2uS44/S5pCI8Pl7Iddv6uKANg8
         eHZQECacCWqK9GoDDHGpw1oTCcZy83kkzrlvzjYKIQwDtbSWAqDsMrOXHhskafRE6lVx
         ZKQGCDLJTF7f4Wfp6aM0CfXQQoQT4BXZW6XBSzh/EJdToavrYUzTsWl1QF4X0hE0uNM7
         8bYxgSxgjKUpNIX5OSK/Ll1WPxp9d1a6tUJWF+tvRvjQuhNhKVAa4RzFzevZbzZFnd0R
         tK/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755965365; x=1756570165;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I5ldSROTTtv9X2BePkbpO0dlILqeRBO/FfySSS6QlUo=;
        b=EJzKMqY17aN+rhzqBuZlbewR/YBcwnE2P4qTHcPCUhrELHaTTKWQ+thUg/4OqHImMt
         UgofsI+yV8yzuxjvi2vnanD4GXbR1owNCFG/j4Uu2jwviWgFpISbLN4bl2x/7mPdxK+s
         LkrDdmwyyEPIOo6nPTp16YMgWv2lK0QddumamIePZGn4RoYB6TWLMd25ZutxFk0zQ+4A
         99WX+YUGSK4mphtWuY1apwR5mQvMXCHn8qiCi/DL7s62spHkK55T2KJ4dIApOw9pbJJb
         x/84CTD89tkpSnE4008iHay8h7SsqaRRL48sVK6kYvIMjddJvlPJhZ0FYj2Ry787UttG
         ptZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmsO3PVwvX6+EzUF8vBtzgz+rvEXuXmMCnrPh03KkUzYUh9d4v/Ub1hpaQ5ZSKzj9G8FBOH333xzqU@vger.kernel.org
X-Gm-Message-State: AOJu0YzOK442lSHM9cuAIgvxNthUo2faE2orHhs0HtiCDwHyEQpwPfPF
	ZabCmmFrYIW/vdeCLnUI8Bpvxpw6lzY1xflj9PCMhV+QTDKHm+FA1d7VD/0sH8s0rjg=
X-Gm-Gg: ASbGncu7aShZLolVjvvxVf/sS3yUI+y1dHkrWq3kuFDmk+MLjfkb6NmETaHv6/WugQj
	32aa+D+Va1LsF9r6AwTkLWlmK/Bkox7ChoI6cp7aIw+CNgrUTaFavy5OuzWFeZLnttzIsV22T92
	0u5lh9454Z3eaEDR3De6yi/bkwt/oe0O9W3J/DotpgBdqJJC2YCphYuERB/ZGJtU8JAjkF6Ka3K
	9V1i/clVCHRfmREUC25mBDpHXWGCZag9lSW5vhDToKrRGa31fOkrAyX/5+c2YOGyF+jjOeeVKN5
	jRT6fORF2OTld6/2VNpPuD9E2ydcUSJFcwDDswQper4SW6vqc5oy+haVa6DabJJeWfwjR8M+f1A
	roBGZgHRDmH1tRgGFLVVXS2qQahOj2hUl8RkwyFGEWvOrKOzbHjrcW8q+0ir6fYf4PYgv+M+r
X-Google-Smtp-Source: AGHT+IE42Tt8rVMHMtIJU30KzWNte5aFQHwjUAqkCrWOHeQEzzuOgeRcfaGPnVLy2HOMvBY9suiAcQ==
X-Received: by 2002:a05:6808:50a5:b0:437:761b:9621 with SMTP id 5614622812f47-4378537acd5mr3108210b6e.48.1755965365195;
        Sat, 23 Aug 2025 09:09:25 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:4d25:af10:67ec:53d? ([2600:8803:e7e4:1d00:4d25:af10:67ec:53d])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-437967da01asm388629b6e.12.2025.08.23.09.09.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Aug 2025 09:09:24 -0700 (PDT)
Message-ID: <04436186-254c-4e02-8536-5c9fd9c005c4@baylibre.com>
Date: Sat, 23 Aug 2025 11:09:23 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/5] dt-bindings: iio: mcp9600: Add microchip,mcp9601
 and add constraints
From: David Lechner <dlechner@baylibre.com>
To: Ben Collins <bcollins@watter.com>, Jonathan Cameron <jic23@kernel.org>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Andrew Hepp <andrew.hepp@ahepp.dev>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250822-upstream-changes-v8-0-40bb1739e3e2@watter.com>
 <20250822-upstream-changes-v8-2-40bb1739e3e2@watter.com>
 <f7089447-f164-406b-8e59-3bd3e8f94d59@baylibre.com>
Content-Language: en-US
In-Reply-To: <f7089447-f164-406b-8e59-3bd3e8f94d59@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/23/25 11:06 AM, David Lechner wrote:
> On 8/22/25 8:23 AM, Ben Collins wrote:

...

>> +  - |
>> +    #include <dt-bindings/iio/temperature/thermocouple.h>
> 
> This header isn't used in this example.
> 
>> +    #include <dt-bindings/interrupt-controller/irq.h>
>> +    i2c {
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        temperature-sensor@62 {
>> +            compatible = "microchip,mcp9601", "microchip,mcp9600";
>> +            reg = <0x62>;
>> +            interrupt-parent = <&gpio>;
>> +            interrupts = <22 IRQ_TYPE_EDGE_RISING>, <23 IRQ_TYPE_EDGE_RISING>;
>> +            interrupt-names = "open-circuit", "short-circuit";
>> +            vdd-supply = <&vdd>;
>> +            microchip,vsense;
>> +        };
>> +    };
>>
> 
> With that fixed:
> 
> Reviewed-by: David Lechner <dlechner@baylibre.com>
> 

BTW, sometimes Jonathan is nice and fixes a one-line change like this
when applying patches, so don't rush off and send a v9 just quite yet
unless there are other bigger changes that need to be done anyway.

