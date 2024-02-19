Return-Path: <devicetree+bounces-43601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6B185ADC6
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 22:34:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 084DF1F257C4
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 21:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB2C535AB;
	Mon, 19 Feb 2024 21:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bn8RD9bb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B16BC53E22
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 21:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708378471; cv=none; b=dijFdzeFJYk3/kNtOdU5NJPUHHcSaCTPhgwl+cTHALWM6IADJOLxY3sYomrPA+liMj/QS4UCaBHccEOCxLF0VueP8vSKOl9xwKqUmGmEYCRH5ZLHA4QBVwSAMsPutb3EAIrAJbG5i4BMaBCAlvRHeJROIdQR29shCxeTWKBTUXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708378471; c=relaxed/simple;
	bh=uoInPYMoRQjvdNM+QaIpZwzsQ6TyD4MZWJdxYQ3v5iA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mjSG/A3tHjQumVes/nvFhSA3EOcfIuqCuub/XTnGPSk6rtgiF+DApCiq7OU3bebyyctBxXv74RVJE4L8KjQ0+QlE6y70VY/gFxbuApr/YIi09LziuFtZy0F26TQNymUyBEwb90rAjy2SmoVuuuBTVxHOPZnjCab2yaAAKs+JQVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bn8RD9bb; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-41268a88cdaso7946715e9.2
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 13:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708378467; x=1708983267; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VyyDJL/AUdL5bRKBSEj9YFNsbj2JyVyWTvI1ZhXkE7w=;
        b=Bn8RD9bb6s6zwLm4Mj6jGx776iPmdvqJQ41RJrkdAs9UB4WBJ2IuZuNP5AXmUziI2l
         uqajjmlzygsFzbJyoYba/nPGO6jEaQIH7z6fBiT2A5tDqmMjAJ3NwZ+l1IKNuk/l4QfP
         ZyeJwYnshF3BhDbPSI0wOpCIRz6E8e/Wmx1HqxGhzLXua/D3OOoeZD17iYzaIc19J0qr
         JRf/9ldlgxKAF+2nskfBwWRc+yleamHQWMEXmoBGFLYxn9KP4espfMP2La2OOTZPK7kd
         aeFNBZuKaumNgPJBiQ5QiuIN4TPLMICOxJApBT8qoN27SNvW9vWkE64dZy0w424XoYlX
         m7nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708378467; x=1708983267;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VyyDJL/AUdL5bRKBSEj9YFNsbj2JyVyWTvI1ZhXkE7w=;
        b=VaIza8u7HzjPHkMuGeYIVhpRkmUs4sKOWI++x8RDIVQy1c09D9rzVMGnbmSxykz4IJ
         j8OOWtw26u0T+gkSl2b9CucWB5oZqO3LttiTJ2uXZmyvrtNCe3TusH33Und1w7eWGST5
         rHfdAkyKzZeajWxOMJG6T12MGsi9Q5xYqdA5+SMXL7wHRZMyarQmkgWWyTsRfmrlzg1J
         P5hUbcSKdzCRBGl0x+/NAsqVfH2hDbLTegq7mzCbB9MwBC39HixkdbgngH17mEUP6kU3
         bznh0R9kbZwRzzzIhXKzd+qft1vwP91moJRCOzsTsf1VMv0YSql4q5Y2j2SKZ9mkOQau
         gCLg==
X-Forwarded-Encrypted: i=1; AJvYcCUvdU3bv4aVvLo2oXmoWS3iJ+zc3P/zH6AcgD8ly4b7HdURHs9fqcVKlVoKsPPeK/pZnsDVQoJDS/3P3yNTm5ZtXm95YARIr3ihJQ==
X-Gm-Message-State: AOJu0YwMVOIBPlxb1haQQcaONR/pg6LlFVBXusPAB6o6TUuBdOyU1IgZ
	8kl/ycAQdasOtCb5GezGVHlM2fEeeQtLFbUK2Qm9gFkYXkVGibujb3E257Y7odg=
X-Google-Smtp-Source: AGHT+IH61y+PZT2ynRxL+Bu2xCQ4IbwbRMjMfdux51F1gYAclD9QobVpGOQA49yWXiJWBVBW+zLRQQ==
X-Received: by 2002:a05:600c:1c1b:b0:411:d9f9:1b with SMTP id j27-20020a05600c1c1b00b00411d9f9001bmr8913552wms.40.1708378467107;
        Mon, 19 Feb 2024 13:34:27 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id dn23-20020a05600c655700b0040fafd84095sm12314551wmb.41.2024.02.19.13.34.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 13:34:26 -0800 (PST)
Message-ID: <271c7f14-abbe-4922-91ea-809e50be46cd@linaro.org>
Date: Mon, 19 Feb 2024 22:34:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v3 4/5] phy: hisilicon: hisi-inno-phy: add support for
 Hi3798MV200 INNO PHY
Content-Language: en-US
To: forbidden405@outlook.com, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Jiancheng Xue <xuejiancheng@hisilicon.com>, Shawn Guo
 <shawn.guo@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 David Yang <mmyangfl@gmail.com>
References: <20240220-inno-phy-v3-0-893cdf8633b4@outlook.com>
 <20240220-inno-phy-v3-4-893cdf8633b4@outlook.com>
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
In-Reply-To: <20240220-inno-phy-v3-4-893cdf8633b4@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/02/2024 22:28, Yang Xiwen via B4 Relay wrote:
> From: Yang Xiwen <forbidden405@outlook.com>
> 
> Direct MMIO resgiter access is used by Hi3798MV200. For other models,
> of_iomap() returns 0 due to insufficient length. So they are unaffected.
> 
> Also Hi3798MV200 INNO PHY has an extra reset required to be deasserted,
> switch to reset_control_bulk_() APIs to resolve this.
> 
> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  drivers/phy/hisilicon/phy-hisi-inno-usb2.c | 65 ++++++++++++++++++------------
>  1 file changed, 39 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
> index b7e740eb4752..5175e5a351ac 100644
> --- a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
> +++ b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
> @@ -10,6 +10,7 @@
>  #include <linux/io.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> +#include <linux/of_address.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  #include <linux/reset.h>
> @@ -43,6 +44,7 @@
>  #define PHY_CLK_ENABLE		BIT(2)
>  
>  struct hisi_inno_phy_port {
> +	void __iomem *base;
>  	struct reset_control *utmi_rst;
>  	struct hisi_inno_phy_priv *priv;
>  };
> @@ -50,7 +52,7 @@ struct hisi_inno_phy_port {
>  struct hisi_inno_phy_priv {
>  	void __iomem *mmio;
>  	struct clk *ref_clk;
> -	struct reset_control *por_rst;
> +	struct reset_control *rsts;

This does not look related to this patch at all.

>  	unsigned int type;
>  	struct hisi_inno_phy_port ports[INNO_PHY_PORT_NUM];
>  };



Best regards,
Krzysztof


