Return-Path: <devicetree+bounces-157097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D29DDA5ED39
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 08:46:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 860771899973
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 07:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1FC525F97C;
	Thu, 13 Mar 2025 07:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uwxF+gfp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 822191C84AA
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 07:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741851981; cv=none; b=FnpVdK3CyKNzv7VgSjU43yREuL/Wp4baNfOffbvz7525W5nnizwHrXfRxVL734RLfbAcbcsxRKRLlyin8+bI5w0qoAa9DQCDkX5ywcESY5gS59EA25aC1rt5HQyK8/7YS97HPD+M2UcqM4npJUFyYD2Wf5LBM5Evl2e28tDQgxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741851981; c=relaxed/simple;
	bh=+9lQweextTTn/IhcDeZqVgy0G3YUsnxGCvjs4Fxg5ho=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=ga5yfhhoxk3tfG2HDuiB1PRiidX7Iott1HjwfjOIg2DAGVoQN3Ka+waZJ5zYH3lYC4qJKtKR5HCutcCaI8B4BR1Zqf0qjau/Dh1/iiajglLQ6UBRSbPM59bGhYndgbr+fnNdtJbcmJP6KHzim3x/8H+PGkVbFZrCtyBTPz+PfnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uwxF+gfp; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-38c62ef85daso34691f8f.3
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 00:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741851978; x=1742456778; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WKBV0HOV9H2moWhOQYnoY7FaAphKEGthliLfv79nizM=;
        b=uwxF+gfp44o5x9PLGn6C1tgJrAucGcgFdI6I3jUeS4zOYMQY4kxtS624kRsMkYpc5l
         fwniT+vyClTiMgGOY4DcW9xjfESNeiN3pnHGIqGBFP9AU/BGcmhYqCYffT8kJuN142lJ
         1IhuSgwgjDuco28B/FaMTUf2xYMhLN7QCnVc3Y3Rt1/rNrVQvTGQQFtsj3Di6LyviZAf
         so9/haR+MIukWG+pNo78+tbygaBzHNySfcMlgnuYBO/cCra1SEXqq7awlNiItBJ9RWzC
         z6Aa9fTTGZcIF3+A7ucSOIkcyGVhNmP27FNt08lUOzJbyEXIjBHJYTsw1k9G6JpWND/c
         NiWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741851978; x=1742456778;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WKBV0HOV9H2moWhOQYnoY7FaAphKEGthliLfv79nizM=;
        b=fXlJuHZmcYipXeDbxZ/ZxaLGP0kme6fkl6MOBrCNhIzZteKe24vGYWRg2mIR2YCzcI
         SEKM3sZXAMZPFvdBPVnxc/Rdj5lxrvIX0JKGT/1uX1uahD2kJW/vLJF2B4jWDPLosRDz
         PBCNQ01CI28XOiAcvm6rmiL7pK9crYrb6wp9z3S6Hnj+qrNmCQhWWiE47LihN4b7SMiS
         TTVpV7tmhn4jaKkh5tty/p6NisuUiESOmC0UlTJOPkcmc8PHHxz3/fzC3w54+zp8fKrD
         D0X34dje/vaIoKfJzFTkbeOd6zx0id5A75UaHJpCqUOmWjzPK0pjrMb4llabzMLpmph3
         6TMg==
X-Gm-Message-State: AOJu0Yxdj3kufGW3a7bQgKflteRVNDVZBMm0FsEIIe1fDQW+bLM0qScg
	TLL3TKiqLFXzfYoxcBKWPy9j38RLwEhkmVhKkTq1a3Sz1nnNo6Li8g55FiKpDWI=
X-Gm-Gg: ASbGncskC9UEiuGF8S1CtXiMleDqu1f4xTB4XmKv9ZlYgIrTqObbI1p3u/bknl//nNw
	pHExaRkzOD++xgrsxGPCW5TlZaiG9B7JqXL57N8E1lej4jcgjdGn0k4us+lmkIVV63wwgyLSV87
	YyE4U9JUroEQzbyBOx3kRf6Mp5c6aV3JO+LsypE3TdZOAjB9gQojquPl+1/fjJY6Hw0vgZAMxeE
	Nq+Mj1BgmoNdwVObf1IyXiwPzJ0BrzJ7l7IOLnbUB6RI9AU/yjIJfI46lUq06JrgwETXBmqiWSH
	KUgeOt07587qMQebtDawA0mV2W/81xk1oVgzYCyAvSoq4mSdV8mmpmx47PCwTIM=
X-Google-Smtp-Source: AGHT+IExUdfs3Abfb/hUFEpHaJ3AXE8m+poE/fDH3i06TyTjBm/cDzQkU9CL+6pHvKT6Kk24cwEL4g==
X-Received: by 2002:a05:600c:1da2:b0:43b:c0fa:f9bf with SMTP id 5b1f17b1804b1-43ce6d2d117mr62307535e9.3.1741851977693;
        Thu, 13 Mar 2025 00:46:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d19541339sm8051115e9.21.2025.03.13.00.46.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Mar 2025 00:46:17 -0700 (PDT)
Message-ID: <090bbaee-88e0-42fa-b43d-db80ec065d35@linaro.org>
Date: Thu, 13 Mar 2025 08:46:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/3] mfd: cros_ec: Don't add cros_ec_ucsi if it is
 defined in OF or ACPI
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Jameson Thies <jthies@google.com>, tzungbi@kernel.org,
 ukaszb@chromium.org, bleung@chromium.org, heikki.krogerus@linux.intel.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, groeck@chromium.org,
 swboyd@chromium.org, akuchynski@chromium.org
Cc: devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20250312195951.1579682-1-jthies@google.com>
 <20250312195951.1579682-4-jthies@google.com>
 <52e592c5-7f97-4b7b-bcf1-1bca34c716e1@linaro.org>
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
In-Reply-To: <52e592c5-7f97-4b7b-bcf1-1bca34c716e1@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/03/2025 08:11, Krzysztof Kozlowski wrote:
> On 12/03/2025 20:59, Jameson Thies wrote:
>> Check for cros_ec_ucsi to be defined in the OF device tree or an ACPI
>> node. If it is defined by either OF or ACPI, it does not need to be
>> added as a subdevice of cros_ec_dev.
> 
> No, it does not have to. You just populate the children and appropriate

Uh, I did not notice that it is !of_find_compatible_node(), so this
comment should be rephrased - you just add MFD children anyway and if
there is no node, they won't be created.

> devices will be created automatically. None of parent devices should
> ever check if the child exist to create a child - it makes no sense.

This is still valid - none of parents should be poking around to see if
there is a child or not. The core handles it, DT handles it etc.

Best regards,
Krzysztof

