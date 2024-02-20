Return-Path: <devicetree+bounces-43833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB1585B9DB
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 12:04:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6244285025
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 11:04:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE53165BC5;
	Tue, 20 Feb 2024 11:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V4VvsFG0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABF865BA4
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 11:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708427079; cv=none; b=tIwlRTzQsxBmYb27YVcMjHDYRhX2+uaVFIFseMiYc1PbVdo40VkXOvuv++BxmqrYxLzIR9ZYQMBVvrBlgD2bz3ZZtEOU25ri9tDUKTPyx0WtaqM/Rv3fRW9KI9AV2rpkFOSwXNDVirv/BFBM8ZIFCFt5lqQqMdoGZUOSPnlgY08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708427079; c=relaxed/simple;
	bh=wDvrFsF4EpABPwyh8ywfuGjb9qWMW1yuCO2kiRh4dLs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fZxBytLA2zIgMJZQy7l8F2WN3YvraXtl61wVh8uAcu6m/nrCaAWrnOMLoGMqMKAMpXMMUvHRyHK9U3jQrK24/vq/RV8Ve4/i6mKy4eLcza9eOZdTIAVj4Dx9QGXjyUntFKzQqhuFZlvU8GhYDsjfcFtugzPLC4P90BnP43l+vyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V4VvsFG0; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d2505352e6so80161fa.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 03:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708427076; x=1709031876; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NbSygiAeGP6BEwln1frKBLnsOivRpqfkZfCGYmRwuys=;
        b=V4VvsFG00ZznYjMCnQkSifluLCGbMCtUYfeZ6kRqs8xtksd1S9mxTXKlCXGt8A0KcT
         3xCjCSe0cRfnw5k5mqzZndWA+nK/9PnFQDdV4LgtlaxhZrip6H2V+8cO9pAFQBDkx368
         viakFuFraXH2pcR35TQMLoVfa31JDJE8Z+UavRHT0ve5JeGkOcNLE+A5Amk7JLzOFaDl
         nOPiMZDSAU6AJ0dNqJ9g2JOotOYOjtAmqGAje7nKlEYWD9a1tXj3nzCxeexMvM/zikEb
         afQSyzyz+sp435GffmAJk5SSEaGU8FwGk8gSdBIbds9X1qFYBqX+gCVkPRl3xWpupj85
         yUXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708427076; x=1709031876;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NbSygiAeGP6BEwln1frKBLnsOivRpqfkZfCGYmRwuys=;
        b=bMr2BMNTpbhJHEr8B28tMosuXLv7WdgPp8nkriGFhkvOPNsi6ZPQWx+SDnpvaOfEgz
         4ogGY3DUA8l5KE1UyRTxlcrYn3noFDSTD2dYZBUoReLZKYwVd/6s4bTS3IWCYy8SveRh
         N8LIzLIcDjtkyvEBM2FJO28g6WMvY6MQC9luR63Dw2HHuM71uEmeqIyuNjFLBDqS8/Zt
         P8qI8mAs1MbZ+P6CvpZ6hhB4FVhRQXPSba1imr2FqJ/X+axGzeZl0Rb2fXJ7wBggvtQO
         XfJD5I/GzS2on2QImRz/GlIN6fiOzV/3nMJQQboZjWSy9PvoM5+C1IWE8h9ryg4K0c2t
         Bb0g==
X-Forwarded-Encrypted: i=1; AJvYcCUuYvH33vJwt17mztNYZFf3JctWdwZ7tsMxDiXmvAG5STbaBdvXLFk2ZGuapvTcp3yts+0YfIMh2PWNJ97YXGxFI3eOg0WoILLwJg==
X-Gm-Message-State: AOJu0YxSuopa3PGgGd7fshFFKcVmFGnYze7jM4pdaHiLFiNzif7Ye5BK
	vNg1hbU2ojvxVelbhqkUtbVY7CTJsCyaArdqWfZ8/4hd4vrmv46dmN7KJ+QRcb0=
X-Google-Smtp-Source: AGHT+IGQONEzPBM/dxfA9vAn42RRAyX636D98yzJL/U2/Q8EcAbk6K4xwaa2GHt1Q/DqkBcGdtLDtA==
X-Received: by 2002:a2e:a686:0:b0:2cd:706a:8ec8 with SMTP id q6-20020a2ea686000000b002cd706a8ec8mr8964202lje.10.1708427076228;
        Tue, 20 Feb 2024 03:04:36 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id az19-20020adfe193000000b0033d6ff7f9edsm1074787wrb.95.2024.02.20.03.04.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Feb 2024 03:04:35 -0800 (PST)
Message-ID: <ce515530-428a-4a21-8c56-5a497cc8130a@linaro.org>
Date: Tue, 20 Feb 2024 12:04:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/16] clk: samsung: Keep register offsets in chip
 specific structure
Content-Language: en-US
To: Sam Protsenko <semen.protsenko@linaro.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240216223245.12273-1-semen.protsenko@linaro.org>
 <20240216223245.12273-12-semen.protsenko@linaro.org>
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
In-Reply-To: <20240216223245.12273-12-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16/02/2024 23:32, Sam Protsenko wrote:
> Abstract CPU clock registers by keeping their offsets in a dedicated
> chip specific structure to accommodate for oncoming Exynos850 support,
> which has different offsets for cluster 0 and cluster 1. This rework
> also makes it possible to use exynos_set_safe_div() for all chips, so
> exynos5433_set_safe_div() is removed here to reduce the code
> duplication.
> 

So that's the answer why you could not use flags anymore - you need an
enum, not a bitmap. Such short explanation should be in previous commits
justifying moving reg layout to new property.

> No functional change.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  drivers/clk/samsung/clk-cpu.c | 156 +++++++++++++++++++---------------
>  1 file changed, 86 insertions(+), 70 deletions(-)
> 
> diff --git a/drivers/clk/samsung/clk-cpu.c b/drivers/clk/samsung/clk-cpu.c
> index 04394d2166c9..744b609c222d 100644
> --- a/drivers/clk/samsung/clk-cpu.c
> +++ b/drivers/clk/samsung/clk-cpu.c
> @@ -44,12 +44,14 @@ typedef int (*exynos_rate_change_fn_t)(struct clk_notifier_data *ndata,
>  
>  /**
>   * struct exynos_cpuclk_chip - Chip specific data for CPU clock
> + * @regs: register offsets for CPU related clocks
>   * @pre_rate_cb: callback to run before CPU clock rate change
>   * @post_rate_cb: callback to run after CPU clock rate change
>   */
>  struct exynos_cpuclk_chip {
> -	exynos_rate_change_fn_t	pre_rate_cb;
> -	exynos_rate_change_fn_t	post_rate_cb;
> +	const void				* const regs;

Why this is void?

> +	exynos_rate_change_fn_t			pre_rate_cb;
> +	exynos_rate_change_fn_t			post_rate_cb;
>  };
>  



Best regards,
Krzysztof


