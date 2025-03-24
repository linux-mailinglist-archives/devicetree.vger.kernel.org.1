Return-Path: <devicetree+bounces-160295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C945A6E2C3
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 19:55:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E4219189205C
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 18:55:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41C74266F0B;
	Mon, 24 Mar 2025 18:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sFlQQW75"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BEFE266F07
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 18:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742842542; cv=none; b=MrQrVQNYbq5FcFwIhbsZB5qEshvFHvUmt7t9ypevmpAwazwJd/mIgD5UR0dP64QsDo2fdURzJ0zkCBIYdqoat+C3nRn3Bqi2NUCcz5LCoeJZ6dMDe7U/GaDiQOeQTD8ao+3fZMLFflcVxhj7OkgJsyipp/qCrhanIAGTPADR3+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742842542; c=relaxed/simple;
	bh=fnUwfpQgP5nSxubyeb3rbtBfI1XlojZDKOnU1ysQ25o=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=A4X4flNi2dxx49jM7tBFeS2U4COfRXemYlD4eULU2CeZInGwJvqpSriHAnXC64qcoqgiV9qpUDpZ+smmYc7DZAqn3ez+DT6sgZSCyiH0h1MGpjEFcJqfrFNvqQrppA5h5x7Z2G0i6doNCKFvGC/KmCIC4gGcdVmAtpnbGl7bvIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sFlQQW75; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-2c2b7111bb1so2205881fac.3
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 11:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1742842539; x=1743447339; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=v8cSKX9G+X7Klicv0ii6T0Vayugf74Hd1S+HWFAQfa0=;
        b=sFlQQW75a4UVSiZ1xaOZ3LNIWBdxaEhTiARZi8l1FXdOv/Ww/e8eozGt4v5FfDy9FG
         cTIcBDTZ0kS2hZT8hvPXbxPATuJ4XZFsLDudybppmL9Tgdv4EKU+3l9YCxELs7gmORN2
         5l7T+bf44c9nXKvnO6xgjORtfYXo6O+IahTsta8KWK4fyBetYq2eIenPVaDW7bPMNekA
         ojzz+5/v4pu1mxDlXlEa2INT4dbhA0Mwld4h+fEMVkYxygfgCt9IqQIySVO83GmMGIPV
         ut6FIOLL1SQ36xq/dKwZ3g6dNAXNvaXfZaONc2NS/ACaadTf3Y8OnFhQGTXn3/cMQ1Yr
         JBoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742842539; x=1743447339;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v8cSKX9G+X7Klicv0ii6T0Vayugf74Hd1S+HWFAQfa0=;
        b=Q2QsvOwlT0zbheVK8wmbJgYK9xGtY2spCLRF0dXaz+EP3mKv0NnIeV5oJVvydhsl+2
         IViG2vztMy6Qrn/19RrWEDs4sjoGHVaPMCWfmFEH4q6JwuNDd5D7LqFWZ4hoyAn52ZKC
         PjV9Tfjwt1uRDgcdTjZk3jAu4PR9sOzkn1akXK83OMFynt7WxqbvOAbswsCapId6MDa3
         Zl01qzDG/ome2zvE858Iu7vb4zjuRmtSt2u27vAbgshlRz9MZD+3q+eKVvM2PlhPLHTr
         BCjMcLdn3qz1xpT0wXjgC08QiyilKT/WwAKI+U64rK1w98MtukmUJQQDZx9eCu/NKXEM
         Hc/Q==
X-Forwarded-Encrypted: i=1; AJvYcCW80YEM10wbT/a0vd0GytOc5OTBaE4TCw59Ej4ZJFwDrpzxJdZJ5nhbA0Ufh6Q4R3oZ3XLzp7ZaIbzM@vger.kernel.org
X-Gm-Message-State: AOJu0YyaQig6XLJnIQ1SAbU830tHRqPZhWF2OPjSCzC5ndY0kYwMIUq+
	iWJtZp5CZnxpopgms20TWihyyGeGYsDzxw4qF8rxE/lLOi+3doAQiUCLfhfdRdQ=
X-Gm-Gg: ASbGncv7YR69of+VzSQEYcEilTvVWz/yqBV+DuHUpiCuu+bXo4fQyu57J0j1qEmciZG
	jF+U58+lcZeYmodGhGO5ZgsnhcYa/xhCGT3+17QASgY+GyJl7oRPJC1tkNZrk5LJXhsQlzyrUAI
	kFZr3AmPWSuxomKUTQvaUJ0q3tR5gjj+nFpVU+Vb43CYr+Ngh1KnlA6Ybm0/bDVHLWmzLZ4Fulz
	1ljoNCcwAPI4CIWUAxGMplWZjoY6KUjFqEBTN35Ff6D+gXzB548XlEUShvE8P9nDXd+NRnSz09s
	A+S69BvJf0e1z1AUamlmiX0NSTc3QueoFuOFYHS1wKVAGLXMAeIu73b/TUEJHKiWGaKqVrjvIsd
	slIjHEg==
X-Google-Smtp-Source: AGHT+IEOgpjRWbUHuAnyGX6WHqizOfqn4uoM0Z/ExAuOWBNPeeoKO+dZVWDyA/Ub+w+vjZVTT47Nhw==
X-Received: by 2002:a05:6870:8089:b0:2c1:b58c:c0c with SMTP id 586e51a60fabf-2c780533179mr9623307fac.34.1742842539343;
        Mon, 24 Mar 2025 11:55:39 -0700 (PDT)
Received: from [192.168.0.113] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72c0abac233sm1677280a34.1.2025.03.24.11.55.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 11:55:38 -0700 (PDT)
Message-ID: <cfec0b2d-cbdd-4b64-8fea-2676e7dbc1f1@baylibre.com>
Date: Mon, 24 Mar 2025 13:55:38 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] dt-bindings: iio: adc: add ad7405 axi variant
To: Pop Ioan Daniel <pop.ioan-daniel@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Trevor Gamblin <tgamblin@baylibre.com>, Guillaume Stols
 <gstols@baylibre.com>, Dumitru Ceclan <mitrutzceclan@gmail.com>,
 Matteo Martelli <matteomartelli3@gmail.com>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Alisa-Dariana Roman <alisadariana@gmail.com>,
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
 Ramona Alexandra Nechita <ramona.nechita@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250324090813.2775011-1-pop.ioan-daniel@analog.com>
 <20250324090813.2775011-4-pop.ioan-daniel@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250324090813.2775011-4-pop.ioan-daniel@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 3/24/25 4:07 AM, Pop Ioan Daniel wrote:
> Add a new compatible and related bindings for the fpga-based ad7405 AXI

It's just a new compatible string. There don't seem to be any other related
bindings. So we don't need to say that in the description. 

And typically, FGPA is written in all caps.

> IP core, a variant of the generic AXI ADC IP.
> 
> The AXI AD7405 IP is a very similar HDL (fpga) variant of the generic
> AXI ADC IP, intended to control ad7405/adum770x family.

It helps the DT maintainers review if we can say specifically what the
difference is. In this case, I don't actually seen any registers that are
different from the generic AXI ADC IP block, so I'm not sure we actually need
a new compatible string in this case.

The REG_CHAN_USR_CNTRL_2 that you add in this series for the decimation rate
is documented in the generic IP block [1]. So the generic "adi,axi-adc-10.0.a"
should work. The chips that needed their own compatible have conflicting uses
for CUSTOM_CONTROL in the CNTRL_3 register, but it looks like this isn't used
for ad7405. 

[1]: https://wiki.analog.com/resources/fpga/docs/axi_adc_ip

> 
> Signed-off-by: Pop Ioan Daniel <pop.ioan-daniel@analog.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml b/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
> index 4fa82dcf6fc9..1b02217ff8b5 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
> @@ -27,6 +27,7 @@ description: |
>        the ad7606 family.
>  
>    https://wiki.analog.com/resources/fpga/docs/axi_adc_ip
> +  https://analogdevicesinc.github.io/hdl/library/axi_ad7405/index.html
>    http://analogdevicesinc.github.io/hdl/library/axi_ad7606x/index.html
>  
>  properties:
> @@ -34,6 +35,7 @@ properties:
>      enum:
>        - adi,axi-adc-10.0.a
>        - adi,axi-ad7606x
> +      - adi,axi-ad7405
>  
>    reg:
>      maxItems: 1


