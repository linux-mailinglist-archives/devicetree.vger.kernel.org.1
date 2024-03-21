Return-Path: <devicetree+bounces-52119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D294885657
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 10:22:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B74CD1F21D93
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 09:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 576A63BBC4;
	Thu, 21 Mar 2024 09:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gLADhlg+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6037F5472A
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 09:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711012947; cv=none; b=C51WiLNWKnvRob4dzTA4qE62Usn5vT8TzFX3YRGx3x/x586TeGwemQdH8Q46Oc6vLzBU+NbObMLv+UzHYoNJ72pQwmZ2hpoKP5cpgScUA/W8yy39UxHFKjK/wxTb+CcXmXvwP5P/HNsQvFQ7RmETanJOmsOxAiqIWwObsxpjyvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711012947; c=relaxed/simple;
	bh=NikxXZsM2oqTbE5plR9higq0t63PY1WgIdhQ/hAR2OU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CX7RMZ6tqnEOVz+XP/VoRrv0MvlnB9MnHHmAwsvM7p/h1+F0t6AOlAzEPNleOXWpdY+bHa+Jacr7qmy1LlY1PlDOU8u0h2m2uawGVyTKAPypFrA+U3pETYYbJs0l8m7k0YZbCx+8a5pjtwhm5mAwdKVMC+tW4R95PoH7r7z7cb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gLADhlg+; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-563cb3ba9daso721315a12.3
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 02:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711012943; x=1711617743; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=/iPjQm1UzBF1UXjG0k+m5CWg/5774BRFCdavfhr5n7U=;
        b=gLADhlg+wHH3SfkaZXhYNcnhvBtfXHnUljWhfcUwKdv/L5JnEmsxie2nU+Led4GXXc
         euGO0E//FoXEfpmgCX1ifGkmOyNxi8R/unGBjE7UGWlO/9D7FHrV3KwFocfz9oqj+OKr
         d3a/WTa+sfEi30UVgDawEK/EuH3UhMQZ1MFd23sXzUaYSGFqoSFyUoWq+tTiikPqlAC3
         utxRpj2fx7O7EwV/Y/yYkMc35Qjf9+5Iu3ObUmOgSchu6WVV/HfaEpSmoGGbxJOvhaGU
         zbt7YMH+TFZe6M3FH9A02umDWmLvE9g3wyLJ07bZL4EDmOKldrLEcaNe/UPoIGkKiO6q
         ZS1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711012943; x=1711617743;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/iPjQm1UzBF1UXjG0k+m5CWg/5774BRFCdavfhr5n7U=;
        b=Xg1QepUbE3xmeKBh01si9WZz+pICvrXsovojbAAA/6qkkMhC3+nRrRLZjV5V7YZ8PU
         h1lxBMwgcP0jTO2DY27dXcZMBABLpPA8CCXLmf0tjIjFKB8HBCpy16HU5Ya7s6qK6lb5
         d4H0Wl6jh6DIzIjcPyJsR9/et56u2LJlDAFJ1EriTTk6/UyWtegpBYEEM3+ZkD4MZbrr
         zj6KXoZuefN34wb6VlgU+vDh7uKCwZ9SVHy3DoTfOepnhXHuHzzU42gFIqlvjxYywvi/
         ZDkZnL0DCm0p9FKPIdp2k84M+lpsocotHW04vZMoiyRYaKig6DpbBi8YfEdBG0OPx5Uy
         RPgg==
X-Forwarded-Encrypted: i=1; AJvYcCUXx8tj/1AMvqV+HJGIKgzqAZvXGdibfcPywd/TsA7BWKWu64wmeQz/nnp1vLNi2ZllmTtmFuRMTaD/p8wTTX6VHFKhkMH4lDNpiQ==
X-Gm-Message-State: AOJu0Yw4VUa+Xr15sQE6f6BmjVu0Gf9v0ZxqptaDoDwRscH0sBAW1xG9
	bp2vBNfZ9i5jF1qmaARuyVqEm3OugBvdLAZOPjCXwXpU+TPxKlAZe+cwWhj+B1M=
X-Google-Smtp-Source: AGHT+IGGUjTg7TyWBeR15AbjcxSWvKQz0fPydSkbTTRBeM+EpDQLJEWwKW1x4raSc16x3Pb5jPbLBA==
X-Received: by 2002:a05:6402:528a:b0:56b:863c:2c92 with SMTP id en10-20020a056402528a00b0056b863c2c92mr5594394edb.34.1711012943596;
        Thu, 21 Mar 2024 02:22:23 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id p8-20020a50cd88000000b0056851310a04sm8231756edi.16.2024.03.21.02.22.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Mar 2024 02:22:23 -0700 (PDT)
Message-ID: <56225e33-d308-435e-b69e-2cb7dba7d57b@linaro.org>
Date: Thu, 21 Mar 2024 10:22:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: serial: actions,owl-uart: convert to
 dtschema
To: Kanak Shilledar <kanakshilledar@gmail.com>
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, daniel.baluta@nxp.com,
 Kanak Shilledar <kanakshilledar111@protonmail.com>
References: <20240321084328.200347-1-kanakshilledar@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240321084328.200347-1-kanakshilledar@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/03/2024 09:43, Kanak Shilledar wrote:
> From: Kanak Shilledar <kanakshilledar111@protonmail.com>
> 
> Convert the Actions Semi Owl UART to newer DT schema.

You are using ProtonMail, so just be aware that it might not be suitable
for public Linux discussions:
https://www.kernel.org/doc/html/next/process/email-clients.html#proton-mail

(no need to resend just for that)

> 
> Signed-off-by: Kanak Shilledar <kanakshilledar111@protonmail.com>
> ---
>  .../bindings/serial/actions,owl-uart.txt      | 16 -------
>  .../bindings/serial/actions,owl-uart.yaml     | 43 +++++++++++++++++++
>  2 files changed, 43 insertions(+), 16 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/serial/actions,owl-uart.txt
>  create mode 100644 Documentation/devicetree/bindings/serial/actions,owl-uart.yaml
> 
> diff --git a/Documentation/devicetree/bindings/serial/actions,owl-uart.txt b/Documentation/devicetree/bindings/serial/actions,owl-uart.txt
> deleted file mode 100644
> index aa873eada02d..000000000000
> --- a/Documentation/devicetree/bindings/serial/actions,owl-uart.txt
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -Actions Semi Owl UART
> -
> -Required properties:
> -- compatible :  "actions,s500-uart", "actions,owl-uart" for S500
> -                "actions,s900-uart", "actions,owl-uart" for S900
> -- reg        :  Offset and length of the register set for the device.
> -- interrupts :  Should contain UART interrupt.
> -
> -
> -Example:
> -
> -		uart3: serial@b0126000 {
> -			compatible = "actions,s500-uart", "actions,owl-uart";
> -			reg = <0xb0126000 0x1000>;
> -			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
> -		};
> diff --git a/Documentation/devicetree/bindings/serial/actions,owl-uart.yaml b/Documentation/devicetree/bindings/serial/actions,owl-uart.yaml
> new file mode 100644
> index 000000000000..ee0e508255b6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/serial/actions,owl-uart.yaml
> @@ -0,0 +1,43 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/serial/actions,owl-uart.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Actions Semi Owl UART
> +
> +maintainers:
> +  - Kanak Shilledar <kanakshilledar111@protonmail.com>
> +
> +allOf:
> +  - $ref: serial.yaml
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - actions,s500-uart
> +          - actions,s900-uart
> +          - actions,owl-uart

That's not what old binding said and you did not explain differences
from conversion in commit msg.


> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    serial@b0126000 {
> +        compatible = "actions,s500-uart";

That's not what was in old binding.

That's not what is being used. It does not look like you tested the DTS
against bindings. Please run `make dtbs_check W=1` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).


Best regards,
Krzysztof


