Return-Path: <devicetree+bounces-62316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 47ADD8B0C26
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 16:13:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64744B22D45
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 14:13:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 254ED15E213;
	Wed, 24 Apr 2024 14:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OGHyWzxC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895C915B0E2
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 14:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713968013; cv=none; b=RKAFBPjUETvzB39IR0nxzs5rkJfM+F6lZ9kU8Og1hq0LpYHnXM7fbggEW2z7f/91sSBR6dpLs7JnZbvmvr+zFEAKeYuIf+/Xzl7W9e1rYwq5aq5Kwpfa96oH/2OZGcIEhLSmaugjXpAVqyfKAqR+GnqLI5J41L2sCpDqXIxyXio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713968013; c=relaxed/simple;
	bh=MHXJFG9R5z4UIBlsq3Q0t7pBbsb1GrwHCN4cLP+nv7g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kGJCTLhCgcohGmLrDOjxPjTGiQf6C8Ex1j+jG5V+ZRus8wSW6xTtHJjJcrNAIAUcTQY5x/d3vKHiJMv4ksc6g1RiHL94GZA0/XF+3/0T/TYbeUdpZSaqJgB5uRZV8U/35Mf6+S8zNelGPVG+VKx20xfTtSwkmqlUZ2Yo+MpqUII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OGHyWzxC; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-343b7c015a8so5831163f8f.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 07:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713968009; x=1714572809; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=upFSzmkQo8CgsapbEeLrrhLTa3hAx19iRLmed+yVuy0=;
        b=OGHyWzxCS4378pHSnpTDBvy5vHEqOnx8Dgip3otVfJx7fF8itfYVC6q3IeiayRCkVq
         ANnGgQwC5LSOJCAF3McyFQDNwin299FLfHvlFedkRBiIzmSQ7zUoMKcwqaoOyFIRgYh8
         g54nFmW7IXVxaRkyuW6C29naARonyibAychfeD+QjnUu7CI46D/2t8VSid+wgvS6egZj
         cJcNcX83wKi49KZda+xXmYROigOPyoqTeNQYu2+EVp4sH4ZhGaRpMBWf3XHBZsefJIUQ
         TJClg/IDVeO6PHlQBUNfaUEIhBKfTPAGMR2eO6Z+TGXl7r6SQpSQxPoAB9ybAdrdhi3B
         3bBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713968009; x=1714572809;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=upFSzmkQo8CgsapbEeLrrhLTa3hAx19iRLmed+yVuy0=;
        b=M45w0BlRCbIe4QwuGr6zgDSQEx5lwBMFXFOMKWHgzmTvT1Eg8rcvNR3jle517pOSYf
         /Ca50iJ0IlCa5uT+R/TyVQViC91MxN9o+R24iDWt/0IdGzCNOSKaLH77dIsDMaHq4VPZ
         ew6jfDKZpphJHh67z3DLoL+rciN6KLwoLJivI/sqbvuznVElmKn4OkY09NUteaTQXAjd
         xo0jm3V78eJOXoFeXXFPcxUoKzHckQrgmmRS9nxQsQuYcyZLp8kqUljEeMYE83k4BAwg
         QQxzppM4tunWERcz/M9oBO7V42sAiSogKAnDwV4oStR2dj0hTVQ7SLYl6S6eq6k4cPTa
         EJQA==
X-Forwarded-Encrypted: i=1; AJvYcCWbJP8uYJLt29A6c2LwxIsba+5Yxz1bEb+8shgxSmB69eo8XQWFi6WPvn4HiwWaGOKd7qZazP3JRQ/7YYwqnCBvTLugXxuvZcLE6g==
X-Gm-Message-State: AOJu0YzIhaTGz1gU25vijtmqqaQuE2PZ8gkt4BIFo7T2EZuI35v7/wYa
	pkCBbhISdu54sHGdpB3YLohuuiJHN3UKgt4BA5hb8TfU1rdw3g9OAo+WdbFEWu4=
X-Google-Smtp-Source: AGHT+IHEiUahRPYhpIwJapnRuhEnrBG7idILvKUBZXtAjNt+HU6ad3qEBAoDyUdtHUs6Ct0FJspW1Q==
X-Received: by 2002:adf:e28f:0:b0:34a:ce8b:7b79 with SMTP id v15-20020adfe28f000000b0034ace8b7b79mr1857054wri.1.1713968008891;
        Wed, 24 Apr 2024 07:13:28 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id k29-20020a05600c1c9d00b00418948a5eb0sm27885519wms.32.2024.04.24.07.13.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Apr 2024 07:13:28 -0700 (PDT)
Message-ID: <fd4072dc-7cd3-4d13-a15b-d63c675a5994@linaro.org>
Date: Wed, 24 Apr 2024 16:13:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/7] dt-bindings: clock: Add binding constants for
 BLZP1600
To: Niko Pasaloukos <nikolaos.pasaloukos@blaize.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Cc: James Cowgill <james.cowgill@blaize.com>,
 Matt Redfearn <matthew.redfearn@blaize.com>,
 Neil Jones <neil.jones@blaize.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20240424133241.19210-1-nikolaos.pasaloukos@blaize.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzTRLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+wsGUBBMBCgA+FiEE
 m9B+DgxR+NWWd7dUG5NDfTtBYpsFAmI+BxMCGwMFCRRfreEFCwkIBwIGFQoJCAsCBBYCAwEC
 HgECF4AACgkQG5NDfTtBYptgbhAAjAGunRoOTduBeC7V6GGOQMYIT5n3OuDSzG1oZyM4kyvO
 XeodvvYv49/ng473E8ZFhXfrre+c1olbr1A8pnz9vKVQs9JGVa6wwr/6ddH7/yvcaCQnHRPK
 mnXyP2BViBlyDWQ71UC3N12YCoHE2cVmfrn4JeyK/gHCvcW3hUW4i5rMd5M5WZAeiJj3rvYh
 v8WMKDJOtZFXxwaYGbvFJNDdvdTHc2x2fGaWwmXMJn2xs1ZyFAeHQvrp49mS6PBQZzcx0XL5
 cU9ZjhzOZDn6Apv45/C/lUJvPc3lo/pr5cmlOvPq1AsP6/xRXsEFX/SdvdxJ8w9KtGaxdJuf
 rpzLQ8Ht+H0lY2On1duYhmro8WglOypHy+TusYrDEry2qDNlc/bApQKtd9uqyDZ+rx8bGxyY
 qBP6bvsQx5YACI4p8R0J43tSqWwJTP/R5oPRQW2O1Ye1DEcdeyzZfifrQz58aoZrVQq+innR
 aDwu8qDB5UgmMQ7cjDSeAQABdghq7pqrA4P8lkA7qTG+aw8Z21OoAyZdUNm8NWJoQy8m4nUP
 gmeeQPRc0vjp5JkYPgTqwf08cluqO6vQuYL2YmwVBIbO7cE7LNGkPDA3RYMu+zPY9UUi/ln5
 dcKuEStFZ5eqVyqVoZ9eu3RTCGIXAHe1NcfcMT9HT0DPp3+ieTxFx6RjY3kYTGLOwU0EVUNc
 NAEQAM2StBhJERQvgPcbCzjokShn0cRA4q2SvCOvOXD+0KapXMRFE+/PZeDyfv4dEKuCqeh0
 hihSHlaxTzg3TcqUu54w2xYskG8Fq5tg3gm4kh1Gvh1LijIXX99ABA8eHxOGmLPRIBkXHqJY
 oHtCvPc6sYKNM9xbp6I4yF56xVLmHGJ61KaWKf5KKWYgA9kfHufbja7qR0c6H79LIsiYqf92
 H1HNq1WlQpu/fh4/XAAaV1axHFt/dY/2kU05tLMj8GjeQDz1fHas7augL4argt4e+jum3Nwt
 yupodQBxncKAUbzwKcDrPqUFmfRbJ7ARw8491xQHZDsP82JRj4cOJX32sBg8nO2N5OsFJOcd
 5IE9v6qfllkZDAh1Rb1h6DFYq9dcdPAHl4zOj9EHq99/CpyccOh7SrtWDNFFknCmLpowhct9
 5ZnlavBrDbOV0W47gO33WkXMFI4il4y1+Bv89979rVYn8aBohEgET41SpyQz7fMkcaZU+ok/
 +HYjC/qfDxT7tjKXqBQEscVODaFicsUkjheOD4BfWEcVUqa+XdUEciwG/SgNyxBZepj41oVq
 FPSVE+Ni2tNrW/e16b8mgXNngHSnbsr6pAIXZH3qFW+4TKPMGZ2rZ6zITrMip+12jgw4mGjy
 5y06JZvA02rZT2k9aa7i9dUUFggaanI09jNGbRA/ABEBAAHCwXwEGAEKACYCGwwWIQSb0H4O
 DFH41ZZ3t1Qbk0N9O0FimwUCYDzvagUJFF+UtgAKCRAbk0N9O0Fim9JzD/0auoGtUu4mgnna
 oEEpQEOjgT7l9TVuO3Qa/SeH+E0m55y5Fjpp6ZToc481za3xAcxK/BtIX5Wn1mQ6+szfrJQ6
 59y2io437BeuWIRjQniSxHz1kgtFECiV30yHRgOoQlzUea7FgsnuWdstgfWi6LxstswEzxLZ
 Sj1EqpXYZE4uLjh6dW292sO+j4LEqPYr53hyV4I2LPmptPE9Rb9yCTAbSUlzgjiyyjuXhcwM
 qf3lzsm02y7Ooq+ERVKiJzlvLd9tSe4jRx6Z6LMXhB21fa5DGs/tHAcUF35hSJrvMJzPT/+u
 /oVmYDFZkbLlqs2XpWaVCo2jv8+iHxZZ9FL7F6AHFzqEFdqGnJQqmEApiRqH6b4jRBOgJ+cY
 qc+rJggwMQcJL9F+oDm3wX47nr6jIsEB5ZftdybIzpMZ5V9v45lUwmdnMrSzZVgC4jRGXzsU
 EViBQt2CopXtHtYfPAO5nAkIvKSNp3jmGxZw4aTc5xoAZBLo0OV+Ezo71pg3AYvq0a3/oGRG
 KQ06ztUMRrj8eVtpImjsWCd0bDWRaaR4vqhCHvAG9iWXZu4qh3ipie2Y0oSJygcZT7H3UZxq
 fyYKiqEmRuqsvv6dcbblD8ZLkz1EVZL6djImH5zc5x8qpVxlA0A0i23v5QvN00m6G9NFF0Le
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240424133241.19210-1-nikolaos.pasaloukos@blaize.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/04/2024 15:32, Niko Pasaloukos wrote:
> Add SCMI clock numbers according to the Blaize BLZP1600
> SoC hardware specifications.
> 
> Reviewed-by: James Cowgill <james.cowgill@blaize.com>
> Reviewed-by: Matt Redfearn <matt.redfearn@blaize.com>
> Reviewed-by: Neil Jones <neil.jones@blaize.com>
> Signed-off-by: Nikolaos Pasaloukos <nikolaos.pasaloukos@blaize.com>

This goes to the patch introducing binding doc.

> ---
>  .../dt-bindings/clock/blaize,blzp1600-clk.h   | 77 +++++++++++++++++++
>  1 file changed, 77 insertions(+)
>  create mode 100644 include/dt-bindings/clock/blaize,blzp1600-clk.h
> 
> diff --git a/include/dt-bindings/clock/blaize,blzp1600-clk.h b/include/dt-bindings/clock/blaize,blzp1600-clk.h
> new file mode 100644
> index 000000000000..f1d59849a6e5
> --- /dev/null
> +++ b/include/dt-bindings/clock/blaize,blzp1600-clk.h
> @@ -0,0 +1,77 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * Copyright (C) 2023, Blaize, Inc.
> + */
> +
> +#ifndef DT_BINDING_CLK_BLZP1600_H
> +#define DT_BINDING_CLK_BLZP1600_H
> +
> +/* ARM SCMI clocks */
> +
> +/* BLZP1600 clock-gate numbers as defined in the hardware architecture */
> +
> +#define BLZP1600_CPU_CLK 0
> +/* clock-gates 1-6 invalid */

No, they cannot be invalid. IDs start from 0 and are incremented by one.
If you have holes, it is not a binding.

Drop the header or use it properly, so as virtual IDs.

Best regards,
Krzysztof


