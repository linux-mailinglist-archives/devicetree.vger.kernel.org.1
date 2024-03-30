Return-Path: <devicetree+bounces-54799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 611A8892A64
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 11:28:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E4F171F2242D
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 10:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E10A29424;
	Sat, 30 Mar 2024 10:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g8oYj0cQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A79CD28385
	for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 10:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711794495; cv=none; b=W6sTsCpeqI7Ki8y/jP9ttWK5YDqEVjiGJEOEsA9mKM5GMLjQoK7Ya5ksqcPeMQAzcy5qS82UBCM+48+M/8pmWczfJrxxSTS8S7/UuXzK1qp+MAutJ9+Edqz1oWsb+NpXSqX+sGN5zqZUBUcFz0hAUidYEL9BoZTD8j0tA/dCKtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711794495; c=relaxed/simple;
	bh=l/KFAqI6pJxQlGzL8oy+1SAyd1f/xTPJWDrZt8W4964=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pnMpkSEUIK1FUVXLaP7QMqr2bL+3Jz50P+DvXSdYlmOfKvFEPmHXS5Nk7SGZ0gNwT71dB+YS1FivNGEsTzC2F0nHH963rTEtngMc1RhLqv4fhjHuQIhKNPFp4wbxIwCIRzb+bLvzKqdmWRQTgVo4eYC7RGu/apX7ydmQJj03N8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g8oYj0cQ; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-41544aef01aso16138335e9.1
        for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 03:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711794492; x=1712399292; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=n/DoMYR32FGRJmADWiWFH7jVGZcnxoZwXBEBpZrQTcE=;
        b=g8oYj0cQS//Nl/7sIR+IsTKobZotNdhdne8VzzsklYxhsxaeyK6RSVojXaBMvdiKqD
         fJOajpB9TLeWlYIfKrIJx/w/AQCdymWBu3ZLfoDVqoGhMMQK6dNHdoiJnZ4SiJB9Iggi
         NCXCTCtxE6mzoqxZdwCl4HrXuZzmo825yTq72ndE6tZF+PL4KU0SCLbA9POEQhgx9HBo
         aCNkGlfwwjDf5g8FmEZi+cQ7DK31SBQsV+h3c+T/yO3jymgfJcYwRXsi7GSDlILhkvpa
         JM4KE4JiE+muWfVS8Dnk2tTj2evOoOFlBVGAOh/xhlT5k+siRwwEK7rSBjtLbzpZsz7b
         HvPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711794492; x=1712399292;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n/DoMYR32FGRJmADWiWFH7jVGZcnxoZwXBEBpZrQTcE=;
        b=p34sBihmu/mWOGJNGbX/EjW0/+bgO8jjCyDpCePk+PyJuSNY1LhkinI3nWJpQvbhW9
         tnpC6p5cMafbQDBn7Rsp69o6kuZdeEjNv23Zvm9kWU7gkV5P5yEb/19TlTNYCjcsZpXM
         IxvawT4b34KGDHHB1+4J+Ni79w6sZRuypppTJIKDZgdW0T5cTku3eNX0LoVZEUD9+23v
         ugxNT+uVMR3v9K4C7Fi8/TdQnJz1IFmk668wxjC6q5AX3/iWVj8N5sDULjXONhpQ/TAb
         ijTShdX4TNXZWCe+u+g/GRofx0uel4EQusIrxzeyQ7ySdVIPTLlEaiFtU7bV3EEPrYKr
         pPYA==
X-Forwarded-Encrypted: i=1; AJvYcCWOOEyw+f2Q2C3CUmJaCmJ75cETQmeYHkH5+3MwjVymdPpjq6ZGcWUpHqC+4R3UN8gM6FBWNTrM5Q/3JfjZ35qZQFOYPEU98VMSgA==
X-Gm-Message-State: AOJu0Yxcg9vBBumYvGjZzz4nJq8/rqtmv5sHn6MgKcVBgWTwg86UaFlf
	AkevISiyS7/PQVqGSYqHFlZ0s019ce71D/rFYlIvao4jF6Ll/tGk4L7FsAA9wGY=
X-Google-Smtp-Source: AGHT+IHKunQOeKW45yJnTcjMgyqxfh8e3kJ6vHXy3rSClIiVLnXbCyg4zFKNQNrgPoQOHQRYIqlJMw==
X-Received: by 2002:a05:600c:a49:b0:415:45e5:bfff with SMTP id c9-20020a05600c0a4900b0041545e5bfffmr3627250wmq.33.1711794491995;
        Sat, 30 Mar 2024 03:28:11 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c42c900b0041497707746sm5761369wme.0.2024.03.30.03.28.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Mar 2024 03:28:11 -0700 (PDT)
Message-ID: <5570c921-0103-4e92-be9a-da9c1b7cbd79@linaro.org>
Date: Sat, 30 Mar 2024 11:28:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/5] clk: qcom: ipq9574: Use icc-clk for enabling NoC
 related clocks
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: Stephen Boyd <sboyd@kernel.org>, andersson@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org, djakov@kernel.org,
 dmitry.baryshkov@linaro.org, konrad.dybcio@linaro.org,
 krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, mturquette@baylibre.com, quic_anusha@quicinc.com,
 robh@kernel.org
References: <20240328075936.223461-1-quic_varada@quicinc.com>
 <20240328075936.223461-5-quic_varada@quicinc.com>
 <95f4e99a60cc97770fc3cee850b62faf.sboyd@kernel.org>
 <ZgaeGZL7QXh75aSA@hu-varada-blr.qualcomm.com>
 <031d0a35-b192-4161-beef-97b89d5d1da6@linaro.org>
 <Zgfbs5SFN2cA0gSK@hu-varada-blr.qualcomm.com>
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
In-Reply-To: <Zgfbs5SFN2cA0gSK@hu-varada-blr.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/03/2024 10:30, Varadarajan Narayanan wrote:
> On Fri, Mar 29, 2024 at 01:10:03PM +0100, Krzysztof Kozlowski wrote:
>> On 29/03/2024 11:55, Varadarajan Narayanan wrote:
>>>>> +
>>>>> +enum {
>>>>> +       ICC_ANOC_PCIE0,
>>>>> +       ICC_SNOC_PCIE0,
>>>>> +       ICC_ANOC_PCIE1,
>>>>> +       ICC_SNOC_PCIE1,
>>>>> +       ICC_ANOC_PCIE2,
>>>>> +       ICC_SNOC_PCIE2,
>>>>> +       ICC_ANOC_PCIE3,
>>>>> +       ICC_SNOC_PCIE3,
>>>>> +       ICC_SNOC_USB,
>>>>> +       ICC_ANOC_USB_AXI,
>>>>> +       ICC_NSSNOC_NSSCC,
>>>>> +       ICC_NSSNOC_SNOC_0,
>>>>> +       ICC_NSSNOC_SNOC_1,
>>>>> +       ICC_NSSNOC_PCNOC_1,
>>>>> +       ICC_NSSNOC_QOSGEN_REF,
>>>>> +       ICC_NSSNOC_TIMEOUT_REF,
>>>>> +       ICC_NSSNOC_XO_DCD,
>>>>> +       ICC_NSSNOC_ATB,
>>>>> +       ICC_MEM_NOC_NSSNOC,
>>>>> +       ICC_NSSNOC_MEMNOC,
>>>>> +       ICC_NSSNOC_MEM_NOC_1,
>>>>> +};
>>>>
>>>> Are these supposed to be in a dt-binding header?
>>>
>>> Since these don't directly relate to the ids in the dt-bindings
>>> not sure if they will be permitted there. Will move and post a
>>> new version and get feedback.
>>
>> You can answer this by yourself by looking at your DTS. Do you use them
>> as well in the DTS?
> 
> I can use them in the DTS. The icc-clk framework automatically
> creates master and slave nodes as 'n' and 'n+1'. Hence I can have
> something like this in the dt-bindings include file
> 
> 	#define ICC_ANOC_PCIE0		0
> 	#define ICC_SNOC_PCIE0		1
> 		.
> 		.
> 		.
> 	#define ICC_NSSNOC_MEM_NOC_1	20
> 
> 	#define MASTER(x)	((ICC_ ## x) * 2)
> 	#define SLAVE(x)	(MASTER(x) + 1)

I don't understand this or maybe I misunderstood the purpose of this
define. It does not matter if you "can" use something in DT. The
question is: do you use them.

> 
>> It's a pity we see here only parts of DTS, instead of full interconnect
>> usage.
> 
> Unfortunately cannot include the pcie dts changes with this
> patch, but you can refer to them at https://lore.kernel.org/linux-arm-msm/20230519090219.15925-5-quic_devipriy@quicinc.com/
> 
> The above macros will be used in the pcie node as follows
> 
> pcie0: pci@28000000 {
> 	compatible = "qcom,pcie-ipq9574";
> 	. . .
> 	interconnects = <&gcc MASTER(ANOC_PCIE0) &gcc SLAVE(ANOC_PCIE0)>,
> 			<&gcc MASTER(SNOC_PCIE0) &gcc SLAVE(SNOC_PCIE0)>;
> 	interconnect-names = "pcie-mem", "cpu-pcie";

Then why did you add header which is not used?

I will respond there...

Best regards,
Krzysztof


