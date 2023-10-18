Return-Path: <devicetree+bounces-9815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 077807CE9AE
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 23:05:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38D1E1C20F9E
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 21:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4722A4291A;
	Wed, 18 Oct 2023 21:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g3F/e9rh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0E5347DE
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 21:05:53 +0000 (UTC)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AE574788
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 14:05:51 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2c503da4fd6so83367371fa.1
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 14:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697663149; x=1698267949; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3Sf2UavZlGlSuMBGqSBmnqFseiSuYY3mpQFJNM7ytS0=;
        b=g3F/e9rhq+yqCPm7nFbKjaByQKsLcEQWJr+oNrmYVuvhOA5MTdPPhOcBytEausZ7VH
         vfZ8vF2OFy08wMASIdS6qDbICw+f0TY8PP/M4gJTFv1bcFMLJVJ6btTldxRdNYXc0vbu
         XkMRu2RYhLKwSwDKnFuVJZQvfZiYlE2KPFLQ42b/CDrqmTYMKLIrBvvlJV5rukDqFc+H
         bS2UF6rV2CkrOVTO7YQfkNnfAUo2eQRTIFDW+/TCuJNlNv3t+NQl01Jxam8rRXo5UiR3
         vENcNYYeQE7O4AmmjkauGqi8IDiJUFbcH4c/xw60AIZ1J+rNMlKZvD1wyEfhMViwtR5D
         hg3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697663149; x=1698267949;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Sf2UavZlGlSuMBGqSBmnqFseiSuYY3mpQFJNM7ytS0=;
        b=pdVKP1Hymx/+QH1obE3uoro6eH1D8EkQHKnYNbJoUTqyQro5pUfYa5xzeEGSs5+c22
         Srz4gBQxjbk84CeYXzwlqQg9gSYU+ZluRae+/iNzeJNxhm5WkY+3n/dh7uGwjcXDJ7p9
         ZparfGbipJ9ESwJ+ybxTf7/Sa4eujZtYudUOjN9OTM7D0hTgGwAo6nQzsdW7Fx0TE5MN
         tjCORx95lBABR0zNWgxKTjilRxyoODskmKPwuEDEWK0cUM0T4nRXnS9mKySH+pQHgxJT
         9NKo9tIWj4niJWaMpreUOed454RULRoQgcd3VR2Cl4Mb2R+ydiaTuYL31a7mbOW1LOOw
         dVbQ==
X-Gm-Message-State: AOJu0YxXudKbE9gM7IUVeyPrOIRj/3M8DkfUFSVbErQp/5D5OS+sbxR4
	fXv004ceczCsRPKoWXZGtvLBWA==
X-Google-Smtp-Source: AGHT+IElb950wuSzxs8BkHLrrK3qUYdY9ithi5BODcRu6swCodyhbhJKucw0xer+AXhZI46HGGK+sg==
X-Received: by 2002:a2e:a792:0:b0:2c5:14eb:1080 with SMTP id c18-20020a2ea792000000b002c514eb1080mr146417ljf.21.1697663149614;
        Wed, 18 Oct 2023 14:05:49 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.49])
        by smtp.gmail.com with ESMTPSA id p21-20020a05600c431500b004076f522058sm2619431wme.0.2023.10.18.14.05.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 14:05:49 -0700 (PDT)
Message-ID: <fd64faf0-a149-400d-8cb7-244253c917d7@linaro.org>
Date: Wed, 18 Oct 2023 23:05:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V15 0/4] Add PWM support for IPQ chipsets
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, lee@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 thierry.reding@gmail.com, ndesaulniers@google.com, trix@redhat.com,
 baruch@tkos.co.il, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev, linux-pwm@vger.kernel.org, nathan@kernel.org
References: <20231005160550.2423075-1-quic_devipriy@quicinc.com>
 <f87f480d-6775-44c9-8a2b-05d47bb0dc5d@linaro.org>
 <20231018205232.p5d4xaqsd5fcbvfi@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231018205232.p5d4xaqsd5fcbvfi@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 18/10/2023 22:52, Uwe Kleine-König wrote:
> Hello,
> 
> On Wed, Oct 18, 2023 at 06:29:30PM +0200, Krzysztof Kozlowski wrote:
>> On 05/10/2023 18:05, Devi Priya wrote:
>>> Add PWM driver and binding support for IPQ chipsets.
>>> Also, add support for pwm node in ipq6018.
>>>
>>
>> You need to clearly mark dependencies.
> 
> This is something I wouldn't blame Devi for. The dependency is not very
> obvious and its kind of normal and expected for a patch series to have
> dependencies. *shrug*
> 
>> Next is now broken because of this patchset.
> 
> If I understand correctly this affects "only" the dtb check targets,
> right? Is this bad enough that it needs an urgent fix? I would expect it
> doesn't hurt much, am I right here?
> 
> I just looked into patch #2 and had a few comments for it.

Check/Tests of bindings (make dt_binding_check) has warnings because of
missing PWM schema.

Best regards,
Krzysztof


