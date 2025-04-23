Return-Path: <devicetree+bounces-169891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9BEA9892D
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 14:07:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FDB03AA750
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 12:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F69D1F1936;
	Wed, 23 Apr 2025 12:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FWEqqU8o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394D52CCC9
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 12:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745410069; cv=none; b=czu7Mv1pd01dxQ+JSNslTqLkIuEVDkLXVwsXY4Gm1iGVJLC6Q58gCBj0NQ9Vv+sMp6NOmEzgZTD8cQuh7vql0AfL86CvtKPcy4kwipqMHokuU+LfaITlPKSuay5PFJzHCvEFY5h7yvovNEs9MAjvV6KmC3oi2+UC986CcJphxok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745410069; c=relaxed/simple;
	bh=MMQdY9N6ChtJBawtVbRqnqsgfr7DqCxaryDpCq6+jq8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PD+jowcvsjZ6B5GRhqO3Dw/6GBn9fmN1ETjFZypITPuZWlGi2HdIr+BGPj+GQNSDN+TEZBZLnqIfOt1XYXUxPZVU+7tJjgAuRLbQI3xdXT18NCjUrKjzChUwH0ZyVL0QY18+Ixjqn5sspYHdDqx6YkonZ0UxjK/qbgE5ODz88mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FWEqqU8o; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ac79fa6e1c2so83398466b.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 05:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745410065; x=1746014865; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=+IyBR9G/7UgBoXHNqf3NAUb6y3RdyTJStukCSmDm3Lc=;
        b=FWEqqU8oWH8hdqbKjey451Xx3YlGb111c5q/oMgDOhAGHhXfGXuwkjNeARV3IMNfzX
         wyxRKHVWjnAJno4fPIqzGJGgPjw0WhyBfbwZ0c9mQtA59tB4ilCNYnZOjw7BeiMd4ioi
         V8K9yINcTLbgx8X3DZOPoQtlid/kxWND+UNGb4u4GJuN1vYDqgiLYqioIatASm0U3kQE
         XZVVI5a0iNsxTRgI3hj5mrhB/wA5PqGh7uEyHGuQJlxhWpWRUxoVkKdElRxkX1zg231Q
         t/TFvqt7j4bBBAWxpirMHOD7whHPaGGLrw7Nnqj7zRn5jiYJKnZtu7+AXN1V2WgsAHk4
         3EJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745410065; x=1746014865;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+IyBR9G/7UgBoXHNqf3NAUb6y3RdyTJStukCSmDm3Lc=;
        b=Q6UGhBDrflkx5GQQl2cPnu8wqNAyJXlgBxfFRAVbdn4B2mD0hqdcIErlRcRv/bI9gE
         csexZ2OB7Ihuod0m6smU7PtcguxMe8Xk9DDgntx/8ddutNPJA8YxAs4/Ai3vGFQqyzLI
         bG8iF1hHuKzNFYRJAPVPMC68aKNRx8rSK1pVUZHrnot/mhgQP6EAtrLQiZL0CZzicpkw
         AX177jW6W1LEE6jSMS673N+6nuyOHi6p5MN/+DNTNiN7NGaw5PeSKFTOT9+UIRavx06e
         cRNMkAasR04TV3yE2/HGVrbmL9MwMCnxtal3Tw8fVLBE8jtg3mTT6F2dKvDpCwDQp91M
         xdXg==
X-Forwarded-Encrypted: i=1; AJvYcCUekRWKfOt1tkgu5Cwo44fE4Cj1sLKH58MyVui7a8cg+wrVXat9lwrOAzk8zx9IQfCvujV1xfOk6IC3@vger.kernel.org
X-Gm-Message-State: AOJu0YzW7xAqExUzrYHDg5DQadnQZ03sgvcrf9EwfPKppqR5gCBGyvEw
	entGd/eToW8vP6RMaESJd5tx2QJ1r5wL2HNgU4X1nWu/eYVBjD2eSvBG4TBb86g=
X-Gm-Gg: ASbGncs6RVBisYjLBgcMzoxnXUR1BAt/uHlQ3HRvvTlXp0LKr4/kuu1f+qj5+o/6ear
	YGLgf1hJFf90eErBHFV63aXZCnfZ/yRiwCcaZgn9MYGBNNogj1Nvs5fOaQw4Uv6p2QPicEGexMa
	02MIYDvEpPPSemFGqp2sQgs8q/taOBMxeht9pfmwNkqm6xedMTjmzVQjH0293sr3GmNTY5HpWBL
	sd75yWtziZ3dnH594cBFquyJ11EJoUUXS0m3Y0vaYBcDm8qanwR2W3Uzjl8Ie+/hUtguhgUL6wd
	NrvyE8nbOaf/NzwNQTaFHz1lpLG0b3Bh0Cu2vPER2/EURl3AZr31sVilkuY=
X-Google-Smtp-Source: AGHT+IFnqK44hXq299eEIuyqU9Pqmw0+4vYvktV5v5DBUMzd5dKzVLQTM2DFnNi8cE7Dh0+KZlO5/w==
X-Received: by 2002:a17:907:d90:b0:ac7:50d6:e872 with SMTP id a640c23a62f3a-ace3de3145dmr84362866b.1.1745410065360;
        Wed, 23 Apr 2025 05:07:45 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f6255955bfsm7433640a12.44.2025.04.23.05.07.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 05:07:44 -0700 (PDT)
Message-ID: <ac0ae8cd-451b-49dd-840e-5fc0cce1605d@linaro.org>
Date: Wed, 23 Apr 2025 14:07:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: mfd: syscon: Add ti,am62-ddr-pmctrl
To: Andrew Davis <afd@ti.com>, Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Siddharth Vadapalli <s-vadapalli@ti.com>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tero Kristo <kristo@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
 <20250122-topic-am62-dt-syscon-v6-13-v1-2-515d56edc35e@baylibre.com>
 <20250124-heavy-jaybird-of-vitality-4cbe24@krzk-bin>
 <20250124-able-beagle-of-prowess-f5eb7a@krzk-bin>
 <mocfnpebc67xegcis6tx3ekhsjcsqnvhwtipufycrtq2be4nbh@pmxhir5gmkos>
 <639b4e3a-3f68-4fba-aa33-c46dcb6fc88f@linaro.org>
 <d6252b73-0bcc-4724-8144-d6a98c8980f8@ti.com>
 <74ee6d9b-fd78-4d8a-a94f-b2c4dc794b60@linaro.org>
 <ebsbaaxyatrcikoem75t2blkhhceuidq3wnj3r2hbezfcmtc3u@ptffexrigbff>
 <f9a2247e-e0eb-4e22-8626-80e87afa9386@linaro.org>
 <qjwlppsq4eorzepvjsgjjyyaddouo5w2rjguu5c2mqesd6luwp@f426xeghy2ht>
 <2130b439-74d0-475d-8429-1a1b4d9738aa@linaro.org>
 <b7f6570f-3b80-4fc1-8201-d44f5692867f@ti.com>
 <07bf9f93-deb8-48a1-aae9-a8a053680cc9@linaro.org>
 <6241ff00-27e6-45ab-808e-f04e39854753@ti.com>
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
In-Reply-To: <6241ff00-27e6-45ab-808e-f04e39854753@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/04/2025 19:03, Andrew Davis wrote:
> On 4/15/25 12:17 AM, Krzysztof Kozlowski wrote:
>> On 09/04/2025 19:39, Andrew Davis wrote:
>>> On 2/12/25 1:35 PM, Krzysztof Kozlowski wrote:
>>>> On 10/02/2025 11:35, Markus Schneider-Pargmann wrote:
>>>>> On Sun, Feb 09, 2025 at 01:21:27PM +0100, Krzysztof Kozlowski wrote:
>>>>>> On 07/02/2025 15:40, Markus Schneider-Pargmann wrote:
>>>>>>> Hi Krzysztof,
>>>>>>>
>>>>>>> On Mon, Jan 27, 2025 at 01:09:49PM +0100, Krzysztof Kozlowski wrote:
>>>>>>>> On 24/01/2025 23:35, Andrew Davis wrote:
>>>>>>>>> On 1/24/25 10:48 AM, Krzysztof Kozlowski wrote:
>>>>>>>>>> On 24/01/2025 17:05, Markus Schneider-Pargmann wrote:
>>>>>>>>>>> Hi Krzysztof,
>>>>>>>>>>>
>>>>>>>>>>> On Fri, Jan 24, 2025 at 09:22:54AM +0100, Krzysztof Kozlowski wrote:
>>>>>>>>>>>> On Fri, Jan 24, 2025 at 09:19:49AM +0100, Krzysztof Kozlowski wrote:
>>>>>>>>>>>>> On Wed, Jan 22, 2025 at 11:24:33AM +0100, Markus Schneider-Pargmann wrote:
>>>>>>>>>>>>>> Add compatible for ti,am62-ddr-pmctrl to the list. There is a DDR pmctrl
>>>>>>>>>>>>>> register in the wkup-conf register space of am62a and am62p. This
>>>>>>>>>>>>>> register controls DDR power management.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
>>>>>>>>>>>>>> ---
>>>>>>>>>>>>>>     Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
>>>>>>>>>>>>>>     1 file changed, 2 insertions(+)
>>>>>>>>>>>>>
>>>>>>>>>>>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>>>>>>>>>
>>>>>>>>>>>> Un-acked, I missed the point that you really speak in commit msg about
>>>>>>>>>>>> register and you really treat one register is a device. I assumed you
>>>>>>>>>>>> only need that register from this device, but no. That obviously is not
>>>>>>>>>>>> what this device is. Device is not a single register among 10000 others.
>>>>>>>>>>>> IOW, You do not have 10000 devices there.
>>>>>>>>>>>
>>>>>>>>>>> Do I understand you correctly that the whole register range of the
>>>>>>>>>>> wkup_conf node as seen in arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
>>>>>>>>>>> should be considered a single syscon device?
>>>>>>>>>>
>>>>>>>>>> I don't have the datasheets (and not my task to actually check this),
>>>>>>>>>> but you should probably follow datasheet. I assume it describes what is
>>>>>>>>>> the device, more or less.
>>>>>>>>>>
>>>>>>>>>> I assume entire wkup_conf is considered a device.
>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>> Unfortunately wkup_conf is modeled as a simple-bus with currently 5
>>>>>>>>>>> subnodes defined of which 4 of them consist of a single register. Most
>>>>>>>>>>> of them are syscon as well. So I think I can't change the simple-bus
>>>>>>>>>>> back to syscon.
>>>>>>>>>>
>>>>>>>>>> Huh... Maybe TI folks will help us understand why such design was chosen.
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>> Many of the devices inside the wkup_conf are already modeled as such.
>>>>>>>>> Clocks and muxes for instance already have drivers and bindings, this
>>>>>>>>> is nothing new to TI.
>>>>>>>>>
>>>>>>>>> If we just use a blank "syscon" over the entire region we would end up
>>>>>>>>> with drivers that use phandles to the top level wkup_conf node and
>>>>>>>>> poke directly the registers they need from that space.
>>>>>>>>>
>>>>>>>>> Would you rather have
>>>>>>>>>
>>>>>>>>> some-device {
>>>>>>>>> 	ti,epwm_tbclk = <&wkup_conf>;
>>>>>>>>> }
>>>>>>>>>
>>>>>>>>> or
>>>>>>>>>
>>>>>>>>> some-device {
>>>>>>>>> 	clocks = <&epwm_tbclk 0>;
>>>>>>>>> }
>>>>>>>>
>>>>>>>> How is this comparable? These are clocks. You would have clocks property
>>>>>>>> in both cases.
>>>>>>>>
>>>>>>>>
>>>>>>>>>
>>>>>>>>> with that epwm_tbclk being a proper clock node inside wkup_conf?
>>>>>>>>> I would much prefer the second, even though the clock node
>>>>>>>>> only uses a single register. And in the first case, we would need
>>>>>>>>> to have the offset into the wkup_conf space hard-coded in the
>>>>>>>>> driver for each new SoC. Eventually all that data would need to be
>>>>>>>>> put in tables and we end up back to machine board files..
>>>>>>>>>
>>>>>>>>> I'm not saying every magic number in all drivers should
>>>>>>>>> be offloaded into DT, but there is a line somewhere between
>>>>>>>>> that and having the DT simply contain the SoC's name compatible
>>>>>>>>
>>>>>>>> That's not the question here.
>>>>>>>>
>>>>>>>>> and all other data going into the kernel. That line might be a
>>>>>>>>> personal preference, so my question back is: what is wrong
>>>>>>>>> if we do want "1000 new syscons per each register" for our
>>>>>>>>> SoCs DT?
>>>>>>>>
>>>>>>>> Because it is false representation of hardware. You do not have 1000
>>>>>>>> devices. You have only one device.
>>>>>>>>
>>>>>>>>
>>>>>>>>>
>>>>>>>>> (and the number is not 1000, scanning the kernel I can see
>>>>>>>>> the largest wkup_conf region node we have today has a grand
>>>>>>>>> total number sub-nodes of 6)
>>>>>>>>
>>>>>>>> But what is being added here is device per each register, not per feature.
>>>>>>>
>>>>>>> The register layout is like this:
>>>>>>
>>>>>> The register layout of what? How is the device called? Is datasheet
>>>>>> available anywhere?
>>>>>
>>>>> Yes, it is available here: https://www.ti.com/de/lit/pdf/spruj16
>>>>>
>>>>> 14 Registers
>>>>> 14.2 Device Configuration Registers
>>>>> 14.2.1 CTRL_MMR Registers
>>>>> 14.2.1.1 General Purpose Control Registers
>>>>> 14.2.1.1.3 WKUP_CTRL_MMR0 Registers
>>>>>
>>>>> Each domain has their own set of general purpose control registers,
>>>>> CTRL_MMR for the main domain, MCU_CTRL_MMR0 for the MCU domain,
>>>>> WKUP_CTRL_MMR0 for the wakeup domain.
>>>>
>>>>
>>>> So according to the doc you have only one device - CTRL_MMR. All other
>>>> splits are superficial.
>>>>
>>>
>>> It is not one device, it is a collection of devices under one labeled
>>> bus range. Some items here are full normal devices, already modeled by DT
>>> as stand-alone devices, for instance our chipid, efuse, clock controller,
>>> etc. even our pinmux is part of this bus range.
>>>
>>> They are grouped as we have one set for each domain (MAIN, WKUP, MCU).
>>>
>>> All other splits are not superficial, if we go down that path then
>>> the whole SoC is one "device". We could simply have the whole address
>>> bus be one node and have Linux hard-code offsets in the drivers, we
>>> end up back at board files..
>>>
>>> DT should break things into logically distinct and reusable units
>>> so we don't have to store that in the kernel. That is what we do
>>> here, even if some units end up being very small.
>>>
>>>>>
>>>>> So I understand this to just be a collection of general purpose control
>>>>> registers. If you go by feature, then many of the registers can be
>>>>> grouped into units with a specific purpose or controlling a specific
>>>>> device which are also grouped by the offsets they represent. I assume
>>>>
>>>> It could work if you have distinctive groups, but here:
>>>> 1. You do not have this grouped, you just judge by yourself "oh, that's
>>>> group A, that's B".
>>>> 2. Group per one register is not that.
>>>>
>>>> For me this is one big block and even CLKSEL is spread all over so
>>>> cannot be really made distinctive.
>>>>
>>>>> this is why the other nodes in this wkup_conf node were created. Also in
>>>>
>>>> The other nodes represent some sort of fake or totally arbitrary
>>>> grouping. That's abuse of the syscon.
>>>>
>>>
>>> They are grouped by function.
>>
>> Not really - other DTS sent just few days ago created each entry per one
>> register.
>>
>>>
>>>>> my opinion this makes the relation between the original device and this
>>>>> general purpose control registers better understandable.
>>>>>
>>>>> For this patch the ddr-pmctrl regsiter is just a single register, but it
>>>>> has the purpose of controlling the DDR device power management.
>>>>
>>>> Sure, but that is NOT syscon. One register of entire block is not system
>>>> controller. The entire block is system controller.
>>>>
>>>
>>> The whole block cannot be a system controller as there are regular
>>> devices inside this range. If we made the whole region a syscon and
>>
>> That's still system controller. It's nothing special here.
>>
>>> also left the device nodes inside, then we would have overlapping
>>> register owners, one register would be controlled by two or more
>>
>> No, owner is the parent device always.
> 
> Which parent device? That is my point, if the top level node for the
> whole CTRL_MMR region is made into one big syscon, then a big regmap
> is made that covers the whole region. All the child devices also make

Children take the parent regmap or you do not have even the children.
Actually the second point is what we talk here: you created fake devices
per each register and these are supposed to be squashed into the parent.
I am repeating this 3rd time or more.


> regmaps covering their device range. Now these registers under the child
> device belong to two different regmaps. No synchronization is done as
> these are not the same regmap, regmap only handles this for multiple
> access to registers within the same regmap.
> 
> Let's take a real example, here is part of AM62A CTRL_MMR node.
> 
> main_conf: bus@100000 {
> 	compatible = "simple-bus";
> 	#address-cells = <1>;
> 	#size-cells = <1>;
> 	ranges = <0x00 0x00 0x00100000 0x20000>;
> 
> 	phy_gmii_sel: phy@4044 {
> 		compatible = "ti,am654-phy-gmii-sel";
> 		reg = <0x4044 0x8>;
> 		#phy-cells = <1>;
> 	};
> 
> 	...
> };
> 
> If we turn "main_conf" into a syscon, then who "owns" 0x4044?
> Both the top level syscon and phy_gmii_sel nodes would build
> a different regmap instance that contains those same registers.

Two registers is hardly a separate device.

> 
> Bit of back story, this is actually how I got involved in sorting
> out this "syscon" stuff for our devices. I built a checker into
> the regmap framework core that would detect when multiple regmaps
> are created that contain overlapping registers.
> 
> I found several bugs this way and want to push the check upstream at
> some point. But first I wanted to fix the biggest cause of warnings,
> which was from syscon being used as described above.
> 
>>
>>> drivers. How would we synchronize mappings, access, updates, etc.
>>> Any one register should belong to exactly one device.
>>
>> regmap synchronizes everything. There is no problem here, at all.
>>
>>>
>>> Is your issue the name "system controller", as yes I agree some of
>>> these regions are not "system controllers".
>>>
>>> Would it work better if we didn't call this "ti,am62-ddr-pmctrl"
>>> node a "syscon"? That can be done, we just would add a normal
>>> binding doc for it, instead of trying to reuse the generic
>>> bindings/mfd/syscon.yaml file.
>>
>> You still do not have multiple subnodes, one per each register or even
>> few registers.
> 
> If this ddr-pmctrl device is not modeled as a syscon device, then who
> says it has to be more than a few (3?) registers in size? This seems like
> a rather arbitrary rule, and completely unfeasible for several whole
> classes of devices that only have/need a few registers to work them.

What does the syscon description say? Collection of registers, a set of
miscellaneous registers. Registers in plural. Do not use syscon for
other purposes.

It is not arbitrary. It is written in binding description.

Best regards,
Krzysztof

