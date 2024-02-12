Return-Path: <devicetree+bounces-40583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88384850E88
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 09:04:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD2191C2173F
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 08:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BF5A29A1;
	Mon, 12 Feb 2024 08:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Smr5UdkJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE9E8832
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 08:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707725076; cv=none; b=HLOf8IHyplRaGzIKOp2qrrjoYx2Jw9dS73UtKO2l2Dqlqmim/T7ggyt2X1oI+oSkb0yaVI3SINGj7h5KbGgpAO9nEsYr2a3sC6tWwTgPrNGv9/BSBi11WSMvgggVdqcehw8mqJJ2NZOmRSDckSSWXjWWV0a5wMnMLbpX6F2pUkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707725076; c=relaxed/simple;
	bh=Vk1P1Rczf/2bP23hjRthpzBHsD1I1CyukmVUcpTt+Q4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cnb4BzG/j3uGawpr4f6XrqwTRdhBqy6dYUf7xweR84CADn6CrVESiRJFK3Pap2Kg3EmAicCIXyHijzDqy5Dr955PGdC2wR+WV2Pi/pt61+p6N0NQSSdq86DP76KtZfEzYs9VlytqufK5PEWiyovxarQrKfH9O5pxpaNFg3EbRrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Smr5UdkJ; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-410ed9f8621so1393105e9.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 00:04:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707725073; x=1708329873; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u7bOM1o3/YN1AMyucpozgMnHKjgJ77fwWLYg66eRFrc=;
        b=Smr5UdkJw5anpgb6B/O0oCz8t+4E/olLPEzgoc5i/yBlaLLAbTBWuNOYDdNwsXDHnz
         FEMgeqvqr2LiWArlZ+PodDPEn2DaZX5t7m0xkz3VWlDYhP9mIEfOKMbX7XHQS5nPOEcq
         J8XVmMupsdlvZjyQ7oSk77ACCVsbbZv2V9s9x/eOPZd4Hpy61O5g3DAj6a0V0nPa7V5s
         2gkGjV1Exl3GZK478z4ib4p4JzM4Z+5aQt87XTcjy9+XxcldtxbIeRS3ZKL4YcffZICr
         +Ic2/TQSw1SrVmchOdUb5gwuhtNsaKsiLf7JezhYgeKfElVVvlQZggISxwTf6Eu2/Quo
         GVEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707725073; x=1708329873;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u7bOM1o3/YN1AMyucpozgMnHKjgJ77fwWLYg66eRFrc=;
        b=FlwUK8SwOZigWBnuDd6U6qSxa6syNdQwrqlPGZ/D17sdtthh/f8hWpfej3/kIPCcTW
         O9gLTGiEk8Sic7KKBE14/fmbao66vRYT6STQLtMQlxBFYr/zk05zT2I/banofgmSACGJ
         v0TopqwX6IaIi6lKDRTDvW43YvmVRXUcpkyH/PJ1jEoA26gMKsCemmLUCL6+SanKehOr
         OAqNbA+y93wqF1Ez+rhmySSj5dm5CJk6BLOKnopAdy8JqvwkkEqo/OuRLckxlSXrTbWz
         p+saLbL6rhlFGF3w1F5o2YgptZeeg3IWIqpiWP2to2QC88PAD0Ezp2+xDNt2gw2H3CjD
         OAiA==
X-Gm-Message-State: AOJu0YwBDhlFZLht/7Cq6P4+9VVBaStZuDkR2wWaIRrzdAwTGtyTyEqk
	cmoXHFkstQm1NBgkQEGY5hlef2oz9MXFjsCcr3NiIwI32RuHKEZ4F5HZnCA9jhk=
X-Google-Smtp-Source: AGHT+IFFXfUinvWsrRLRvD6REKumcNib65455btudcRkZpnKKiMA28IrVolucYQiHTCIfqnvdaaxmQ==
X-Received: by 2002:a05:600c:198a:b0:410:2ab8:d16b with SMTP id t10-20020a05600c198a00b004102ab8d16bmr4416939wmq.26.1707725072842;
        Mon, 12 Feb 2024 00:04:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWMTvl71JQoLZpoGXggPeVEVLYb6b2QYnxFxwIMHZ4l/+BdC0TSfrapA+eLdp/KvUMsEvv8T+7e9JPd6sYm6nLbH5jY2dhMxEI+L32Dy0Po2KByVQuOsFBLdgj1XwvkHoBGSQ98HE2KE7wM/Me124ZYKWWVUI1tZmHZB68u+8BaZGw/KOGl4fHKmxG/7lxe30yr4FSJAABcTq14FcGKLT22DKupy46pyCJ4cyxC+prXz++HhSxxNquaWwHXhyYx0B3VF7w9SS/pN4JFJpHsm3Fthlx7k/R7Cg/WxjJQb1dd7Z5/W8uXPNdavFvlmZIIDA3+AGhvZfObioGxvETzS13hGqC7u9nT4rzLmFoHvCOp3uOvkXVKj1yhgeb3KBuCyhAJY2MaR6aaIX0BDjFZN2VjdEVmErgPoL85wRjB1qWt5InQEN4moaBGNlzhRlvIHNL0CQR4HCeHXfA3/MD092355u6x1uiKoGKI7XBvhH50TLGDp+5ZT8OKMGn6swD4x9QXb7l54GZ5DXC4kVdY/lmKf2arjrhqPOnm3UsHle7zYBcH6RMIopDZnziB/SzphOWFn0n2Jz0kBSfbXWkoRViobRNmMzagvGEFbAmpAh0i5J/xBXY0ZN+URoUi9o7dVRk/8T6wdDtKQXJdd/MJ2Hh/W1c8ZAPWqPrITiOtw74=
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id h16-20020a05600c351000b00410e6a6403esm980417wmq.34.2024.02.12.00.04.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 00:04:32 -0800 (PST)
Message-ID: <11d92847-e459-4350-af00-862a65f90663@linaro.org>
Date: Mon, 12 Feb 2024 09:04:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/10] dt-bindings: display: bridge: tc358775: make
 stby gpio optional
Content-Language: en-US
To: Tony Lindgren <tony@atomide.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Simha BN <simhavcs@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>
Cc: Michael Walle <mwalle@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20240211095144.2589-1-tony@atomide.com>
 <20240211095144.2589-2-tony@atomide.com>
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
In-Reply-To: <20240211095144.2589-2-tony@atomide.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/02/2024 10:51, Tony Lindgren wrote:
> From: Michael Walle <mwalle@kernel.org>
> 
> For a normal operation, the stby GPIO is not needed.
> 
> The reset pin is required because once the PPI (PHY protocol interface)
> is started, it can only be stopped by asserting the reset pin.
> 
> Signed-off-by: Michael Walle <mwalle@kernel.org>
> [tony@atomide.com: dropped regulator related changes]
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


