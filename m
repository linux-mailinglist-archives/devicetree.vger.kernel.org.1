Return-Path: <devicetree+bounces-231700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66951C0FD8D
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 19:06:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD372480B5D
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 18:04:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA016314D16;
	Mon, 27 Oct 2025 18:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZRMh1we2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC622E6CA8
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 18:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761588264; cv=none; b=cmiNEMOPWExBFV1ISUxt9nZaSrcd81Qy3ijxdszHX3hzTyZH9ZAYsNnl4+tRLwuqVwnFxnTprrvt1mfjbpgdu9JW1f49SuG7B5p5Ri4TEupF++95qw8xow+xl3MLHobOc9WVymRaFYKyhkDItLibtU3AH0tf+ADvQ/kMLeVodog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761588264; c=relaxed/simple;
	bh=6gWdTMfQ/SknYRion7bPpp9wf5wuCuXCY4S7nMleIbg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZX8T6J0UKmNZASVJgUZgTwO+xuiTO3o/hxABoBDw/K/ceiB0LUxrs4pza8DWEKaz0a1+zT48RfTrelmQUoIKaIFF8x31GnZ9w5Hz8nr29553E8cYNtIa7dO16E6uE+2g086LaxuY9o75hDKCR3Jlk2bn8xcllM4a/u+4b4b0/Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZRMh1we2; arc=none smtp.client-ip=209.85.217.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5d61f261ebfso2237332137.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761588262; x=1762193062; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7gXv3hz0xqp/f7k2sKRT8AGUrr1BgpZqId67aBhRxKc=;
        b=ZRMh1we2uCRPWuz+8AHISTgGaBpgUmyKjdOtc7U/4gzMPYeZuxupmkcWrsVH4bwhk9
         FIuZc+twamwI/N7qvyPw+CSZ+BRuZ1HW0NhZHGQHTptwJ/Cub3GkevUisM6KE9s3pV4g
         y1eWqgLcOFMA+m4qyC5+9GKHxzJMyVUbcY7/GOyh1ms9wHYo/bGcMZVC0tRulpBngDYM
         SVLOFeTkt84czVrFF6aZj4eNonIlzmKF3mbjgH8xFdzgM+Z6z+GJu9AOGlQ3FFRYjV2W
         7Cn5RE3ZFHbLw2rfSG126iZvM2cgZUL8UB3ESbbtbjBwvZjqXi2C1ZwfnUZl1xPouS0k
         yCEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761588262; x=1762193062;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7gXv3hz0xqp/f7k2sKRT8AGUrr1BgpZqId67aBhRxKc=;
        b=sfIpYgavHn/ZTe5LkffFTrtufhhmDDzgN+8pIBhNm6JhFsZw7N64Wpajf5EfJi+RY8
         +n728bQ3HU980rYn1SqVS+LvLs7wYjrUI/ZzG6uhDeQH75CsdhelnVMh6xdurLgfd5cW
         eSTbjGtQa2fqfJnh/v6LnWtyv3ciTYq4IlN1Xqu2AnZFSk9OlCvTmJkUGhHNk4FQFHL7
         G09aHX6e7vnIfVoC8ovreGs8DdW1nu2fJhuHvxAPNa4Y9IJX+k2h4064ninAUEiaCon+
         WspfwlfHY+2ah48wrG7goXsOBu8RuufoIlMRfM+Hl4mlDCAjpEUJ06+ds5TxzXXV6rid
         mGqw==
X-Forwarded-Encrypted: i=1; AJvYcCUX3J3Ll3DqNeIxIvRhXKB7yAFElELrVHAgFr5XtNgXgatsbofwz+1X9BVxwokIuYbyz1FICc1J7zFB@vger.kernel.org
X-Gm-Message-State: AOJu0YyLs7ufMvLoEKrWySTvD/vrvytHjIzhRrfCe0d3YpBuTYpcy9bH
	nvbg6pOzqPL6LiQBK8nOFTEj7jYzI6pKVt8LHst+mUggSJxLH7HPKk2o
X-Gm-Gg: ASbGnct8HP7vyZA+CsiOXabH9r59/k0BSnqx6ppmfBLyoLSAVMCleuwP5wOSkD0NSqk
	r+Eo4OoHDgSpcLnm7bIbsg2WR/nyZ58BsT1zD0+9VJmnf0NXFQ6t5W4RUIrljMvRYP1zJl2dpIU
	5qmWzPBmOv0ZjdveV8hvF22ynmvamttSxwNCR9XTOaeYdMlRjWGF4u27kiP8qL14vr8i3cgK7sO
	zfSQf25bKscrgz9fO2/eC6wenzI2NEyEeWaLE/ZHzw+1LrubQQFEg1EJj7NTPzXmrczL5bSXK5l
	xc7ZmTxC+t9f0MgjfaN5jY+04/RPgROskKfEA2r53Of7SEftmeiDEnWyRAqK7b3pE1xz0HCpm8D
	mDQlLCXfr4SvNSuQVfbKMOhp01StMHbWVzFewOr1qGZ+FcweoACjgwjWXU/QpSoCX3lGZr5d2v8
	1V+cwT6+utE1bDyFhaNtCFhQCgGO0YWfd1PI5Nfg==
X-Google-Smtp-Source: AGHT+IGfuNL47CB8BqWQlli2IWxIwUYM0B0XFQwY9e9lve8a3B49aif6vcJ8NDckDpi0OWKRSm19Xg==
X-Received: by 2002:a05:6102:f09:b0:5d5:f6ae:38c4 with SMTP id ada2fe7eead31-5db7cc4fd8cmr279495137.45.1761588260294;
        Mon, 27 Oct 2025 11:04:20 -0700 (PDT)
Received: from [192.168.1.145] ([104.203.11.126])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-934c404f64dsm3120082241.11.2025.10.27.11.04.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 11:04:19 -0700 (PDT)
Message-ID: <2efb85cb-5373-4da6-972b-8e79952cbc33@gmail.com>
Date: Mon, 27 Oct 2025 14:04:16 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt_bindings: sound: ti,pcm186x: convert to dtschema
To: Ranganath V N <vnranganath.20@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, khalid@kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org
References: <20251026-dtbs-v2-1-cd3b713a288e@gmail.com>
Content-Language: en-US
From: David Hunter <david.hunter.linux@gmail.com>
In-Reply-To: <20251026-dtbs-v2-1-cd3b713a288e@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 10/26/25 13:26, Ranganath V N wrote:
> convert the Texas Instruments PCM186x Universal audio ADC bindings to DT schema.
> 
> Signed-off-by: Ranganath V N <vnranganath.20@gmail.com>
> ---
> Convert the Texas Instruments PCM186x audio ADC bindings to DT schema.
> ---
> Changes in v2:
> - Fixes as per the reviews suggested for the v1.

It's better to list out the actual changes instead of only making
developers go to v1 to see which feedback you actually brought into
version 2. > - Link to v1:
https://lore.kernel.org/r/20251021-dtbs-v1-1-493c1aa253bc@gmail.com
> ---
>  .../devicetree/bindings/sound/pcm186x.txt          | 42 ---------------
>  .../devicetree/bindings/sound/ti,pcm186x.yaml      | 61 ++++++++++++++++++++++
>  2 files changed, 61 insertions(+), 42 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/pcm186x.txt b/Documentation/devicetree/bindings/sound/pcm186x.txt
> deleted file mode 100644
> index 1087f4855980..000000000000
> --- a/Documentation/devicetree/bindings/sound/pcm186x.txt
> +++ /dev/null
> @@ -1,42 +0,0 @@
> -Texas Instruments PCM186x Universal Audio ADC
> -
> -These devices support both I2C and SPI (configured with pin strapping
> -on the board).
> -
> -Required properties:
> -
> - - compatible : "ti,pcm1862",
> -                "ti,pcm1863",
> -                "ti,pcm1864",
> -                "ti,pcm1865"
> -
> - - reg : The I2C address of the device for I2C, the chip select
> -         number for SPI.
> -
> - - avdd-supply: Analog core power supply (3.3v)
> - - dvdd-supply: Digital core power supply
> - - iovdd-supply: Digital IO power supply
> -        See regulator/regulator.txt for more information
> -
> -CODEC input pins:
> - * VINL1
> - * VINR1
> - * VINL2
> - * VINR2
> - * VINL3
> - * VINR3
> - * VINL4
> - * VINR4
> -
> -The pins can be used in referring sound node's audio-routing property.
> -
> -Example:
> -
> -	pcm186x: audio-codec@4a {
> -		compatible = "ti,pcm1865";
> -		reg = <0x4a>;
> -
> -		avdd-supply = <&reg_3v3_analog>;
> -		dvdd-supply = <&reg_3v3>;
> -		iovdd-supply = <&reg_1v8>;
> -	};
> diff --git a/Documentation/devicetree/bindings/sound/ti,pcm186x.yaml b/Documentation/devicetree/bindings/sound/ti,pcm186x.yaml
> new file mode 100644
> index 000000000000..306905eebd68
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/ti,pcm186x.yaml
> @@ -0,0 +1,61 @@
> +﻿# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/ti,pcm186x.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments PCM186x Universal Audio ADC
> +
> +maintainers:
> +  - Ranganath V N <vnranganath.20@gmail.com>
> +
> +description:
> +  The Texas Instruments PCM186x family are multi-channel audio ADCs
> +  that support both I2C and SPI control interfaces, selected by
> +  pin strapping. These devices include on-chip programmable gain
> +  amplifiers and support differential or single-ended analog inputs.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,pcm1862
> +      - ti,pcm1863
> +      - ti,pcm1864
> +      - ti,pcm1865
> +
> +  reg:
> +    maxItems: 1
> +
> +  avdd-supply: true
> +
> +  dvdd-supply: true
> +
> +  iovdd-supply: true
> +
> +  '#sound-dai-cells':
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - avdd-supply
> +  - dvdd-supply
> +  - iovdd-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        audio-codec@4a {
> +            compatible = "ti,pcm1865";
> +            reg = <0x4a>;
> +
> +            avdd-supply = <&reg_3v3_analog>;
> +            dvdd-supply = <&reg_3v3>;
> +            iovdd-supply = <&reg_1v8>;
> +        };
> +    };
> 
> ---
> base-commit: 211ddde0823f1442e4ad052a2f30f050145ccada
> change-id: 20251021-dtbs-3a31f699c461
> 
> Best regards,


