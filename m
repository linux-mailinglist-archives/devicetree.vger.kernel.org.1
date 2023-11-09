Return-Path: <devicetree+bounces-14725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FF17E6585
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 09:44:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B2998B20A56
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 08:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFFDAD297;
	Thu,  9 Nov 2023 08:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TK4Qsd3y"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFD4D2EE
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 08:44:02 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A222210A
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 00:44:01 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-53dd752685fso849267a12.3
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 00:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699519440; x=1700124240; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=35vsNanmShIbsIQ/CaOWaGcxfHxAFdyQE7/ZwF1aI9o=;
        b=TK4Qsd3yEXsYDTrBoQkuRZirXrnSoQVoLMz0Sx+XoF1eDX4kWfc4lnI1MQFk+ekTTo
         dK6PJJZgJIL8l0dFFL6MZ1n/m5oSUEMrRRhiaM/Cpagh4ZOOrk9R2dwTu1QfLrGUzQGG
         Dum2jtP8hH64dTtYhURH18lgS8DCxM1ffbOgws1ZMNNj3MkvvYkhGHauIRhF8tn2U8wH
         q9en3LfccC6gT7Sg7VCVQmI4nIlD9lRGXAB3mhgwNnuxv+KcFL1C86sJ2k2WkYsUIZTA
         a4igyCukXBB4oaa2ECzD4wH0M6YJodydhmuU51s1y1b2G8Zus2AN3iOaNbLqS7w0iGko
         yQHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699519440; x=1700124240;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=35vsNanmShIbsIQ/CaOWaGcxfHxAFdyQE7/ZwF1aI9o=;
        b=ZV+fRQkZWVe7NZnmeuNo0zcZiPrUoxZrfZmF1D05KgaMjvHxJXhjPhdRYrCNfgKrRY
         SWZJQLkuEcY4LIszl0Tb/XV/LfeSGBYgqGhksUIK3nkSHFEl3M/Hscb4B1MNA5G+pGRO
         iAJcDmsSdWa1F9lJvYq4D73VroQmpsNkl/Ki6VD9rWnKIY3kLUourxQXERAQPRCqK+xb
         AQuK4GY9dddvQhg8Vj34f6jeTM7eDvvWUvJm3Vuf1L8WD55XGuSNqawkWEL60X8dUwLw
         1OXkd65E1M1SD0dZi26RHVBTdWTowpD8OGP66RRBWLugnDxSggx0RBX0thpVDCIJtQNj
         b5DA==
X-Gm-Message-State: AOJu0YzcmnJuDkip2GBaS5hx/FzjZq1mo6zzPivefzHDxBoE1t20N/eh
	krk3LCnQRooNXAju/g7lAj90YDi/+XCA1HreLeQ=
X-Google-Smtp-Source: AGHT+IGilTG5PLIakSWfbBOmuwSzVn9Q4vpK27yeci9NBpkgiiCW6FWBLz5hddciO7gi9FNUwOfEmw==
X-Received: by 2002:a50:c04b:0:b0:53e:343a:76bf with SMTP id u11-20020a50c04b000000b0053e343a76bfmr3789177edd.1.1699519440066;
        Thu, 09 Nov 2023 00:44:00 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id g15-20020a50d0cf000000b0053e408aec8bsm8089767edf.6.2023.11.09.00.43.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 00:43:59 -0800 (PST)
Message-ID: <5b4b1bf9-67d5-4b27-ac68-cb6e26716d67@linaro.org>
Date: Thu, 9 Nov 2023 09:43:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: trivial-devices: add asair,ags02ma
Content-Language: en-US
To: Anshul Dalal <anshulusr@gmail.com>, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Shuah Khan
 <skhan@linuxfoundation.org>, linux-kernel-mentees@lists.linuxfoundation.org
References: <20231107173100.62715-1-anshulusr@gmail.com>
 <20231107173100.62715-2-anshulusr@gmail.com>
 <1d5d1357-0b53-4639-add9-2b3f38aae744@linaro.org>
 <90cacd34-4812-4792-9bf0-362200431452@gmail.com>
 <77e1d308-6ac3-4200-b72a-6d5717869b06@linaro.org>
 <7501036c-4e1f-4993-97a7-6c36c7cc8358@gmail.com>
 <6f654341-a9c0-4412-ac87-5800d6122023@linaro.org>
 <e192a58e-47f8-4410-81a5-de1ebab3251d@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <e192a58e-47f8-4410-81a5-de1ebab3251d@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/11/2023 13:53, Anshul Dalal wrote:
>> If you are unsure and you just work on some sensor not used for final
>> product, I think it's fine as is, so to add the regulator later if ever
>> needed.
> 
> No problem, I can add the required properties in the next patch version.
> I need to make a few changes to the driver anyways.
> 
> Just out of curiosity, the sensor supports reassigning of the i2c
> address by writing to the 0x21 register from the default address of
> 0x1a. 

You can list allowed addresses, but we rarely do it.

> Is there some way to represent this in the binding.
> For future reference, is there some exhaustive list or specification
> document for all the allowed properties.

Any property could be allowed so the is no list of them.

dt-extract-props -v Documentation/devicetree/bindings/

Best regards,
Krzysztof


