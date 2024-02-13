Return-Path: <devicetree+bounces-41155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6B9852A5C
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:59:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 764DA282722
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 07:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C85C91798F;
	Tue, 13 Feb 2024 07:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i6xlay7U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E5E1775E
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 07:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707811150; cv=none; b=FpOdL4zW+AbyixwqRqXfDuv8nElYclVKrp6x8+tUsI2YN5Qe6pyKltB+XDoaL9l5wCz/72ptpFIqe1OjdwRvsrtE2VTJhVQCuQ6vlVa2UEYMH/LCaT11FYRWclOh7kjBrJm7f1GWGU7F1R+1dBxu1YAx89KupKgNMdoeiSOoNf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707811150; c=relaxed/simple;
	bh=yzAUVck5d9pYmxUhXg6k0HU4Dsx2PuNJmbj4z/norbs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G+nTNjQr70SMEDEuEFZ0K8HKzaS0qGBrSo+4tgvxo5Q85vlec/8M40YIabKIHDMoIIpgiRadsQ3puz2ZJXqkxiOWiKexI4v+x8zsw/XbG/ZZRXhPJ1hkmd99gmjqlVPg5BZVmxDRX3gH+DOFVHM4K6LKncLVGLSdmuWU4tKz2TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i6xlay7U; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-51187830d6dso2069399e87.3
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 23:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707811147; x=1708415947; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WfF3IVUXxniEjHbnby7kRWIjy6GH373BUtwr2dP7B2M=;
        b=i6xlay7UwAIJesnr2ysdg2jzlnQoN85FHXOcf5keHZayIyU73oMrKtGOrIRFHzy4A+
         ceqyAUdaE7NYgjZ3p7HQO2ZDDLFxxqxFLBkml57shGpBlabZ0/vGrLtsjU6lG35QIXdd
         xyKFkLkwB7MxPvUb//SSbQb+56hORF6ubltxfVOC3mbhudgq8CLOav0ZCdHhsPAeQxdw
         cUYf8KQTdY6NraLwq0A9nq978lYgLfhgrAsbbnlf3AH6UkogAzWKggtlykWr7u66+33F
         9YL8kL0kEp/VQnx0hBGpACrsv+YmODONRNbP/SUHshSc5qViJkX2NIIDp+9NKS543t7s
         +q+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707811147; x=1708415947;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WfF3IVUXxniEjHbnby7kRWIjy6GH373BUtwr2dP7B2M=;
        b=sEr79yRNPwRmRSZ9B46eGrryR7D+I2FEO29vvqj0C2E0LSUoW5aIZc6D1qNBIIN7ep
         RfhpI3/aIb4iQxvEKa6J5gqCedoaMQh99C1nOcKzUvsUeSXXjxP5k5N1RBtIcfLUJTWX
         nLlISX4K++l37ugli3AtnSwjPSP+K4UAdWFpOYwCCWWOPMhxTMisMJAdzKqgsqrAhAre
         /vwPlYEat5npMLRoZAcl8TBKIp9bySp+SmrY0diAxdGfTaDGUY/SNzxQVdfYMemQv5JO
         U2SKIq5OCZSoTrGPD0i2wGQJafbA15qtDH2Gkx7KzhwfnxpnH/FLPtY9qnM+gAk6/H47
         ioAg==
X-Forwarded-Encrypted: i=1; AJvYcCWyHofmfE8fvablyyGgfpD9NzgyQCccXg0eqvg4xI+/R68aTu8lxJhOZcWm8dEpyQMH8Lx/PRQZ7iJ/TrXhDX4GvnhfqzjeK9YAXQ==
X-Gm-Message-State: AOJu0YxkdSMZ4Pfii7KwX+QaqT7rogenwdIAWTM4c16fTM/B2jZ860qQ
	3rpsT9IKp2F+F+tEizCpxR7ULv2yULf/AySgr7IDi1qoTCiCjQOm1kKv1np1ff8=
X-Google-Smtp-Source: AGHT+IFPjHM1LVnafI2YFx974N1jHd7VTe2GONRXUF+JdGWt9/yLH6RoTUFIYi4TFKD9vMowvw6KpQ==
X-Received: by 2002:ac2:4e86:0:b0:511:7ee0:c690 with SMTP id o6-20020ac24e86000000b005117ee0c690mr4990147lfr.23.1707811146896;
        Mon, 12 Feb 2024 23:59:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWrW4zNNiGdSwqoZX4HPo/qu1i9GES1UkQxrxhK6ow3qZijFj+llGGmX0HAX7fz5bibAPbFy12rtkvsVHTzpoxImG9dZP7rvKX8dbvQWwYHnizEPv8iCcqfVlFnBkiFJO8ev6hCGgWytECXLT6YcyQpW8j+lBheUpgCsXrA3mWZJG9jEiwg22/qWyvD4kd2vA7UtYvc8FB+zHQownEdsdb5SkSBkfdqvDQeST8ZZVq4wYU1IMbRz6NG0JG0+NiBvnvY92fkTJYtWmFT8yvLZQUxUl1GF4NjIi7azWakmDbl88biEK4Q2XWQGisjSG9L8M8R3FmwcUd+1h9RBsodYOJpxNRbGWlODLcvOGpkQW4lz8A0KLTpiL4nRcQ=
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id t18-20020a05600c199200b0040fc26183e8sm11015342wmq.8.2024.02.12.23.59.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 23:59:06 -0800 (PST)
Message-ID: <7cb51fed-66fc-4ab1-be09-85a00d94514b@linaro.org>
Date: Tue, 13 Feb 2024 08:59:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/12] memory: stm32-fmc2-ebi: add runtime PM support
Content-Language: en-US
To: Christophe Kerello <christophe.kerello@foss.st.com>,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, devicetree@vger.kernel.org
References: <20240212174822.77734-1-christophe.kerello@foss.st.com>
 <20240212174822.77734-8-christophe.kerello@foss.st.com>
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
In-Reply-To: <20240212174822.77734-8-christophe.kerello@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/02/2024 18:48, Christophe Kerello wrote:
> Add runtime PM support in FMC2 ebi driver to be able to manage GENPD
> support when it will be enabled.

You don't do any real runtime PM here (turning on PM domain on probe is
not real PM), so please explain what is the goal of it and say that it
is basic RPM for keeping domain on.

> 
> Signed-off-by: Christophe Kerello <christophe.kerello@foss.st.com>
> ---
>  drivers/memory/stm32-fmc2-ebi.c | 40 ++++++++++++++++++++++++++-------
>  1 file changed, 32 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/memory/stm32-fmc2-ebi.c b/drivers/memory/stm32-fmc2-ebi.c
> index 04248c15832f..8c30e56be3b0 100644
> --- a/drivers/memory/stm32-fmc2-ebi.c
> +++ b/drivers/memory/stm32-fmc2-ebi.c
> @@ -11,6 +11,7 @@
>  #include <linux/of_platform.h>
>  #include <linux/pinctrl/consumer.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
>  #include <linux/reset.h>
>  
> @@ -1381,6 +1382,7 @@ static int stm32_fmc2_ebi_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  
>  	ebi->dev = dev;
> +	platform_set_drvdata(pdev, ebi);

Does not look related.


Best regards,
Krzysztof


