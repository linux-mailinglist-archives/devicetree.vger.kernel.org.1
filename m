Return-Path: <devicetree+bounces-77131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D155290D761
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 17:33:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BAB31F24133
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 15:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 500F241A94;
	Tue, 18 Jun 2024 15:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jclrpdHb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE18E3C099
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 15:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718724804; cv=none; b=npGrn36Dn72GnP/GWODdDCqajRlzOiq80D9Ieo8VkTQKmLgiiDeG8zWIl4trzplz6QvnsFU1Rqu7UmOdfSPPe2FE+ISW3rBdSeSoVEaRnX5gDoXuN5mO/WtMm7sgkzCtkFnJdPXnBa2XRVkhNnwwXcIWuQgxzeOVPDez9ORqruw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718724804; c=relaxed/simple;
	bh=OidDUdMdqZ3vXqtOo2sYgJIbRttJdLKmRFOYCGLgqvw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dQlTfKa4/k++cnJhkCfvKJ6COc3jhu7wVygAGM3hzpceJUc4Q34c0mHI+xgUgL9INHuQNrsA0nusiQ+4Vqj8UZZzOde5prWE79+xHTMFVgdLrA54ae9j7qme2D+JiGTXpIx94U7Q6aHyKecfDQrh4hM0ux+QC2LsYPOYngUkY/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jclrpdHb; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ebe40673d8so59158801fa.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 08:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718724800; x=1719329600; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jfdIMHMbd41FfhZa+NmGcJDWVMknbpIRWOxq4rduHS8=;
        b=jclrpdHb9BSRsL8x8bF3KmA7xFD7Cl5bO2+ugkthDBp/lnMRq9L7PwLVaJD9vbH+2h
         XAFbIR+V4B7o6Ti0xIZ0QrirC7jz6aOq1SsHrLnHdipwZe0dovjWqCu7BjOtHsglz/5Y
         A6vRSKyQQD9dApZlSnHuZQhjwhKfVx4vUXuuR+PM98rW83lF5Zeied0TbXIeb1rrhhEP
         HtTkjF5kRsRtms3Tl7pGf5s6umoDyJouKy9lViaqJePUtSIrTyXMc0IK5f/E+PNhxtLB
         LlllAug9PA9PrDQ6aPwR0PWgV/33YmpZ8NvBHr6i9nco25Ik7SLNbMTL4SsmP/vo/tnz
         AZUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718724800; x=1719329600;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jfdIMHMbd41FfhZa+NmGcJDWVMknbpIRWOxq4rduHS8=;
        b=n2uwx/j+dSd9KCFWVVyh3oHxVfK9vDBsrQExHB24iYqSxoBkEAsn7d1GVTJRKoEWcj
         ys2kLJI24bt1XMSyhXmMRJWJy7lJ8Wue3xIC3hH1k1WF3BoD9MxpF9+Jv07CnFG+g3+6
         KXtmh48r1tvUwvtp5l/Mt+lssxuUV5Jw4THcPdFSDtnxnDCSXU0L/aeggvB12u6gzNZR
         L9gByQkIybSRsOZQXVelbifiVLKCSM0B0u15Ld0oiTQJqsqeBl8/RDAbwaLLk//2PVdi
         zQVZf9arDDhjUn5e/M74DG451lF2sGncp3jcoOi23ILyt4ZtjFh15ThWyr/2epvO+nnV
         MMmA==
X-Forwarded-Encrypted: i=1; AJvYcCVzvWJwc77CPWEsNeQgJ/jlQIK+p+mXUBUhSO+rWU1yR3/acRbDIAbDrZOA0y4n+/0fn7VTn6qLUbSqvajt2ui3YjgkFWSZvlKXug==
X-Gm-Message-State: AOJu0YwjUlR2vbT+URmfznHwqSz4wWxCy3HEEB8c8eiONNAjpHiAkTp3
	0ZKUxmtvXPwA7C+zUbf6Idgauus8lbvSWa7vL4OfvezWurrfiJkMvjEfxZ/qqaY=
X-Google-Smtp-Source: AGHT+IGPLHkRxLgiDT7OfhwzzitOA+lcgi9oUcdgszdwELkZ98EffR55DwHJ0KgmR1XLjbcwR77Org==
X-Received: by 2002:a19:5e06:0:b0:52c:98df:f496 with SMTP id 2adb3069b0e04-52ca6e6d582mr7495426e87.40.1718724799855;
        Tue, 18 Jun 2024 08:33:19 -0700 (PDT)
Received: from ?IPV6:2a02:8428:e55b:1101:5f32:b458:c62f:c621? ([2a02:8428:e55b:1101:5f32:b458:c62f:c621])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f6419e38sm194500515e9.39.2024.06.18.08.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 08:33:19 -0700 (PDT)
Message-ID: <12e5c4b4-e51d-4e69-8c63-3f6aefb574d9@baylibre.com>
Date: Tue, 18 Jun 2024 17:33:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/9] dt-bindings: iio: adc: adi,ad7606: add supply
 properties
To: Conor Dooley <conor@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Beniamin Bia <beniamin.bia@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org,
 devicetree@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 jstephan@baylibre.com, dlechner@baylibre.com
References: <20240618-cleanup-ad7606-v1-0-f1854d5c779d@baylibre.com>
 <20240618-cleanup-ad7606-v1-4-f1854d5c779d@baylibre.com>
 <20240618-eggnog-cusp-8b5a17313367@spud>
Content-Language: en-US
From: Guillaume Stols <gstols@baylibre.com>
In-Reply-To: <20240618-eggnog-cusp-8b5a17313367@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 6/18/24 17:12, Conor Dooley wrote:
> On Tue, Jun 18, 2024 at 02:02:36PM +0000, Guillaume Stols wrote:
>> Add voltage supplies
> Are these available on all devices?

Yes all chips from  AD7606 series (including AD7606B, AD7606C(-16,-18),
AD7605-4, AD7606 (-4,-8,-6), AD7607, AD7608, AD7609), as well as AD7616
have a VDrive pin, as well as a RefSelect + RefIn/RefOut pin that takes
an input voltage in case RefSelect is high, or outputs the internal
reference voltage if RefSelect is low.

>
>> Signed-off-by: Guillaume Stols <gstols@baylibre.com>
>> ---
>>   Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
>> index 80866940123c..e480c9a7c7ca 100644
>> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
>> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
>> @@ -35,6 +35,15 @@ properties:
>>   
>>     avcc-supply: true
>>   
>> +  vdrive-supply:
>> +    description:
>> +      Determines the voltage level at which the interface logic pins will
>> +      operate.
>> +
>> +  refin-supply:
>> +    description:
>> +      The voltage supply for optional external reference voltage.
>> +
>>     interrupts:
>>       description:
>>         The BUSY pin falling edge indicates that the conversion is over, and thus
>>
>> -- 
>> 2.34.1
>>

