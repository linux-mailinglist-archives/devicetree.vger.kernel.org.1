Return-Path: <devicetree+bounces-48013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC82286FB05
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 08:42:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73051281A09
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 07:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 049DC15AE0;
	Mon,  4 Mar 2024 07:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BL0MLwJD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3330514A93
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 07:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709538150; cv=none; b=TbGONvNU6t4DCzoEn5sFiYoVIpBtUwK7BkFakTmLKTOYPOaE0kVn55VZ8AnrKYPNpaHKB1xtdeaKiPf1j8Qei7ZAgXSjjsYNtbN+hzUOhxU/wZoLHoW5onGgX9JSvszWuYrVgCB9H+hqHtv3lT/lNL4mw5jv0/mHs9ul6cCDNUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709538150; c=relaxed/simple;
	bh=wHrnO9MEYkSglX4V8pY7s43BTkHCcrrgAscUCCn+NTE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D1xgrBNc7J495g8jiOm3ireGT3ZAWrddLmP4qb2J6HZiGx+qugiWyAFnzdGY7jDJs5iT6X/T6gl9PmsVrY3XBJ+6cZgKyRh/FpCR0Mq0j7k53XbplH6zgOlIBqGO1vjf5YiJj7jqOcjl7651vVx94yQ43qy3XuXgD90W0UJoC60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BL0MLwJD; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-412e72b0d96so808345e9.0
        for <devicetree@vger.kernel.org>; Sun, 03 Mar 2024 23:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709538147; x=1710142947; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IjPvW4Gi4NfZ0JPJqMrKvEOUsa/+9VYX0RPnYAYt3dk=;
        b=BL0MLwJDjax9JyqBt+Tv6/pYJZKCtMBu7zEZ5qteEu72li3DYW3kK1mkU/jdRmZnj4
         5tw87OYKtslqP10AWOeJBPgr0vgxT5OcO9nVM/AUHs+avSxajs9c2nbRKqj65EiT3EkH
         0F+vHZIPEt+cEVp/DGiEu+7vdLS+bIBZBRVrHEWzA2kgius47Cwc+UH0kcaiBG5W9eQ8
         V3ja7O/r8DiOrYwgMqo+xJYWGzAVCxp7nxPtkkCl+LSPv/j4hKQJ93E7MYRabIx+8iyF
         44e/ErdLNqjGFUfMcSVFXsJ1rVlVwQ4J5/N3KMQ11CSi7sIKTVWTYk0yUDW5N8ELwVHv
         ncrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709538147; x=1710142947;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IjPvW4Gi4NfZ0JPJqMrKvEOUsa/+9VYX0RPnYAYt3dk=;
        b=fHjQdJXqMZhz5kIGiBg/NfKl4I4FOzevqe65nBjWM5Qmhj4hCL9g9Hu1bnZvWg8LYp
         1K2M1ZHgj80ovowyeCkTk/xxQLDgBQg9YLWwSORfmCjcWWMUm8nQ9IKi6/sbsDBol7KA
         AEQa5KmBDfCsfadpzuDKH4od9aR72mLf/NfJRTwD5higk9Q9ZzJimc8Cu0bgzX4OSfQz
         Y/iLNCdqoesQTnshOOrcJgR7OBB1vjasRr3hBZ9pkv6NfEIiRgOO9UobxUG+8jDp2Atw
         utECYl6dlfJ8E95CUFL3O6k+fS80kg0/onOcM9v4E3pUmPxiLJsRCoCHkiwzRdhKKnzm
         XFuA==
X-Forwarded-Encrypted: i=1; AJvYcCVwFLCJrw5jqafRvG7FiNvoYQZMXzII8mpSK6T22yPWIWgfZ1yEHplgpEIBy/gbhZsc142Y2ytWeOVSmBuUwfr/Kt2buAB2vNdJdg==
X-Gm-Message-State: AOJu0Yx3HzY9tFDfFYTLFKqc30wwIzkTb1hgBPeFQoKN3ZM93Er0NCQk
	TXkPBG3QgqdLTnytAiCcnuXnVIbBTsvgPuYt7r30OvuVrLL6NW6jnUTweeC5504=
X-Google-Smtp-Source: AGHT+IH1zL6q6gCugcgWzrzZC/NENbtIIl3RFr3u6ezOxBSnQUMLsVTRBN9t5ESrgJCoV984DvqyIQ==
X-Received: by 2002:a05:600c:5251:b0:412:b105:1468 with SMTP id fc17-20020a05600c525100b00412b1051468mr5457834wmb.27.1709538147354;
        Sun, 03 Mar 2024 23:42:27 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id l19-20020a7bc453000000b0041292306f2csm16490671wmi.16.2024.03.03.23.42.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Mar 2024 23:42:26 -0800 (PST)
Message-ID: <014902e4-65bd-4654-ab2e-cdb23b680aef@linaro.org>
Date: Mon, 4 Mar 2024 08:42:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: qcom: Document rb5gen2 board
Content-Language: en-US
To: Wasim Nazir <quic_wasimn@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20240304055333.15952-1-quic_wasimn@quicinc.com>
 <20240304055333.15952-2-quic_wasimn@quicinc.com>
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
In-Reply-To: <20240304055333.15952-2-quic_wasimn@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/03/2024 06:53, Wasim Nazir wrote:
> Document board bindings for Rb5gen2.
> Rb5gen2 is using Rb5 gen2 SOM which is based on QCS8550 SoC.
> RB5gen2 is development kit used for IOT solutions.
> 
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 0ca4333fa8cf..70b5034c4aa0 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -876,6 +876,13 @@ properties:
>            - const: qcom,qcs8550
>            - const: qcom,sm8550
> 
> +      - items:
> +          - enum:
> +              - qcom,qcs8550-rb5gen2
> +          - const: qcom,qcs8550-rb5gen2-som
> +          - const: qcom,qcs8550
> +          - const: qcom,sm8550
> +
>        - items:
>            - enum:
>                - qcom,sa8155p-adp

Please keep order by fallback compatible, so this should go after sm8550
boards.



Best regards,
Krzysztof


