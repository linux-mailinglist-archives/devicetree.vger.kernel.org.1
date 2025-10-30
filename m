Return-Path: <devicetree+bounces-233452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 361C3C221E8
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 21:05:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AADF034E902
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 20:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C59E236E356;
	Thu, 30 Oct 2025 20:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OCcvECLQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE59337BA7
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 20:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761854697; cv=none; b=eCtBni8sGLYr+0P/sfjBta3Fg4j/cMUSlV8AXr5Ta47QTRHkelhAUDEL2hKQEqkDmvjJpDo7uP1JIM+CyNhZLUI+JAhxMkuZPgyiDEtH2yrAEn9d8tvz1HNppSFrvZwjv3LdbQPGrXJVroKnbdoZTmdpMWOJZYY7K8VZtP7szbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761854697; c=relaxed/simple;
	bh=pqR2twSqOGM4sGtKUKqSOw/m20SLXlt0O+4cajvhO3w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oVLMFQrPKLUOwYOaT/ariK40YnLyrtq92e0g1izU6RKwlLKiK1qmIZ6+Porgj7MBMl1T2Mp4O45Hli1d6PN0RQGnRUgVv+98phAgHIJ2vEP0r5+zee1EDT03F4sfhA5bhVuQa9/oSnXSyrK1gA4AHM3/SVdvdXr3ZOKnib8gHI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OCcvECLQ; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-7c2766675adso849871a34.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 13:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1761854693; x=1762459493; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6Hd6daBLsyD7x4GoT4BnZnJBmthb0n09ST/82FiiXUI=;
        b=OCcvECLQMz2S0mvhvUVEdOZDtYWS++nPr/AfB2DsUV4mbWU6aXuSgKfRCN/OtXFPK+
         OFeSIAYqJ4K0hhHrVhwpbhWuFf/ywm5oxS21IBetIMWOOdMcpjpguiRIhy5ucRteCKVi
         O/B5HdpfT0c3YK9tenf4mJkH+oUcG0+Vo9GAATFw1DWuQwVRsXC56QEXO3DU2o4Rdc3m
         4ZObWuy9VgV1OvOlZCoxzLsEkGeNnxhgx/jpY1zXGrcgTbYj3hC26RhkSI5hMqMOZ6di
         22hravu2nNzGoHEsk3Ic0Zd/nm65TvAu99OQsdDed9Pu3qP9hFLsUTHx0P1tgpnbcYs7
         MQUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761854693; x=1762459493;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6Hd6daBLsyD7x4GoT4BnZnJBmthb0n09ST/82FiiXUI=;
        b=jScuPwopzEha+ienuapESdMEICZlk8+YS+bhCMdAzyUh9s8/wOdIs5IdxqwMql3VEn
         l2VnvwBU9x/thA56QdJbwS/v5kTh/80ixeSR8DqRo+LLHYNElarLql0D0yQ54y6c0ule
         bGw6TJt33y58iCM0MdO53bh9/5Uk60OMK5j2qdqJf2V/z++QM/+R8fcIusuYhXeOEDuF
         2pnL+zNIexi1Y3oX1/YN/3PaI+m5N2xeL78t25wnkzxEG3UbTdNJpBQYlN207hBh9Ywk
         aYi+nxolZjN2u9mfGqPXFQDDIkmbqmXFb6MJ52lWOs0B/9GNpUtu54h5CW57EOpt+3DN
         Yaug==
X-Forwarded-Encrypted: i=1; AJvYcCXGb+KDualM5aKRuew2pEFzCPRwaEk0d2bcPxajuYi0mMpN3Lsy3J3YjEpLDzKol0x3ID+bYpjmO5h6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6hdAaQZ5xPL88ASSISdG49yWYUpGQHNtlQrWSgdfFA0bIwagj
	4kZ8rWzwoiiVbbUU0A5fx+VeQU7ro6nh1WoWwaI4vK8DHKv5XU6i6KZkgvU7KA+i/fc=
X-Gm-Gg: ASbGncvFUrsuSGpPAlRoGgdyzhejhfoN2invAlpdZCk1qjIT8U8WuVa1UjxSOCHk1fO
	Xg/zGbmLFVNmkxBuC1JPp9AhEPD+kvKTX5o9Y6bnlp4nphhgatxs7j8Yh7sgLXpk9NUVKMoF7nj
	Wd5wefdFfVNn4mqre2rKGMIH1rjLWB6RPX+hz1ye9ciaXyITA1kMsa4+T9Erj/TGWe5Sszaj1qU
	A5anZB1nGyQd+ihs4w0JmOvAkF8Oi5HmTmhTDdC7Sswlkjht/uwoc39U8ZEwjUC2IPvlDFbS5XU
	UCaVJttoqbsEOf5yqtDq3/DcnS+txLpLMKhl/kOvjD6UgIpSE2cloFbokKUmwGATL8HkIzIOoDE
	Ukv10KYcLseAoLUfIy5HXake+xLpdNpvwMc6qzr3/THo/26p587WJ/bPDUsaqbUimPSd5iTkjyb
	2FDrImqPX+WVVFfl+hYNclx+YZKslDJdDqx/Jh67HupFJnn7n+Og==
X-Google-Smtp-Source: AGHT+IF3d0tBzTvmcS+/xfeWwxQ6Lq0czWZ+p8zE1S8eYr96+SbUGR6bnT4WG1sWseccttHI7KklFQ==
X-Received: by 2002:a05:6808:4489:b0:43f:21bb:32ae with SMTP id 5614622812f47-44f95ff5dfdmr403347b6e.50.1761854693378;
        Thu, 30 Oct 2025 13:04:53 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:aa90:4f8c:bf59:360a? ([2600:8803:e7e4:500:aa90:4f8c:bf59:360a])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-44da3e80083sm4501853b6e.14.2025.10.30.13.04.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 13:04:52 -0700 (PDT)
Message-ID: <31d3d3f9-c9e2-4ad9-a3c6-e85fab4520d6@baylibre.com>
Date: Thu, 30 Oct 2025 15:04:51 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 1/3] dt-bindings: iio: adc: Add TI ADS1120 binding
To: Jonathan Cameron <jonathan.cameron@huawei.com>,
 Ajith Anandhan <ajithanandhan0406@gmail.com>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, nuno.sa@analog.com,
 andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251030163411.236672-1-ajithanandhan0406@gmail.com>
 <20251030163411.236672-2-ajithanandhan0406@gmail.com>
 <20251030171212.00004069@huawei.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251030171212.00004069@huawei.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/30/25 12:12 PM, Jonathan Cameron wrote:
> On Thu, 30 Oct 2025 22:04:09 +0530
> Ajith Anandhan <ajithanandhan0406@gmail.com> wrote:
> 
>> Add device tree binding documentation for the Texas Instruments
>> ADS1120.
>>
>> The binding defines required properties like compatible, reg, and
>> SPI configuration parameters.
>>
>> Link: https://www.ti.com/lit/gpn/ads1120
> Datasheet: https://www.ti.com/lit/gpn/ads1120
> 
> Is a somewhat official tag for these. Though better to put it in the dt-binding
> doc itself as well or instead of here.
> 
>> Signed-off-by: Ajith Anandhan <ajithanandhan0406@gmail.com>
>> ---
>>  .../bindings/iio/adc/ti,ads1120.yaml          | 50 +++++++++++++++++++
>>  1 file changed, 50 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
>> new file mode 100644
>> index 000000000..09285c981
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
>> @@ -0,0 +1,50 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/iio/adc/ti,ads1120.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Texas Instruments ADS1120 4-channel, 16-bit, 2kSPS ADC
>> +
>> +maintainers:
>> +  - Ajith Anandhan <ajithanandhan0406@gmail.com>
>> +
>> +properties:
>> +  compatible:
>> +    const: ti,ads1120
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  spi-max-frequency:
>> +    maximum: 4000000
>> +
>> +  spi-cpha: true
>> +
>> +  "#io-channel-cells":
>> +    const: 1
> 
> Power supplies should be here and required (even if real boards
> rely on stub regulators). 
> 
> Looks like there is an optional reference as well - so include that
> but not as required (use internal ref if not supplied).

Actually, there are two. REF{P,N}1 is an alternative function of
the AIN{0,3} pins.

It is also possible that the analog power supply can be used as
a reference source instead of the internal one.

This came up recently and we glossed over it. However, I think
it would make sense to have a flag property that means "the
AVSS supply is of sufficient quality that it is better than 
the internal reference supply", e.g. ti,avdss-is-ref. And
drivers can use this info to decide if they want to select it
as the reference voltage or not.

> 
> There is a data ready pin as well so I'd expect an interrupt.

There is actually two DRDY pins. One is shared with DOUT, so we
should have two interrupts and interrupt-names so we know which
pin is actually wired up.

> 
> All these should be in the binding from the start as we want it
> to be as complete as possible.  The driver doesn't have to use everything
> the binding supplies.
> 
Another trivial one is an optional clocks property for the external
clock. It doesn't need clock-names since there is only one.

Additional bindings needed when this is used with temperature sensors
are not so trivial though, so we don't need to add those until someone
actually needs them.

