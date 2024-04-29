Return-Path: <devicetree+bounces-63560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF8F8B5589
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 12:38:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6257B2828A1
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 10:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEDF81EB2F;
	Mon, 29 Apr 2024 10:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CVXDGWze"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BDC200D5
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 10:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714387057; cv=none; b=KELybZRqmP9IrTVOhI0fS/YOticOBMafa4CnlJGnxHlyHsxlJl8VI2qll9mf92dF3BlmomLm6ptlDwtTOInQD6aJrF/Jp885M4x2a0E/34EOSLOgs9+RvgKP0KHqe9Q47G3X1aTa/25vm1TkGjdgA/6i2QLiMZhb9ke0SrpjB/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714387057; c=relaxed/simple;
	bh=WJOLQYAvBYdjy4HjoPjmjkcsk5XPb/f+n2lDWzlpbDY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ax0VusY2bSh/x3XiIr64Bejbqa0/UIJVaVGh2y8wj4j7d046yqOkoaFdZ9Z67wFVTnbVif6iFIqNOX0/LZht5QtYyovdQ4ey4s/jbu53+4C6+M0jtbtcC82HmOv98/osXc938EIsxO3HoEEmBMpzHKimAXKIlvCuF2UtUpmzAxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CVXDGWze; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a5883518135so481821966b.3
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 03:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714387054; x=1714991854; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=k+HY0/8eQZDYc7EJq2OS9HjETLdWHQ1KFseki352HDY=;
        b=CVXDGWzellheWhePrcEafwPrK8AkEwSiKExyxdEgSksOO4ZCwI3iY0pqVAFsCKTpxn
         6e9ldZvTNfdyAJzxOQLMPUMsdWsQzlPS4oJQLAhhqpRU9cOlbPhvDh/7YAlVITLR9GHq
         ZTUZHQajxwzpKlKHnAN9Ek/zoG5m8R6qv+gNZxBE1adJIfSglUpA2mhYrY24by+zjm0k
         BuwhwxPEGcG3gztDptpfZ9uI5Az3mY2v8e+PdoAIsN5HhYeCfze4Mb54VMkJ+Ck5um27
         ALaku8jkOXCFZkqyVjorbNNHbOAZnBxOEMJk+1l8PlTIXdn9Ex/wP8Ji3W7fN2lDzFdb
         qw0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714387054; x=1714991854;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k+HY0/8eQZDYc7EJq2OS9HjETLdWHQ1KFseki352HDY=;
        b=cnAEp3A9MkKu4XfN6yXYx0Pq2ZFUQt2x+KItxqZ1l5OtS2A46LPxz5bhic6YKNwHCl
         VCpUuoq1tN3q3U0pOrbChg3MDGeJ1UKzLKnBTJEJb7540zZuOoqOO9iNSWZ5UV0zdQ9c
         qoq7n97lhlBhHltGRJGBlH/0npikzd35sbLh6t80VVkEWFrPjq7MtJqmmL2y3TvqtynV
         B2xzBCdssHXNxdM9Vsnaywj3xFsug0YHFxHkkT9x0x9QnxkQwo6VKCGUTg2C1Bsvl/0P
         wYYYaEzWLubsvnJ+VABVMPzOnLr2GmcdgvnNe2YmDq0MTPms2gNPOTOktHCipADMsnx7
         ryMg==
X-Forwarded-Encrypted: i=1; AJvYcCVtLzJdxrzjnrm49Izg9F//DfohfEKjXXeMlsUZA5eIVQLMY8vTaJCRkuCD7/QVVwsQZXN4zhpKS+c7JFmK0nbITdnKTJmOnVjp7A==
X-Gm-Message-State: AOJu0Yzz5hpDix/VjHXxW5h72IYGTV3iyWkZPfAR7DeJsPLCfhxIzu5s
	ri2BjoV3RUUgb7XDWkwCnAFUmt942Jrb0uYZK38j9XDi9Ac23nXRWraZRBq7CEQ=
X-Google-Smtp-Source: AGHT+IGzoWLBf8bPMebkpe50qm7I3lRBGAIRVW0qhpVvN0T/UVdoHHhQYl4bWSbNjSfm68wsMfk7sA==
X-Received: by 2002:a17:906:4a83:b0:a55:5e89:a158 with SMTP id x3-20020a1709064a8300b00a555e89a158mr3988888eju.68.1714387054379;
        Mon, 29 Apr 2024 03:37:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id e6-20020a170906504600b00a4e26377bf1sm14003014ejk.175.2024.04.29.03.37.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Apr 2024 03:37:33 -0700 (PDT)
Message-ID: <1b86b755-62cf-4990-9c7c-29444038d17f@linaro.org>
Date: Mon, 29 Apr 2024 12:37:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] regulator: dt-bindings: rtq2208: Add property to get
 ldo of RTQ2208 is adjustable or not
To: Alina Yu <alina_yu@richtek.com>, lgirdwood@gmail.com, broonie@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 johnny_lai@richtek.com, cy_huang@richtek.com
References: <1714385807-22393-1-git-send-email-alina_yu@richtek.com>
 <1714385807-22393-2-git-send-email-alina_yu@richtek.com>
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
In-Reply-To: <1714385807-22393-2-git-send-email-alina_yu@richtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/04/2024 12:16, Alina Yu wrote:
> Since there is no way to check is ldo is adjustable or not.
> 'richtek,use-fix-dvs' is added for that. user is supposed to know whether vout of ldo is adjustable.

1. Please wrap commit message according to Linux coding style /
submission process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597

2. Start sentences with capital letters. LDO is acronym.

3. Constraints already tell you that, don't they? Explain why they are
not enough and you need new property.

> 
> Signed-off-by: Alina Yu <alina_yu@richtek.com>
> ---
>  .../devicetree/bindings/regulator/richtek,rtq2208.yaml         | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/regulator/richtek,rtq2208.yaml b/Documentation/devicetree/bindings/regulator/richtek,rtq2208.yaml
> index 609c066..3951679 100644
> --- a/Documentation/devicetree/bindings/regulator/richtek,rtq2208.yaml
> +++ b/Documentation/devicetree/bindings/regulator/richtek,rtq2208.yaml
> @@ -75,6 +75,14 @@ properties:
>          description:
>            regulator description for ldo[1-2].
>  
> +        properties:
> +          richtek,use-fix-dvs:
> +            type: boolean
> +            description: |
> +              ldo vout ability is determined by this setting. If it's set, the voltage is unadjustable.
> +              There is no risk-free method for software to determine whether the ldo vout is fixed or not.
> +              Therefore, it can only be done in this way.

Wrap according to Linux style (as expressed in Linux coding style document).


Best regards,
Krzysztof


