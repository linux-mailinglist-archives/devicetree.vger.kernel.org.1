Return-Path: <devicetree+bounces-58996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C318A3EAB
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 23:23:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59E901F2143D
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 21:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8882F55C35;
	Sat, 13 Apr 2024 21:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CeqI7UIj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7CEA1865
	for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 21:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713043377; cv=none; b=LGKqkxfDETTvTLASJmO+IHaolHeF0FQotiO623rsazS/akpi1xFd31muxhb1fBpXhy8H/Cy42MgJFSlohECnxIYd+97LUwISBpr3M355TX/4/x1IwTn6PjaTABqzBWHBy9xyTMvVuTjeesxcw2YLQINOx/WhG87Q+wnw57MUquw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713043377; c=relaxed/simple;
	bh=CLOsJ9JefwFWpu6Gyok6bIDnzK0kyZVNcacBldUWqCU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P2D3vN19jJL/gMpBLC7/DyPBT65iHZpTUz4NiGvyyFqHEJQgeB1G96GH4ocohTaVv3lNZIKQ7BqN/vaoOcujN1hoTqPigPfmlXgmXomtsYJ3gb36avqZwjUtVjjijWIGjHpTw6/JW+aBb50LskjYfpJdlFvGErO4Ib/NIeZsyAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CeqI7UIj; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-516d727074eso2631025e87.0
        for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 14:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713043374; x=1713648174; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=fQGJpaWsjUM7AHqikTaGEm8A9+HIjPT53LC7Bj6lY+U=;
        b=CeqI7UIjzrZMAUMqHnfWSprUGsx8wjBcSC7KgtZ1t2wvbcWCwyGoQLrNBR1U0KRYo/
         ZEDcw5i2LXNDgNflS16GdtejYOmSqYM+FaIqAR6T9/pFldc0E1xWJ6ux6OpfSKsEvh5d
         mtDP5/ngItOm5scS2aUPS4VSFnLgoR8u0/nBHG14M0GkEeGvDZ/HlxGI8P4Cg46Io1Ze
         L7xlnsBHN7U8wVkcGN1rV69kkKOz3rSxkOaiBR4sKWm36wM3uJ7anj9V8c+Hm9G8GbO3
         o4HSAvYUw3sVpFiGlsvSRhaEWAz9UVkbrM8ya9SHFhipPKwwrQRG2RrWLAp+8N6/04Fz
         6TgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713043374; x=1713648174;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fQGJpaWsjUM7AHqikTaGEm8A9+HIjPT53LC7Bj6lY+U=;
        b=Chds0O2sCNGHYRU1FaOuX55tGLCvDb3WUS3GY0MnNaeWsRSHOuLN7hKv4k+tWaSp1Z
         l+SaPC1Ev8pdlB4v9QU4Qz+mvlrs00fOt+zN3sqTU895YoxQfGz98B1frbFzGdReISqU
         iyz1qErGczR3VmphL0YA621X4q+eqCvTwnwrNbNefdOWOEmFCY6rPvw2BXDEerNYPnnY
         dQguEVrvLjeYy6MVWrw1RrmcEd+zut/VmsYTuSfNM1OX3HVAdnhW2GilUqn03ZqebO3z
         1R++1jmPWSVLYhLxPkPe0WIwgaoj19JaUbv6GKJJ9PXiBJGTJJexMN1A8PSAtK+X2MOt
         Yyfg==
X-Forwarded-Encrypted: i=1; AJvYcCW/t6Fe3MUCfur5PPCtngERasYPwMG+AdOj/eAaA85/nZmzP9NRKH+80QdHrC+tfj39pQcI/DHHtCO0KcocPBejLSEbukZcA+ZH/g==
X-Gm-Message-State: AOJu0Yz9aBlfL34hBPu0gkjeEuwgf9zoZdp9MZd7PO2xa095To/5B0Xq
	1/w1TAGiuiAI8/ybil6XTlFg2GIZfp9CLdoWxwqh5m1gaq1YFHKVKkKZyE097fI=
X-Google-Smtp-Source: AGHT+IEpkgGV4cfM8OxwVMC43mCKJlrDMrXOzRC0ZAFr0X9Vk8KLbuzMNlMAoySsyCTi3Vc2bDE5xg==
X-Received: by 2002:a05:6512:3d19:b0:518:6ee7:b988 with SMTP id d25-20020a0565123d1900b005186ee7b988mr3837518lfv.55.1713043374088;
        Sat, 13 Apr 2024 14:22:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id bq3-20020a170906d0c300b00a522f867697sm2533293ejb.132.2024.04.13.14.22.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Apr 2024 14:22:53 -0700 (PDT)
Message-ID: <d0839eec-7a92-4834-b47a-be0ba1908c1a@linaro.org>
Date: Sat, 13 Apr 2024 23:22:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=5BPATCH_v3_1/2=5D_media=3A_dt-binding=3A_media=3A_?=
 =?UTF-8?Q?Document_rk3588=E2=80=99s_VEPU121?=
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>, linux-kernel@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Chris Morgan <macromorgan@hotmail.com>, Andy Yan <andy.yan@rock-chips.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev
References: <20240412151515.837824-1-linkmauve@linkmauve.fr>
 <20240412151515.837824-2-linkmauve@linkmauve.fr>
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
In-Reply-To: <20240412151515.837824-2-linkmauve@linkmauve.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/04/2024 17:15, Emmanuel Gil Peyrot wrote:
> This encoder-only device is present four times on this SoC, and should
> support everything the rk3568 vepu supports (so JPEG, H.264 and VP8
> encoding).
> 
> According to the TRM[1], there is also the VEPU580 encoder which
> supports H.264 and H.265, and various VDPU* decoders, of which only the
> VDPU981 is currently supported.  This patch describes only the VEPU121.
> 
> [1] https://github.com/FanX-Tek/rk3588-TRM-and-Datasheet
> 
> Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>

So you ignored all the tags? No one will pick up your patch if you are
going to keep ignoring them...

Subject: drop the second, redundant "media".

Best regards,
Krzysztof


