Return-Path: <devicetree+bounces-51477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1F687F71D
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 07:09:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C50E01F21541
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 06:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1BA45A4CD;
	Tue, 19 Mar 2024 06:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jhpo1iH4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB624597B
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 06:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710828550; cv=none; b=hrZY9jL5IkBs7SMFOl3jX/h73uvqPvnjfwozrf4+41GSZghDOFofkZFgDcL4D605DqRBqOAFPq3WsqyY2JNmH+3wroKUhZu4ja6BYP8mgR4a3U8idcvcpKtOobTtiRV2Km7WiJCfph/SzBea8ErO53ae883ZEDEFodEnTeqT7Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710828550; c=relaxed/simple;
	bh=0UoALV3oTKHOYA/01RTykxLYqJ4nozu99QRaAQrhylk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RXVoNWPZv0zApD5zJjt7zVLBICA3ua5+KPXO3FU4x/pQ1reK0C8DkKV3XXokVJKuV1ywZKvwdYF0W358alMeR87uwmLCZeabN+lMtCxJXQERbdvVHLS4hmZPlcs7suAw2m2k/6joD/Uu/xWttISXsm2N9PBqLr2DjkQd6GEjl6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jhpo1iH4; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-51381021af1so7390749e87.0
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 23:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710828546; x=1711433346; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y7i61v6CIwevZqarzC/fhvh3q01xqednJy49GtsErNE=;
        b=Jhpo1iH43VDAhgCOD6Nk+gz2dGXelGZ50d4x8btYWkQnc4Q2eScswJor2i3G/Pg+4K
         XIBTPsFWBKgyI12oD2koweOX0imeXKsBaJPLLWeHvTCFWG0mbmwrFTaifFRCHiKKnz++
         1To7nTKTTKP3q8PMnMPYIEI7R1Tr8TibVVBZYd6VxsUyHa6treH0IGPFJP0ms+I1Eutc
         CibJAwTbrHEj0YgSk/r1ZMRGstiv5BBeSAj0ztA4yWvPRHWAQiQ7TngCZJtI8xWPXryY
         Bz9Z6L58dfEv/iGoVVoHH3pMbEurmMoqNSgYNrOkj8OmXpGeLTCHAIabkNXmx/UFSxWB
         KaTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710828546; x=1711433346;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y7i61v6CIwevZqarzC/fhvh3q01xqednJy49GtsErNE=;
        b=j/3gidVePefxO/6mlmQ7fu2Ri1W2zDzVtX1jW4GeuBZP9g8Bw7pIcDH/qprUhbHULj
         iQjIQSDUR62UU4Auf0QpLiNN7ziWOAg9WAGost1qreXMFbPB0Y7g2CZa+tE4dzJzpogc
         ovG/p8yEQ79AOPvnPkkx4X0bZj3gb2BDR+Dtbo08B4rTnLSGWLT7UUoaaRCz62se5261
         znruU8F8KW5Zi2mEhCUbr7wV53Vx9ZCmNRvQyD9C5/MVdITezWU9ymGw4uwXSEnyxzhq
         jRpXQzaLLZ9Bi1L/4eUjcP/jhho7ONRajow9G97XTlhoisOZcCfYD6QATctQHVJOsZ3i
         omfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWve5Lncxzzq2aw4g6rStzskU3t2uRvdEmr1i7B2Z/kJ1qAVNADLrIxDkF6wWEIRQtpV+oI0gcZwQDnqtiJ86bop+5+G5TPM9FNmQ==
X-Gm-Message-State: AOJu0YymnFqQ9xPsHNDSET94jU+B0l7JGUKhdo5Gsz5eT26HkPIFwRWp
	n57B4TO1yzy8jUzIek5R9rHZ0xFW8tjCTo4QRlc40nzaCxkansKQqllps9eSue4=
X-Google-Smtp-Source: AGHT+IEegA7Z2ySsCWxj6xZW+93y5dMLugdD5YUUXXrXe6f5jKbe2+NkOwXbbkXP5yZiHQT3z5w7xQ==
X-Received: by 2002:ac2:491b:0:b0:513:cfcd:f25f with SMTP id n27-20020ac2491b000000b00513cfcdf25fmr6448102lfi.54.1710828545783;
        Mon, 18 Mar 2024 23:09:05 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id o20-20020a170906289400b00a4668980c12sm5616855ejd.182.2024.03.18.23.09.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Mar 2024 23:09:05 -0700 (PDT)
Message-ID: <3834dd0a-6dd0-45b1-8b9c-0c840aaf8cf2@linaro.org>
Date: Tue, 19 Mar 2024 07:09:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: media: Add bindings for
 raspberrypi,rp1-cfe
Content-Language: en-US
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Naushir Patuck
 <naush@raspberrypi.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>
References: <20240318-rp1-cfe-v1-0-ac6d960ff22d@ideasonboard.com>
 <20240318-rp1-cfe-v1-2-ac6d960ff22d@ideasonboard.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240318-rp1-cfe-v1-2-ac6d960ff22d@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/03/2024 16:49, Tomi Valkeinen wrote:
> Add DT bindings for raspberrypi,rp1-cfe.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  .../bindings/media/raspberrypi,rp1-cfe.yaml        | 103 +++++++++++++++++++++
>  1 file changed, 103 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/raspberrypi,rp1-cfe.yaml b/Documentation/devicetree/bindings/media/raspberrypi,rp1-cfe.yaml
> new file mode 100644
> index 000000000000..7b2beeaaab0e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/raspberrypi,rp1-cfe.yaml
> @@ -0,0 +1,103 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/raspberrypi,rp1-cfe.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Raspberry Pi PiSP Camera Front End
> +
> +maintainers:
> +  - Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> +  - Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
> +
> +description: |
> +  The Raspberry Pi PiSP Camera Front End is a module in Raspberrypi 5's RP1 I/O
> +  controller, that contains:
> +  - MIPI D-PHY
> +  - MIPI CSI-2 receiver
> +  - Simple image processor (called PiSP Front End, or FE)
> +
> +  The FE documentation is available at:
> +  https://datasheets.raspberrypi.com/camera/raspberry-pi-image-signal-processor-specification.pdf
> +
> +  The PHY and CSI-2 receiver part have no public documentation.
> +
> +properties:
> +  compatible:
> +    const: raspberrypi,rpi5-rp1-cfe
> +
> +  reg:
> +    items:
> +      - description: CSI-2 registers
> +      - description: D-PHY registers
> +      - description: MIPI CFG (a simple top-level mux) registers
> +      - description: FE registers
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/$defs/port-base
> +    additionalProperties: false
> +    description: CSI-2 RX Port

Only one port, so there is nothing to output to?

> +
> +    properties:
> +      endpoint:
> +        $ref: video-interfaces.yaml#
> +        unevaluatedProperties: false
> +
> +        properties:
> +          data-lanes:
> +            minItems: 1
> +            maxItems: 4
> +
> +          clock-lanes:
> +            maxItems: 1
> +
> +          clock-noncontinuous: true

Drop

> +
> +        required:
> +          - clock-lanes
> +          - data-lanes
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rp1.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/mfd/rp1.h>
> +
> +    rpi1 {

soc

> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +      csi@110000 {

Fix the indentation. You switched back to 2 spaces here...

> +        compatible = "raspberrypi,rp1-cfe";
> +        reg = <0xc0 0x40110000  0x0 0x100>,
> +              <0xc0 0x40114000  0x0 0x100>,

Just one space before 0x0

> 

Best regards,
Krzysztof


