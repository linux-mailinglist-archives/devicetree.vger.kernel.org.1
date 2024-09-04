Return-Path: <devicetree+bounces-100119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB2096C474
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 18:54:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DEBB285F3D
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 16:54:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B82F1E0B79;
	Wed,  4 Sep 2024 16:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dNG31Ixi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4559B1DFE37
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 16:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725468876; cv=none; b=uo3I7I92Vbr51zWfQGM8e78zlHMxsSqnUBCb1IfVSCMD0X/yp7STqCdgye+z7DGKfQJZhutmO4QIfKd0uL2dcOeMFNujJ6dHPOo6Ej8bpSSFCCgGq8Lzr0KqBTGJJGCDtcbCg0i0JVIl2WUuVDrcNiNKX56dXTX5w0BgmmU6b+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725468876; c=relaxed/simple;
	bh=rLcxKqQzYFtF8wcHynmigu7WlrFQ0QJuxcjWxrbMvuo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I1KJ8puWgmWDVBagD0UHS8LATXF/YxGrmEFtWyr82gvj62jQeck5USJAxouQzteAkkECUdAI4KFu+l31Tb2HyBbZx0apUI30s5uEOg2hBRZHRMHkXawX1jqG7+PG2otZvlo8r3YyEJZmAvq8OmYPd1E4MV/PQbaMNFn1UKJ/Y5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dNG31Ixi; arc=none smtp.client-ip=209.85.161.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-5dc93fa5639so4091189eaf.1
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 09:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725468872; x=1726073672; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XGsTtJyHEymxr9zhFpJmgtflhZLOfdi2Xf6Xd7Osyyg=;
        b=dNG31IxiqXd/f7Eg2C2ORXPWzC3Vz7JxaDM6b561m9LkGl1lWtKslSwzPQGsEKZz68
         6e/eSB84e1XVH+XhPN/aJE7j9hakV6uiiEP2hGJNwJd4rt4SRIT9gUjyZLyOq/3SrxXd
         lQ/2zNxk9OFkc1dPZ3zN113PZB0J7JLXEebTtZkptBuHF24Qi3Vyz6rJIG7WawHz0kmx
         6MYnXdv5cpB65RzIRcju3xVU2qJBwqAnuM4eOV3KZTJtb3W3/pkS4pwddz6VmV9P57DC
         HDVghU2OVjW1tL8s3GjJXF8eSYyUcsPHXRPkkEW2p1l8IGfx/DOX20y1osWgwJAErtRr
         heBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725468872; x=1726073672;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XGsTtJyHEymxr9zhFpJmgtflhZLOfdi2Xf6Xd7Osyyg=;
        b=AuGxwsoI3ghKVMIc125BhjlzCEUaDAESSellUObb4ytzzOsVmuvxzvirTgDv3RzmwG
         jGUf57BiQoIECU4VN1cJnV9FplGheB0qIQJAzRSVv5R5x29yPw/g0oefQ3xOgjOaPAx4
         GKfg8kURDNe5B8aFEKmhVUxVhUPQDK+tMKYLno6dPIWROkNd7uyJzlR8/45hZQqCWgpD
         /eJk+sngTt9eZF195F9hIHXqV38BDpyHjS5tHyaNtnfZFQfCKXrDyViwXYfFZjysZV58
         cdnqN4PjSwryCSjm4psD7vLA5OPhkkLv7a1Pbvzme+XgCbNlKywTrLK/MVq+QtqLw/Ug
         a/DQ==
X-Forwarded-Encrypted: i=1; AJvYcCVD913uMA8fB0jZQldlGGAcMcj9JF09n5Ke1TuKfgS4yTyFnUNx6PhMyeTgYFg3CALzCXa7zveagFta@vger.kernel.org
X-Gm-Message-State: AOJu0YzaCUjkQVpHOjJHMz5xIggX/mCaCNkrZtm3iFOJe9ng5IHbV4Lj
	+FK7oxf8PgujhoKu4AnHCpbng7bP93rtppxwxbsSzgvxWKZ93MjLQ5P+jLosvJE=
X-Google-Smtp-Source: AGHT+IF3j8/aXNxe1Iy7hQRDGywiVQBtcHVg3EIE/yrDkqsU7P4AR5T3yNPfD5Pur4i6IPkep+owfg==
X-Received: by 2002:a4a:ee8a:0:b0:5da:a462:6a30 with SMTP id 006d021491bc7-5dfacddefacmr17589860eaf.1.1725468872380;
        Wed, 04 Sep 2024 09:54:32 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5dfa04bd7basm2439218eaf.24.2024.09.04.09.54.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2024 09:54:31 -0700 (PDT)
Message-ID: <b7cae260-19ca-485d-b9c5-4b9209ee4886@baylibre.com>
Date: Wed, 4 Sep 2024 11:54:30 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] dt-bindings: iio: adc: ad7606: Add iio backend
 bindings
To: Jonathan Cameron <jic23@kernel.org>, Guillaume Stols <gstols@baylibre.com>
Cc: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org, aardelean@baylibre.com
References: <20240815-ad7606_add_iio_backend_support-v1-0-cea3e11b1aa4@baylibre.com>
 <20240815-ad7606_add_iio_backend_support-v1-2-cea3e11b1aa4@baylibre.com>
 <20240817160900.01224c80@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240817160900.01224c80@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/17/24 10:09 AM, Jonathan Cameron wrote:
> On Thu, 15 Aug 2024 12:11:56 +0000
> Guillaume Stols <gstols@baylibre.com> wrote:
> 
>> Add the required properties for iio-backend support, as well as an
>> example and the conditions to mutually exclude interruption and
>> conversion trigger with iio-backend.
>> The iio-backend's function is to controls the communication, and thus the
>> interruption pin won't be available anymore.
>> As a consequence, the conversion pin must be controlled externally since
>> we will miss information about when every single conversion cycle (i.e
>> conversion + data transfert) ends, hence a PWM is introduced to trigger
> 
> transfer
> 
>> the conversions.
>>
>> Signed-off-by: Guillaume Stols <gstols@baylibre.com>
>> ---
>>  .../devicetree/bindings/iio/adc/adi,ad7606.yaml    | 75 +++++++++++++++++++++-
>>  1 file changed, 72 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
>> index c0008d36320f..4b324f7e3207 100644
>> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
>> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
>> @@ -114,13 +114,28 @@ properties:
>>        assumed that the pins are hardwired to VDD.
>>      type: boolean
>>  
>> +  pwms:
>> +    description:
>> +      In case the conversion is triggered by a PWM instead of a GPIO plugged to
>> +      the CONVST pin, the PWM must be referenced.
>> +    minItems: 1
>> +    maxItems: 2
>> +
>> +  pwm-names:
>> +    minItems: 1
>> +    maxItems: 2
>> +
>> +  io-backends:
>> +    description:
>> +      A reference to the iio-backend, which is responsible handling the BUSY
>> +      pin's falling edge and communication.
>> +      An example of backend can be found at
>> +      http://analogdevicesinc.github.io/hdl/library/axi_ad7606x/index.html
>> +
>>  required:
>>    - compatible
>> -  - reg
> 
> I think we still want a reg, but only to differentiate multiple instances
> perhaps.

In light of the recent discussions on the similar AXI DAC
support for AD3552R [1], should we consider some of the same
things here?

Essentially, the AXI ADC IP block in this series is acting as
a parallel bus provider for the AD7606 chip. This is used both
for configuring registers on the chip and "offloading" for high
speed data capture.

So this would mean...

1. We should add a new compatible string to iio/adc/adi,axi-adc.yaml
   for the specialized version of the AXI ADC IP that is used with
   AD7606 and similar ADCs.
2. In the .dts, the AXI ADC node should be the parent of the ADC node
   since the AXI ADC IP is providing the parallel bus to the ADC.


[1]: https://lore.kernel.org/linux-iio/20240903203935.358a1423@jic23-huawei/

> 
>>    - avcc-supply
>>    - vdrive-supply
> 
> 
> 


