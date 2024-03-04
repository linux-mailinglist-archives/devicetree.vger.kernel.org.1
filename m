Return-Path: <devicetree+bounces-48243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFCD87113F
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 00:42:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 788041F21529
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 23:42:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FEFC7CF29;
	Mon,  4 Mar 2024 23:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zPBKWWgE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F491E4A2
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 23:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709595716; cv=none; b=FRJfknCIuT+toeYBbkkWV1dHHc3WOJEA+UrUc5KSc4nVnKj3zi0I0CSNj+2dn2x/2tHYkSNL4bwpl/dHgQjnQhOY0J4L1Srq+YCY1eoCkhDzeguUSR/hw5l4SQyiLAHTB7Pwj52suWkWq/eBbNWCx6lIHe7QqU0b0L8RaaTe0+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709595716; c=relaxed/simple;
	bh=FGZ+g+yXX9FmR+4kqmKBbdGYp2zMsZDXvh3fmdGkWoo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CmnfxptcGOq9qJSgHk4jXksux6CLZqOIV88SbgBRoFyswH9D871IjgOgAg3qgOZE86FzHlhGxq+PEJP8257a8RbGhRhkUmocjWVIol8eq7lgd9Q7iPbYMFAksPUCD66Es3iauTL+RC/nEAv+g9hKfNM1wY8vYRvEdDS6iAfJz/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zPBKWWgE; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2d28387db09so60460911fa.0
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 15:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1709595712; x=1710200512; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZRtU7QBjY6IrxkqEXmlmGht4UQnYlyXEwuo3a/wm+0Q=;
        b=zPBKWWgEtL3JmyI54pwj6icCFqRSR7sAKKqDwyvvsPHfwKpUEaNithGmD6QpeNR5JC
         Wd5hc1UNJJUwMSWBj1zcM+jklWroVyDZaXuJbV3y8ro9nrKc4B4oQLpjXK7fD2d8MYNu
         6OOm80C9oOB3LKcCf+O0DvMpsMhO0qDjMRDzPlVU+EHgwE/LliEfzLUa+4QIieDYI8IU
         LewIkfxdD7t+sOoLegEmiTbXZCazicDIXy53+iCBvxzTEMetu6BXI0j2oZo5wAZYjZSL
         2wxjJO1ba0Tv1f2idMlTQ6oeLegGfNVKJpHIQcDritSEoCzV+7fHOtt1wUcZjvkZK7/a
         TPsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709595712; x=1710200512;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZRtU7QBjY6IrxkqEXmlmGht4UQnYlyXEwuo3a/wm+0Q=;
        b=Q4fVPVqJuYYWS2rW3y4EDCb6DYtlbS1c2IhJfdf4VewAeyAZct+MOwPcg2l9LA3e1n
         Ls0dQrBDShQWyrOhIJxryrAZ4sXtYC+408xroidaBZhjfwSuNUWpnp0sRiUPUyZcJ4KV
         r126N5+oCbgyMmeD2CFYGVRJhDK/2S28omB3K74mVy/GB/qUSTrsYU9TTK2boHjI7CJM
         Hfxa3XnCesFbK88tckWIjmNFvHbOBcf1eaRbiM04Q+sKM30TfXMK9HJJMX2B2vlF0I2/
         +HKCgYAhmluO0DGfhaTXIP0+BQduqlFx/ERNl1ccnZmIcWXBlk0gAXh6n4JlUw6+bd1F
         wSXg==
X-Forwarded-Encrypted: i=1; AJvYcCUem02LTA/wUjwqqs8oUbt7bZ+7o4As+s0uAnf1k/mLjnb7ZxRk2ih0YuqFOrdP2YNuYRb5teqMKhaGb01kDN3YQt/6/X5OQ8Y5yw==
X-Gm-Message-State: AOJu0Ywt6NT1AGJzazH0f+MBPFJsuIGvM96EEp5jW87R6Lcb6/AA68Ee
	Ugh6vSdcMct/z+LpLqgXsFPxYKYZpCNkKRWOWOLVQmntvNrp4F73FvD0a1ij5RHURR7KkpZ6iqx
	e0mMdA6AR7UHra12ctRXXyqRbIrTg2uTdwXy+tA==
X-Google-Smtp-Source: AGHT+IHbgTcVRkhv95GNhZscBR+wc6v5CNSfkAWE/obIKtZtUa64MtgWKnO9J1IQL79XEwZISRGlEn3MxtpGiP4Ke90=
X-Received: by 2002:a2e:99d5:0:b0:2d3:f095:ff2a with SMTP id
 l21-20020a2e99d5000000b002d3f095ff2amr86839ljj.47.1709595712294; Mon, 04 Mar
 2024 15:41:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228135532.30761-1-mitrutzceclan@gmail.com> <20240228135532.30761-2-mitrutzceclan@gmail.com>
In-Reply-To: <20240228135532.30761-2-mitrutzceclan@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 4 Mar 2024 17:41:40 -0600
Message-ID: <CAMknhBE1dO921gCudJMiH=HhMpgNsORwaejw7z-O2gCbLbrdCg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: adc: ad7173: add support for
 additional models
To: Dumitru Ceclan <mitrutzceclan@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ceclan Dumitru <dumitru.ceclan@analog.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 7:55=E2=80=AFAM Dumitru Ceclan <mitrutzceclan@gmail=
.com> wrote:
>
> Add support for: AD7172-2, AD7175-8, AD7177-2.
> AD7172-4 does not feature an internal reference, check for external
>  reference presence.
>
> Signed-off-by: Dumitru Ceclan <mitrutzceclan@gmail.com>
> ---
>  .../bindings/iio/adc/adi,ad7173.yaml          | 39 +++++++++++++++++--
>  1 file changed, 36 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml b/=
Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> index 36f16a325bc5..7b5bb839fc3e 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
> @@ -21,17 +21,23 @@ description: |
>
>    Datasheets for supported chips:
>      https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7172-2.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7172-4.pdf
>      https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7173-8.pdf
>      https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7175-2.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7175-8.pdf
>      https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7176-2.pdf
> +    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7177-2.pdf
>
>  properties:
>    compatible:
>      enum:
>        - adi,ad7172-2
> +      - adi,ad7172-4
>        - adi,ad7173-8
>        - adi,ad7175-2
> +      - adi,ad7175-8
>        - adi,ad7176-2
> +      - adi,ad7177-2
>
>    reg:
>      maxItems: 1
> @@ -136,8 +142,10 @@ patternProperties:
>            refout-avss: REFOUT/AVSS (Internal reference)
>            avdd       : AVDD  /AVSS
>
> -          External reference ref2 only available on ad7173-8.
> -          If not specified, internal reference used.
> +          External reference ref2 only available on ad7173-8 and ad7172-=
4.
> +          Internal reference refout-avss not available on ad7172-4.
> +
> +          If not specified, internal reference used (if available).
>          $ref: /schemas/types.yaml#/definitions/string
>          enum:
>            - vref
> @@ -157,12 +165,15 @@ required:
>  allOf:
>    - $ref: /schemas/spi/spi-peripheral-props.yaml#
>
> +  # Only ad7172-4 and ad7173-8 support vref2
>    - if:
>        properties:
>          compatible:
>            not:
>              contains:
> -              const: adi,ad7173-8
> +              anyOf:
> +                - const: adi,ad7172-4
> +                - const: adi,ad7173-8

According to the datasheets, it looks like adi,ad7175-8 should be
included here too.

>      then:
>        properties:
>          vref2-supply: false
> @@ -177,6 +188,28 @@ allOf:
>              reg:
>                maximum: 3
>
> +  # Model ad7172-4 does not support internal reference
> +  #  mandatory to have an external reference
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: adi,ad7172-4
> +    then:
> +      patternProperties:
> +        "^channel@[0-9a-f]$":
> +          properties:
> +            adi,reference-select:
> +              enum:
> +                - vref
> +                - vref2
> +                - avdd
> +          required:
> +            - adi,reference-select
> +      oneOf:
> +        - required: [vref2-supply]
> +        - required: [vref-supply]

Do these actually need to be required since avdd is also a possibility?

> +
>    - if:
>        anyOf:
>          - required: [clock-names]
> --
> 2.43.0
>

