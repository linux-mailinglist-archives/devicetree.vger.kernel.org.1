Return-Path: <devicetree+bounces-192268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF9AAF5F36
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 18:57:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE72A3A6FE1
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 16:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05D6C2E03EB;
	Wed,  2 Jul 2025 16:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qMVdEVSy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E2F2D77EF
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 16:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751475411; cv=none; b=hXdAOtosd0mSxWajtssjzfkkLTxj/68J2qFrJ1qDiPOnV/2Td8i+eZfZqYdG58JiElcv7BzaO6hyhxo2iHfMXyL4MoDBATQiNgsog3kJx/II6j7hrsMAr4bAjdurK3TR+nivqDNAS0Q1Cs0L1I2o0yLb0Zy5NqmT48nnajQSGF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751475411; c=relaxed/simple;
	bh=80RuQ7y+ujvyAzcmRN2g1ivFg+U9xZEyERIJijUePVs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kifj15pC/O3XXC6fLbRSP09OmWQwcH8b/WdGKfPb5+QICQoPmZPYUjzfn3LC+qZUiSJaM52Rk0zCdwxr+nYojbkHlRT+iB4cKPm5MIRU87rGmyIlhMzXdq0GkPC5qpFdlKja9N8f7obfikloSzA4ZzBCoWycz+EpHwf5Up4u/6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qMVdEVSy; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a4e749d7b2so1238009f8f.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 09:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751475407; x=1752080207; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=vb+GdSdO8aRxHjvopyBmCO+JqgxA/yzuhjLIVKidAwo=;
        b=qMVdEVSyUsd1YTrjnzZiZZ92N7IRdxQ+gY7kdhjNv+gTh+B15Ty9Xwu7uQTCBV+ufj
         3bR3n0vy1Q2ii1RvO7WFU+/sOOwgBfIfLMUspJXX3UxtG+HfFAfH22rUoEL2RylQq9o1
         n7kkITg5ihRP2+O7p1YOC51tqMia/8a8lbbJtEvNM7seSJqLc0BKFzvryiL33PK0ZJuF
         5CcS3Zyslm5wt5KEV48aZvXvUXUfHB5IkNyNuwt6J0JNRrIcaJ14ImM8Scy3UuxgNoyl
         RX7WOEGrPcjoEKPU+gbfuPWQrNF6FqaBeo+jdfs9dZ1AKBS2ocUoj4WRsMMSk1pxqDca
         7d+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751475407; x=1752080207;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vb+GdSdO8aRxHjvopyBmCO+JqgxA/yzuhjLIVKidAwo=;
        b=fcHzhwZQDGxk5lNh6z0+i3jMRJh6sqCtuhKltkQ4b2J9cdmiIRMjuJMdOfnzSfV5RS
         gwTYKwJXW4WTLNOYtAOCw36ye4KgCqbRe95ICYBRN1y/i21UmK3FU5HpbyYfOuGEg1O7
         +M+yb9y/isKj9u3U6KTPFTUfoc5k0lypap08EMQjKPr5bQMdmpE6RtNUbZjVaPkUuvFH
         aT3MIQLNEb5/dk2p72/DM/D8q0hlXYdhTEA3t9SSohl4T4Lg3ELe5saUEKLuNW4Z05og
         LeWF8NpFQmReORUpYrLkxZshomTwr8Gtl3pbf28eZOisHy6uB16SOwQchIKoyK+HnEjM
         T/6Q==
X-Forwarded-Encrypted: i=1; AJvYcCX7cRPfDn3kNQCL0Ae4A48InVduRt6XNI4oJqM6+KsFH4j32f73pkv8YSRzOsiV21ZROS/ZSllb5EsB@vger.kernel.org
X-Gm-Message-State: AOJu0Yya10oSMcLXQFgV6P0HV/HlqUmPFSU1qLc+fz4hNuXOFP6OJ5bp
	K5Ri4iudCb1sQ+EfiRlKYsKhkgH0KyBm5ohXmHSnK4Lu4IcHuuMRyrl/yPnQXpcpLJE=
X-Gm-Gg: ASbGncttkmqIt6Qh3PeHpxQo9dBwlhnVFmWo+BbDNB6htGiBEnwj5M6s7nqWsp+Ju9N
	DqgrnU483rfunpFNpIDbA+/vFKCoUgCbEMdKiWYoqwD37mO2W/xkxuFdnVuoH1RmUOWK9iZu9wd
	dXoNlcfc9W+6XEVY2B6hNeotxf5nfq93HK6XUsEjpxlyjWoklzwqySHHbXvoWokUTIW0h5lNgnn
	TyQvbwq4Sh1Rw7+j1E7164rfbk0tVwboN1WYO1DqosBPGsx/DPirq2Uacq6QWjODIa83u2G5ypz
	MKrintLQckjaNXFRL3MYtCxebUZAwItd0kwwun2gvqWpyjFqmXWBQm3tny1psYSP1IfTAHr1xaK
	4BQ7rMa6+pBhVYSY9
X-Google-Smtp-Source: AGHT+IFLdJ+u0q2zZagAQiv9fW8Hy7N2Pay7ePipUpxedkt8PhFcvU9Os71u4ZX0JIRWfaq29yGHfw==
X-Received: by 2002:a05:6000:1a85:b0:3a6:d191:a834 with SMTP id ffacd0b85a97d-3b1ffbde5cemr1202874f8f.9.1751475407190;
        Wed, 02 Jul 2025 09:56:47 -0700 (PDT)
Received: from [192.168.1.110] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a892e5f923sm16137073f8f.89.2025.07.02.09.56.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 09:56:46 -0700 (PDT)
Message-ID: <c8e8341b-b44c-4d28-a17b-1dc81e1f3f62@linaro.org>
Date: Wed, 2 Jul 2025 18:56:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] docs: dt: writing-bindings: Express better expectation of
 "specific"
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250702161700.229458-2-krzysztof.kozlowski@linaro.org>
 <20250702-dicing-yo-yo-ddccd5ae7d5a@spud>
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
 DFH41ZZ3t1Qbk0N9O0FimwUCaBdQXwUJFpZbKgAKCRAbk0N9O0Fim07TD/92Vcmzn/jaEBcq
 yT48ODfDIQVvg2nIDW+qbHtJ8DOT0d/qVbBTU7oBuo0xuHo+MTBp0pSTWbThLsSN1AuyP8wF
 KChC0JPcwOZZRS0dl3lFgg+c+rdZUHjsa247r+7fvm2zGG1/u+33lBJgnAIH5lSCjhP4VXiG
 q5ngCxGRuBq+0jNCKyAOC/vq2cS/dgdXwmf2aL8G7QVREX7mSl0x+CjWyrpFc1D/9NV/zIWB
 G1NR1fFb+oeOVhRGubYfiS62htUQjGLK7qbTmrd715kH9Noww1U5HH7WQzePt/SvC0RhQXNj
 XKBB+lwwM+XulFigmMF1KybRm7MNoLBrGDa3yGpAkHMkJ7NM4iSMdSxYAr60RtThnhKc2kLI
 zd8GqyBh0nGPIL+1ZVMBDXw1Eu0/Du0rWt1zAKXQYVAfBLCTmkOnPU0fjR7qVT41xdJ6KqQM
 NGQeV+0o9X91X6VBeK6Na3zt5y4eWkve65DRlk1aoeBmhAteioLZlXkqu0pZv+PKIVf+zFKu
 h0At/TN/618e/QVlZPbMeNSp3S3ieMP9Q6y4gw5CfgiDRJ2K9g99m6Rvlx1qwom6QbU06ltb
 vJE2K9oKd9nPp1NrBfBdEhX8oOwdCLJXEq83vdtOEqE42RxfYta4P3by0BHpcwzYbmi/Et7T
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250702-dicing-yo-yo-ddccd5ae7d5a@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 02/07/2025 18:38, Conor Dooley wrote:
> On Wed, Jul 02, 2025 at 06:17:01PM +0200, Krzysztof Kozlowski wrote:
>> Devicetree bindings are supposed to be specific in terms of compatibles
>> and other properties.  Short "specific" has many implications, so extend
>> the description to cover them: no family names, avoid generic SoC
>> fallbacks, avoid versioned compatibles, avoid properties implied by
>              ^^^^^^^^^^^^^^^^^^^^^^^^^^^
> IDK if it is intentional, but while you mention this here it doesn't
> appear in the text below. Probably as simple as "DON'T use versioned
> compatibles, unless documenting a HDL IP core"?

Indeed, it does not appear in my patch. I added it, but then I found it
is already in other point as you noticed. I'll rewrite commit msg.

> 
>> compatible.
>>
>> Also document desired lack of ABI impact and acceptable solution if such
>> needs arises: clearly marking it in commit msg.
>>
>> All above follows established Devicetree bindings maintainers review
>> practice, so no new rules are introduced here.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> ---
>>
>> I have vast (~10-page) document describing DT bindings and DTS rules,
>> based on Rob's and other people's reviews (with references...). Let me
>> try to funnel it here gradually. Why gradually? The intention of
>> writing-bindings document is to be concise, so rephrasing my 10 pages
>> covering each little detail into generic, concise rule is not that easy,
>> especially for non-native speaker.
>>
>> Optionally I could also post my 10-page guide somewhere, but then it
>> would be one more document to ignore. I think we have enough of such.
>> Ah, and I would have one less topic for conference. :)
>> ---
>>  .../devicetree/bindings/writing-bindings.rst  | 25 +++++++++++++++----
>>  1 file changed, 20 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/writing-bindings.rst b/Documentation/devicetree/bindings/writing-bindings.rst
>> index 1ad081de2dd0..dc0e4b63984c 100644
>> --- a/Documentation/devicetree/bindings/writing-bindings.rst
>> +++ b/Documentation/devicetree/bindings/writing-bindings.rst
>> @@ -39,10 +39,15 @@ Overall design
>>  Properties
>>  ==========
>>  
>> -- DO make 'compatible' properties specific. DON'T use wildcards in compatible
>> -  strings. DO use fallback compatibles when devices are the same as or a subset
>> -  of prior implementations. DO add new compatibles in case there are new
>> -  features or bugs.
>> +- DO make 'compatible' properties specific. DON'T use wildcards or
>> +  device-family names in compatible strings.
> 
>> DO use fallback compatibles when
>> +  devices are the same as or a subset of prior implementations.
> 
> Isn't this wrong? If you're a subset of a prior implementation, falling
> back to the prior implementation's compatible would enable features that
> are not present in the new device. That's not something you introduced,
> it's the existing wording, but I don't think that's correct. It would have
> to be a /superset/ of a prior implementation for this to be correct, no?

Indeed, this should be superset. I can fix it in a separate.

> 
>> DO add new
>> +  compatibles in case there are new features or bugs.
> 
> I think it might be best to break each "DO" or "DON'T" into a bullet
> point of its own. At least it'd make it more clear what the specific dos
> and don'ts are.

Ack.

> 
>> +
>> +   - Use SoC-specific compatible for all SoC devices, followed by a fallback if
> 
> "Use a".

Ack

> 
>> +     appropriate.
>> +
>> +   - Specific SoC compatible is also preferred for the fallbacks.
> 
> I hate to nitpick language to a non-native speaker, but when you have a
> plural "fallbacks", it would be "Specific SoC compatibles are also
> preferred". Probably also "SoC-specific" too, to match the wording used
> in the bullet prior?

AcK

> 
>>  
>>  - DO use a vendor prefix on device-specific property names. Consider if
>>    properties could be common among devices of the same class. Check other
>> @@ -51,12 +56,22 @@ Properties
>>  - DON'T redefine common properties. Just reference the definition and define
>>    constraints specific to the device.
>>  
>> +- DON'T add properties to avoid a specific compatible.  DON'T add properties if
>> +  they are implied by (deducible from) the compatible.
>> +
>>  - DO use common property unit suffixes for properties with scientific units.
>>    Recommended suffixes are listed at
>>    https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/property-units.yaml
>>  
>>  - DO define properties in terms of constraints. How many entries? What are
>> -  possible values? What is the order?
>> +  possible values? What is the order? All these constraints represent the ABI
>> +  as well.
>> +
>> +- DON't change the ABI, but if ever needed to change, then DO explicitly
> 
> "DON'T", not "DON't". But this immediately contradicts itself, so maybe
> a different wording could be used here. Maybe "DON'T make changes that
> break the ABI without explicit and detailed rationale for why the
> changes have to be made and their impact."?

Well, the goal is that ABI change is strongly discouraged but still
allowed. Your wording suggest that ABI break is okay with explicit and
detailed rationale, but I want to express allowing ABI break is exception.

> 
>> +  document that in the commit msg with rationale WHY ABI has to be broken and
>> +  what is the impact. ABI impact is beyond Linux kernel, because it covers also
> 
> I think this should be "ABI impact /goes/ beyond /the/ Linux kernel,
> because it /also/ covers other open-source upstream projects.".

Ack


Best regards,
Krzysztof

