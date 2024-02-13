Return-Path: <devicetree+bounces-41277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A5C852FDE
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 12:52:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A73D1C229C0
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 11:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE5CA38DEC;
	Tue, 13 Feb 2024 11:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="deyJfSsv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A0F51000
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 11:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707825073; cv=none; b=myFRCUTXUpSt5QAmowHTTp/gG39f9OcyhafBEO0XaWiUjiauBcR2z1+rqsv9GTaBa6BxxgztTpFxMtECFnyYHL8h9XyfKTZCI02lYFxud4obqPi79Ru4RISP+RhiNi2BurbOIokc0mUF6grPZY3lWS5lNMzrn2IIMbDxSjPypVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707825073; c=relaxed/simple;
	bh=4603e3PkZNbPXtHeYYO5vNd86aqUG4Vw1hr5xQG0ETs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lWzrUPoYY0O525bh6fdXHyS4aYelFKfLtGmyWfskp6lq/SIaGEEjXRPXNjiJq2m4E1D4xV5DZF8HKR31eFvcu7K407Sx4zFvdhJjf/o9Ze2BOmqxNunbtcWAf46E/Pqd9r2zrWXqAdE+XBkC+knmUDL30zSNG5B+o9LaLYNVAs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=deyJfSsv; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-33b401fd72bso2809255f8f.3
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 03:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707825070; x=1708429870; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=KCJUUo4NY8H1iJowVwWL5uTUekQPIffQFSEsxY0BDG8=;
        b=deyJfSsvC2xFNy5syC0ImzO3F5AjEFCwZ52t7Em4xzAmHwfHd09rDqYaR726EROlaK
         JWEpWzpCSuET8lsxJxzjnvTHdU9WdeIuxGEgvf4WoauXe0sYoP7zvYz/JH8Y4BdTeZqA
         EBavx0M/Eu1vXIjJAL2NDJZoXH6cLue11G/8TTz4qiZ0ocb0GvXMuhMZ4hNGd8e0su4h
         TbwC8bTjUL4WOjzCZ0bRRNa8cwmNkqN4hOT6Ft1oJhmvQlanBnphRv1WeFF1YTbo1h1o
         DC+BmThuZYQb7NpJDeB1jg1mc1pAxHhXQNPhGHYDGtnZCSdu/D8+arvBLwMZ6WZy0X7b
         2Zvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707825070; x=1708429870;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KCJUUo4NY8H1iJowVwWL5uTUekQPIffQFSEsxY0BDG8=;
        b=qgO3SSGS29PZx3AdyL+/A94S9PJpyO/Z+NyuHgG15RAdhCOWc8dfDY2/gwtarUpsao
         k55cv1eKTSLBwYyCClYb6I18E56cCJknN+kzSgPSWZWsjKtEusWz14xrNH5NVAbxZs0v
         lGRp0aZLbQZaQybhR4F4A8g+163T4rAZWmTXS5eTFBWQOGcaK/MOAI03d9lN78/6kKZH
         ZYtlpnQAdagCnl1b/njEh+lP/D/r1nGsbbElhuPb0KeWfbsTO+2QMaeA9XUGEzosjuH8
         wcsUmgdoJYsZ7nh4750d0FKSsNMDOthMF1KilCVtKAjs6uj+ZdsTmf0RB0eUdFIEAR5z
         frbw==
X-Gm-Message-State: AOJu0Yy8kvoyPUM4aTz+x3noafAMP+JUiQsN7OxdojJtiVCBB1TbA6zf
	QpYI9WJ64xYcyJfUh0o/ihTG0nklDTcllNY7KZ+xYmb9XE6OFD4HbZEqp6i1XhY=
X-Google-Smtp-Source: AGHT+IEnrKObr5hq2yICYsBQYVK4BBhB9K7XzXqG4lCfv3DJwJUjXYEQmv8obG0ucBf+pSFKQNJy5g==
X-Received: by 2002:a5d:53c2:0:b0:33b:876f:b7d8 with SMTP id a2-20020a5d53c2000000b0033b876fb7d8mr2697559wrw.42.1707825070298;
        Tue, 13 Feb 2024 03:51:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVJ4/81GGNGYeGVI0uJVMAHZzGFpiB2/ulmLhkks6BholmwE53sv1Elt5CYUNaSK+3eSOKAG8PobsfaiJWPDQBh4lmZGnBgJC/g2WyvTTenDNuoPUvRLbD81KfoLUnudAN0M3BrX4h1kFYyPYGHojz9BKFliqy7h0qFN4nPj6doeao1ZHjwFAXGAyfzDFPdJne52JagoGJfr6KrwcJu8QsOWm79BQWRGR05cSvk/oOVSUM6fSIgVh0nQE4sOaJ9RgS5H7/a/bFv83IKYxQI42wOe6WN1t1QjKfRnEbN9F8FAmZEune27N39cRsJYkTE10FS8fp/uBbtYQ1nvbR0jg7270KiTcrFPTQ2DUvNGs3YgTsOwNdiEbuvo5ALZrwO8vrJ24RrX3XpcZuuoqCFNhSsOWyeEtKlRKUqUNXXZYEZ2T8JbUQx/q4x74W6+J/s6neGI1NfR2OL2xIAKxfEziWzDPCe/a8Knsc6hLYAAzLM6rfTVW0+yMmDDzttaBiWqwx7A0CefrISR1vFMAQd6PntCBZazYvpR8JeSl5t6lGGeKIWFQrDLjm/ajTXq2qGbXLBjaYU19Y9+z3iGVaAyOMJUpy0IrsbHve6aKRM0508
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id ce9-20020a5d5e09000000b0033cddadde6esm1090631wrb.80.2024.02.13.03.51.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 03:51:09 -0800 (PST)
Message-ID: <d39c2186-026f-4326-b666-5a90422a5d68@linaro.org>
Date: Tue, 13 Feb 2024 12:51:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] dt-bindings: display: st7703: Add Powkiddy RGB10MAX3
 panel
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, megi@xff.cz,
 kernel@puri.sm, agx@sigxcpu.org, heiko@sntech.de, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
 <20240212184950.52210-2-macroalpha82@gmail.com>
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
In-Reply-To: <20240212184950.52210-2-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/02/2024 19:49, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The RGB10MAX3 panel is a panel specific to the Powkiddy RGB10MAX3
> handheld device that measures 5 inches diagonally with a resolution
> of 720x1280.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


