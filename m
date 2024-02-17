Return-Path: <devicetree+bounces-43029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E7F858FF7
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 15:08:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF9BC1F21936
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 14:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E3797AE73;
	Sat, 17 Feb 2024 14:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zWuT6Tfu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4777A7A716
	for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 14:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708178882; cv=none; b=AOTPVzWIuqpF5mtJI1O38ms4NavoHvnrZ/E+QNaD//FbxIJXnM2NNngsyh2Vxa9h03zMcfK6GGydLgM7avcVIkC4mTBfTEA05rU6H3EAZvyKT6auh4WMQksBcTsUbCIBy2r1tqqB0DrOxfwF/CM6PrwtDZTIIWxU/jCGZuuTUiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708178882; c=relaxed/simple;
	bh=OaXg2ygsm17cnBYdKOfv3fBvdN5TpJheGeJX9h6FxL8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ttVV+QLZGq4UDlZpYnMZr+Si1mOYRcPPYDEu9z53OiYJuuauXT1an/m4Mae2qci2rotSjMd6LGoYWIj8L+Ze7ynL4PfIKi2WV/tX891tpvv2hTmrgYU27zv0tj+olfxV3aMrDphH7FT2YV22PhZT8Fb5Q9Qhr8Zm64t/uDu/U3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zWuT6Tfu; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-55a035669d5so4491732a12.2
        for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 06:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708178878; x=1708783678; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n7NC3tYoyPTBgemlrVbpnH3XzfX6cV2+ygPeW+YoIfw=;
        b=zWuT6Tfutdaw/MmaF5Cpp8CgZexRSOnei1omKPdEuFDBw5usoXY2DoYtHGbJlauVbi
         +1mfYvxEG1x/PCMCaB95/ifNgxXX5KBmvz7w88pSQ8BMUH3Uvf/WnOofPSoI5YgsoqnA
         rK7amVlprRleGRIH+7O7O3Ad8JZJ7PqTi24D8PP19K9c2lZB+BLi097/13WETlvjrC83
         xMTv+oqS1bLfcIRqUzv2MxJ2sNXevgaAutgFjPgVlsMPbdpdlNbN5YAYfJmlpV77tanm
         uToYtz7kCTKzi2HDw0YdpNf/Fn6orlgkUvwskN8wxaWhWUIMgiVf3gy5ESZSQYUh616D
         6W+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708178878; x=1708783678;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n7NC3tYoyPTBgemlrVbpnH3XzfX6cV2+ygPeW+YoIfw=;
        b=DURLLSIkSNTButU1xUps4xFCHcz8wlBkn5VR/035jH+kYFP+7o/2MXe0IFY8w2In70
         5+QwrczkCwmYW+S0pW1UV8nCBEfE1FvXsJ4fYLGWckH0EBe/uGjCFY/Kw6Z4rtOJxEOI
         s6rLmjUdLZ17lL0quXJPfOuNVvAyBfLeZZvAehOx5dfFSxTtlnR/YKIVGLHcUAvcKLYu
         JZiH5wAZmTbwye0p4PpNbsgRiDI6qwmAIWv1snYNPp7flS0mLSu9D+QhBngW4mEIcenj
         NXSoTlcUayblPz4f8j96EwGYN62jZUrDdZ8PnFlhDbfII/fzoW2lfGnb2AhsH44qda/B
         fT3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWGBQE9oQHMq25a3h+sbEV2eKECxSWSs9Ya3ZWau5oNbAI4XurIVirLWTwK01FPfzSJnCbu8LXIVe4G4he7AUJMmNZAECMIN7Qq7A==
X-Gm-Message-State: AOJu0YyJsDwEiFsrBv9CpQBWohJKhF6mxayg5pFMV0WYnf10Os0t1gm7
	9TiPMR4OpNCgvGRZPjb/BRUb+qW6srlLdbYHUdbQ65A7Y+MVJEn7BKLcaYxUuF4=
X-Google-Smtp-Source: AGHT+IE2CrfygV8ZRxLhm1A6C3Dn6YrV/nZhwB2YkGYorpjwvjIVZiVNrFrjOC0KpD1VYr31iz0q1A==
X-Received: by 2002:a17:906:2a91:b0:a3d:7532:15ad with SMTP id l17-20020a1709062a9100b00a3d753215admr5113208eje.39.1708178878679;
        Sat, 17 Feb 2024 06:07:58 -0800 (PST)
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id mp16-20020a1709071b1000b00a3ce8093f6esm1018500ejc.179.2024.02.17.06.07.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Feb 2024 06:07:58 -0800 (PST)
Message-ID: <b6182318-7d49-4002-b2c8-6701e6052510@linaro.org>
Date: Sat, 17 Feb 2024 15:07:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: i3c-hub: Add Renesas RG3MxxB12A1 I3C HUB
Content-Language: en-US
To: Steven Niu <steven.niu.uj@renesas.com>, alexandre.belloni@bootlin.com,
 linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org
Cc: zbigniew.lukwinski@linux.intel.com
References: <20240217131412.4145506-1-steven.niu.uj@renesas.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
In-Reply-To: <20240217131412.4145506-1-steven.niu.uj@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/02/2024 14:14, Steven Niu wrote:
> Document the Renesas RG3MxxB12A1 I3C HUB.
> 
> Signed-off-by: Steven Niu <steven.niu.uj@renesas.com>
> ---
>  .../devicetree/bindings/i3c/i3c-hub.yaml      | 400 ++++++++++++++++++
>  1 file changed, 400 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i3c/i3c-hub.yaml
> 
> diff --git a/Documentation/devicetree/bindings/i3c/i3c-hub.yaml b/Documentation/devicetree/bindings/i3c/i3c-hub.yaml
> new file mode 100644
> index 000000000000..8ff6ca172975
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i3c/i3c-hub.yaml
> @@ -0,0 +1,400 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i3c/i3c-hub.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: I3C HUB
> +
> +maintainers:
> +  - Zbigniew Lukwinski <zbigniew.lukwinski@linux.intel.com>
> +  - Steven Niu <steven.niu.uj@renesas.com>
> +
> +description: |
> +  I3C HUB is smart device which provides multiple functionality:
> +  * enabling voltage compatibility across I3C Controller and Target devices,
> +  * bus capacitance isolation
> +  * address conflict isolation
> +  * I3C port expansion
> +  * two controllers in a single I3C bus
> +  * I3C and SMBus device compatibility
> +  * GPIO expansion
> +
> +  Having such big number of features, there is a need to have some DT knobs to tell the I3C HUB
> +  driver which features shall be enabled and how they shall be configured. I3C HUB driver read,
> +  validate DT knobs and set corresponding registers with the right way to satisfy user requests from
> +  DT.

Ah, now I understand. Instead of doing proper schema for specific
device, you want binding for generic driver.

Sorry, that's a clear NAK and clear reason why Intel did not upstream this.

Bindings are not for drivers. Bindings are for hardware. Describe
specific device and that's it. Any non-device, but driver-related,
property is NAKed.

Best regards,
Krzysztof


