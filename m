Return-Path: <devicetree+bounces-2782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2547AC825
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 14:54:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 04F931C2080C
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 12:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C85AA1C13;
	Sun, 24 Sep 2023 12:54:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCE51866
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:54:00 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC946C6
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 05:53:58 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4054f790190so28821985e9.2
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 05:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695560037; x=1696164837; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V+zWR4OnErzUNTHI9CGno+JO0shm7NKnCH0fmpCCo4c=;
        b=enfe8olHQ3cTGk9667QX1SE2aUnLE40rcjxtTOms/JpXkoRn4wLQ0qdlWYqYLDH/2J
         nOMrN/U1DJ1inQh4vJH8iO8gDoOYUPFUF9a8JkoYsmTM9mhltYirZ8aNPR141Ozdfc+v
         KyKn6+c0oXLpvqO7jhPXd4knpe28gQxM6A9iM8jy1FKyvDyueMkKdngt1e6p2VrwMjX/
         0tjsMFYKAn7jSU6oC0ur990X+IrPrz9fx8Bxi7DOyDgGa2QlVCpO6ST/PXB1oIK1jjfw
         OvALK79mc7Fo4rOAWi6dpDRUR3f0xjCL3xtEOba49dTBxeGOJcJeGHWeHMlgjMc13Fak
         BT3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695560037; x=1696164837;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V+zWR4OnErzUNTHI9CGno+JO0shm7NKnCH0fmpCCo4c=;
        b=Zg/1x4MXOXJhtBzxTdIDUZRQrwWccK/y7Z+0onwGl7H3GAvnoEeFFwr2plRue41WOY
         wPAxLOVfccWGI659pWdYkI0kg10E2tvVVa1a4tXmUjU/S1P7itYNE5e7xyWuk1PdJHug
         AmD2a/dz7Xo05OU3r2Qb7LX+BShwiE6km8gpI9Gr1YZ9EfIwDPaB6Cp8iZI9DYU0gAeq
         x7ShkSP8A2dPS7HahsHBjzzVHc2CoGU223XSmo2gBfqagCV0n6gabnbW3ZaibR34P9+D
         54zLw4yPR+fUkVjFjrtE5u9kPWmZ+EFf7k7Sse38ftJTeUoRbzQ+FQRYmHfR6w8bcDX4
         Ch4w==
X-Gm-Message-State: AOJu0YxKHXE5c2JQJY6CMX/KHjCx/kR3bhQ7YuCAjcX6GdmHQPbvCWPX
	vuTIOGMBs7KXGfvmSNM7dDNgSg==
X-Google-Smtp-Source: AGHT+IE+y3uD5k3aI0TjwvT+iKkLTK6/bpET/tRb+igBUnXtTSJ7YkjJcnfCC4yooWKXBkNSieuy7Q==
X-Received: by 2002:a5d:4842:0:b0:314:152d:f8db with SMTP id n2-20020a5d4842000000b00314152df8dbmr3615045wrs.58.1695560037285;
        Sun, 24 Sep 2023 05:53:57 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id f18-20020a5d58f2000000b00317b0155502sm9222827wrd.8.2023.09.24.05.53.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Sep 2023 05:53:56 -0700 (PDT)
Message-ID: <141ec8de-4008-9f96-e915-92056b409edc@linaro.org>
Date: Sun, 24 Sep 2023 14:53:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 1/3] dt-bindings: Add beagleplaycc1352
Content-Language: en-US
To: Ayush Singh <ayushdevel1325@gmail.com>, greybus-dev@lists.linaro.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org, vaishnav@beagleboard.org,
 jkridner@beagleboard.org, nm@ti.com, krzysztof.kozlowski+dt@linaro.org,
 vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20230924113725.164948-1-ayushdevel1325@gmail.com>
 <20230924113725.164948-2-ayushdevel1325@gmail.com>
 <0fd912a9-4aaa-d4bd-4ceb-7319d9f46db8@linaro.org>
 <69f8f5aa-075c-0dc1-7a5f-bd6978c71f53@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <69f8f5aa-075c-0dc1-7a5f-bd6978c71f53@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 24/09/2023 14:22, Ayush Singh wrote:
>> So this is "Texas Instruments Simplelink CC1352P7 wireless MCU"? Since
>> you do not have any fixed feature and run general-purpose OS, then this
>> should be rather compatible matching actual hardware (so ti,cc1352p7).
> Yes, it is "Texas Instruments Simplelink CC1352P7 wireless MCU". Since 
> the docs suggest that all functionality of the device should be 
> mentioned in the bindings rather than just what is being used, I suppose 
> all the other properties can be defined as optional? The bindings for 
> this device do exist in Zephyr, so I guess that can be re-purposed for 
> Linux kernel. However, I think in that case it should be moved into 
> `soc` instead of `net`?

Zephyr bindings might be entirely different, because they are for the
case of running Zephyr OS on this processor.

I still do not fully understand whether you describe here generic MCU
used for Greybus or some specific firmware with fixed features. Looks
like the first, thus my suggestion about compatible. The location could
be arm.

>>
>>> +
>>> +maintainers:
>>> +  - Ayush Singh <ayushdevel1325@gmail.com>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: beagle,play-cc1352
>>> +
>>> +required:
>>> +  - compatible
>> Still no resources? I asked about it last time and you did not answer
>> anything.
> Sorry, I missed that. By resources, I think you mean pins, peripherals, 
> etc right?

By resources I mean whatever is needed to power it up and operate, e.g.
clocks, supplies, reset lines.

Best regards,
Krzysztof


