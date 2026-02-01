Return-Path: <devicetree+bounces-261593-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oE8XK0aff2nPugIAu9opvQ
	(envelope-from <devicetree+bounces-261593-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 19:45:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 47866C6FB1
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 19:45:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 899143007AE8
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 18:45:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 304B42773FC;
	Sun,  1 Feb 2026 18:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2AL3TAQ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com [209.85.210.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71675224AE8
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 18:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769971514; cv=none; b=qo1sTES9cOM0NiJ0NI/MeX8hfv9eLDgHo+H8HwLxF1KSIAKlmEleEXPXBsS3cGIkkPdvITx5J505ct7+Hl3AQLjgXm4aJxx4gmptnglm49F7cdkQuZG0CJzY4hOrRQsnU6mgjeoyP+cLZ2LZ8VQt8vR0s4kXSenO78YZpW3HW+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769971514; c=relaxed/simple;
	bh=LQgQQD9AmuPzorHnhKvFOzsRBup414VCck4EdvcVNLQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m7l6jpDLmXPD/RrTalJV/8ORJzSsG3WVVvWKNAJPu9ZN0kXV5+E2PEMQFp6GZ/JK3A63x6vizdM3szFshNJdrV1/gUgHIZnjdEw9hRh52cpbX9YgtA8U6fGYKVo6hP8oLf8eyWzp0+mGFyUbHgNKTZVXTe4RPPBilNChM1ynbFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=2AL3TAQ3; arc=none smtp.client-ip=209.85.210.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f68.google.com with SMTP id 46e09a7af769-7d148dd3421so1419181a34.0
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 10:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769971509; x=1770576309; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Akl38qoflsvYXDrfSQS4UdKQ+8WjmfeZhRt65gKmSWg=;
        b=2AL3TAQ36k8/kME8b7gM6J0TI3/G9vFX5oPb6PJBT9JRSyY/Q8tplyzhCchG2AcCGX
         UiuRIameoV5ChfR4wMML1uF/xrr20bTweofEmoh6vXOurUsqyzQXOfHDhMO8dzFTAqE6
         d9XlFg2ySdpiiCEJnyQGrch2rBGIej32os8hwVbmdc+EdWsU9gUMrb/qB9fcOwoqTgTn
         lbJYGrCmB/bhY8/4aBSEA5ByRb0fY+OVXAD6AgEtxIp68zddTsbzTHHqm7kCHWsS+sH6
         A3wtfU+L0AhMjYQoo7kFdi2gt6C7oMJey9xJkEFAUnO6121QlbRQ5i26S3Lc526gO6y0
         sALw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769971509; x=1770576309;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Akl38qoflsvYXDrfSQS4UdKQ+8WjmfeZhRt65gKmSWg=;
        b=lxHPyG06z1rJWqv1Q5N/69yoM136d/+vxPo0RachqqFyBznhDpaNrj6bPneGgz83cD
         /n5+tuF5f6YcfeFLzEl/0y0dzbIBH6Z9wDOBM0iy6aRZZE08Yz73rhd7/Ulq9b0Q7zzP
         jlb6P2k24KkfbSjiMcp6JClAmlDcn/RMdIJFz1VQjHNtCMpKe5elJiwKHN87F5251kYt
         PlftUQICrI1gNRsd8fy3mpdRT+m1YYDTnU+37knnH6r5SU4vHrsD9BZjTOWSp5PfPSVA
         31T7VhjuDJ4ALOahoUDP9Qh+p0zZs3JbFWS370L9hKqaaJg+JYF4d2FDQsVJesJ2CWia
         YdPA==
X-Forwarded-Encrypted: i=1; AJvYcCWQg9hwYthaSoxF3MFn0zd4XIOSojewtnJpSwLb+sH/P+z/8QEVyd3d3BE9P8BL0rsLV8vhe9gDY3Tn@vger.kernel.org
X-Gm-Message-State: AOJu0YywatJk/CJoQIuBtIeuE639kRx6crMMoofZTTZOyxbVNQ6MK0x4
	QyIiGsRby/rh0YxrnHESGYso8MC/tcZ9c8DQfRMJz9fd+yywJAntLqNLhDcSGT2kU5E=
X-Gm-Gg: AZuq6aJfB4Yf2265XAGbSAhxCvzhcaKQQsVA9rIAvRJRsIZM6UpQW7PQ3FeWoXk2AMd
	A+KLbpXRbpyoKeccXL4LpvbvIi0EfPGkByW1xsHhHqxuB+BJ+M26wRqvMKXKc+YRVrUIUwwa5IU
	HfURNxjxmcDGpyMv0dY7+/VdHfNM6JkDWIwgTI5bnpW57p6nYyKu6zrsCsEN2zT3vZDNNEheCy1
	nIlN07ZPZt30xyJjQSSLQUcFVES5ra8slIfsoFobK2Fx3qDCsCg8g5vvHksXTgpn4OBe2GQ8Yz9
	LCmgSIt6x9hAZboSUsxSYlJA9IpRzot/w0Hs2ebK2iQJRaqH0a+uhiS4Y1oyWl7HoMBrFzCHvaW
	YU6QgYYGyLNpkOLn2n9OxFIEjITOMEfYPB969oI8RRsJaztOFLzj1f+yIkuUfUuhBVq6i3y2u/3
	mVAzijgcGxAaTFnH5GRXB1FLvGLlJllGaZnL8o+zMyunyKRYoiPYvJP03NeEl0
X-Received: by 2002:a05:6830:650b:b0:7c7:5458:75f8 with SMTP id 46e09a7af769-7d1a53284e5mr4480816a34.29.1769971509098;
        Sun, 01 Feb 2026 10:45:09 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:66ee:10f7:4858:7df6? ([2600:8803:e7e4:500:66ee:10f7:4858:7df6])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d18c67065esm9327775a34.6.2026.02.01.10.45.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Feb 2026 10:45:08 -0800 (PST)
Message-ID: <fe99b154-dd88-4fd0-86dd-a61db84d6bfd@baylibre.com>
Date: Sun, 1 Feb 2026 12:45:07 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: Add binding document for cm36686
To: Erikas Bitovtas <xerikasxx@gmail.com>, Jonathan Cameron
 <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Tsai <ktsai@capellamicro.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260201-cm36686-v1-0-4949a2a9ba63@gmail.com>
 <20260201-cm36686-v1-1-4949a2a9ba63@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260201-cm36686-v1-1-4949a2a9ba63@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261593-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,analog.com,capellamicro.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.60:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 47866C6FB1
X-Rspamd-Action: no action

On 2/1/26 11:03 AM, Erikas Bitovtas wrote:
> Document the Capella cm36686 ambient light and proximity sensor devicetree
> bindings.
> 
> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
> ---
>  .../bindings/iio/light/capella,cm36686.yaml        | 74 ++++++++++++++++++++++
>  1 file changed, 74 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/light/capella,cm36686.yaml b/Documentation/devicetree/bindings/iio/light/capella,cm36686.yaml
> new file mode 100644
> index 000000000000..5f0a585e3d87
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/light/capella,cm36686.yaml
> @@ -0,0 +1,74 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/light/capella,cm36686.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Capella cm36686 I2C Ambient Light and Proximity sensor
> +
> +maintainers:
> +  - Erikas Bitovtas <xerikasxx@gmail.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - capella,cm36686
> +      - capella,cm36672p

The cover letter mentioned that one is fully compatible with the other,
so we should have a fallback here.

  compatible:
    oneOf:
      - const: capella,cm36672p
      - items:
          -const: capella,cm36686
         - const: capella,cm36672p

> +
> +  reg:
> +    maxItems: 1
> +    description:
> +      I2C slave address of the device. Must be 0x60 for both cm36686
> +      and cm36672p sensors.
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description:
> +      Regulator that provides power to the sensor.
> +
> +  vddio-supply:
> +    description:
> +      Regulator used to power IO and I2C bus.
> +
> +  vled-supply:
> +    description:
> +      Regulator used to power proximity LED
> +
> +  proximity-near-level: true
> +
> +  capella,proximity-led-current:

Should use the standard -microamp suffix [1].

[1]: https://github.com/devicetree-org/dt-schema/blob/d16dc68b093e59ec4ae6a32a2e1179cb9cc0fada/dtschema/schemas/property-units.yaml#L86C4-L86C13

> +    description:
> +      Current for proximity IR LED (in uA)
> +    $ref: /schemas/types.yaml#/definitions/uint32

Then we don't need the $ref.

> +    enum: [50, 75, 100, 120, 140, 160, 180, 200]

Should have a default: value since this isn't a required property.

> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg

Power supplies should be required.

> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      light-sensor@60 {
> +        compatible = "capella,cm36686";
> +        reg = <0x60>;
> +
> +        vdd-supply = <&pm8916_l8>;
> +        vddio-supply = <&pm8916_l6>;
> +        vled-supply = <&reg_prox_vled>;
> +
> +        interrupts-extended = <&tlmm 113 IRQ_TYPE_EDGE_FALLING>;
> +
> +        proximity-near-level = <30>;
> +        capella,proximity-led-current = <100>;
> +      };
> +    };
> 


