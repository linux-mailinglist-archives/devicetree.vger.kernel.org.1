Return-Path: <devicetree+bounces-123544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F369D510F
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 17:58:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C224B29A1C
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 16:58:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E7191B5325;
	Thu, 21 Nov 2024 16:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uy7LYOyv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6811AA1D4
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 16:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732208271; cv=none; b=rGSXG0tw1rFkx/bu1GpPUBiFcwxxL9lpcMvjHVG3XLqzaS2aJkC2csOEaKiwtNdNdLsrA3TbFvMghJN3HlcGgtR1tNoZGDAG6W/LJcYuSeahBmwlQZQF3vpUEpKL66bXjwgS5HepglNgYsRTw6D5WGF9gnbxZoO6LGOcrqeP4EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732208271; c=relaxed/simple;
	bh=L6sfNfJNYshtDDIz66hyivqjmRS/P+6sJEyGbM1My+I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pqdom6klOedl4WryGC2JOKirBsPusxFhjC8RaEUSEbtMN/N2EtrwT++w7XePE3XVF8I/f/HHwojVd2pj/RcyAY+E06/XAl6am+JcCzZ3Wsnp9X3LKPMpWArrvnlI9vXCurrXt/m4aiJ0ETCjAJWxT2xByPji3/Kwppskmm531fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uy7LYOyv; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3e5fb8a4e53so677707b6e.1
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 08:57:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732208268; x=1732813068; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OqTESz70WWBrUKHYGVQByHq14bvk7OilAkc6nrXjoQs=;
        b=uy7LYOyvZ35ZGyOK7M3ZdcSvGdMwIOLm4Z75BQb0VwdENOCMrA4QO5Zjb54rQXOi/w
         stD+C8od1kLFFXbh/6KMmrIHA4Rr8yOd/u7Q7C6jcCIhe0YIesYrut1UTc3cl8mZI0zx
         zltZIPfu3dp0tT6ehJoYcra5L2xS5da6Fv6TJfeQ0RA+pPm/6wepw61CpY4LMnq1qoWp
         /+A19EtsqHKjndHwoTFahs9rpcfHGoXcrr1p2vr2y76s4NJv1Sz5LAgxvb/cONjBn4HY
         ydrUclU1QYOyN5NljI0vGjpmLRu3a2HKRMPaz9UpnOCzn1TMeoWzFpG7kXPnL988qw5Y
         jY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732208268; x=1732813068;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OqTESz70WWBrUKHYGVQByHq14bvk7OilAkc6nrXjoQs=;
        b=wywKY1Il/EkytbwHO5UH5npPLIdLmonY9jztUhzb2IVwsCHPvZgNClVVmqsKIy03Md
         ZzCtGyD62o3QkABikzAWMQetEDdAyzflNtD64AxHiUxaVNChbDML0netSwPj72LSTUMD
         u8hMP3Q6vnK1cs6Ey9FO5cHJuUNR0DMBkmspz6eIHJLFu5n4YE3XGBC2uRxUT9Qinl9m
         N2z/q+YpTyJ5z8BPK4P0z+dhZKO+6hwCx0pL5Z8bdGPrtAHfR0chpqtHMxADjrF2xtSM
         X6dfgAitWN80nCAwbeWqEXLQ7TbK+JeB08NrCWsq3o25t0ZkbWeEdEl788Hcu/2biOOM
         nE1A==
X-Forwarded-Encrypted: i=1; AJvYcCUrF6OnwBjF2d4KFiQVDuIMGgIc0efY1xazfeiXKlKrXSk+/8BtZyxf1ShxkOQm9p+2Ond3EZSfL1kN@vger.kernel.org
X-Gm-Message-State: AOJu0YyH82Yducg1rislIUd/7g0mL+K35N9Yexzc7EGtqD7vtDkNoYha
	G9Z+Bv2OkKQDnPyHRvoJDcjRgBfiHo6axGot6ulyToY1Ub5I/Ge0DRei+SUJckI=
X-Gm-Gg: ASbGncsiSE7ZRqrqW3/c30yn0qAqGLC/kfHSZ1Qp04Xi70yPeVb5OvyHPl6XDpQeUJP
	BL68bfAob9lmoo/4BKBe160r8Q5vwOv4kkcrW0vrrhqt9NucLhY24fWLsjFwrChQqFeT2mHNcqu
	+/eUOSt2fnjOjUtV1ixt6Cw4yZO5vNZUrJqlGR5qQrHoTOYXEF8cKYlUJOppnnY8mfJMGcDAfqm
	IipNEs3n1RK960Zz1FxjwBrJrwk78Rf+s76cuJ+fAxqRizNpeUNMzDdhMsUdlfu9y3r5FmL+K1R
	4fE0genjUak=
X-Google-Smtp-Source: AGHT+IEDrqpxIwTpy3llyV8pjL/P7SyaO5PEB5kVSSRlqQBu8UkhltpWQJCNIdPR5qmaeArbObqWMQ==
X-Received: by 2002:a05:6808:d53:b0:3e7:c466:263 with SMTP id 5614622812f47-3e7eb69bc70mr9063787b6e.2.1732208267897;
        Thu, 21 Nov 2024 08:57:47 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e7bcd93c21sm4767259b6e.47.2024.11.21.08.57.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Nov 2024 08:57:46 -0800 (PST)
Message-ID: <49bc9ec4-f252-4903-b5be-1d35ee8d48be@baylibre.com>
Date: Thu, 21 Nov 2024 10:57:44 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] dt-bindings: iio: dac: adi-axi-adc: Add ad7606
 variant
To: Guillaume Stols <gstols@baylibre.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Nuno Sa <nuno.sa@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, jstephan@baylibre.com, aardelean@baylibre.com,
 adureghello@baylibre.com
References: <20241121-ad7606_add_iio_backend_software_mode-v1-0-8a693a5e3fa9@baylibre.com>
 <20241121-ad7606_add_iio_backend_software_mode-v1-2-8a693a5e3fa9@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241121-ad7606_add_iio_backend_software_mode-v1-2-8a693a5e3fa9@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/21/24 4:18 AM, Guillaume Stols wrote:
> A new compatible is added to reflect the specialized version of the HDL
> that is not covered by the IIO backend paradigm: We use the parallel

It still is being used as an IIO backend, so I would leave out the
phrase "that is not covered by the IIO backend paradigm".

> interface to write the ADC's registers, and accessing this interface
> requires to use ADI_AXI_REG_CONFIG_RD,ADI_AXI_REG_CONFIG_WR and
> ADI_AXI_REG_CONFIG_CTRL in a custom fashion.
> 
> Signed-off-by: Guillaume Stols <gstols@baylibre.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml b/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
> index e1f450b80db2..43bc0440c678 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
> @@ -17,13 +17,20 @@ description: |
>    interface for the actual ADC, while this IP core will interface
>    to the data-lines of the ADC and handle the streaming of data into
>    memory via DMA.
> +  In some cases, the AXI ADC interface is used to perform specialized
> +  operation to a particular ADC, e.g access the physical bus through
> +  some special register to write ADC registers.
> +  In this case, a different compatible is used, and the driver behaves

Quick, delete the word "driver" before Krzysztof sees it. :-p

Joking aside, the devicetree only describes how things are wired up,
it doesn't care how the driver uses the information. So we avoid
mentioning anything about drivers in the bindings.

> +  slightly differently according to the special needs.
>  
>    https://wiki.analog.com/resources/fpga/docs/axi_adc_ip
> +  http://analogdevicesinc.github.io/hdl/library/axi_ad7606x/index.html
>  
>  properties:
>    compatible:
>      enum:
>        - adi,axi-adc-10.0.a
> +      - adi,axi-ad7606x
>  
>    reg:
>      maxItems: 1
> 

Since this new compatible also provides a bus in addition to the io-backend,
I think we need some additional bindings to describe the child nodes for the
ADC devices attached to the bus.

I don't think there are any generic parallel-controller bindings like there
are for SPI controllers, so we can't $ref: /schemas/spi/spi-controller.yaml#
like we did for the similar case of adi,axi-ad3552r recently.

But maybe something like this:

properties:
  ...

  "#address-cells":
    const: 1

  "#size-cells":
    const: 0

patternProperties:
  "^adc@[0-9a-f]+$":
    type: object
    additionalProperties: true

    properties:
      reg:
        maxItems: 1

    required:
      - compatible
      - reg

