Return-Path: <devicetree+bounces-127901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B2F9E6A12
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 10:29:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC05C28294A
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 09:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94B101EBFEF;
	Fri,  6 Dec 2024 09:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nyfYK0Pj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D9D1E1A17
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 09:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733477351; cv=none; b=MlhFOIv+M/9OQwoA3ZS0dmdepLJZrGoILA7bbR4dM5WiFy5POAFfxHJ2PXRMGPKF4DkbP6NCwPJ3ILJ9K6BtkQMPJYNE/U57F0y8duLwcXoRa8Ify7fwHsoNGpMOExpoF/vKp1SYU+xFtLxOFnwxrj+ecruiF8PMR+KLmmkedj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733477351; c=relaxed/simple;
	bh=pG7+8d2KyemUJBUfik6aWcgdRGrdDBi4aAkNnM/iBCA=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=mIMB61/C4AYIz2M/oFS2WSZy7ywPDuCzB+yoFK7ooQxqZTuNqGMc0UOIOdg4B2w5NmBv9wyhj0ujERViE0ERfx+WQru3L8o81V4qMNadsmGwnjDBX4+QAoQ9YvOEEh0sjD6F1tQGQVnhdXMlZVp1HcsK24V9Boj+zM5iGbwaDKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nyfYK0Pj; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d0b85c5574so252746a12.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 01:29:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733477348; x=1734082148; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=YXB1xY53AAYD+QaLV6bttO1AdnSqOVrlzo75qNOOncc=;
        b=nyfYK0Pj2Nq5Vekm6poLKoRgZ+c56xPgFy8Qo8hy5X0EVG1jkogBruy08ulegZE1Bd
         2GHnFVHQOJ0s5ZPhua+4nM+IcYGNXyux/jV51FgAYmpFFIK8UoSOkEfGl31IBrdHn7u6
         opC29Lzvbd42T8/hQQWR/wUsyAdig/YMGS7PXi8z6d04n4tx7/osNGzRPE+TnGTtJUXj
         thSjWpj/rMJ2X0Tz1qeOQKuLd6wYiQGJMKl3HBzZRfh72b/DghxT9dnm7gLEZv4TRlP0
         K2tHimF9w/n8MjV3jRpDngywVHrwX7ZrGgabHvvx6AFCqGjlGpTRcgG9NsVA+KiNSgKd
         hyMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733477348; x=1734082148;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YXB1xY53AAYD+QaLV6bttO1AdnSqOVrlzo75qNOOncc=;
        b=SYO9IZBw54fX4z/R7ueo8X9pB+YiTLmq2Qn9yIaYPWHJ4GRRXvGQQ++YwjCqzUIkLQ
         TmrJIvhKgh9N/1gKgWoiGirk3AFmzRkB+LRG3pZHRG5BPcDvlAG2q294DR8zyFSG7v67
         r3xYubNswbVj5k8dzjRLaLCCGU2FZpzvNKi7XniiDcFLo7iTJD5vkCeuZybx+rsgyqfV
         MDZbm4YHuG3l3jt/q968piHrykSB7oTA0VGNmql9ZBgUTCDfleSExe027NvH8606iu34
         lT1W95flXcv3ST75Oxc5OD/wyjejZPK7fA+TFGflEuAwzJxFaYIIuZjXFMVS0ZFXcsbQ
         2nTg==
X-Forwarded-Encrypted: i=1; AJvYcCUTEhBmTfcxi3PjamBS8WinIQxzSyxtKnFVq7BKM6qJd6B0Z7bqVYLt2ag/17vIb7NWvWuDfEjwrW8G@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9ZoxNztJ6A0jcz67Hk4UTH1Bg06ZHKo82xxr95BdOegQeSHwV
	DQ40+uVe9k7JKxUDxtAWybj0kDG457ZMN4zA9yIaAs9FCLbaNyafEz5M2M+DxxY=
X-Gm-Gg: ASbGnctRIFhrMmH/WzXvO264y2ri7pATTt62xI8gjYQR/LPXceU3hNhV+KWtGTcYfC9
	PlRfBUExGQfWLqVQYrWb2a4FzQXxf79acjam0KJjGL6TtqOBjO32KHG90rokwVzIBoRWIEoNCDq
	U0ocx23EAurZsTtAvRj/DN0KdLcA+Re/+VCy0SrF92WHUmEuWvIK74whMRg6xlb2MUVjYXnnoTx
	YXyj761aAM7yQJSVK3D0MXHJWCwnwfh7O9uoZrrhjJ1OH0amZKbrNyAKWDoXt6cLC/ruA==
X-Google-Smtp-Source: AGHT+IG1urfhvm1ROZtWv4TEfJrH9SPVbRW1sqGCXOlJ7Rkyu5nOeo7D07XKUSDqgyjJcrM2jyGqqw==
X-Received: by 2002:a05:6402:1d55:b0:5cf:f1fd:c688 with SMTP id 4fb4d7f45d1cf-5d3be663b8dmr797883a12.1.1733477348033;
        Fri, 06 Dec 2024 01:29:08 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d149a25f09sm1974532a12.1.2024.12.06.01.29.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 01:29:07 -0800 (PST)
Message-ID: <1ccb9308-303e-440a-a4ff-8e345be73af5@linaro.org>
Date: Fri, 6 Dec 2024 10:29:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: qcom: sm8750: Add Modem / MPSS
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241122-b4-sm8750-cdsp-v1-0-9a69a889d1b7@linaro.org>
 <20241122-b4-sm8750-cdsp-v1-2-9a69a889d1b7@linaro.org>
 <4e6ec861-ef4f-4384-aab9-107c710987af@oss.qualcomm.com>
 <bbf73ff7-1f7a-40a8-a313-f8b70e661f78@linaro.org>
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
In-Reply-To: <bbf73ff7-1f7a-40a8-a313-f8b70e661f78@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/12/2024 10:22, Krzysztof Kozlowski wrote:
> On 05/12/2024 18:34, Konrad Dybcio wrote:
>> On 22.11.2024 4:26 PM, Krzysztof Kozlowski wrote:
>>> Add nodes for the MPSS and its SMP2P.  These are compatible with earlier
>>> SM8650 with difference in lack of fifth memory region for Qlink Logging.
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> ---
>>
>> [...]
>>
>>> +
>>> +		remoteproc_mpss: remoteproc@4080000 {
>>> +			compatible = "qcom,sm8750-mpss-pas";
>>> +			reg = <0x0 0x04080000 0x0 0x4040>;
>>
>> This also seems to be 0x100000-long
> 
> Oh, we all love to copy code, starting from sm8150, I think. Depends
> which block we actually assign here - this should be 0x10000 (downstream
> DTS) or 0x100000.
> 
> Older PIL remoteproc loaders (qcom_q6v5_adsp.c) seem to access only the
> smaller 0x10000 region.

SM8150 had it correct - 4040. All others are copy-paste. I'll do some
tests and send patches.

Best regards,
Krzysztof

