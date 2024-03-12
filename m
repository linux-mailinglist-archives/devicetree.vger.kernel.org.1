Return-Path: <devicetree+bounces-50045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D008A8793C9
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 13:09:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01C11B25500
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 12:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BDE07A705;
	Tue, 12 Mar 2024 12:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JY+ZuTNh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B027A153
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 12:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710245280; cv=none; b=uyCILDIFJBFSbxcmhgWZXqph3sHUDxLCBFbTaAGjj77L/djssF78VaR/VyzFE0QKy9bPvzybbzFYBEnlOL0vBIZ9rtdC1vmqMKJI9OoPXj1kh3dYEGr+6+oLoN6H+i39/iQpMNzatoiiRW747NMkTalXMnZH6et4SQ90BFy/NVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710245280; c=relaxed/simple;
	bh=FdXj3NbPr7LIPFPHDC9Uw9gFoYIpHXkckrbFtHnEb+w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UmP49WWJpPJtTqn8xERG+oB5EHXcexM3+pL89JsqwMlTs1KYdCEqYs3lIk4sF6MlVF5cr/EjOflzfeVRL3hSHmmvTeq6Cm6EgxhTPPbp6rKRLSpKldewNl5+HuLcMZo9ZyLSmRRLl1E6Rgx/JkWjygRU2Ab5AIAH8leoQkHDGkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JY+ZuTNh; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-512f892500cso4132972e87.3
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 05:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710245276; x=1710850076; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iZTLBLXw0PtBY4+JEvlrcgEHBXz8k2cD2lNLRF2eF88=;
        b=JY+ZuTNh7NEbuwo1xIAz1BLXjaFKjcqvY4ueO2/2GfssGZYSkKEWTUK3syfoL03KiX
         FfO6kMqk6ULABZawXwcJEP7CGiXnZA5fN5vSbGdwILP95wi7wklmCycA3Fs2uc3R2jpO
         gFBqt5lk2RJc10OsK3KfqQpCr8N1yjRg+xcRoTnkhpQHoovSmmp0hc0KP8h7pd+VWcJ7
         20a7zxA1JYAa4tUwOVLxYAwa04DB4w1OgpJ0UNTCVRvIXuS4zcG6ZDaTlmo2huPXpmsJ
         ep1+yZbUvKRaWb/SZkw5X58EBNCXYI69grCI+M5PplTuqi4SQizOk7XfWCKzwXlZ2Ef9
         fZGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710245276; x=1710850076;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iZTLBLXw0PtBY4+JEvlrcgEHBXz8k2cD2lNLRF2eF88=;
        b=HL03nEUGC+lfSq6hnjdPma3EV8WZE2Pa35o9O7TyR0gULnFbTmmdLMZM8xJ6yMfczL
         pKVEBGzfq0VKe6IaL1nWCL4fl5gBrufQ8hEf5fZ+HUItllWnUgKTBZHNBARTYUiMdGAD
         C+xJTjrndPRJnob+zVpIDhk+qEbrfH+UjTp7+vUkuvrcB+reU8ggQOe1E73hcEFAM6Zf
         su+ix22CDn6+p8EEREp6LHgK8TcYszbvfChBca0UT4TkBIDVbgW7R75EAE/TB5ZCE6Y0
         FTJDiIMa9ylbuuYZUSan8VATSYFMYVVeSviYmKEl4Tbg/GqaPOSnwSeOM+A7m+XZbqN7
         dkvA==
X-Forwarded-Encrypted: i=1; AJvYcCWAN2FMgaYAKB/G/K3Tx2Toy1BNogtC5pBYfGqVbgtCEmjqnvXSM7Agd9Nywy6iBCcoy61NO+WIMmpnizUDPcrag4o5WKLuneKUlw==
X-Gm-Message-State: AOJu0YybKaCXhDTpCvyhvWCCBad7BMOv2mu2slIDtxLjT9ZJ/HYMWSAE
	LqaMP1Vrw9N3d7tV/kmAoeriAa2Z8r6ESe25px9hbzEYwUU96PAZLkFCAV+M5jc=
X-Google-Smtp-Source: AGHT+IGYNeAFx++7ZzyH0xN5jWKQ2JmEo3fxqQM6nAGUk+mEASwkbODLWZr9/PhJAOqOSd0+QfTGqw==
X-Received: by 2002:a05:6512:4014:b0:513:a6a7:ac88 with SMTP id br20-20020a056512401400b00513a6a7ac88mr5825932lfb.14.1710245276277;
        Tue, 12 Mar 2024 05:07:56 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id f19-20020a05600c4e9300b004131b2f3958sm12274812wmq.13.2024.03.12.05.07.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 05:07:55 -0700 (PDT)
Message-ID: <f2fdbab6-524c-47b0-b250-37483efc5fdf@linaro.org>
Date: Tue, 12 Mar 2024 13:07:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [net-next 1/2] dt-bindings: net: renesas,etheravb: Add optional
 MDIO bus node
Content-Language: en-US
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Sergey Shtylyov <s.shtylyov@omp.ru>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Biju Das <biju.das.jz@bp.renesas.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20240309155334.1310262-1-niklas.soderlund+renesas@ragnatech.se>
 <20240309155334.1310262-2-niklas.soderlund+renesas@ragnatech.se>
 <cb8f85de-c1cd-4742-b8a4-2533482ee3b6@linaro.org>
 <20240310134638.GK3735877@ragnatech.se>
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
In-Reply-To: <20240310134638.GK3735877@ragnatech.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 10/03/2024 14:46, Niklas Söderlund wrote:
> Hi Krzysztof,
> 
> Thanks for your comments.
> 
> On 2024-03-10 09:44:45 +0100, Krzysztof Kozlowski wrote:
>> On 09/03/2024 16:53, Niklas Söderlund wrote:
>>> The Renesas Ethernet AVB bindings do not allow the MDIO bus to be
>>> described. This has not been needed as only a single PHY is
>>> supported and no MDIO bus properties have been needed.
>>>
>>> Add an optional mdio node to the binding which allows the MDIO bus to be
>>> described and allow bus properties to be set.
>>>
>>> Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
>>> ---
>>
>> I believe this is v2. Mark your patchsets clearly (git format-patch -v2
>> or use b4) and provide changelog under --- or in the cover letter.
>>
>>
>>>  Documentation/devicetree/bindings/net/renesas,etheravb.yaml | 4 ++++
>>>  1 file changed, 4 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/net/renesas,etheravb.yaml b/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
>>> index de7ba7f345a9..5345ad8e1be4 100644
>>> --- a/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
>>> +++ b/Documentation/devicetree/bindings/net/renesas,etheravb.yaml
>>> @@ -93,6 +93,10 @@ properties:
>>>      description: Number of size cells on the MDIO bus.
>>>      const: 0
>>>  
>>> +  mdio:
>>> +    $ref: /schemas/net/mdio.yaml#
>>> +    unevaluatedProperties: false
>>> +
>>
>> Please fixup the phy pattern, so it will be obvious it is for
>> ethernet-phy and probably deprecate it. The phy goes to mdio bus, right?
> 
> Yes the PHY goes on the MDIO bus and the pattern is only needed for 
> backward compatibility.
> 
> The pattern was specific to ethernet-phy in the past, but Rob removed it 
> in commit ac8fe40c3628 ("dt-bindings: net: renesas: Drop ethernet-phy 
> node schema"). Have something changed and I should revert that as part 
> of this patch?

Ah, indeed. Let it stay as is. I thought there would be conflict with
mdio, but pattern still looks for unit address, so it's fine to have
both: existing @[0-9a-f] and mdio.

> 
> I agree it should be listed as deprecated, would this diff work for you?
> 
> +# In older bindings there where no mdio child-node to describe the MDIO bus
> +# and the PHY. To not fail older bindings accept any node with an address. New
> +# users should describe the PHY inside the mdio child-node.
>  patternProperties:
>    "@[0-9a-f]$":
>      type: object
> +    deprecated: true

Looks fine.

> 
> Depending on if Rob's patch should be reverted in whole or in part I 
> could also try to revert the pattern to "^ethernet-phy@[0-9a-f]$" if you 
> wish. Please let me know what looks best to you.
> 

Best regards,
Krzysztof


