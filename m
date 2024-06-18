Return-Path: <devicetree+bounces-77234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F4690DC68
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 21:29:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99A5B1F22E77
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 19:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A93811662F0;
	Tue, 18 Jun 2024 19:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yAsY1bgz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BFB17997
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 19:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718738954; cv=none; b=AE94gMF4pzMmEREbi2Q5zdH92Xg3ULrQqZhr5jq9zb2cthqBYJ9ceSiwdVUYACMFi6HwMchsfZ9XqWNemFVYmykulxSUWfAO8+bLrI51JmQJWgqePHeAbKNlE5rVqEPYLXdxmBU5PUnDTglYbJRKKfYsr25e8A7qO8ax+co1WMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718738954; c=relaxed/simple;
	bh=Vo/ChvJ5c1vw9wVwUUnHhQf8BAzz3uaknmjXcRaYAAg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R6RzCsCYJXWNmyQQ7hIhECsZF7xOk+AU+mVN54C8jDCUs+HkTcc6FnLrn0bYimDx44Cb80ChPnu+OyQTtstJ4L2J3UdHACr873PB5GWWoxRzgSIpNCTtMKzdHhrY6A/c+iH/xCzWIYBD+S8RC/JByiNOknwsHnsDBFzMRWmeOhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yAsY1bgz; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-6f8ffe1b65dso74019a34.0
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 12:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718738951; x=1719343751; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oFRTvbxqtB/0/UDPBFSeD7+QAUEvrLmKpZDhm9RWN2A=;
        b=yAsY1bgzH2omyNwF+VV0nbc6x7Bc+YC20YQ992GVnwsNbuNpnU1dZeEyntjXWVK8+k
         cNcg34n+1VFtRdR8i4fRfZIl8jeE9tLaxK32vBH7E0NOL+ARc/qKl0H3o6vhyeqgejO0
         bYUbEQhSl5ZhEt36jjGoK5TuTgVtqaToXcthPNqlu3Dq0tr5uxEgxQcjB4cls1SpUhMv
         C1kr/Ox9ir59qEhGsW2pmFZ9EYkGy6LGxhrc0kNzopwUpLIXbQIo71GhFiLdbln/ugtE
         egl8vzQiQhlFXIepeJz4hhFw8iF2Dj35mfEanCIo18eeOxg1+VQ6f3DSRMOpxKoO7wc6
         N70A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718738951; x=1719343751;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oFRTvbxqtB/0/UDPBFSeD7+QAUEvrLmKpZDhm9RWN2A=;
        b=ErIeftBhWqzAMbakQJ5kFXNQT/rEIDB3hNTgv21YLiwwDsJjeEPkjglgAlVhL3UT9p
         LkXLgdTiObkFh4XK4YMYWX28ophmLXfTFmJ/9Bg5SW0nVMBGqwAs72nr9hoGnZ414Zcc
         4QaxedLuh5ZU6SojLX+kqVeBECMBKUSo+jT24NMurvumBALDq0uqIBDfWz420V7TYa/3
         yyRk4OiT3um0uMbn1CNzS/TM8rfHzaiBv33DRKr/fMNiFv9ycw83WZO65Au+BXL5G/r8
         rS7YlyuJjdtt0t4tre2aSPIirlisO6Q1V9b7Abl05OtGAeznbQ/R7squ2aCfsRjEQ1nv
         BHUQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9xczaewMiB3egKDpKB+WHZDS2xAfW1nbrnuZ/I2gBn4hoCFE7PWMRZSZ5dqDO3k8pk1SXrfbcyB7wAJxW3iuzf3shPyqIsOsekw==
X-Gm-Message-State: AOJu0Yw4cV3IKqaSIK1JWF99nv6++lOzz7qGeTfQQ0EulpqcAtkQOOvD
	w3dyGsBh1pGrIaquHscvsNpBIDPE/Fqkd1oZdyRXBWp88A46wPbXxkEJP7QlTFY=
X-Google-Smtp-Source: AGHT+IEebphBJJ+mgvSlkPE2lSsrHZHkWZyhn5HMCLoaKSs0eiBV02SUrFrK9UczweiWl1Bn/Od8AQ==
X-Received: by 2002:a9d:5c06:0:b0:6f9:afdc:8554 with SMTP id 46e09a7af769-7006aa4e8e1mr360897a34.15.1718738951253;
        Tue, 18 Jun 2024 12:29:11 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-6fb5afa9fe7sm1917984a34.11.2024.06.18.12.29.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 12:29:10 -0700 (PDT)
Message-ID: <187da75c-9af3-42a9-b31e-be731aaf63d2@baylibre.com>
Date: Tue, 18 Jun 2024 14:29:10 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: iio: adc: add AD4695 and similar ADCs
To: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20240617-iio-adc-ad4695-v2-0-63ef6583f25d@baylibre.com>
 <20240617-iio-adc-ad4695-v2-2-63ef6583f25d@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240617-iio-adc-ad4695-v2-2-63ef6583f25d@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/17/24 2:53 PM, David Lechner wrote:
> Add device tree bindings for AD4695 and similar ADCs.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
> 
...

> +
> +  interrupts:
> +    minItems: 1
> +    items:
> +      - description:
> +          Signal coming from the BSY_ALT_GP0 or GP3 pin that indicates a busy
> +          condition.
> +      - description:
> +          Signal coming from the BSY_ALT_GP0 or GP2 pin that indicates an alert
> +          condition.
> +
> +  interrupt-names:
> +    minItems: 1
> +    items:
> +      - const: busy
> +      - const: alert
> +

Since the interrupt can come from two different pins, it seems like we would
need an extra property to specify this. Is there a standard way to do this?

Otherwise I will add something like:

adi,busy-on-gp3:
  $ref: /schemas/types.yaml#/definitions/flag
  description:
    When present, the busy interrupt is coming from the GP3 pin, otherwise
    the interrupt is coming from the BSY_ALT_GP0 pin.
   
adi,alert-on-gp2:
  $ref: /schemas/types.yaml#/definitions/flag
  description:
    When present, the alert interrupt is coming from the GP2 pin, otherwise
    the interrupt is coming from the BSY_ALT_GP0 pin.
   

> +
> +patternProperties:
> +  "^channel@[0-9a-f]$":
> +    type: object
> +    $ref: adc.yaml
> +    unevaluatedProperties: false
> +    description:
> +      Describes each individual channel. In addition the properties defined
> +      below, bipolar from adc.yaml is also supported.
> +
> +    properties:
> +      reg:
> +        maximum: 15
> +
> +      diff-channels:
> +        description:
> +          Describes inputs used for differential channels. The first value must
> +          be an even numbered input and the second value must be the next
> +          consecutive odd numbered input.
> +        items:
> +          - minimum: 0
> +            maximum: 14
> +            multipleOf: 2
> +          - minimum: 1
> +            maximum: 15
> +            not:
> +              multipleOf: 2

After some more testing, it turns out that I misunderstood the datasheet and
this isn't actually fully differential, but rather pseudo-differential.

So when pairing with the next pin, it is similar to pairing with the COM pin
where the negative input pin is connected to a constant voltage source.

> +
> +      single-channel:
> +        minimum: 0
> +        maximum: 15
> +
> +      common-mode-channel:
> +        description:
> +          Describes the common mode channel for single channels. 0 is REFGND
> +          and 1 is COM. Macros are available for these values in
> +          dt-bindings/iio/adi,ad4695.h.
> +        minimum: 0
> +        maximum: 1
> +        default: 0

So I'm thinking the right thing to do here go back to using reg and the INx
number and only have common-mode-channel (no diff-channels or single-channel).

common-mode-channel will need to be changed to allow INx numbers in addition
to COM and REFGND.

This means that [PATCH v2 1/4] "dt-bindings: iio: adc: add common-mode-channel
dependency" would be wrong since we would be using common-mode-channel without
single-channel.

It also means we will need an optional in1-supply: true for all odd numbered
inputs.

