Return-Path: <devicetree+bounces-104596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D7997EE8D
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 17:53:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1E9D2828EF
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 15:53:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32E6019E828;
	Mon, 23 Sep 2024 15:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jrYzcWo0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96902746A
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 15:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727106802; cv=none; b=SyKQOcBX12jpCelgzDyMrZJjeFcBJIOqk7PEryTEkEj3M2Np1Sgs5PGRMNZBGBxzWZ5LQPNUJ4X4/Y/ED+YYeEB2oSwMj0oKjm/oVm2Rg84iHtqZzUsCliR6+d1SgJTy2BV6+VD8FDWVbODzQyZY8/hVfLT8fu5lH5WcGciPqec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727106802; c=relaxed/simple;
	bh=ZU5seM9smWEiobYDEf8SS3vXgZi7+1RN7cqeRk4687M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lhw/nJu1mtMikl/rgpXorWHkQsS/7I22aHS+vncQe2rTTzBryNfYRZ916LeDohXLm6toORfnmL2T6j0X8GgqCFDBDLzEmDIuktbM1aBACLsF4vv3drvt4w1uhfddZTH40CHvQt1Vh06Rc4dTSyp6lLDFeJb86hotDDYtPWWfd80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jrYzcWo0; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5c5bca59416so1965745a12.1
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 08:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727106797; x=1727711597; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QRM+kE0eJyk586xzDQCqEgq0PLZmAXcxdHkE0kZP+34=;
        b=jrYzcWo0qdmvF92SDo0aMzqTxOst225FkgxYuEDeLAhu4+Vxau25gDXLQEaYo++Oks
         Y4gufgySM4DHvrFG/I6SilQ3un4SiZQMYJc+r/KKYjuKZ/pqSQYWweXaSkB9lYP1AhaR
         iU1gweMEOeT31HU/SCm2X0LmPgsZdLRb8DvoUzTX/o1r5rI/dW4M91T7K72W7KzKbbPi
         JHk+kU1UkfPfFFkNBlp9LdKAUVYK4SxpJv8ob04Y3bhBb95juU9J8UL4gRtpW6kEUlt6
         tKrATh1dyW7aQ77ZD/UD8D2HbLUKAlcyLCMSAs8YCBOxCC+OcvNr/yI5FvJ1CZOKhrsu
         pstw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727106797; x=1727711597;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QRM+kE0eJyk586xzDQCqEgq0PLZmAXcxdHkE0kZP+34=;
        b=bCykQDupQ3oQ28IwP3jnvC98TN8RfWG57emf+ZqA14hvYtsW7i7DD3+sICd7LH+TBv
         3fdZusowBstjjbBMlqghysauE2gA+6UuDbwjsOzHkVx9uHUiYcsEdzOH12PIMDg9+/+R
         fB9dy03RXobnLCV3JDZ77gllUeXzEcTIW7DKcZolyoax/W52gAhy80NI6fOx8rOWFXKn
         O/FfZzL76fW6a/l/aJSq4vSM0TbhNfiqGmupOWV7Pv9594//4MsnB8xTp+ps6jhDQ7vW
         HsUcREhMvl410lBeerEZQyGXs1OkcWji08BWS0VO8ygkAh152M20Jqp6arpikGgxyRs3
         l0jQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRt2ivvPPog10zJb30COf+yJEba3UG9dQZGfKvbNb2oq/UFGeF5kjlus1eeqqtuwIIi3jVOcDmhPHq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+XJEKqKqvpzv4KJApegRZLCY65vQCdfeXDaRWKdRmY51r0etg
	8tdkNW0+Nx/MaMvmOyUpeVjmeNnWk5Kah6hhzzPyvM9ZbSe5oxBJFnkNjGkgwLo=
X-Google-Smtp-Source: AGHT+IGBpRkt+8y5+RxqKBR6+1fLPcTp1+wypMHqo/i4CpE6EyOMQS9eX6dcSOj3vIRwPUtwRcX/1Q==
X-Received: by 2002:a05:6402:234e:b0:5c4:2b0f:fef7 with SMTP id 4fb4d7f45d1cf-5c464daabfdmr11952867a12.4.1727106797008;
        Mon, 23 Sep 2024 08:53:17 -0700 (PDT)
Received: from [192.168.30.40] ([151.43.50.54])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c42bb89f7esm10414568a12.66.2024.09.23.08.53.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2024 08:53:16 -0700 (PDT)
Message-ID: <418a8a9b-3bcf-4b8f-92a0-619a3bf26ab5@baylibre.com>
Date: Mon, 23 Sep 2024 17:50:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/10] dt-bindings: iio: dac: ad3552r: add io-backend
 support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Nuno Sa <nuno.sa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 dlechner@baylibre.com
References: <20240919-wip-bl-ad3552r-axi-v0-iio-testing-v3-0-a17b9b3d05d9@baylibre.com>
 <20240919-wip-bl-ad3552r-axi-v0-iio-testing-v3-4-a17b9b3d05d9@baylibre.com>
 <gojq6ardhvt6vcs2kawdhdn2cj6qbpzp4p5mjjgwsypuatm5eo@3u6k4q7le46s>
Content-Language: en-US
From: Angelo Dureghello <adureghello@baylibre.com>
In-Reply-To: <gojq6ardhvt6vcs2kawdhdn2cj6qbpzp4p5mjjgwsypuatm5eo@3u6k4q7le46s>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Krzysztof,

On 22/09/24 23:02, Krzysztof Kozlowski wrote:
> On Thu, Sep 19, 2024 at 11:20:00AM +0200, Angelo Dureghello wrote:
>> From: Angelo Dureghello <adureghello@baylibre.com>
>>
>> There is a version AXI DAC IP block (for FPGAs) that provides
>> a physical bus for AD3552R and similar chips, and acts as
>> an SPI controller.
>>
>> For this case, the binding is modified to include some
>> additional properties.
>>
>> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
>> ---
>>   .../devicetree/bindings/iio/dac/adi,ad3552r.yaml   | 42 ++++++++++++++++++++++
>>   1 file changed, 42 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
>> index 41fe00034742..aca4a41c2633 100644
>> --- a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
>> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
>> @@ -60,6 +60,18 @@ properties:
>>       $ref: /schemas/types.yaml#/definitions/uint32
>>       enum: [0, 1, 2, 3]
>>   
>> +  io-backends:
>> +    description: The iio backend reference.
>> +      An example backend can be found at
>> +        https://analogdevicesinc.github.io/hdl/library/axi_ad3552r/index.html
>> +    maxItems: 1
>> +
>> +  adi,synchronous-mode:
>> +    description: Enable waiting for external synchronization signal.
>> +      Some AXI IP configuration can implement a dual-IP layout, with internal
>> +      wirings for streaming synchronization.
>> +    type: boolean
>> +
>>     '#address-cells':
>>       const: 1
>>   
>> @@ -128,6 +140,7 @@ patternProperties:
>>             - custom-output-range-config
>>   
>>   allOf:
>> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
>>     - if:
>>         properties:
>>           compatible:
>> @@ -238,4 +251,33 @@ examples:
>>               };
>>           };
>>       };
>> +
>> +  - |
>> +    axi_dac: spi@44a70000 {
>> +        compatible = "adi,axi-ad3552r";
> That is either redundant or entire example should go to the parent node,
> if this device is fixed child of complex device (IOW, adi,ad3552r cannot
> be used outside of adi,axi-ad3552r).

ad3552r can still be used by a generic "classic" spi
controller (SCLK/CS/MISO) but at a slower samplerate, fpga
controller only (axi-ad3552r) can reach 33MUPS.

>
>> +        reg = <0x44a70000 0x1000>;
>> +        dmas = <&dac_tx_dma 0>;
>> +        dma-names = "tx";
>> +        #io-backend-cells = <0>;
>> +        clocks = <&ref_clk>;
>> +
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        dac@0 {
>> +            compatible = "adi,ad3552r";
>> +            reg = <0>;
>> +            reset-gpios = <&gpio0 92 0>;
> Use standard defines for GPIO flags.

fixed, thanks

>> +            io-backends = <&axi_dac>;
> Why do you need to point to the parent? How much coupled are these
> devices? Child pointing to parent is not usually expected, because
> that's obvious.


"io-backends" is actually the way to refer to the backend module,
(used already for i.e. ad9739a),
it is needed because the backend is not only acting as spi-controller,
but is also providing some APIs for synchronization and bus setup support.

> Best regards,
> Krzysztof
>
Thanks,
Regards,
Angelo



