Return-Path: <devicetree+bounces-12428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A649A7D96D5
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:42:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4F634B20E84
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:42:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6209518B00;
	Fri, 27 Oct 2023 11:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="Y18zZWQp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAEAFBA50
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 11:42:22 +0000 (UTC)
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F406B128
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 04:42:19 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-6b77ab73c6fso1430927b3a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 04:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1698406939; x=1699011739; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ui+0X6RaOuqdgWAsDjJ4EPnCuY3qudStVnPGxxdS4w8=;
        b=Y18zZWQpSkvMLu0XXlyA6JQoWdUREYAxQDTsdJNFo3Tq/+VDNUIaOvVVJOdO1MmLEr
         ndVDcNmK3RieV7zzy6ezk/H7kub7nEYjx/fRLkH1+YOXxrWBzEtuFhycdMPlPSIr0o8H
         i68slCGay+rBE5gacmWSta6+h9uCCD8obwrBEEs7qYSPV9Q6I3zEbKt1HQjGpW/h+KVK
         bmgZ3KbjYIaV8UsR9eHsMO4q+asXhPwjlkqLDfyQv2Jwv+i3LwFOJ+zpEKtM63neh2Sz
         X9EyJKFSDL/Y4ap1ygwOL/0jpOk1ihEHXvZj3u+gb4iCfBx91Q0sRtlZAj8AamjE1JYm
         NT4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698406939; x=1699011739;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ui+0X6RaOuqdgWAsDjJ4EPnCuY3qudStVnPGxxdS4w8=;
        b=XV7v7xap9Qq6e6y07xZ6Y4PYIIfH5LlGsqDwkGcTmIgFbsBwezgSJyRdW3zzEgviSW
         Hh8pALbnOaVtTweAf24EdGdEUfRRsOOVzFKFBJSTQ8jBJf1jEEbhn86nZvGD53Mq0yny
         RQt0k+/mzi02v7Y5CMYbdm71vfgyDRg4GOKlsEfG1kKB92lbnMaXupUt3Ho7EJeEp4Qh
         Iak5Xf0Ddiy2unDzsqJs++rvxrZG5DBBVv0mFrCORzGi3aF+iaygsYfwUgOOuuT801bL
         PWYK+n0C44JGjJpRCVbAAEBtgmypAGtrVW1mhGWuKkEgmjPRWZrOczFD4x58mHh9jyHY
         9HeA==
X-Gm-Message-State: AOJu0YxTh4ewjU9Q6XTm2u0vwfJJW6hfgefxgJdGXW8Gzgyd738Wtrs3
	yWM1rrlGf1ebFgHlC8tjOJmMjA==
X-Google-Smtp-Source: AGHT+IGGyKRa3hQHUhJilPpV747GjhOTRZGEgbsYmHh2pSPtU1N4qqaDf2+sIRpTV6aCdutQx9ddqg==
X-Received: by 2002:a05:6a00:230d:b0:68c:44ed:fb6 with SMTP id h13-20020a056a00230d00b0068c44ed0fb6mr3387285pfh.16.1698406939330;
        Fri, 27 Oct 2023 04:42:19 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:c232:f53e:32d4:5510? (2403-580d-82f4-0-c232-f53e-32d4-5510.ip6.aussiebb.net. [2403:580d:82f4:0:c232:f53e:32d4:5510])
        by smtp.gmail.com with ESMTPSA id e21-20020aa78c55000000b0069ee4242f89sm1228768pfd.13.2023.10.27.04.42.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Oct 2023 04:42:19 -0700 (PDT)
Message-ID: <ab671f50-7a0f-4e72-98a0-fa4d5f2ed889@tweaklogic.com>
Date: Fri, 27 Oct 2023 22:12:11 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] iio: light: Add support for APDS9306 Light Sensor
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Paul Gazzillo <paul@pgazz.com>
Cc: Matt Ranostay <matt@ranostay.sg>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231027074545.6055-1-subhajit.ghosh@tweaklogic.com>
 <20231027074545.6055-3-subhajit.ghosh@tweaklogic.com>
 <d7ba077d-6bcd-4e04-b678-51e4bbc935ca@linaro.org>
 <9e55b561-a0ad-4503-9f20-b7c98507afa0@tweaklogic.com>
 <ebcf3e9f-2bc2-4d91-8b5c-51405236e4ab@linaro.org>
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <ebcf3e9f-2bc2-4d91-8b5c-51405236e4ab@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/10/23 21:34, Krzysztof Kozlowski wrote:
> On 27/10/2023 10:42, Subhajit Ghosh wrote:
>> 4. Conor reviewed the patch and said that it would be better that I handle all
>>      these operations in apds9306 driver (this) patch series rather than submitting
>>      a new patch.
>>      "Ahh apologies then. The best course of action would likely be to include
>>       the patch merging the two bindings in your series adding the third user."
>> 5. As per this patch series -- RFC->v0->v1-v2
> 
> RFC was the first version sent to mailing list. So after RFC there is
> second version - v2. This is v4.

Acknowledging all your other comments. Appreciate your time and effort in reviewing
this. One last question on this - So what version should I use for the patchset
which I will submit next - "v3" or "v5" in the Subject of the emails?

Regards,
Subhajit Ghosh


