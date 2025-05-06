Return-Path: <devicetree+bounces-173957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D923AABB91
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 09:44:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6C9B1882415
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 07:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47E81239E97;
	Tue,  6 May 2025 06:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HS5LkH91"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00EFA2367AD
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 06:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746512518; cv=none; b=hoK98HadlLBXtS0My31dK5l3nB7kKaK5KiIjBNxIQlygqLCKD2acLZduyOROtwj7B1Io3p1Bpt8BQz9K+4YaO6nYoF1hvuNJ9itdBEg0gLUTJWtp0YZrsze5Osm4Mw6C++x+DnhGlrALLweUGlT7lLP0l72j7148r5jhnvs1TCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746512518; c=relaxed/simple;
	bh=NzLq4I6O+lehBOTQsubbc/eaUZ1jS2F5u2fX4lbBbaM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pY2ozizwkqQFCIlQ+ISoS4vGZDgy88rlw1kNDo5Rf3mqYQ/f9mt3ZqrNDxAwl60aYvpGvHoWUYyTl13vnWOQR4u+GzNHCP98L+l8eI6Vq1jKhqTMoRsHDW3kaSvbT1c+loASrIO/1dnS+WY91+A3sDn9Eu4PVBjMAoHaZAgbyaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HS5LkH91; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-440668acbf3so6958345e9.0
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 23:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746512514; x=1747117314; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=0Kjb/TttNiNzGyr/ytCmfb3o5zEJFDSy3BE5dgg1H5o=;
        b=HS5LkH91QGJkZSZ3J/Sxs0W/33Qcc8bFLn4id4s0pCoLwuaozO2sjB/zTNP07w/n84
         HeIS4QGZNMrXct0NwG1UPIDHXuXuNCe6+kH2SwuVXlZF4udrhD0boHMDFlD1EPOz3OXk
         oaU6O9a31t2oXyfwCLfI+V+/ZXX+5AUO6kUA3KxXK2WGyNKb/+MvvuRHxYFh/PIPqJVy
         8tF7sVhgUZMDeakldUH0WfoYJrYUVj36mmz05aGnVLTzFvbcsQh/Hb080nmgaCBLEVil
         Wg98tEt524RanMVPZ9Ird0jTvYYU0r3836BHyGgFde55O4HfYVYm9Su1FQg17qLozgY0
         8lag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746512514; x=1747117314;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0Kjb/TttNiNzGyr/ytCmfb3o5zEJFDSy3BE5dgg1H5o=;
        b=lOIL7/ZVRXjRzpx/hhqGvOPEJP6v2p98PzMEzlp1zKtLLKrHenVr2Fw71vrkAZi2Mc
         ZGIEnUjdfj6i5MTzbH5Gc7WK9Nbt2HpX3U4r4/AagZ+chmQ04g1/cuBHH3tC0REjEfKP
         87Ix6IibJHydW4Ff1KjyUPiLdcwuiT34pb2O5NEdeTTnZr8rrgGzFbUrRrk2Idw2Z3ZE
         Ih3jxdj7fZ9aSnCVlHM3zDlGF6SkUDaliIsow7whVnuteHhyWhKN6AD2GIF21ZeKmLf6
         XP64bOfMCaOXFJcO0J9ak8iR90e/Fpow1TJhybG3wjCK07K9SeCDjrTjUi7o90qDvE9N
         NjZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVMKFhTdjVnqYw2IzmuRnbdOnfP4+zKOM4docIVI9a9h4uXlUAYNcR04jyr6saZAhe6/yI+F855GfdT@vger.kernel.org
X-Gm-Message-State: AOJu0YwvVC4U1ME3OkKWeux6nfQYnBWKHrmDqrwIH1E3i87Ldaffhpw+
	+qSyvI4VkfV0pAN4Nks513Ca3WmaFEWsOhWebCc0xhUoHgZdi/SKiyP/FcEZIgs=
X-Gm-Gg: ASbGnctqO2Lg+FUgVYUbl5RbhBbICWJ6jdSkAM5y1TgMgCcg/VDo3TJbUHq4XZKOMBH
	+SR3leRfCQsk/9rgPHg4r87Ht7IRz+szbuODA+7pIJw83QPhxI/GbQxdtpdbOBuP2HjHpmrRfod
	R1L+hMOf+cWz6CW8zKA3RIQqfpOGoTtxlmMNS6hLHKM5rxmRLO58b6mn+GxRxPTvbjcoyAOYzCp
	I4tqn3B2caclRbReziY3l5PU2EHX6PTsFwZpbsXRkFh/qehPpoD8077qi0ZtuauSKdJPtXntpeW
	n76FTtCSy0z1UahI2YAm4T/wrjLF1zu2OoU4faWvgE8dM8d7+C+2qtYf5z0=
X-Google-Smtp-Source: AGHT+IELjI3Gn1yK+5u7Xo2xK8aKT/Zb1GXZglDIhR21m6t9XMRpSYBZAODpkDppqO5g++JHIBBAwA==
X-Received: by 2002:a05:600c:1d8c:b0:439:8294:2115 with SMTP id 5b1f17b1804b1-441bbf4b11fmr50370655e9.8.1746512514205;
        Mon, 05 May 2025 23:21:54 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b89ed4d4sm154426665e9.19.2025.05.05.23.21.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 23:21:52 -0700 (PDT)
Message-ID: <cbf42385-9803-4bea-bf99-a6f31f1454f6@linaro.org>
Date: Tue, 6 May 2025 08:21:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: input: add Semtech SX951x binding
To: David Bauer <mail@david-bauer.net>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250505203847.86714-1-mail@david-bauer.net>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250505203847.86714-1-mail@david-bauer.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/05/2025 22:38, David Bauer wrote:
> Add device-tree binding for the Semtech SX9512/SX9513 family of touch
> controllers with integrated LED driver.
> 
> Signed-off-by: David Bauer <mail@david-bauer.net>

You CC-ed an address, which suggests you do not work on mainline kernel
or you do not use get_maintainers.pl/b4/patman. Please rebase and always
work on mainline or start using mentioned tools, so correct addresses
will be used.

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC (and consider --no-git-fallback argument, so you will
not CC people just because they made one commit years ago). It might
happen, that command when run on an older kernel, gives you outdated
entries. Therefore please be sure you base your patches on recent Linux
kernel.

Tools like b4 or scripts/get_maintainer.pl provide you proper list of
people, so fix your workflow. Tools might also fail if you work on some
ancient tree (don't, instead use mainline) or work on fork of kernel
(don't, instead use mainline). Just use b4 and everything should be
fine, although remember about `b4 prep --auto-to-cc` if you added new
patches to the patchset.


> ---
>  .../bindings/input/semtech,sx951x.yaml        | 180 ++++++++++++++++++
>  1 file changed, 180 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/semtech,sx951x.yaml
> 
> diff --git a/Documentation/devicetree/bindings/input/semtech,sx951x.yaml b/Documentation/devicetree/bindings/input/semtech,sx951x.yaml
> new file mode 100644
> index 000000000000..e4f938decd86
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/semtech,sx951x.yaml
> @@ -0,0 +1,180 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/input/semtech,sx951x.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Semtech SX9512/SX9513 based capacitive touch sensors
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  The Semtech SX9512/SX9513 Family of capacitive touch controllers
> +  with integrated LED drivers. The device communication is using I2C only.
> +
> +maintainers:
> +  - David Bauer <mail@david-bauer.net>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - semtech,sx9512
> +      - semtech,sx9513

Devices are not compatible? What are the differences?

> +
> +  reg:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +  poll-interval:
> +    default: 100
> +    description: |

Do not need '|' unless you need to preserve formatting. Same comment
everywhere.

> +      The polling interval for touch events in milliseconds.

Missing -ms property unit suffix... unless you are using existing
property from common schema, but I do not see any reference (and thus
unevaluatedProperties at the end).

> +
> +patternProperties:
> +  "^channel@[0-7]$":
> +    $ref: input.yaml#
> +    type: object
> +    description: |
> +      Each node represents a channel of the touch controller.
> +      Each channel provides a capacitive touch sensor input and
> +      an LED driver output.
> +
> +    properties:
> +      reg:
> +        enum: [0, 1, 2, 3, 4, 5, 6, 7]
> +
> +      linux,keycodes:
> +        maxItems: 1
> +        description: |
> +          Specifies an array of numeric keycode values to
> +          be used for the channels. If this property is
> +          omitted, the channel is not used as a key.
> +
> +      semtech,cin-delta:

Use proper unit suffix and express it in pF.

> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 0
> +        maximum: 3
> +        default: 3
> +        description: |
> +          The capacitance delta which is used to detect a touch
> +          or release event. The property value is mapped to a
> +          farad range between 7pF and 2.3pF internally. The delta
> +          becomes smaller the higher the value is.
> +
> +      semtech,sense-threshold:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        minimum: 0
> +        maximum: 255
> +        default: 4
> +        description: |
> +          The threshold value after which the channel detects a touch.
> +          Refer to the datasheet for the internal calculation of the
> +          resulting touch sensitivity.
> +
> +      led:

I think subnode is here not needed. This should be part of the channel,
probably.

> +        $ref: /schemas/leds/common.yaml#
> +        type: object
> +        unevaluatedProperties: false
> +        description: |
> +          Presence of this property indicates the channel
> +          is used as an LED driver.
> +
> +    required:
> +      - reg
> +
> +    additionalProperties: false

unevaluatedProperties instead

> +
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/input/input.h>
> +    #include <dt-bindings/leds/common.h>
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      touch@2b {
> +        compatible = "semtech,sx9512";
> +

Drop blank line

> +        reg = <0x2b>;
> +


Best regards,
Krzysztof

