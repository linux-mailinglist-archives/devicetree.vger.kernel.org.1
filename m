Return-Path: <devicetree+bounces-58204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD4D8A0B93
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 10:47:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C55A6281C21
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 08:47:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4787F1422C4;
	Thu, 11 Apr 2024 08:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Osz6pd0J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0097413CF84
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 08:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712825241; cv=none; b=t7r8/nzDhnFhln7DohOqwuxna1KOV9wXf4Pncty5+XUBymlafDt17nb30oO/Fr6x+CEHk0vQoJcan9G6B1U1TXKNHcPEfrRMjo2D7m5R7lrYmDzI7KL7e40XXfj2RCCl+p/4fqsnPVnpTwDVPql86wLS1bV5lD6uRw8TTs3/3sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712825241; c=relaxed/simple;
	bh=yB6JYunY8EXkmrBU9V8SnkS97vIvnw2jVMSGoyThXlA=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=SztCle/3tQpEe+kZWUEo1eq5a56NfUEal/CFIn6OsTbzYT5HdRzxGxzHby6JGaVVACriOqZKLzUOv1s7dVHmy+44gAy06u4X/pCKL/AWTnq0+vZTmJu16ftYIWPSH/FzXg9MPM7b3IZzJVBvakY8kBHa7d/J/fhmqHfr+Btu5pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Osz6pd0J; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-343b92e54f5so5514344f8f.0
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 01:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712825236; x=1713430036; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WGvYdrh9pjeShwzsHtKJ3B7j1+HaDBQWly/Ok2V2fDA=;
        b=Osz6pd0JRFmO6/wv63VkIBWRqd8ByDD4g56eJA9vVzuaNQPUiV5DA2r8RE6Su1k3BN
         XqiRPRxRHo4Dko1iRUvsA72JQ9SBWbpQWdi2RbgVpW1i2BzhxZHazIcymXa6MAGDLKYQ
         xP8husgE79uJthaV02Lz3878xbP5FHMzyieW1NjbZcdhEvNoNhGHv1qMMy5425U+fc+K
         QXPXsRG009BNaOTI21ex0mzdQRj9DVvV8ocAec8Lspy6Yq78tfPjo4muY1wYZNt8s7G5
         q2eK1CLjdy3Z1fZwcck3TEUJhA/3RPu3fnwgdF9SVcXv7oOBzsibK/eOycat+/WNbs7b
         lFrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712825236; x=1713430036;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WGvYdrh9pjeShwzsHtKJ3B7j1+HaDBQWly/Ok2V2fDA=;
        b=Td24IP9G1yUmMQDQC51GBIDwKffvbwW2KxSHK9qR4w1MkNLWcnKevbFkRhMricS3HK
         Yw6YpQJifnoP38iNjJ4aKAONqPuFkEttvHPlV5lUwsQabTjD3SHkvvvsID8zv2LK3L2y
         +vge7GWaQYdM5luQmSQh8tf1FcWxFwGSL6hN5eyDTAtROhZo5ICMcT2kY9WHWKTWrzEi
         TC8MzZ0h8uOcen79al3gwRFzp88oeKfzC8oVq3jgmz8jPzRvTXa7iDgKw3Upm5IBcJm4
         gi38mf7RO0kFYAKKkWL0J2Xcs0AhIXKxfhm3L3YacRSQ7jJvMTqwFt/KQ+3pZAzzL8KN
         ygrw==
X-Forwarded-Encrypted: i=1; AJvYcCVzIzBN7yBYaU+p/P2XQNOX704gx89NXO3izrddNa0n+PMdKyzxEoneElO33S/n+bCU7Cj060sP9aIk7wjqXgHgxQPBqc+v10A19Q==
X-Gm-Message-State: AOJu0YzPrMlqiq8oqerIgYfsgVNDzfu92pPr5pvnsjoUaAzU5P8J+8y+
	mK0bg91oSabKZYM313p5JQ9MCYEBQQ5JBkrx9AZEKV2V7G3y/1mYMsofEnV97GA=
X-Google-Smtp-Source: AGHT+IEVnyycSJjD/BjnBncJtERr0l0A8WqQtwo7eX8HaIYmIUcX1aoVYefAc7MGFuu5r9vLq2aKUw==
X-Received: by 2002:a05:6000:1101:b0:343:6ca4:97e4 with SMTP id z1-20020a056000110100b003436ca497e4mr3354318wrw.51.1712825236289;
        Thu, 11 Apr 2024 01:47:16 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id j10-20020adff00a000000b003469e7f5c52sm1258222wro.80.2024.04.11.01.47.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 01:47:15 -0700 (PDT)
Message-ID: <fda53b22-c3b6-4c9f-80e6-8f22637b8b63@linaro.org>
Date: Thu, 11 Apr 2024 10:47:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/2] Samsung Galaxy Z Fold5 initial support
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Alexandru Serdeliuc <serdeliuk@yahoo.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240410-samsung-galaxy-zfold5-q5q-v5-0-9311ee9a55f7@yahoo.com>
 <8f2c7963-c660-41b6-a93c-0ac19818ecda@linaro.org>
 <46bee5df-3d66-44c1-9d7a-86e32a2149dc@yahoo.com>
 <37c5710a-426f-4054-8632-e24b9d920bcc@linaro.org>
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
In-Reply-To: <37c5710a-426f-4054-8632-e24b9d920bcc@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 11/04/2024 09:34, Krzysztof Kozlowski wrote:
> On 11/04/2024 08:36, Alexandru Serdeliuc wrote:
>> Hi,
>>
>> The list of changes  (changelog) from the cover is not what I should  add?
>>
>> My patches received only two ACK tags, on V3 and on the initial request 
>> (v1), I was not able to identify any other, I added them to their place 
>> in the change log
>>
>> ...
>> - v3
>>    . added b4 version 3
>>    . removed address and size cells in device description
>>    Acked-by: Rob Herring<robh@kernel.org>
>> ...
>> - v1
>>    . The initial request was split in two patches sent due to the following checkpatch warning, was requested to re send them together:
>>      WARNING: DT binding docs and includes should be a separate patch. See: Documentation/devicetree/bindings/submitting-patches.rst
>>    Acked-by: Krzysztof Kozlowski<krzysztof.kozlowski@linaro.org>
>>
>> I suppose that adding them to their place in change log is wrong, I 
>> should create a v6 and put them at the end of the cover letter? Or how 
>> to proceed?
> 
> Please don't top post. If you add them to the changelog, how are they
> going to be effective? Please apply your patch (e.g. b4 shazam) and look
> for them...
> 
> Submitting patches explains where to add tags. Look at other mailings.
> And finally: why even bothering about this if b4 does it for you?
> 

BTW, in reply to your first posting I gave you detailed instruction how
to proceed with tags. Let me quote:

"Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag"

I think it is clear where you should add it. I gave this instruction on
purpose so we will avoid this mess...

Drop all invalid acks from cover letter and send v6 with proper tags
places in mentioned place.

Best regards,
Krzysztof


