Return-Path: <devicetree+bounces-210830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 97437B3CED3
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 20:45:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CACF87B1ACB
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 18:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66AF52D9EE7;
	Sat, 30 Aug 2025 18:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="wumPYqfD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95B452D9EFF
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 18:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756579521; cv=none; b=MvZbT295h79+g+yD8ylFcN5iOsF77JuRtM2wo6z7gX2odYjeSDp1ANOmzxvyAYEAjSgMtWalg2ZqcQJklVar6PSL8KwQPmdFZYjV9lrsnePBhS8wN+40wlSWm+9niubFBDPAeXezotaEMkusNVdsaYRnxTqw9dE5RovIfnlLAnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756579521; c=relaxed/simple;
	bh=A6/ow0zfZVWRQiTl9Wxuq88PZFNMRCn7+IJy+ae1z5o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hDiDQ8/tmmZP+SXmwJVERfGUqy3L9KscD9CdJbVJJjhUQM41n+hiIluUT6fC3CmfplzwBytOGRLDNkAEb38ASY5UpdQk59dudXQlxhPIYA12JyjJP/f4skeiUfziEHLEK0nx+T/KCUmwgsyAo5C8GsE1BfWd97ytSnT+Ft+p1iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=wumPYqfD; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-74381df387fso1164881a34.0
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 11:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756579517; x=1757184317; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CPiezsjLUnzBqGwDjKVX6a94n9N1zDOYr4AgH99/0TU=;
        b=wumPYqfD1HPnkR373XypQzxzgcs+Bk9CNtZQj5/O+/ok19ESqJgRKW3qwmk+3NF8TT
         TWjOz+q3Z8Se5vstsR3l/yRX3vXLP0PzQpg8cdwbvjc3DozMZiPY3Awoas/K6n7DA8oq
         oCvQJdcdosoyLtfcTl/ZGhd7zG+ZpmH/YdRijPWq+Jg+jg/JeG6eoaXSUK1+XrIIrGfG
         jwnAdRl1DY6VF97qoobraW1kH4l1mN6QGfCqReRkL6AACgJ9vEg+9jfePOzjdMHGJaBv
         zZmd+WHjyQjCho2rfnOMX/0Df6OkrwDkHiohqjZC3lF0t7R6eRZZ+oZ13BnoUSSkE39o
         uGEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756579517; x=1757184317;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CPiezsjLUnzBqGwDjKVX6a94n9N1zDOYr4AgH99/0TU=;
        b=ATeIRGZc9jzA6u+UEaUwHWKgf9YZYKAQEXhgnGfLz6VYNHL8uwRBi+KT5+A6ur2m8T
         hIGk7nguXZXgXbcWDhBFJGpJ2krLILmI+Uct4EH+0M4tYrfzH0FESPbGBvS673+VjTZI
         7ge9RWwR/2r9SfjAfj0QRlO1dDzww5sHx2G9mcCsnkfS7P8z7alCVvL4zpM+k9pJtATs
         F/skTmrCOjoB2oEqFXsAmNzLx9qDasWqoZUqzGyBwD3LUgC9chWnpwnyNEjOjSQ/3ufP
         63zuHtC/XEUWNo+ZTA7Kq92c0xNfoGM0MTn43VyAyPPoYuEEewGGJKyDtlUUA3QSp8ay
         Oyqg==
X-Forwarded-Encrypted: i=1; AJvYcCUi+q/eRyjgB8a8KpoZb6r6C+TmWMzZzzbVk3/hQBmTp5EYkPMeN3YidBDNh/+W10uw6Lmz1gaKo7CJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqhh+cyPt7VDgYHg0bEKKxpKGpWo7S0dlZq0GsmAhe3X0VhgP+
	lelG5tkq78kOqqfImJXeCaG4kpnr9zFW0PJ59YkGPEA+jmYcyO3JMWwQPp/kgj1kp1Q=
X-Gm-Gg: ASbGncu58klfl1lPbeM8qHGxTS813dadciwE9zKBwxJAtXSPs/fHheITW7d+Sv6oarr
	L1yQnTmy/EIDHz0xr9iXtiFnJ8z3DmkbmBPqqGwz/UeTBfW2VgMIpyJw9ttdyUmXLv4Pkf/C+ne
	RmrCr72sPig4wIls+RlVEu3MWU1FO7gVCKwW5aFYdI3t+IELp2ZZQJLvVpwiGd7OLISZRSUDhRo
	5s4TxHR0h2pp4jBrlfz3OhkPyD7kX+iThiNyRE3zorah5i02V3XxlBkzDntWVZWg4nJEFABjtqz
	pmel/U7h/580aLjE2+eLp53UNH25sklaRnuLeKjKQ6bTyi8V5AfS5t3ti9BxGpH5CvJ34k1j3sh
	XO+K8FIS/HSd7WBviWWgnysMBqQGJIHQ8gbFX/8r/IVYbF3g8sLA+TVpUAHLW5bHN6FYP5FnYAm
	g=
X-Google-Smtp-Source: AGHT+IGv9C+6T4KddzZvtjmPR5YaSWFbXjOWucy8kEyzoY7r1q/BobV4qLWBoksIlhBWe9W/PezVCA==
X-Received: by 2002:a05:6808:1809:b0:437:df8f:699b with SMTP id 5614622812f47-437f7ce0b66mr1214908b6e.14.1756579516610;
        Sat, 30 Aug 2025 11:45:16 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:f7b4:dfbd:5110:c59d? ([2600:8803:e7e4:1d00:f7b4:dfbd:5110:c59d])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-437fff0819dsm20451b6e.14.2025.08.30.11.45.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Aug 2025 11:45:16 -0700 (PDT)
Message-ID: <bf2a2ef0-0ae0-4a57-a3be-e0062190da42@baylibre.com>
Date: Sat, 30 Aug 2025 13:45:15 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/15] dt-bindings: iio: adc: adi,ad4030: Add ADAQ4216 and
 ADAQ4224
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org
Cc: jic23@kernel.org, Michael.Hennerich@analog.com, nuno.sa@analog.com,
 eblanc@baylibre.com, andy@kernel.org, corbet@lwn.net, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, broonie@kernel.org,
 Jonathan.Cameron@huawei.com, andriy.shevchenko@linux.intel.com,
 ahaslam@baylibre.com, marcelo.schmitt1@gmail.com
References: <cover.1756511030.git.marcelo.schmitt@analog.com>
 <31584fd69731bf75967a0fa75302bd7402f6705f.1756511030.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <31584fd69731bf75967a0fa75302bd7402f6705f.1756511030.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/29/25 7:45 PM, Marcelo Schmitt wrote:
> ADAQ4216 and ADAQ4224 are similar to AD4030 except ADAQ devices have a PGA
> (programmable gain amplifier) that scales the input signal prior to it
> reaching the ADC inputs. The PGA is controlled through a couple of pins (A0
> and A1) that set one of four possible signal gain.
> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
> The PGA doc was inspired on ad7191 dt-binding and uses the same properies (but
> with different values) to describe the hardware.
> 
>  .../bindings/iio/adc/adi,ad4030.yaml          | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml
> index 9adb60629631..36fd2aa51922 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml
> @@ -19,6 +19,8 @@ description: |
>    * https://www.analog.com/media/en/technical-documentation/data-sheets/ad4030-24-4032-24.pdf
>    * https://www.analog.com/media/en/technical-documentation/data-sheets/ad4630-24_ad4632-24.pdf
>    * https://www.analog.com/media/en/technical-documentation/data-sheets/ad4630-16-4632-16.pdf
> +  * https://www.analog.com/media/en/technical-documentation/data-sheets/adaq4216.pdf
> +  * https://www.analog.com/media/en/technical-documentation/data-sheets/adaq4224.pdf
>  
>  $ref: /schemas/spi/spi-peripheral-props.yaml#
>  
> @@ -31,6 +33,8 @@ properties:
>        - adi,ad4630-24
>        - adi,ad4632-16
>        - adi,ad4632-24
> +      - adi,adaq4216
> +      - adi,adaq4224
>  
>    reg:
>      maxItems: 1
> @@ -64,6 +68,27 @@ properties:
>        The Reset Input (/RST). Used for asynchronous device reset.
>      maxItems: 1
>  
> +  pga-gpios:
> +    description:
> +      A0 and A1 pins for gain selection. For devices that have PGA configuration
> +      input pins, pga-gpios should be defined if adi,gain-milli is absent.
> +    minItems: 2
> +    maxItems: 2
> +
> +  adi,pga-value:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Should be present if PGA control inputs are pin-strapped. The values
> +      specify the gain per mille. For example, 333 means the input signal is
> +      scaled by a 0.333 factor (i.e. attenuated to one third of it's original
> +      magnitude). Possible values:
> +      Gain 333 (A1=0, A0=0)
> +      Gain 556 (A1=0, A0=1)
> +      Gain 2222 (A1=1, A0=0)
> +      Gain 6667 (A1=1, A0=1)
> +      If defined, pga-gpios must be absent.
> +    enum: [333, 556, 2222, 6667]
> +

It looks like these chips have some different power supplies
as well. E.g. V_DDH, VDD_FDA, VSS_FDA, VLDO. And there is only
REFIN, no REF.

>    pwms:
>      description: PWM signal connected to the CNV pin.
>      maxItems: 1
> @@ -120,6 +145,20 @@ allOf:
>      then:
>        properties:
>          adi,dual-data-rate: false
> +  # ADAQ devices require a gain property to indicate how hardware PGA is set
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - adi,adaq4216
> +              - adi,adaq4224

Could use pattern instead:

		pattern: ^adi,adaq

> +    then:
> +      oneOf:
> +        - required:
> +            - adi,pga-value
> +        - required:
> +            - pga-gpios

  	else:
	  adi,pga-value: false
	  pga-gpios: false

>  
>  unevaluatedProperties: false
>  


