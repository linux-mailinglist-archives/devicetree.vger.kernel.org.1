Return-Path: <devicetree+bounces-101389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB50971862
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 13:40:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBBEC284D84
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 11:40:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F257D1B6539;
	Mon,  9 Sep 2024 11:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Ifp3dMRP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1141B5833
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 11:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725882042; cv=none; b=XcLKsYfPLIg6u6bmyLlRtMJs9IQE8RYv/2fbNcY3+fCzqyx45PWXOytE/gNPFVbfWZb8UZkUsYluSr7ghMTBhw9rCKBbbFskt2EAnGwZolkwKXVlSpieEdygVOqJgF3g9C1HccBxBcAgmAz/7u71hx6aeXnowzcXX9I4bK3DVTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725882042; c=relaxed/simple;
	bh=JCU+nnRZjKTNsBC8fDV8e02825viMZYG3NulEUspsps=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RgpelMdTldsmwaH8iiEgZAL6cHlrM0Xjv0osW8qUcZECAvsWIohkkb41N4CwYHwey+EX1GtMlsuFLxPpnqrMKW7mJfIC1IsbyIvhUjmaBwZBqSc0UXCbS1sJK3eIsBjqI0ol2BLd50WRMg3zmOSMqcAC1CivjPYCSPRPLLeuNgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Ifp3dMRP; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-42cb9a0c300so5285615e9.0
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 04:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725882039; x=1726486839; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fzmFygfKhygxF80gxgB21JZBoqtr7j1fadibKADgIG8=;
        b=Ifp3dMRPVDG5nXLkhpT8d/mAwtjwgbFB01InZ6kYMbXoxriBTMDdqBud2CM7zOes8v
         H/8Rn9vYKNN92WH2P5oO/9ndA0jilMRB+otQ1yD855eLS/4iKPvEo2oMp+fGHkBKUDJn
         dPxnskIVe/5u/sOASVqPOXu30ywG7roOJGFUKDDnrCXH0NcDGEiANorl6bH29uR+SppB
         4bP7n4nwSCv885Q+0ePhjVgjLZmPJ6mOZuuBr9t2Q3/fWVN5VwdVDESpqItvvic9WZQS
         fGUaW+/uVT3HW21Xztf2YOfw67eill4TtZG/mzVyJAVpWrl5MZmkK6pSRSL6sI48yXTV
         TN0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725882039; x=1726486839;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fzmFygfKhygxF80gxgB21JZBoqtr7j1fadibKADgIG8=;
        b=Ehv2UyUr/VD38Xa1AtixJJ9zwMSoEXDRS44dhobcnzFXEoTcu3XYNS66J+0o7nGieO
         jr1vaaI4KZbsAumd+UGX/IPU6rJX8mlMYOVNciTGHJ619NlAuKBPy21dWS7OfSc8uTjM
         oCJIWcJi+4546lrEWdyf0eHbOwj7eXy60Sjt+EbRk4vuti4+MzblZmpbcEKu8nQEuWG0
         Nc0Hc5OdQq4lwlza9QjI00MiVulRIIfrNs1Lv1TrbWv0nGmcsIKzrMsiDA32Br2zMFiN
         0rqzlj656N07U5PcwXqC5GarCjCz0l+skrty9D0XKW5ehLhl7aVvvVg+QumnjVQAzxve
         PoBQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAl2g7Y40bnNzKruePISerjJklLjQfYkHb2wS9xQGHlzfTD17DGs+r1KpxWQz47K423tlwmOvjVYC/@vger.kernel.org
X-Gm-Message-State: AOJu0YwkLIub8aIFdRmyB6Ksu8JINn3YPp0bX7aB1vL9hYEEUwcsJv1E
	6xSw+U36ugur2sP4KmcpKaVi3EZUmdaLoECJ2u4L46HJ08z2oYaGE+kZ/FMXIho=
X-Google-Smtp-Source: AGHT+IEYtSXfQvIGIvNogK+TDub9DqfGy99ZQTbCoGHa8djrUVrtbj0kF9h9rbmyGXk+ULp0B/96yg==
X-Received: by 2002:a05:600c:3b29:b0:42c:bae0:f05b with SMTP id 5b1f17b1804b1-42cbae0f2b5mr8696895e9.1.1725882038600;
        Mon, 09 Sep 2024 04:40:38 -0700 (PDT)
Received: from [192.168.0.2] (host-79-54-235-146.retail.telecomitalia.it. [79.54.235.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37895665ba0sm5821843f8f.48.2024.09.09.04.40.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2024 04:40:38 -0700 (PDT)
Message-ID: <be279b0f-8337-4d3b-87c2-f426ddb302e3@baylibre.com>
Date: Mon, 9 Sep 2024 13:39:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/9] dt-bindings: iio: dac: ad3552r: add io-backend
 property
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 David Lechner <dlechner@baylibre.com>
References: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
 <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-1-87d669674c00@baylibre.com>
 <20240908132925.331c5175@jic23-huawei>
Content-Language: en-US
From: Angelo Dureghello <adureghello@baylibre.com>
In-Reply-To: <20240908132925.331c5175@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 08/09/24 2:29 PM, Jonathan Cameron wrote:
> On Thu, 05 Sep 2024 17:17:31 +0200
> Angelo Dureghello <adureghello@baylibre.com> wrote:
>
>> From: Angelo Dureghello <adureghello@baylibre.com>
>>
>> There is a version AXI DAC IP block (for FPGAs) that provides
>> a physical bus for AD3552R and similar chips. This can be used
>> instead of a typical SPI controller to be able to use the chip
>> in ways that typical SPI controllers are not capable of.
>>
>> The binding is modified so that either the device is a SPI
>> peripheral or it uses an io-backend.
>>
>> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
>>   
>>   required:
>>     - compatible
>> -  - reg
>> -  - spi-max-frequency
> Sort of feels like both reg and spi-max-frequency
> are valid things to specify.

This specific backend IP generates a fixed non-configurable clock
frequency, so i don't think the spi-max-frequency is needed.


> Maybe we have an excellent IP and dodgy wiring so want
> to clamp the frequency (long term - don't need to support
> in the driver today).
>
> Maybe we have an axi_dac IP that supports multiple
> front end devices?  So maybe just keep reg?

yes, this is what i am wondering now too, i simplified with just one
frontend node, are multimple frontends (and so reg property) needed ?


>>   
>>   additionalProperties: false
>>   
>> @@ -238,4 +254,26 @@ examples:
>>               };
>>           };
>>       };
>> +
>> +  - |
>> +    backend: axi_dac@44a70000 {
>> +        compatible = "adi,axi-dac-ad3552r";
>> +        reg = <0x44a70000 0x1000>;
>> +        dmas = <&dac_tx_dma 0>;
>> +        dma-names = "tx";
>> +        #io-backend-cells = <0>;
>> +        clocks = <&ref_clk>;
>> +        dac {
>> +            compatible = "adi,ad3552r";
>> +            reset-gpios = <&gpio0 92 1>;
>> +            io-backends = <&backend>;
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +            channel@0 {
>> +                reg = <0>;
>> +                adi,output-range-microvolt = <(-10000000) (10000000)>;
>> +            };
>> +        };
>> +    };
>> +
>>   ...
>>
Regards,
-- 
  ,,,      Angelo Dureghello
:: :.     BayLibre -runtime team- Developer
:`___:
  `____:


