Return-Path: <devicetree+bounces-69185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 207958CF113
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 21:04:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C4B41C20918
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 19:04:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF7388627E;
	Sat, 25 May 2024 19:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g061LE9j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225551EA80
	for <devicetree@vger.kernel.org>; Sat, 25 May 2024 19:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716663864; cv=none; b=N9SL6HpMKxXHmdsNwWYQsRbrHJ5JdCXFHcXmu4z8bo4NA5WSAMLwnQXOrjSo4MNx5dSITG79soAGyi02PbkV8orWTHVrgjPWFW+KLt2DV6gIKbivct8EozYCrT7bLaLvEAMSTA5XkgVCQUqiKPRI/FhGoZ2IgfXMjz4lIJRMdI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716663864; c=relaxed/simple;
	bh=/See5jto9p2scbMeKh1uMiSwWJCopgWD7Az8DoUFzhc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D19/rrYMJR4dRuvPpqnO9xAIe88Jm0yzGYpdLxigO+IjF042Ct7kDFcjieDD/aU/53M6eGaHE6Ztiyy22WLmBsaKb0JdAVkqI+Hpl+oi8eiW8j+OWCi2hQ+EPgjg5YGM3iv5dXvpIfdbhatwuCnsK1szeLehVXAQT74DL7NzX/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g061LE9j; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-354f14bd80cso2669894f8f.1
        for <devicetree@vger.kernel.org>; Sat, 25 May 2024 12:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716663861; x=1717268661; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=fDi9Uy3GabOVY850baG93pQeCFsJNsVnKYjUICtE5vs=;
        b=g061LE9jFJd3H2+l2TEr/VtGdCvlOE10wHJpkVzk8YTGVWwtyH2gDyQwWL6jS58VoM
         qWZ8o+UMd3XAoTZaD38iYGojkfCNDw7aYr7OpMrM1iPurAfH0YOzB3FYK54I1Kjr7qVy
         nKtmguPpEVOdhY4qNIle9yYVPrA0yAcMLnrge2DFUcv6rIwZb+wtDe8OtvrgPJy8lzrP
         MuL762QqsdGfsJBnQ688bo+hJmoGy3keE+6vH7nJ/KdVa06+ziPl7L/Q6POuZ8sgbwMF
         wFDWo9SvOaFj5kiNEnt+Jkm/A0+TWMy3kOS6Jijci+9tFWfQuQN10zpRSYWstJVrJL4t
         PbHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716663861; x=1717268661;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fDi9Uy3GabOVY850baG93pQeCFsJNsVnKYjUICtE5vs=;
        b=T13PnEhxBz6xLJ+CsDo1HQgR92aW1RnM02DTTfQd9K3zUUWP0MXYGuJjlzGjFRuXuH
         SFGmgzZCnuSzCB/HpK/CQar84LDUaTr86q29GLLmhJSzCvrFHNg8lWrRKGNURmmiE6Z3
         xIQo3GBmW/9lok7gqiPZIlkB8XQWcaelXjItNusDgWJVa9w/tpFvPFm23Pc0j7ld2RTH
         Zs8yY7/DXR3zYGrF5BegWE3O9bH9ULy0085JzwDneBlpHat/lykLcizm03zYqifhspbX
         wWewCThWg3dCpQoNFYSJnZz1DRR0hLDJ7SrXlX878lRZjitW6Kx+YNMkObwZj9lEXHN6
         aX+w==
X-Forwarded-Encrypted: i=1; AJvYcCWcw9ToR0H9D/1vz3F5TYwiNwQxSzL/jiOJ3Y5MkXYiro9RNLRyukRirjsoImgsAkUSDbNSQ61S642d74XqTLm3nliRJtZ270KNng==
X-Gm-Message-State: AOJu0Ywz4r1wEuN+ii/EIYNz+Y4apBHD0s6RzbfXfO7SnibZE/D/vRGD
	6AsrnRifsHIyWhGs7yGSY7DWqVcuEFUxDVe6xaCf+nZzRfo+ijbMvvhzzqbnkpw=
X-Google-Smtp-Source: AGHT+IHIwAlGcdfSyCMOwUuFObfndN858MqKmYysbLNFGDcErQHAFVU5yKVsDDbgnyvVOYclwg14hA==
X-Received: by 2002:a5d:6950:0:b0:351:d78a:b75f with SMTP id ffacd0b85a97d-3552fe1793fmr3739596f8f.70.1716663861417;
        Sat, 25 May 2024 12:04:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3557a1c96cbsm4658638f8f.75.2024.05.25.12.04.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 May 2024 12:04:20 -0700 (PDT)
Message-ID: <b156315b-258d-4e8d-942b-7dbf46ed57ba@linaro.org>
Date: Sat, 25 May 2024 21:04:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] dt-bindings: gpio: lsi,zevio-gpio: convert to dtschema
To: Pratik Farkase <pratikfarkase94@gmail.com>
Cc: Pratik Farkase <pratik.farkase@wsisweden.com>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240522151616.27397-1-pratik.farkase@wsisweden.com>
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
In-Reply-To: <20240522151616.27397-1-pratik.farkase@wsisweden.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22/05/2024 17:16, Pratik Farkase wrote:
> Convert Zevio GPIO Controller from text to dtschema.
> Adding `interrupts` property fixes the following warning:
> linux/out/arch/arm/boot/dts/nspire/nspire-tp.dtb: gpio@90000000:
> 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'`
> while executing `make dtbs_check` on Texas Instruments
> nspire boards.
> 
> Signed-off-by: Pratik Farkase <pratik.farkase@wsisweden.com>
> ---
> Changes in v4:
> - Updated commit message to describe addition of `interrupt`

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


