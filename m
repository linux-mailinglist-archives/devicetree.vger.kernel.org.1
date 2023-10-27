Return-Path: <devicetree+bounces-12382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A63327D92CD
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 10:55:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D75631C20F34
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 08:55:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77962154AC;
	Fri, 27 Oct 2023 08:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="GJJKvWdG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A973214A9C
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 08:55:14 +0000 (UTC)
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFCC91B9
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 01:55:12 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1cac80292aeso14453475ad.1
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 01:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1698396912; x=1699001712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Is4QFcJ/Sw1j/0rsJ9QPsUqhaamwV8h6F6t9b1JVKvc=;
        b=GJJKvWdGpAeVnuXHi+1NgFJZSry4yz+Y7Jfu9LKYo2hFx31RNEY3nTF4f48gTWpYUo
         YF1J+kdk8bXmxl8QlNFVfkyUv22StoFwhd4QppQttWxO26e11pHCGXzutPZGBfApPEri
         K1xXnU+Iwf6+e6YXDx/zt/gZKbOE08/YNVr7hS02gO0BQHPMyvY1nF+nb8T9Hpkkoyjt
         Lw8fPqjhIiGgcte+hmfxwRrsbNZnAy+7wiu/1JJQB5kOq7bAcwph9ZhfORCCdO/dTZEJ
         7HW779utfEmK1lBq0w5q3JP1zkEatiRw89UFe4s5sX6jnvF9h+J89ouFvkT39YhzhtF9
         +Hlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698396912; x=1699001712;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Is4QFcJ/Sw1j/0rsJ9QPsUqhaamwV8h6F6t9b1JVKvc=;
        b=NxjvU5v/GpyTqfmkEDv+7uHLZHNjl7SfuKVliqtYQwjmfbKhDKfnn0qvHrwDNB5UcK
         WAaOC4G7LocwU9kLBO+SbCeLtdJzCjjwxWwfjb9NFpWamINPtLytHzlmM/7ZhNbnW7KU
         iwDyDW/ioXOxXIZdO96bfVdPFgcf7WIThORnAI4pONpWgbVOWQlB/Y9D3MIzir0BGP3y
         1KILrgrUGz7rgeP2fg+TnIiF2fWMYSQby6loupsUcnxSbmug9+YCbR4OzeeanGyXgyTQ
         vKLsCqlZmHfRJRNGIlwyyjklI8CTXHEPTtt6b0gBz3wD8N3dsIXc4Uklxhj8Za88LL+n
         2P9A==
X-Gm-Message-State: AOJu0YwHek7iflKHeHOVdMvdXeDyfdHoY9lvQt+b9okTQ8Yx9mCkhKZw
	8n3TW9LvV64lUTBna81VCM7EdQ==
X-Google-Smtp-Source: AGHT+IHX8Q247cpzVHxbUsznH2cd5jtDT0ExlXQQSJfa3Ax/5zi7xuosF299B5v4WhdLzyuVwdJ65Q==
X-Received: by 2002:a17:903:11c4:b0:1c3:3363:8aea with SMTP id q4-20020a17090311c400b001c333638aeamr2208497plh.61.1698396912159;
        Fri, 27 Oct 2023 01:55:12 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:bfe6:93ca:47b7:e8ec? (2403-580d-82f4-0-bfe6-93ca-47b7-e8ec.ip6.aussiebb.net. [2403:580d:82f4:0:bfe6:93ca:47b7:e8ec])
        by smtp.gmail.com with ESMTPSA id s18-20020a17090330d200b001c5eb2c4d8csm1036273plc.160.2023.10.27.01.55.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Oct 2023 01:55:11 -0700 (PDT)
Message-ID: <c71d095b-cd39-4c4d-a985-7032a1da49d9@tweaklogic.com>
Date: Fri, 27 Oct 2023 19:25:05 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: light: Avago APDS9306
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
 <20231027074545.6055-2-subhajit.ghosh@tweaklogic.com>
 <b030cb0a-7a15-4497-9b0f-75615694dc04@linaro.org>
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <b030cb0a-7a15-4497-9b0f-75615694dc04@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


>>   
>>   properties:
>>     compatible:
>> -    const: avago,apds9300
>> +    oneOf:
> 
> Drop
Sorry, do you mean I should not use the "oneOf"?
> 
>> +      - enum:
>> +          - avago,apds9300
>> +          - avago,apds9306
>> +          - avago,apds9960
> 
> I don't understand what is happening here. At all. Some compatibles are
> moved, some are added, nothing explains why you are doing it.
> 
> 
> Best regards,
> Krzysztof
> 
I have formatted the commit message wrongly, it will be fixed at once.
I am trying to add the support for all the three sensors in the same schema file.

Regards,
Subhajit Ghosh



