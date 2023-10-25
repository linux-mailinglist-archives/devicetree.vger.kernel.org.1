Return-Path: <devicetree+bounces-11633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F7B7D6439
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:58:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F849281D66
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EE0D1C2BE;
	Wed, 25 Oct 2023 07:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wlfZO9j2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F5CA1C680
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:58:25 +0000 (UTC)
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51F7F10E
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:58:23 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-307d58b3efbso3605613f8f.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698220702; x=1698825502; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WMrCJ8iC2zXGi7WZzN0qtiWTpbbCtXullTI936AcbsQ=;
        b=wlfZO9j2cdzfnXGv+GrEwzkto1LzOdNQatU/Cd5a5Ito6j/DyAmswn7l9XMB5ZYlsa
         Y1RHKEwM6jmkH1hwqmrDtuTVIObmH8FYWt/O++EZUFSLwmiWKSEO8ew8qTNMr1dCKoGX
         iLCZk2wh7rYUJMbrTHdLtYeoPBA68P6H5qsAnfmx/DkMc9wquylBWpwjO55yoPEbCRfw
         1Lwa4dzk00+k4YErdQ0jtc2xr++7LnQQWud2pY+eQRvZ09f6hwFlCAy4SZgFVW+XgslC
         4XuBAKoUKX6laRM35Ne+YYOtbGZ/+7VRsLAz9RqtBYwBRn6veBjkX3FX4krYrQU6PT95
         OnjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698220702; x=1698825502;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WMrCJ8iC2zXGi7WZzN0qtiWTpbbCtXullTI936AcbsQ=;
        b=sxsynJ6qgADtk1wJejgZP28XZ7Do7VfT6tYYv7mh1Y2D0sbso7dmuA08JHN3+DZ8IE
         JuSRMM7RtMjDmzqCqymp5syJmZVOTOMyKsYnV6S6IhHg0hrEWId595LlTKhq+FrT0yve
         vhdhPmDFrrp0ppSruAsN7jMl3ggUF4GSrTSBEnhzp/bKuDVhkQv6bmxk6IJxjozbBsIg
         LG+h9o2qOHcDfAi3kelyxmYjf+l0ClEQBfht0QTDa2QmYctwQxwgnA6fsJowJ6Vug+gm
         QFm60toNrB+ok5gM42bbslekDIs+yOAJ0PrROxdjC/nyr+AnuSUtaFRc/jXrHJdwXaCs
         XCjw==
X-Gm-Message-State: AOJu0Yw17bvGIBaS0lLqyyEsZzvaHp1M3+Ww12FddpLr9K+CvfwGGQc3
	kDS0i2lRCj7PZCSKGJsi+RRPjQ==
X-Google-Smtp-Source: AGHT+IGL1CURpHvmvHUxJ659idDO9tON4/vU6aty9Ek592QwHGxiormjS7dAov33vLsLUnLq1zMmHA==
X-Received: by 2002:a5d:52cd:0:b0:32d:9daf:3f8d with SMTP id r13-20020a5d52cd000000b0032d9daf3f8dmr9750049wrv.49.1698220701756;
        Wed, 25 Oct 2023 00:58:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id f5-20020a056000128500b0032179c4a46dsm11469523wrx.100.2023.10.25.00.58.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 00:58:21 -0700 (PDT)
Message-ID: <ecf52f54-b082-4157-8643-4b967e7a9cb3@linaro.org>
Date: Wed, 25 Oct 2023 09:58:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [DMARC error] Re: [PATCH v2 03/11] dt-bindings: leds: aw200xx:
 introduce optional hwen-gpios property
Content-Language: en-US
To: Dmitry Rokosov <ddrokosov@salutedevices.com>,
 Rob Herring <robh@kernel.org>
Cc: lee@kernel.org, pavel@ucw.cz, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, andy.shevchenko@gmail.com, kernel@sberdevices.ru,
 rockosov@gmail.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org
References: <20231018182943.18700-1-ddrokosov@salutedevices.com>
 <20231018182943.18700-4-ddrokosov@salutedevices.com>
 <20231024183014.GA243505-robh@kernel.org>
 <20231024185211.x753eonmq5flwqa3@CAB-WSD-L081021>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231024185211.x753eonmq5flwqa3@CAB-WSD-L081021>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/10/2023 20:52, Dmitry Rokosov wrote:
> On Tue, Oct 24, 2023 at 01:30:14PM -0500, Rob Herring wrote:
>> On Wed, Oct 18, 2023 at 09:29:35PM +0300, Dmitry Rokosov wrote:
>>> Property 'hwen-gpios' is optional, it can be used by the board
>>> developer to connect AW200XX LED controller with appropriate poweron
>>> GPIO pad.
>>>
>>> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
>>> ---
>>>  Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml | 5 +++++
>>>  1 file changed, 5 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
>>> index feb5febaf361..255eb0563737 100644
>>> --- a/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
>>> +++ b/Documentation/devicetree/bindings/leds/awinic,aw200xx.yaml
>>> @@ -41,6 +41,9 @@ properties:
>>>      description:
>>>        Leds matrix size
>>>  
>>> +  hwen-gpios:
>>> +    maxItems: 1
>>
>> The standard enable-gpios or powerdown-gpios don't work for you?
> 
> HWEN is the name from the official datasheet. I thought it's always
> better to use a naming convention that is similar to the notations used
> in the datasheet.

I think we have such rule only for supplies, otherwise you will have
multiple variants of the same reset/enable/powerdown-gpios.

Best regards,
Krzysztof


