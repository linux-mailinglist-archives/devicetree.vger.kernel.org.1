Return-Path: <devicetree+bounces-44205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5E585D1AB
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 08:46:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53B601C245D5
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 07:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60E883A8E3;
	Wed, 21 Feb 2024 07:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fGEXO5Rp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91DA53AC1A
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 07:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708501610; cv=none; b=GVLBqzSmq109s7i+k9rAfPySElpV+hRzCDZwg3M2eEiQ+VGe5EnvcZdQqHaT5DeXOQs36PM+PReOM0tSgQhoDpEOgd93RTg45DysI6+JB1SxEEiM/HedPOE1paqPBSEUioDzWEpGOFVidwpOJYBOrJijndaMzkU2CaPcCUzvPAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708501610; c=relaxed/simple;
	bh=sSQ/jlv+wrApdtR3aaeUY836qCe526SwtF7W7JrdHZw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KyJYFi1rRSWJtfV+9/W9qHfgvs3W9GTrOb6hES0We82r9cdxZsyg4vk+Lq8W0gFxMN7dvyaSHWv1nOtd78dd9FKe4pFDsPMMrO5YlFDR15l7KvpiPWxFWpi0pZ1pbzezDPX6OPB2TxHzpgMB1xmB5PNxMxkljbY7QzDqiTcmd+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fGEXO5Rp; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-512be87a0f3so365908e87.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 23:46:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708501607; x=1709106407; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cBAm6x2M/bdI1h3g/3Ua1n7qOY3go9NlN2hBYhbxKys=;
        b=fGEXO5Rpy8qwXzBHudWz0YuthD64BFVk+GtZ3htpSj9AaTQynAeY16alHLlF/7Qzlw
         9ob721rjO9MVXUy1TOI/D2NUcmcfjAVWunsx7kSeSJgenH4+IGloyGHQ6LrXihiclt3E
         BQnnzEpvC07uiPLbo74IB5kS2bDsew1Wc68BbhV/0nq+6mpWO5Eofx3wtfPbsI5TxnbJ
         3lMS2I981ikcYIWbSRSU83Jbf0usIHO4Sh2eFLKISuhvwk+GCiGPzCz6jPgzHERR1Sos
         VWmnutEDSNZCcHcYrFTvpAHdMZygK0h9TaYICdutDIEbmdwTQVJ+zXqumwP6u+Sq2hHN
         tV+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708501607; x=1709106407;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cBAm6x2M/bdI1h3g/3Ua1n7qOY3go9NlN2hBYhbxKys=;
        b=jJH1iJXlbt85qadD8GHzqlhOtzR1a8DSwsIYEGhhZPabIIfMjOXLno4yi5rtyrSAkg
         Gf4c7gYLCG5xvR5ILibra2uADJmd7xbF2cg/GKFLPDQyBo6IfZQq0unIAbFrkkwoWwZK
         bYkWV83ChVHw8L4ZcGTgOIr6bjmSnx/JlZcCsor63H2u1tKTmfIY8Wq6Z2C90Ierxwzx
         egdQEOlXvT9YBgQDJLzvO6a9XtEoeFNoPGYmFxlch2iU1xz/drbLO7kvVVt5+zLMb1Tv
         BHu5jK5F1PbCBs5ROvS+0zbsZ5GuGfEQGHoiThCGtDLOjlMK4EV12paePqve09Yf9FFr
         Lt1w==
X-Forwarded-Encrypted: i=1; AJvYcCVpxWBbKsXN+dyN8aoitAkPdFIWHlEY2JMVByVyiWuvmqEf4z7/iZwd723fbWZunayITo6KXUzlolAlOBdIbEvTTfECx0fVTjs29A==
X-Gm-Message-State: AOJu0YxuYz0m4VAjZPrYiE2ZgookjWbR9mOzOUIlx7nKbrvnE6aWc/2b
	7xn9AadJaeKmmCyLsL3TE6Rywx52MHvcd968PnjR2qTLjRrJ09jHmGMJcTg0l34=
X-Google-Smtp-Source: AGHT+IHeRJ6v7/TBiRUwOpv5xQIkZn650LHJAsi5VDA8mJgqmwzgQIzfRyvAo2N224ZWxTP5kPHayw==
X-Received: by 2002:a05:6512:6ce:b0:512:cc76:4dab with SMTP id u14-20020a05651206ce00b00512cc764dabmr2306704lff.29.1708501606762;
        Tue, 20 Feb 2024 23:46:46 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id x17-20020aa7cd91000000b005649df0654asm2036146edv.21.2024.02.20.23.46.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Feb 2024 23:46:46 -0800 (PST)
Message-ID: <5416be0b-79c8-4677-b7a7-a98f8e7160cd@linaro.org>
Date: Wed, 21 Feb 2024 08:46:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: defconfig: enable Airoha platform
Content-Language: en-US
To: Lorenzo Bianconi <lorenzo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Cc: lorenzo.bianconi@redhat.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, nbd@nbd.name,
 john@phrozen.org, devicetree@vger.kernel.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org,
 angelogioacchino.delregno@collabora.com
References: <cover.1708473083.git.lorenzo@kernel.org>
 <baf5af70e4c42042528914179b701f3dafcc972b.1708473083.git.lorenzo@kernel.org>
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
In-Reply-To: <baf5af70e4c42042528914179b701f3dafcc972b.1708473083.git.lorenzo@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/02/2024 01:04, Lorenzo Bianconi wrote:
> From: Daniel Danzberger <dd@embedd.com>
> 
> Enables the ARCH_AIROHA config by default.
> 
> Signed-off-by: Daniel Danzberger <dd@embedd.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index e6cf3e5d63c3..3966dbb79bb8 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -50,6 +50,7 @@ CONFIG_ARCH_LG1K=y
>  CONFIG_ARCH_HISI=y
>  CONFIG_ARCH_KEEMBAY=y
>  CONFIG_ARCH_MEDIATEK=y
> +CONFIG_ARCH_AIROHA=y

Are you sure it is placed in correct order? Looks a bit random, not
according to Kconfig ordering (savedefconfig).

Best regards,
Krzysztof


