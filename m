Return-Path: <devicetree+bounces-48023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7515986FBE2
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 09:30:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 309972826D6
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 08:30:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3EFE179BC;
	Mon,  4 Mar 2024 08:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UYOWQ0jU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC0B179BF
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 08:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709541018; cv=none; b=d6D72joJy/fX7Kznt3T1/JM8FV9dzHBDDD6XHLTjRR6MToE0r1Pu3/LyHU85b9xPqqwz0/NrxN3zj0A1/IoqE6YXa2Ku8/lvmj0MzjQ2ZUTW/B/F50RJsRfl+sFGH+jCPH6yE0zuca59tAGgEJQfZIrQ29ciOPkolpOT6v5jIOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709541018; c=relaxed/simple;
	bh=nOUXR9EqpOOSxcnvbS32uaQc6j/1A37cDRR97p7VglM=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=MQJdpiNji/0Zg55CIExDwBo/voWlvFnb2+Gfd090Dsn+3tWtiNJ0sGD8B0qZRHiyQgcU1IxhKzN+u8CG6pyGIDc+uRIvru0VaqmeLmq+Ny4mTrYz00Wz3Wp1ADojLtoPo8yliUK7821U4VK9Ui3WCkG5NvHeMQ7cYm+eb9HQ9kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UYOWQ0jU; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a44e3176120so161378766b.1
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 00:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709541015; x=1710145815; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cXodLn2AqA+jGe7aFk4xbwbDjXlF1ZD/jgmAB1nQRi8=;
        b=UYOWQ0jUDxVAHRouDaS9YmLUHHMyzdSGCDZYZxktGbTUVHCQUVuUvw1D8rvHGTUwt8
         z6UKEsfFm/J+NKg+vuSpbDT5OAvG4gH7L7VBaUkZSx5HZomDqbEQRhh/GRMRlhB/fskl
         6HSAyfioBu8DXpIeyn9z4qwzA339Sem/7H62fEZdqXHre/qIQzTvnV58LuUjWqjEzLda
         0yHDmPToxHYMtYLMR7HqxFtX6MeMZTf4ByPRARK8gwKEJmgl10fs23uiUiYfSQShPEgm
         VjhB1pxPoY1kYkaudUNWWEtpuSn72ETMRwsRYiry9k1VYDDx28XcnoDmXjRL4M7KfN5i
         dQhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709541015; x=1710145815;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cXodLn2AqA+jGe7aFk4xbwbDjXlF1ZD/jgmAB1nQRi8=;
        b=s640h2iYee0FPgVvWLvUKWWEhKkCwPORStPmVC4zf6Dg7BJ/VYLTL+qZe3iWKELXn5
         MOF/LOllfqHK7GoPT9I54Rz98WflIow9fbNDrmO143wIKJRqCqJ7P1Wu/XEdLihh194c
         MlL6ZSsmOxdxZMhlEwy3o1csazX3wEC9qSEBuqB+jf6Hu0Pqv2aXPL7t5Ygh5aVwo1++
         EnRVKUDQQw5z76vS/FFdXwaxb0D5rKAwhsOKL6K/3Olc81PcYue6zJ0ZR4ZoJ6TNNFDX
         3H6rMmoiK1mXTB+JtMCSuSG906C/WexzakxATlfQ/LXEzEspURXNTLsHcNBEHLR6Rsrk
         Mr6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXuEbfwRr32WXUwajmXBoyeO2y6kdC0PIqgsP6jSOPSFLTQ23RGb1TAzJKsWaptU3s/8oSgV5MnEy1IoWia79HTCFcAg/NEqeRkyw==
X-Gm-Message-State: AOJu0YzI8ZbjOns2eN7C6dt82nmsli11RrI6AvW1qiohRdtV5jkWEZ8s
	OU0QeDEHmiNqJ5Pe38yuu6gsTg+goLOZaCFxtbPkGvPHXZA9NboAq1OiSqNtmms=
X-Google-Smtp-Source: AGHT+IFQU6GsiKMtMHVhsaOqM7egMUNq7xmFkMY/eyrFnRRw6x82wnExdgNg3ruqslS5fYQk8Yzs+A==
X-Received: by 2002:a17:906:b00b:b0:a44:c583:dfc8 with SMTP id v11-20020a170906b00b00b00a44c583dfc8mr4101791ejy.48.1709541015290;
        Mon, 04 Mar 2024 00:30:15 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id mc18-20020a170906eb5200b00a3f28bf94f8sm4489928ejb.199.2024.03.04.00.30.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Mar 2024 00:30:14 -0800 (PST)
Message-ID: <76e8adc7-66b7-4c03-a6ca-1f9a77511f95@linaro.org>
Date: Mon, 4 Mar 2024 09:30:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] backlight: Add new lm3509 backlight driver
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Patrick Gansterer <paroga@paroga.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org
Cc: Lee Jones <lee@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20240302212757.1871164-1-paroga@paroga.com>
 <20240302212757.1871164-2-paroga@paroga.com>
 <c758d0b2-d46f-43ce-bfc2-c7ede4c3a945@linaro.org>
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
In-Reply-To: <c758d0b2-d46f-43ce-bfc2-c7ede4c3a945@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/03/2024 09:23, Krzysztof Kozlowski wrote:
> 
>> +		return PTR_ERR(data->regmap);
>> +	}
>> +	i2c_set_clientdata(client, data);
>> +
>> +	data->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
>> +	if (IS_ERR(data->reset_gpio)) {
>> +		ret = PTR_ERR(data->reset_gpio);
>> +		if (ret != -EPROBE_DEFER)
>> +			dev_err(dev, "fail : get reset GPIO: %d\n", ret);
> 
> No, don't upstream old vendor code directly but instead choose existing
> mainline driver and customize it. The syntax is `return dev_err_probe()

Hm, I found such pattern in gpio backlight. I'll fix it.

Best regards,
Krzysztof


