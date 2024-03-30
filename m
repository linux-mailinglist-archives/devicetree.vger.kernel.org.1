Return-Path: <devicetree+bounces-54793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 990918929FB
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 10:19:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 218831F22146
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 09:19:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B186C2E6;
	Sat, 30 Mar 2024 09:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="leTYvJLk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841B1BE6F
	for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 09:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711790347; cv=none; b=Vj1TqZA54qfXIuBsMcwvJDavzlgcmP8TPbmq4zST9shLrnIiz5AGIqJg/YjMTqanW/mHxLF2+XNxpcvxeN9F9Eajgk74H7dPLS8kqAgkoZV2nc7OZwwK7Zj5Zn2C6DSPQNOuDIfleUV4f/NfI+iblCs8ZbKGCfhWMeJ5qD6AqTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711790347; c=relaxed/simple;
	bh=0suOraaECYMo15P8nmZkCgdQpYtmA7vb1nvVoPqV31I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FzUdBEiTwbQoP5Q86tQFdBHKbCK7aqjHLk77mXd6O14ni8sXIezhMZjh80eVCU9nzzI9JTfl3LShe8I3HxrMsadkigbnr/7raeAuWrVwF9UYMTBR0vAG/cKRc9g/kLkoG+xMu2mU2MbFDcG9b/UJst6LjorUak85pxyuA29BMDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=leTYvJLk; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-41558d2a06cso1844435e9.3
        for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 02:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711790344; x=1712395144; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=w1mk8zBRQYHVvICPsS2N4XIcQtvQjqHklPuab2TK6cg=;
        b=leTYvJLk4BTuf1OnA1gmkenO7UefmrXyR7vpBFKtcchvjE0BKWtYXy/F6udNlv4NmC
         mzq2/Urc4My3Cm5MZXbrA5aBDdzXSclBjJPuQB7Vxu7co7IQo5xNdJle+tS1ql7rcLU3
         XhrtS2g5o1/v0qzmj86IsBS8K5gJKgdze29YpfEHOpyrX4ccxkv5YTU9lFyvqXZXnqdE
         D8acZbB+fnrZfxLXjwUlRFezCUE9d5LVwNXcGU9eW+hvSi4Y5reioFw+2ErBO1XF9EG7
         AcHlB5ffDg2SDlv9zxeEQ1iZ35fej/lTEskQmYYWBSK9tT2Vb2BfTXEWzSfL65QJUcN/
         4Rkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711790344; x=1712395144;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w1mk8zBRQYHVvICPsS2N4XIcQtvQjqHklPuab2TK6cg=;
        b=BG5lKg5Ul09GOMIwvWKiIqAU5Qk1ef04ECC1sejcKw+1Q3IVu5fvfQ8hBlYrWgvPaX
         8keKhXXHLIiWXILzH5D60a5R0H1nLHzEOWQM6KX4R3kK0WAb4p7ooOIY9hEH59WsuBa2
         Ibj4lD4WXpSuoQkruwbHfZ6D7X9TJbCfe2Dk71s0yIAcDAvxsNGzshXj4AzQKJKTN0Kp
         NOJl4AwNZGU/c7tF6e2nG3qabFBUpSorzGO+wcL2gm6qnaMYS+Y6xo6zRtcgkXalRiai
         7N6fuOBBuSJCWTrm/7Xg1SHbk1EzPm8qchD2nHTIe+POwRav5tmfCp1C6MGmzPXePP3s
         6Thg==
X-Forwarded-Encrypted: i=1; AJvYcCXv7SkdgiThZ44ESuD0ZfiaL8hlKx1LT5YlO3H1Nl3T/RzC5piEvpb1+3vv/G6VqPs5dTCYpexmEONbmoiuwAkkXlbv8vVDKQyJGA==
X-Gm-Message-State: AOJu0Ywr6qzJIXYf2Z/BzY0HE15ybdAvY86zIYwf+N/WdZCojV6AotAu
	hvGhoVq/CwnVZG6MuDaTgg9iNMgs5tuBwF0v26LktuOF6feMPt5RjqxevFhFTIs=
X-Google-Smtp-Source: AGHT+IGGh6i7z5ymu7YxZxlPO5JyJtK4NDilT7dbif1JUNG5Nd+SS9lsd02nT+psaFpiT2qAGBvO2g==
X-Received: by 2002:a05:600c:2216:b0:414:8889:5a39 with SMTP id z22-20020a05600c221600b0041488895a39mr3050994wml.17.1711790343822;
        Sat, 30 Mar 2024 02:19:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id g16-20020a05600c311000b004148670f9ecsm7985933wmo.23.2024.03.30.02.19.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Mar 2024 02:19:03 -0700 (PDT)
Message-ID: <196f906e-2af5-48ed-85c7-8589becd480a@linaro.org>
Date: Sat, 30 Mar 2024 10:19:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: panel: Add LG SW43408 MIPI-DSI panel
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Caleb Connolly <caleb.connolly@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Caleb Connolly <caleb@connolly.tech>
References: <20240330-lg-sw43408-panel-v1-0-f5580fc9f2da@linaro.org>
 <20240330-lg-sw43408-panel-v1-1-f5580fc9f2da@linaro.org>
Content-Language: en-US
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
In-Reply-To: <20240330-lg-sw43408-panel-v1-1-f5580fc9f2da@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/03/2024 04:59, Dmitry Baryshkov wrote:
> From: Sumit Semwal <sumit.semwal@linaro.org>
> 
> LG SW43408 is 1080x2160, 4-lane MIPI-DSI panel present on Google Pixel 3
> phones.

... Few nits, which could be ignored, and one thing which is blocking -
missing example.

> +
> +maintainers:
> +  - Caleb Connolly <caleb.connolly@linaro.org>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  This panel is used on the Pixel 3, it is a 60hz OLED panel which
> +  required DSC (Display Stream Compression) and has rounded corners.
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: lg,sw43408
> +
> +  reg: true
> +  port: true
> +  vddi-supply: true
> +  vpnl-supply: true
> +  reset-gpios: true
> +
> +additionalProperties: false

This goes after required:

> +
> +required:
> +  - compatible
> +  - vddi-supply
> +  - vpnl-supply
> +  - reset-gpios


Please add example DTS.

Best regards,
Krzysztof


