Return-Path: <devicetree+bounces-47187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3021286C608
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:50:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C1021F24E33
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67634627FE;
	Thu, 29 Feb 2024 09:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hK+OtORs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF636214F
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709200250; cv=none; b=modrwUW8jj97uiZ8tOpdkxA8yocKLiSiQipEnfix4k3x5Uu7BlFgMKLvv+cCMHaZrvfr4WxhCFxcl+HftJ9xvuh5OsY6t6vsYS3rRBU+mGzqoAJ6UA3EP07pwYX2hvsZOkwx0r0uky8B0FNM4yZX/mY3liw0PgbVD0QOrZkCGPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709200250; c=relaxed/simple;
	bh=ZLYKSYZ1kJqcEltCRr0rrWAJVn/FybxoTygQioDYNMk=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=XyoDo6Hq8iC/R5ubALW+9tpJqhA8y1MlWH9DSZsnX8zt0VBqJw4IxgvL8GT3xiBrvfMg9phydZh0d2As4J00zCuurrHHYVdSITNh4o5CJIP+3Elo2u4j6HNZhx/Cg7wqiNu+9FwSt609Qri07LPjGRCgVljj2pxgO6MyTHAbUr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hK+OtORs; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2d28387db09so7187341fa.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709200247; x=1709805047; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=AIUhkXCTPpnQEOPCzj4c9i5kQdgIyIpQC3UDbaTUK7I=;
        b=hK+OtORssZIyovJrAXKaLmRtzBsXe01XE0P8Xy+oh5tqwhTXtdmRTWLBc9OiLZFDty
         SLnYipSHK+5GnTjDhhMmZmXkB8VmcQSlPe2h2J+XwNOffxvrwq4C+cdvIdx16x7cVBP7
         gFl5htIAG/9tLfOTNfW0NUhide8f7wTrr+5ftdaItLszLpgCPpSn5kZnyAWxuaUoylbr
         anUtknebNOYrnkTAUGpIsS1OjdZBjLIWdjDPQAuaqMg5cWtDsY7gQ42/O5498qYYD59o
         0RuoyYq2PQfHk152V5CN6hT6Ok+0FpUBLBkyb5Mh+MJVBZ/qyImPK6w+ULqW59fhZW2s
         SRFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709200247; x=1709805047;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AIUhkXCTPpnQEOPCzj4c9i5kQdgIyIpQC3UDbaTUK7I=;
        b=cTte8GzAm3idgiaWLwQwhOqm4iO9B4rd3wKxRpelcgYdJ/anYf+NB5/nSVa3gJ2GKx
         hUQ+/f8rN95vx8+w1FNUh0wWMTy/9z/Rqa2QDk9SH/baafvlSlb7+3Uh7mxoOzcsNPFh
         FjUjUu8AED7PC08tjoobR1mC+QzmGQfF6kRV4p2nAySfOcobnruXaqeetpcp9pLGiVqt
         pJSEcYrXLo0iFuuqkzp3iJLuI68C0sO45kdv8cYDpd0dWO4Z6k5ZFHfDTBo4kdJX/fnR
         U5Xhf9I7QwzhZB6860jIO0+xro1DTrO7sTXw1zju8S8E9hovnhfOojqzdO+uP8LB3KC+
         GMhA==
X-Forwarded-Encrypted: i=1; AJvYcCWnyjTG+uHmF+Ctlj3YwrJjq4hl4LQNaTohIH+MT+2auYAUZ8WMieaEWdJ02yQoZrjRnmNd0YhQS6zs4IqIzsIKVsfoBJr4NJWyjA==
X-Gm-Message-State: AOJu0YzCmZboX+os5BfSopOLQ6uPDDoY2gJiUXQahLyYU0+FyyYo+MKN
	mh6aUKDsJcLvEny9VyEhvGfsI21qGx58lftO7cgSDzuDNM7v3i0xYChB+weUSjIqaaom79xpkwp
	z
X-Google-Smtp-Source: AGHT+IHvh3itER27jPG9fApHuFSp7b//RYpouW6I4ApoDPBLpaa8ZbJuzoz7nJ3Ps5hDMsqrrV8S8g==
X-Received: by 2002:a05:651c:c1:b0:2d2:c98b:fe6e with SMTP id 1-20020a05651c00c100b002d2c98bfe6emr1108648ljr.33.1709200247115;
        Thu, 29 Feb 2024 01:50:47 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id x18-20020a2e9dd2000000b002d11d0e37b5sm159862ljj.130.2024.02.29.01.50.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 01:50:46 -0800 (PST)
Message-ID: <680cee5f-57c2-4056-8150-e1bfbac2619d@linaro.org>
Date: Thu, 29 Feb 2024 10:50:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] dt-bindings: interrupt-controller: fsl,intmux: add
 power-domains
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Frank Li <Frank.Li@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux Team <linux-imx@nxp.com>,
 "open list:IRQCHIP DRIVERS" <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
Cc: imx@lists.linux.dev
References: <20240228213808.632603-1-Frank.Li@nxp.com>
 <7c167fac-46c0-4d7f-b56f-ff1922736aa5@linaro.org>
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
In-Reply-To: <7c167fac-46c0-4d7f-b56f-ff1922736aa5@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/02/2024 09:33, Krzysztof Kozlowski wrote:
> On 28/02/2024 22:38, Frank Li wrote:
>> Allow power-domains property for fsl,intmux node.
>>
>> Signed-off-by: Frank Li <Frank.Li@nxp.com>
>> ---
>>  .../devicetree/bindings/interrupt-controller/fsl,intmux.yaml    | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
>> index 985bfa4f6fda1..d73d9a6c50a69 100644
>> --- a/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
>> +++ b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
>> @@ -37,6 +37,8 @@ properties:
>>    clock-names:
>>      const: ipg
>>  
>> +  power-domains: true
> 
> You need maxItems
> 

And explain why. Most of your commits lack that basic information.

Best regards,
Krzysztof


