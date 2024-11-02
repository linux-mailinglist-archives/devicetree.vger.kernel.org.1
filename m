Return-Path: <devicetree+bounces-118324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C239B9C8B
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 04:48:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB5DBB21B5A
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 03:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE75913C689;
	Sat,  2 Nov 2024 03:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="glGHEmHu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1AF2184F
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 03:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730519309; cv=none; b=cN1E7wuA+i7VYWHSXAQuSKbMqj+7FPtjPQXBpsXMiGDJgHwUNVW/D4LwOgKbJgIgaa28dX8kGHWcew2/N8X/Z6e7p0rrlDNO85qwzLRFvwmO3iBvYgbXveDxvdGIjnEm+PEnccMLLvyVuP0LmJ2Y58CXMEcAhKXcEudn0H8T7jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730519309; c=relaxed/simple;
	bh=vP4zsOqNtMbKO2+jVJEXwJdYxLid9vzXb56DQWl1K9I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rd9mt5epscukHBjICEGHXFx7d7p/S1UKJW5djS2p5tLITd4q9uQUVYjQAfrP6G54BKjzPHg9gcsY5qKC41qz8JW+L13/UMeQhwtqqQfS6F2mMgjvLFLVFi+xLZYBFSlwsWinclD6lUsN2YN+MZcxRqUT7tnTycDP6Ml7YtGTFaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=glGHEmHu; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-83ab00438acso79631839f.0
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 20:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1730519306; x=1731124106; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cFAxfJPYMHZcgM/IbSJdK8jCoxixwBpatcLPEMEnlyg=;
        b=glGHEmHuBRHQ2w1lkMPygKEzcCZXom8snmPAObJGJ5Iobo59FC7HRyd8UQHrimEaJr
         0mpZE4h6EJ0e7g/6YA0NQcXoYY1PcdKYWQiB7P1IvZzpozmqcylsjw+tSjtZWtjrkIlZ
         loCNSltUi22qrUTACQRvDK4ceiDKzlNptknYNBA1VuprCwhMz6911rHwuoMHfhWL3tAq
         U0vc+3fhnvLGI+oB/71Aw0YUJQ9XxlFjumfsPp3sv3SRgkJ8tp7H0TSI2UHN3EXcVtJI
         McP8r+nP4nhmyy/jtPufH01wej5Xjs+gFp7Bz3LotSqFoniCLGhRPLupLP3T62Wzm5yX
         b/9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730519306; x=1731124106;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cFAxfJPYMHZcgM/IbSJdK8jCoxixwBpatcLPEMEnlyg=;
        b=jWf885FIcZaAfEu8tClrmEebFMvdC9th3Bnu+/7w5xbWn0/A+CmQLD/yL0ecB8zuRi
         Xek2NbbtE392JwNjgVGb201XYt24qLjciPlmBgwQms+2z++jQlesW+XnSJLzs4ekzYXa
         6ZNkPqsTo22/mUx/O/jraJXAb8Y+HnEIqux/qdO9tOdJxhfD+nB9x14vKvjuc7+EHtCg
         jkUYM/JIAsuYfkWFgHuVMG4lrUyrKtBuvMAvIQZC2GleKhVndWGbUDiKFRiukm7fu/bv
         hNNZMK1WFX1UxHmfab8/zhGQA9CsQjzuDcVrem+k1hnzSX4cYK/ohsH28dkjhedVSWjl
         4DaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtocD44jQ+JO58LoNyZE4FZ79rsIR6a8BulLvvq69AxCbHh2E/HgNYbu6BrCt6rA/XILYL8fiXTlqv@vger.kernel.org
X-Gm-Message-State: AOJu0YzmAC8vo8zz4O+hXlcbDfMAtBag7jjQS/DXNCXQ5VSTEEsTebiP
	EAcE0HHLAxdyFiYcZGu+XrBnU+PNT6+9lVsc0svzZ+BER03AeZI1dBPOIDITWrs=
X-Google-Smtp-Source: AGHT+IEjX1mR0HcedUZXdXQVrMhUH8jXN4cBozN2zssjtGKah59T7pHiVZuQPT9WVqvySZ4MDCEgRw==
X-Received: by 2002:a6b:7e44:0:b0:805:2048:a492 with SMTP id ca18e2360f4ac-83b7133cf86mr460121839f.6.1730519306354;
        Fri, 01 Nov 2024 20:48:26 -0700 (PDT)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-83b67bb57a5sm108525239f.28.2024.11.01.20.48.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2024 20:48:25 -0700 (PDT)
Message-ID: <846b4f2a-602e-431e-affc-0e995db5eee5@sifive.com>
Date: Fri, 1 Nov 2024 22:48:24 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: i2c: spacemit: add support for K1 SoC
To: Troy Mitchell <troymitchell988@gmail.com>, andi.shyti@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20241028053220.346283-1-TroyMitchell988@gmail.com>
 <20241028053220.346283-2-TroyMitchell988@gmail.com>
Content-Language: en-US
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <20241028053220.346283-2-TroyMitchell988@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Troy,

On 2024-10-28 12:32 AM, Troy Mitchell wrote:
> The I2C of K1 supports fast-speed-mode and high-speed-mode,
> and supports FIFO transmission.
> 
> Signed-off-by: Troy Mitchell <TroyMitchell988@gmail.com>
> ---
>  .../bindings/i2c/spacemit,k1-i2c.yaml         | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml
> 
> diff --git a/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml b/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml
> new file mode 100644
> index 000000000000..57af66f494e7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/spacemit,k1-i2c.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: I2C controller embedded in SpacemiT's K1 SoC
> +
> +maintainers:
> +  - Troy Mitchell <troymitchell988@gmail.com>
> +
> +properties:
> +  compatible:
> +    const: spacemit,k1-i2c
> +
> +  reg:
> +    maxItems: 2
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1

Looking at the K1 user manual (9.1.4.77 RCPU I2C0 CLOCK RESET CONTROL
REGISTER(RCPU_I2C0_CLK_RST)), I see two clocks (pclk, fclk) and a reset, which
looks to be standard across the peripherals in this SoC. Please be sure that the
binding covers all resources needed to use this peripheral.

> +
> +  clock-frequency:
> +    description:
> +      Desired I2C bus clock frequency in Hz. As only fast and high-speed
> +      modes are supported by hardware, possible values are 100000 and 400000.
> +    enum: [100000, 400000]

This looks wrong. In the manual I see:

* Supports standard-mode operation up to 100 Kbps
* Supports fast-mode operation up to 400Kbps
* Supports high-speed mode (HS mode) slave operation up to 3.4Mbps(High-speed
I2C only)
* Supports high-speed mode (HS mode) master operation up to 3.3 Mbps (High-speed
I2C only)

So even ignoring HS mode, 100 kHz and 400 kHz are only the maximums, not fixed
frequencies.

Regards,
Samuel

> +    default: 100000
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i2c@d4010800 {
> +        compatible = "spacemit,k1-i2c";
> +        reg = <0x0 0xd4010800 0x0 0x38>;
> +        interrupt-parent = <&plic>;
> +        interrupts = <36>;
> +        clocks = <&ccu 90>;
> +        clock-frequency = <100000>;
> +    };
> +
> +...


