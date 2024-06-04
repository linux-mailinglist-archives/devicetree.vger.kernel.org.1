Return-Path: <devicetree+bounces-72290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FED58FB484
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 15:53:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 70E461C2276D
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 13:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3E3215E83;
	Tue,  4 Jun 2024 13:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nuQjgphW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEE3171CD
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 13:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717509213; cv=none; b=Rt8xeF5DmAMnxsn3qUH63BPHJZZixmIv8DfaVh98DBpO8wKsiTsz0CMHXaHNyRIuZgT96pk/L7uh43hqShqulz+p/Ir/mUL3hlAZL9acoLz+38kNvO5H8ijfwOOQHAte4OYfgHdLwV44stoUYbC6Fd/2T7B9J4RLDklxnKmz4vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717509213; c=relaxed/simple;
	bh=gFUgebDb5VYKmgGJcA+bR03BhrJUABzxe9spIthuEmw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=keCIckwNawtBxbOd18c7Aoyux4OafEDyH5ti3ZmnicEEdUW+KZuebs4idylumlYoBTI/ljDpmNufbQhLZhFf/D5ALFZMPODCyyPPJfZQSvbjxRvm05qpKKjvz9FN9VzqxNsXkjTIs8PjGSkNDOz0gWkxcoIleMjipPCG4PHAlX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=nuQjgphW; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3c9cc681ee4so3043765b6e.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 06:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1717509209; x=1718114009; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M9m7RGcNy10jf3LS7vaCF+a097Y5g0qFUSmM+Ax/JkE=;
        b=nuQjgphWoExI1tLStofh3rLss0MWhP4sq+QpIKzpb43tmRelrPDiH3TGGkTwe3N7vI
         8lZymLuZqIO/NRhiIA5dEgQl5vsI1LG9UHnxLDn6N8pzXOb2a4VjWeUfWJu2UqN/qnTz
         zYuj3kK9GH68nIu5eupnWLkipxKRakBJbfWHOpg2gguuMIqmu3JbQDpxy8pLplSuoO5G
         hn+vURCMGo8BjM/FF0emUySMJ8TrdvamkFqfqSV8evzEbJbOi6R+d4cdZLtP0OzILNi0
         dJ3qx3j1AAW7ZrhOFs08vJsAqGsKd64RGbv1c4N3iA+UWXe6I1j1QWIOdu4p0sGZ6Dyu
         G5gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717509209; x=1718114009;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M9m7RGcNy10jf3LS7vaCF+a097Y5g0qFUSmM+Ax/JkE=;
        b=BV7svgaV23VS8p5TCwrTFjRWUrNRWxueOXDFzbL94sujKQuKjkzSVvEN8Ku2SmMVNa
         gMi94VUHGb9N53hfGreBV9lFC9cJXh1L5M1RebpccwNuEXY4ys5iZE27SutAeqwv/Lpa
         CEmI4IfOUjU2dCSTwiDpmqDmm4M+t9pOXltPR8sSjMf/uskAfaGkCtar2nwVBiVPKUAx
         Y/ltHuBtVXsbhfHXALZubirv71JlKn0dQbZJRpHnfMlRWDEx5Fdf1//BI/mhIVmzrln3
         HX9sj5fpEt+5pBA1uJ8nDsIIGsGg3m1WT6QqwSB+ARAfx4QyUdd8hfFeq1qQIbt3Y9s4
         DKdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlrTKLclz67tg1NjEzxlwC1StPGBB2YUXDUt9+KAwUR8HLqWjQnuTHRXgwF07fjjwpkSiNLd7k/7NWLNDiGNpLTtZDSiGaDb0uKA==
X-Gm-Message-State: AOJu0YzNvCACcT1+uacuy9CmyJy0UPIL1yNz2rcXYYUEzehMgxytjNqx
	44P2UVpeFuCvM0v+lQ0j2iNYeVIbKO6CayCw5CmVPqFwnsDMLM5jUUVktbtGIXE=
X-Google-Smtp-Source: AGHT+IHTAZY24CraXjVxRhUtf8jwfwk7RRTu4xeRW3mXD9sedZ80A6G/fHKzb1Qidb0io/0H9gwPpA==
X-Received: by 2002:a05:6808:188a:b0:3d2:83:341c with SMTP id 5614622812f47-3d200833ba1mr1256915b6e.51.1717509209271;
        Tue, 04 Jun 2024 06:53:29 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d1e1a464fdsm1811689b6e.46.2024.06.04.06.53.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 06:53:28 -0700 (PDT)
Message-ID: <3dadacf8-1349-483d-b264-dcb41d2cc3fc@baylibre.com>
Date: Tue, 4 Jun 2024 08:53:27 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] dt-bindings: iio: dac: Add adi,ltc2672.yaml
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Kim Seer Paller <kimseer.paller@analog.com>, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org
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
 <c4651a18-316b-42e0-a67b-673fedb05b5a@kernel.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <c4651a18-316b-42e0-a67b-673fedb05b5a@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/4/24 1:47 AM, Krzysztof Kozlowski wrote:
> On 03/06/2024 21:59, David Lechner wrote:
>> On 6/2/24 8:21 PM, Kim Seer Paller wrote:
>>> Add documentation for ltc2672.
>>>
>>> Reported-by: Rob Herring (Arm) <robh@kernel.org>
>>> Closes: https://lore.kernel.org/all/171643825573.1037396.2749703571529285460.robh@kernel.org/
>>> Co-developed-by: Michael Hennerich <michael.hennerich@analog.com>
>>> Signed-off-by: Michael Hennerich <michael.hennerich@analog.com>
>>> Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>
>>> ---
>>>  .../bindings/iio/dac/adi,ltc2672.yaml         | 158 ++++++++++++++++++
>>>  MAINTAINERS                                   |   1 +
>>>  2 files changed, 159 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/iio/dac/adi,ltc2672.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ltc2672.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ltc2672.yaml
>>> new file mode 100644
>>> index 000000000000..d143a9db7010
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ltc2672.yaml
>>> @@ -0,0 +1,158 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/iio/dac/adi,ltc2672.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Analog Devices LTC2672 DAC
>>> +
>>> +maintainers:
>>> +  - Michael Hennerich <michael.hennerich@analog.com>
>>> +  - Kim Seer Paller <kimseer.paller@analog.com>
>>> +
>>> +description: |
>>> +  Analog Devices LTC2672 5 channel, 16 bit, 300mA DAC
>>> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ltc2672.pdf
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - adi,ltc2672
>>
>> The linked datasheet describes 12-bit and 16-bit versions, so should we have
>> two compatibles here? adi,ltc2672-12, adi,ltc2672-16
> 
> Is their programming model different?
> 

I replied to myself already with the answer. After looking at it more it
does not appear that is the case.


