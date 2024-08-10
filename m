Return-Path: <devicetree+bounces-92620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5717994DD0F
	for <lists+devicetree@lfdr.de>; Sat, 10 Aug 2024 15:24:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CDB191F217F6
	for <lists+devicetree@lfdr.de>; Sat, 10 Aug 2024 13:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 776D114B086;
	Sat, 10 Aug 2024 13:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZqPkB41G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889C414BF8F
	for <devicetree@vger.kernel.org>; Sat, 10 Aug 2024 13:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723296243; cv=none; b=MB+5dbB7yBXwmH0IiKAuy6WETEJnqo9jWDmsExnhG6UHsGybozYg+MM3weWMurM0Ozwh0zRc/hmEqU6dW7w7OlQFZV1MK1fPjQ47fDffJ+SZaQ6FR2GcJc7LEFTVwH108Dz6japP/vvPWCpLWYnHhhoAieQIVAFGnpuQecSLMGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723296243; c=relaxed/simple;
	bh=xEaFcuEtY1pbH2khBFRw+XT+00yjj/FOhcDby88hqSc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZZuq26ntIsbhkzBVY+0JTRyren8LAiCCFvxTrjt1zeHMEb6iYokbyakzLi8bZvdTIDy6OgiZtJTn01Zz2rBrEsurxETm7wQsJh3WwOfBuQSkQMAvth54QlS16BY4iCFSF0jRwSWWzVH8V6bCoxUcKK6uysegqgKkP/rDrQlDHG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZqPkB41G; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3686b285969so1560411f8f.0
        for <devicetree@vger.kernel.org>; Sat, 10 Aug 2024 06:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723296240; x=1723901040; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=XiPz6vhSe0Y74SHgHnMh+G/Dz9fcXwIzccVX20RECMg=;
        b=ZqPkB41GZ7qQpbB97kvTX9QR5wT049LXjqk2NV4tSxEUGB5/r8WGTuOu+vNQLBhIfd
         FGd3dWkc14S3jyFJ4lVI347Qrm8v7BdYVvxyuCC7FrAN4kJiYG56rNc5V3GhI3xC31mM
         6aHnyFZ59Ah0Ks3vSG32g9WPfmRxpY7jOSH2EaX1bKUWPFcBklCDuJpRM7QGUJgFbMPj
         P7DgviK1MhbMHWj86PM22uFCZmViz8QpKfbz2/EBq9WB8Krew5r1gG4pCMJgpIHk/ZUo
         LfZuZeyQlGS1LO02jGCPD6+K0L0Ns3ZkhgKXKT8Ll8IIri9qEAcRfAMoKy1if2+0gPkL
         v7wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723296240; x=1723901040;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XiPz6vhSe0Y74SHgHnMh+G/Dz9fcXwIzccVX20RECMg=;
        b=PttZFrv6Vg9ER+CYyBpnZ8gVyl1vsMByif9iydJFQW6FDxXXrYEBkJ1r9CliR+Ajjs
         13vsz3bN3sh0CRW/V9oUK3hPWRZDe+qUzuPop0eBX/3MxYjcziM5mvBLeOfoprc1HsJ7
         Hq42oESkdPxEiVcpb8a28wUZsy4pPu1A5DvgHCSNWkU+XwD2k31NxWFZ3EeiAIEcWXuK
         N8U5dVVVaZNjKxUJGuc/E5RRHjuG/gRyh+SsRn03xRHUU+iSWUmy3Owkk1EnQQLE6t4j
         +faE3Cjc7chfqVoXeP1VEDdLVEcWetkG5zHVBMErjbx7YuDh1oonRZO1nwylO4mQh3+M
         l4Jw==
X-Forwarded-Encrypted: i=1; AJvYcCXKPD7Mvb3jfzBLH+V9Q2JN//Umv8FhLN9EREFrF6VPdjudjrfEIO2KTvzF8YBYE6yLq4jBIWGCCsoRbfsWd8W8F7KuHaodTuPOuA==
X-Gm-Message-State: AOJu0YzIXcIVrxHbpVaDae96S/u43fQDQhx4iv/rfTiI4efGnlmDYT45
	VPC0NDVtzBgHDzJd+1tz3QfLl3A+gfDh/TRKtPeWeKUPwnevR3xNJnx1PzYsfzA=
X-Google-Smtp-Source: AGHT+IEdDjsrYgvZDon2xhBVQHWuFMzxKxk/zc+YIYk66q24J5so7wVLIlRj+WUpG13xqXDxMoQpng==
X-Received: by 2002:a5d:494e:0:b0:368:7f4f:9ead with SMTP id ffacd0b85a97d-36d5de93578mr3030114f8f.7.1723296239657;
        Sat, 10 Aug 2024 06:23:59 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36e4c36bea4sm2349677f8f.13.2024.08.10.06.23.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Aug 2024 06:23:58 -0700 (PDT)
Message-ID: <acba7e77-b403-432d-aa8c-35b5a5371c31@linaro.org>
Date: Sat, 10 Aug 2024 15:23:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: regulator: mediatek,mt6397-regulator:
 convert to YAML
To: Macpaul Lin <macpaul.lin@mediatek.com>
Cc: =?UTF-8?B?QmVhciBXYW5nICjokKnljp/mg5/lvrcp?= <bear.wang@mediatek.com>,
 =?UTF-8?B?UGFibG8gU3VuICjlravmr5Pnv5Qp?= <pablo.sun@mediatek.com>,
 Macpaul Lin <macpaul@gmail.com>, =?UTF-8?B?U2VuIENodSAo5YKo5qOuKQ==?=
 <Sen.Chu@mediatek.com>, Conor Dooley <conor+dt@kernel.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?UTF-8?B?SmFzb24tY2ggQ2hlbiAo6Zmz5bu66LGqKQ==?=
 <Jason-ch.Chen@mediatek.com>,
 =?UTF-8?B?Q2hyaXMtcWogQ2hlbiAo6Zmz5aWH6YCyKQ==?=
 <Chris-qj.Chen@mediatek.com>,
 Project_Global_Chrome_Upstream_Group
 <Project_Global_Chrome_Upstream_Group@mediatek.com>,
 Chen-Yu Tsai <wenst@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <20240806122507.2766-1-macpaul.lin@mediatek.com>
 <dcc40975-93f6-440e-8887-7a40a0cb3898@linaro.org>
 <31f7251a-7759-1260-7cb7-e239c9baa0a7@mediatek.com>
 <ce5757c6-0bd9-47b9-b5f5-dd5a33953fdd@linaro.org>
 <340d52e0-43b8-73db-7308-3ffbe4217419@mediatek.com>
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
In-Reply-To: <340d52e0-43b8-73db-7308-3ffbe4217419@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/08/2024 07:59, Macpaul Lin wrote:
> 
> 
> On 8/8/24 20:05, Krzysztof Kozlowski wrote:
>> 	
>>
>> External email : Please do not click links or open attachments until you 
>> have verified the sender or the content.
>>
>> On 07/08/2024 12:32, Macpaul Lin wrote:
>>>>> +  - |
>>>>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>>>>> +
>>>>> +    pwrap {
>>>>> +       pmic {
>>>>> +            compatible = "mediatek,mt6397";
>>>>
>>>> Messed indentation.
>>>>
>>>> Use 4 spaces for example indentation.
>>>>
>>>> Anyway, drop top node or better move the example to the parent device
>>>> schema making it complete.
>>
>> Look at this comment. I asked you to move to the parent device schema...
>>
>> Best regards,
>> Krzysztof
>>
> 
> I would like to ensure that the progress can be made step by step.
> 
> Since I am not specifically responsible for this driver, I cannot 
> determine when I will be able to modify the next file after completing 
> one today.
> Will it be tomorrow? Perhaps in a few months?
> There is also the possibility that I might have to pause midway due to 
> other job assignments.
> 
> Additionally, I need to obtain approval from other internal colleagues.
> I am pleased to have received permission to modify 
> mfd/mediatek,mt6397.yaml the day after I submitted this conversion of 
> mt6397-regulator.

Heh, that's surprising. Anyone can change any piece of code, that's the
beauty of open-source.

> 
> I was intend to split the example parts of the patches into 3 parts 
> seprately, mt6397-regulator.yaml, mfd/mediatek,mt6397.yaml,i
> then moving the examples from mt6397-regulator.yaml to 
> mfd/mediatek,mt6397.yaml, move the content to parent device step by step.
> 
> I will include the example part in next version patch in 
> mfd/mediatek,mt6397.yaml.

Sure, do it step-by-step, but then due to dependencies wait till each
one gets into released kernel...


Best regards,
Krzysztof


