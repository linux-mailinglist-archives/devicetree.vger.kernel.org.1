Return-Path: <devicetree+bounces-11888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1067D6E98
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:22:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CA351C20C3D
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68404286B8;
	Wed, 25 Oct 2023 14:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BrOyUYj0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45E58473
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:22:32 +0000 (UTC)
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFE0713A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:22:30 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-32dff202b4bso2170151f8f.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698243749; x=1698848549; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G/Qu43zNd7XQ5kFiOx/NP64exhepkPFL2OMjkKGHe18=;
        b=BrOyUYj0AID73Kygku5Y6xPu1JtwqTYgDICQxJb01QkmQ5jTZzBA5g6qYYIv3mUuF4
         au9ExJHUun9tlRINX4cgpUfq3vX9Ruyz4gSdIAeA5eIGLyZj7xApCelJSpC5lmv/IBcQ
         zhKZRSh8tZ8AphN39dV6xt4azMPRpE0puS8C/VKzsAO7mFRnsQ+qnAqQFkr3T77EGZXA
         OAnLB9r4Q950SyIjddnUha3zPkBMMEekc61ci9b4PKFDk4OAwqk/bkaF70nMCCObBmo+
         DLVUxyzUGvuWFJWBjpCOGLEiK0mrsv3vsUHzpx6ep9gLWOdXGM2OI7gfHf7fA9J+FQb9
         Hong==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698243749; x=1698848549;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G/Qu43zNd7XQ5kFiOx/NP64exhepkPFL2OMjkKGHe18=;
        b=FOvA7g/zidppGp5nOMWU5vN4gAAeySs4GJXtTEt6wg0oR2UUJW+3VIPoi5yP3ecUaP
         ezo0tCH5dsTsCUqSR+3Cw5+ARnswyXaIIIg/a1T47J7Kwm7EtiJm9X4IAhUsMIGNAEGc
         kHfUmk9ope5Dj3F0EXZenlXZXv/HqyVB6OEYlIJ/IFb9mTyScrXtNDMMz04hisCfLZMQ
         XpRuMjs4DgZKKUJwheGDpt+p8Ouxdac3TjBiz2THukJsrYokeDQpGi+IOFm2gN7cy28d
         jS/9buKaQwCIxpxi1k+8BaRr/vuZF9mcDWE8SKetKGPeE4N36EqiITOjW10XAFoww6f9
         Kt2w==
X-Gm-Message-State: AOJu0YylT9+VbbqHdh6UlHcfTQkwZmSK/0M2wjNf99bNAAf0D0MzPaUe
	adcxHvFkNldexR3zS+5QafrGVg==
X-Google-Smtp-Source: AGHT+IG+P94r9kZMOwS+DNc3hbWsXodilW2Dud57ltgzXfPpK1sQiNfUa9mLM5c6S0F/pIS4OHPRUA==
X-Received: by 2002:a5d:6a07:0:b0:32d:a466:48d8 with SMTP id m7-20020a5d6a07000000b0032da46648d8mr11658558wru.69.1698243749291;
        Wed, 25 Oct 2023 07:22:29 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id t8-20020adff048000000b0032dc2110d01sm12197341wro.61.2023.10.25.07.22.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 07:22:28 -0700 (PDT)
Message-ID: <0844080c-7524-4686-9df6-ba25e3f6b808@linaro.org>
Date: Wed, 25 Oct 2023 16:22:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] dt-bindings: hwmon: ti,ina238: add ti,ina237
Content-Language: en-US
To: Richard Leitner <richard.leitner@linux.dev>,
 Conor Dooley <conor@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>, Jean Delvare <jdelvare@suse.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org
References: <20231025-ina237-v1-0-a0196119720c@linux.dev>
 <20231025-ina237-v1-4-a0196119720c@linux.dev>
 <20231025-unclip-ion-826a58681a12@spud>
 <pwfj54krrau3rihjb73dd4p3yizzjyuv4gwxky776m2goerjw6@6rfxo6kzjhjs>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <pwfj54krrau3rihjb73dd4p3yizzjyuv4gwxky776m2goerjw6@6rfxo6kzjhjs>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/10/2023 16:13, Richard Leitner wrote:
> On Wed, Oct 25, 2023 at 02:58:44PM +0100, Conor Dooley wrote:
>> On Wed, Oct 25, 2023 at 10:34:14AM +0000, Richard Leitner wrote:
>>> Add ti,ina237 binding to ti,ina238 as they share the same driver.
>>>
>>> Signed-off-by: Richard Leitner <richard.leitner@linux.dev>
>>> ---
>>>  Documentation/devicetree/bindings/hwmon/ti,ina238.yaml | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml b/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml
>>> index aba89e5f34b3..17408076696c 100644
>>> --- a/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml
>>> +++ b/Documentation/devicetree/bindings/hwmon/ti,ina238.yaml
>>> @@ -22,6 +22,7 @@ description: |
>>>  properties:
>>>    compatible:
>>>      enum:
>>> +      - ti,ina237
>>
>> The driver patch you have done implies no difference between the
>> programming model for both of these devices. It'd seem to make more sense
>> for the ina237 to fall back to the ina238, thereby requiring no change in
>> the driver to support it.
> 
> Thanks for the quick feedback, Conor.
> 
> I first thought of just mentioning the ina237 in the documentation as
> "compatible" to the ina238. But IMHO it is better understandable if it's
> listed as compatible.

Conor did not oppose listing it. The point is to use fall-back.

> 
> And I would strongly encourage mentioning it somewhere (documentation or
> compatible). So other people using the ina237 are able to find it and
> don't have to compare the datasheets by themselves to find the right
> driver.

Sure, there is plenty of space in the driver code (.c or Kconfig) to
document whatever you wish. We focus here on the bindings, though.

Best regards,
Krzysztof


