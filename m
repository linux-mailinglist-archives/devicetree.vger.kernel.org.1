Return-Path: <devicetree+bounces-71955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 090A28D8AD0
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 22:17:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 68B15B20C0C
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 20:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 051551386C0;
	Mon,  3 Jun 2024 20:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YGE32Bzw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AED14EB5E
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 20:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717445856; cv=none; b=YJpJvpvKC4VAZ5hHl8ZsnsffR+RLh/zaMs+6XrEeHIi8m++HbZ9e8c6Xzk0X7k/kZlKRO4aoqekRTtJD8v491BVPLM6PM1TCLGvqHYubPsTXuFpZ38wePay9LpGMqUzi+VEfBmghtqee57YK3ureIScpS6VdGt0Izqtcw9X1Boc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717445856; c=relaxed/simple;
	bh=4GcOgyJahweqOFa/iQjsMvxOOerBc8RefsmPuWGEv4I=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=P6qdQrsevnyZbodB7MnVBhL8UWcqGWjHw1nqXiP56VBACD2Skoz3RkY37pyQkbqeMTNER6LXqq3xz0Om+GQ0iOiH4a1WZ84b4OwU9bHxVyXR9M5OZKxuKu682Pjicrt8adgAWdKXg3Gc/AwFGUzFF4EN67kq6T8PoYdFGOy8EYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YGE32Bzw; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-24ca03ad307so2662041fac.3
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 13:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1717445854; x=1718050654; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TTLAWauqe0r9HcfcWkbuq/PdizHVPeIYJfPIk4JdS1E=;
        b=YGE32Bzw60MUI5/0eDLx+dEGOvb6ZjjiRPzUSnO/Iw+Ol0XJ/rwNVGUAk2Hj5cG13b
         gSpN15hQdKnTpFvvhpJErgPz6mituIeH42d10HixcmbdCF+BF5WE79yLUp48L+mh0HuA
         7DJRnG9uVyqI3qC0Wf9sJ2UaXJGefsbi31F7UgE/6yhAPdtB1kkgb18quZcLEHqFnopN
         at9osa2dm6npoaBzFOuYwao0c9e021JRSkM7bGnPWmW7geN4Qx0S0vDm9eNrDeisLwJu
         hDjJ2qxIgbUQDkkBSoa1G+cCRzzxp09jq41V7myrG0WoJSynRag4g15QrtdC/JpDetf4
         es/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717445854; x=1718050654;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TTLAWauqe0r9HcfcWkbuq/PdizHVPeIYJfPIk4JdS1E=;
        b=Cm7JDuKZfifjlqeYDUvp4ZutMAarUgvaT3z3D72fo2DurHClGCe+1QwoHN3zAo8z6O
         yPbxuNicpijgi+vCcMS6PJmEyfkX3/odqzf+cSDKJhqORg+ynJxkWbId4yGWC//Gf6vR
         zM4fHfEPZZch6LeTJ2Nlh7cTjDlqqdH0Aapb1Ac5B2U3lL5Z/YUYiRx5tLnHy4MNOKwq
         XoYMe09NxSzzcAmOBB/2M48oyLIwAEgNSe4rnAacMMyx1giauclV6TlgXvr2h0LEpk4J
         3SqK9Ber/KVo6gskW9lOEEOJi3HxZK7jra/BMSilF1lkywXgva8wHfhjjWlD+5otdqdx
         cm5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUSzrXqugDuf6vwkMkV+V29zMRY0d8/VB4Rx/LuAsW8R5q5jITFujn4CjLZlEtGOkeBHLlLtqiR5aX0DSjsnSI2CUnShXirnr7lwg==
X-Gm-Message-State: AOJu0Yw0nRUbzBCvHDru2itkHGGpUoBt5aWHdM1CmS5wOTJmbkOhsTjM
	cYsqNqxNFhkZACG3ZiXkDRiLIy7TJfrBrO6nG9gqo0yoKicazCXNUzagHy9q6NM=
X-Google-Smtp-Source: AGHT+IENW9EneuA2Evfw10RJcCTgBcS7AzO4/LTNodBaNUwPlKHEa5np1aFzodH+efdmMORRiGigxg==
X-Received: by 2002:a05:6870:c14f:b0:24c:b92e:a130 with SMTP id 586e51a60fabf-2508ba211ffmr11781577fac.15.1717445853829;
        Mon, 03 Jun 2024 13:17:33 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-25085000afasm2656258fac.23.2024.06.03.13.17.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jun 2024 13:17:32 -0700 (PDT)
Message-ID: <d9d76298-cfd3-4d6e-bbd0-92ac17058705@baylibre.com>
Date: Mon, 3 Jun 2024 15:17:32 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] dt-bindings: iio: dac: Add adi,ltc2672.yaml
From: David Lechner <dlechner@baylibre.com>
To: Kim Seer Paller <kimseer.paller@analog.com>,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Dimitri Fedrau <dima.fedrau@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>
References: <20240603012200.16589-1-kimseer.paller@analog.com>
 <20240603012200.16589-5-kimseer.paller@analog.com>
 <2942a938-19b9-4642-8ed0-8e17e4825bc5@baylibre.com>
Content-Language: en-US
In-Reply-To: <2942a938-19b9-4642-8ed0-8e17e4825bc5@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/3/24 2:59 PM, David Lechner wrote:
> On 6/2/24 8:21 PM, Kim Seer Paller wrote:
>> Add documentation for ltc2672.
>>
>> Reported-by: Rob Herring (Arm) <robh@kernel.org>
>> Closes: https://lore.kernel.org/all/171643825573.1037396.2749703571529285460.robh@kernel.org/
>> Co-developed-by: Michael Hennerich <michael.hennerich@analog.com>
>> Signed-off-by: Michael Hennerich <michael.hennerich@analog.com>
>> Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>
>> ---
>>  .../bindings/iio/dac/adi,ltc2672.yaml         | 158 ++++++++++++++++++
>>  MAINTAINERS                                   |   1 +
>>  2 files changed, 159 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/iio/dac/adi,ltc2672.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ltc2672.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ltc2672.yaml
>> new file mode 100644
>> index 000000000000..d143a9db7010
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ltc2672.yaml
>> @@ -0,0 +1,158 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/iio/dac/adi,ltc2672.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Analog Devices LTC2672 DAC
>> +
>> +maintainers:
>> +  - Michael Hennerich <michael.hennerich@analog.com>
>> +  - Kim Seer Paller <kimseer.paller@analog.com>
>> +
>> +description: |
>> +  Analog Devices LTC2672 5 channel, 16 bit, 300mA DAC
>> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ltc2672.pdf
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - adi,ltc2672
> 
> The linked datasheet describes 12-bit and 16-bit versions, so should we have
> two compatibles here? adi,ltc2672-12, adi,ltc2672-16
> 
> I don't see any ID registers where this could be read from the chip at
> runtime, so seems like something that needs to be in the devicetree.

Hmm... I guess maybe it doesn't matter for these chips (i.e. the 4 LSBs
of the sample data register in 12-bit version will just always be ignored
but no data needs to be shifted based on the bit-ness).

I would not hurt to update the description though since it only mentions
16-bit if the compatible is meant for both versions of the chip.


