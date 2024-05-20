Return-Path: <devicetree+bounces-67834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6788C9DDA
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 15:09:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF4CA1F21BB6
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 13:09:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 595AD135A65;
	Mon, 20 May 2024 13:09:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SPMSY29N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B55B135A58
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 13:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716210589; cv=none; b=GeFSQZGh5apz34m45dCux+KAmQYAJG/YMf2kIXq0D80NQCKPjiK631Nyv1CMZSjXpy4y1kNW/CG1P5+Bdsu7cJcg5Qw2BzKBLsBq1sAAVA+QDTghJXFkSK+HQx/lX8pjJO2P/Iw7P8W91zincU0K93IVwgGpPDtMvbKfuDBzUZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716210589; c=relaxed/simple;
	bh=fSUrw6/S15ltCp1QEEzBDa5cC1DJUJGB0grAtXHW5+8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZY8QNZzVHzAoEg/6pF1pCP0+DEUsAMqwtTGTfPAGusAVgAqS4q2TUdwIfPn7zgPtmbY2Lg5EoKkcIFzOXVyJIo96bXypdqaf8ZwmrDv8SaqMgL3N6SIgrhVbe2TdDZJbajTJTKqbcsxVpNCplkdZF3QxMYD306Q6V/W6J/NWLfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SPMSY29N; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-420180b5922so27564505e9.2
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 06:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716210586; x=1716815386; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=TVoFLZWobDRFm4jvoJ9IwGpU1C5rxlThUX0AIs+zB8Y=;
        b=SPMSY29NiEZjDhUustlW+pwZNBTVWEhgzn9oqq5cuHHlCIrREngVfAyx4VYrG+J+jn
         u1rbnG5a2hrnEuGwSypyahVTgujMTsNNo5Je+5TjYz4fV48fuTyTnpIrDfgNzW2wKEb3
         aZwlYIh9QH9OkcovyQxo3irjJxLKMGC5QC/X8U/mQEPB33Yt70gGgijrq5s8HTFQy5yZ
         bpZicbJX2xiTYVtI0tLwqDkkO794Hc/nRH/s8G3HJpl0LV87rMn1+IwRqxegyYAs0OrH
         SGTTGcJeRXUDsXqsgDrIYnQjzBdFkY+EH5rM/twaC7RI//Njb0HfU7JMQ8Oz9LAgru1y
         UreQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716210586; x=1716815386;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TVoFLZWobDRFm4jvoJ9IwGpU1C5rxlThUX0AIs+zB8Y=;
        b=NZezCD1bNGss+eU2KINtiwc/7W8lKWVz8YP2hrtYIcEjk/OorLehRXDbHtw4YuJrD0
         wSTkZt4QfNajeXfMG6SIDXnqn/YlGrS52HOj0rkd6j9H3+6xUAndyRR1s2Ln4gyn8e0d
         KGExKk51VRfnY+DOhS3NSrqDNU1ElN3SzPH6Jv2N9tQdO67Y1W3096rnljfFfCcPnjGW
         O/SHPqNEex5fr4BttoFQ5kzAULCHNgdoC7ubuL7j/7zExSM6X2e8X+SFZ30ZWymWDukL
         6iaO2f8VNx1eVhaq1HSomm3PfJxVx/fi1kn1nVuTPGbYa+krd9JZfSpM8nYfKc33hPuD
         AeUA==
X-Gm-Message-State: AOJu0YxmerdVC2CVEKeRGqBWfuqnNJftAmYyKr5XChHwAfOqZ9wzbsyp
	0HPLiyGVfqSG0pfQihb0I8TyQqX6Z8CnNbZAEC9af0w9lwjmYBHZAdMCoSna0Hg=
X-Google-Smtp-Source: AGHT+IEf+GRztHU579ZnMvuFPJhF3BEE0YrzxEt2qqRT3XxePUuoXwA/oky1IYPrVmOdpQsnfxb98A==
X-Received: by 2002:a05:600c:1c94:b0:41f:f32d:d6c with SMTP id 5b1f17b1804b1-41ff32d0dbamr286178345e9.23.1716210585831;
        Mon, 20 May 2024 06:09:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b79bcedsm28939071f8f.19.2024.05.20.06.09.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 May 2024 06:09:45 -0700 (PDT)
Message-ID: <6a3c7e55-8353-472b-a7c3-97feb7cd7162@linaro.org>
Date: Mon, 20 May 2024 15:09:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: soc: ti: am62-system-controller: add
 AM62 syscon
To: Roger Quadros <rogerq@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tero Kristo <kristo@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240518-dt-bindings-ti-soc-mfd-v1-0-b3952f104c9a@linaro.org>
 <20240518-dt-bindings-ti-soc-mfd-v1-1-b3952f104c9a@linaro.org>
 <b3145cd3-f6d4-4778-938c-33eb6ed6de5d@kernel.org>
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
In-Reply-To: <b3145cd3-f6d4-4778-938c-33eb6ed6de5d@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/05/2024 13:35, Roger Quadros wrote:
> 
> 
> On 18/05/2024 23:07, Krzysztof Kozlowski wrote:
>> Add dedicated binding for AM62 and AM62A wakeup system controller
>> registers, already used in the DTS to properly describe their children.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  .../bindings/soc/ti/ti,am62-system-controller.yaml | 77 ++++++++++++++++++++++
>>  1 file changed, 77 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/soc/ti/ti,am62-system-controller.yaml b/Documentation/devicetree/bindings/soc/ti/ti,am62-system-controller.yaml
>> new file mode 100644
>> index 000000000000..d3bd67717999
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/soc/ti/ti,am62-system-controller.yaml
>> @@ -0,0 +1,77 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/soc/ti/ti,am62-system-controller.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: TI AM62 System Controller Registers R/W
>> +
>> +maintainers:
>> +  - Kishon Vijay Abraham I <kishon@ti.com>
> 
> Above email might be invalid. Please use this instead
> 
> Kishon Vijay Abraham I <kishon@kernel.org>
> 
Thanks. I took old email from bindings, so it would be nice if Kishon
fixes his email everywhere (not only mailmap).

Best regards,
Krzysztof


