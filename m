Return-Path: <devicetree+bounces-10027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C4F7CF672
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:16:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2DCD31C20918
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 11:16:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E67C19442;
	Thu, 19 Oct 2023 11:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="fx42ypQO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF4AD19440
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 11:16:25 +0000 (UTC)
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5125511F
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 04:16:24 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-5ab94fc098cso3718323a12.1
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 04:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1697714184; x=1698318984; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sAnUoey8f2fAlcA64pZt7TpkGrm2kpPx8+dtgGFHVW8=;
        b=fx42ypQOc3rHVgMKPPkF9KJj+cV3gbIuQ6YFMJLdtFN4KwK4RaJewYHSMihB2qJ2Ma
         C2BGvi20FLg9Oxi1LEsBFbYHsbeD8NqKGvQJIf8mgiYUxFV6/wZnWVEcCCgXqgKtCejv
         rNFOK6KFGeqtUlOK4U5vYDnLjazuxF8zdhvOGHft6vs7yZti7DzrMQ1mamas9qXm3KUo
         etTzTlLRsib9Fbxq6aPJq0h71q1qxQAhAoyQ3EXvfROuabS4N3J4YVhLAetmMssP08wF
         Qxue2TAAJoznVjx+FUe6Piia9tnmi4Qbq4rB/W/KUkF5euBzKVvnkvWtuBkQ9QfkrIGI
         zfDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697714184; x=1698318984;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sAnUoey8f2fAlcA64pZt7TpkGrm2kpPx8+dtgGFHVW8=;
        b=sP1IcdYO2TRyzp/yPwKMFLjijp4vRqTdoIUZpdlxUSteilAWhYAGYQok5I2qYDZLWu
         snInDD0G6sBisdhztDl3hzkTDKkuNqbaIAdLR/oeH1Czf1lXDeydI+asU4pWAdKwdOYf
         KxjPQGxeSh9Dx8TxWPPmnXMzbksLLKlqQzX9e7IUJPoMv2YuqCkNrszkZ2YJ5M8s72xu
         KTJlvX70DpRazV6mHaiLqyz524LsWidg2KaB7W/6K+6EwVACDniP0bwE/ICID8vORRyN
         kBsIfPu50gDu/xQ20NlPl9wn875fIszmKBqGm7GCc/JGwhQFEMVZRKQuFGKMNg0Vaebj
         38uQ==
X-Gm-Message-State: AOJu0YweHKCXsBerEj9rklRMMF7xkFR80vAPcGAYO59FTWql1vTq5xUn
	zlHZ2hOsJmq9YCsZIjCnHHBKOw==
X-Google-Smtp-Source: AGHT+IEdgUYVhwk+hQedV6eZvAiFZLxaNtxLNrge4xvkAKGXUjQS80bNVpCeBl/1/TMUSDGIKy3xiQ==
X-Received: by 2002:a05:6a20:3d8b:b0:158:1387:6a95 with SMTP id s11-20020a056a203d8b00b0015813876a95mr1960369pzi.19.1697714183661;
        Thu, 19 Oct 2023 04:16:23 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:43ac:2324:cc6e:9fa5? (2403-580d-82f4-0-43ac-2324-cc6e-9fa5.ip6.aussiebb.net. [2403:580d:82f4:0:43ac:2324:cc6e:9fa5])
        by smtp.gmail.com with ESMTPSA id jb11-20020a170903258b00b001bc21222e34sm1672782plb.285.2023.10.19.04.16.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 04:16:23 -0700 (PDT)
Message-ID: <6b721019-c98e-d926-04a9-e71f9ea20762@tweaklogic.com>
Date: Thu, 19 Oct 2023 21:46:18 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH] dt-bindings: iio: light: Squash APDS9300 and APDS9960
 schemas
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231019080437.94849-1-subhajit.ghosh@tweaklogic.com>
 <472aa31d-7d6c-41df-86e6-d17f05998256@linaro.org>
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <472aa31d-7d6c-41df-86e6-d17f05998256@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 19/10/23 19:50, Krzysztof Kozlowski wrote:
> On 19/10/2023 10:04, Subhajit Ghosh wrote:
>> Squashing Avago (Broadcom) APDS9300 and APDS9960 schemas into one
>> file and removing the other.
> 
> Please answer: why?
Apologies for not providing detailed explanation.
Link: https://lore.kernel.org/all/4e785d2e-d310-4592-a75a-13549938dcef@linaro.org/
As per your comments on the patch series in the above link and as per my understanding,
I have to do two operations:
1. Squash existing apds9300 schema and apds9960 schema as they look similar.
2. Add apds9306 (work in progress) support after that (which belongs to my original patch series).
This patch is the first operation.
>>   
>> +allOf:
>> +  - $ref: ../common.yaml#
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - avago,apds9960
>> +    then:
>> +      required:
>> +        - interrupts
> 
> Why? This wasn't in original binding.
I am not sure about this. I went through the driver code and found out that probe()
of apds9300 handles both situations whether interrupt bindings are provided or not, whereas,
apds9960 requires an interrupt binding for probe() to be successful. I thought it would
be appropriate to add that in the schema.
> 
> Separate patch please.
> 
> You are doing way too many unexpected and not explained changes.
Sure. Thank you for reviewing.

Regards,
Subhajit Ghosh.

