Return-Path: <devicetree+bounces-12424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F09E7D968F
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:26:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E325BB20B65
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 214E818646;
	Fri, 27 Oct 2023 11:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lprC/dP/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636B918AE4
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 11:26:05 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E02F1BB
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 04:25:59 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c4fdf94666so25789441fa.2
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 04:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698405958; x=1699010758; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9y6LmXOwEW312Rhq3CPGU89SHAaxq5yj0JeMnIHrcaM=;
        b=lprC/dP/95pzk0C+CQhiQSM9mh9aryTituR5oGWnkb62Q0R5VykN6JUb6KnzpP2F7t
         d2n1/LZvUlAgDrmipFPkR4GpvLt6bqtaTVQs3zZcCgAMv1nJg+wIQOgEsniLuE5psZQd
         QYif3WqS7LHN0NdI6Q0BkCDG42hlH9jKamWX5VzWEqmQ8mUeHbEBgwnDbU89NxXVdTGN
         V+EA61Srof3sV4vREAwHSKb/j+Y28r7F21r2tVfh1eGs33QWeMTlJJb0imjIUy4HFSzD
         XdOuIE116Gh/VF2UvApod1VwjoyaV5SZSq2/kw/3TRMG4PRqorhV537yXpLlJ2ZbhrN/
         KWnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698405958; x=1699010758;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9y6LmXOwEW312Rhq3CPGU89SHAaxq5yj0JeMnIHrcaM=;
        b=DD8r2yLQDbw6dw4fPQuPyDMJUR9zkfMsP4oknamHudQM+5N7kkYNcWvPUT+bd+aEtN
         PnLp5IiE5yVkv+mJDF63oCoccaNth1UK0gzhDbviNYwLO+4KV58rQcxZFXpeOCjSmRuX
         gaKx0oqRc9nds0t3kESBcNo+ZQ/hClZjSb8O2cMFtw1iwICtbK0o8qTR/OWTVfg0tbEv
         e1YgUIfksgERZuicwBKca+tfxwZwfbaEnDInSPmPFQB7fRBdQ7J7dRrww+Ehl2TSeYX0
         b3iVWkC0PdwpNKvwoLg6Jm3hn09JbX4YXwqdbKGpjbzPZ7e2MvsezwiJuTB9JzaPbDlC
         0upg==
X-Gm-Message-State: AOJu0YymV4kPLL56LfD+xgH2eL2wc+muYgufHKu8W6zezSKLri2jeA2j
	aIYYNkBUTX9/d4hNXKCmoZVEvQ==
X-Google-Smtp-Source: AGHT+IFRkexNgJpWRS+yzP5zEwgjOKhCx1ox+0JLdEC7upd7ErsJaMQzzXQMoPegeOn4fsR2Ozjmew==
X-Received: by 2002:a2e:1454:0:b0:2c5:169f:ff03 with SMTP id 20-20020a2e1454000000b002c5169fff03mr1592852lju.5.1698405957743;
        Fri, 27 Oct 2023 04:25:57 -0700 (PDT)
Received: from [192.168.0.22] ([78.10.206.168])
        by smtp.gmail.com with ESMTPSA id d21-20020a2eb055000000b002c004175d26sm250041ljl.56.2023.10.27.04.25.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Oct 2023 04:25:57 -0700 (PDT)
Message-ID: <7bfa2f6c-3e99-49a6-9b5a-81398d4bce7e@linaro.org>
Date: Fri, 27 Oct 2023 13:25:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: i2c: mv64xxx: add bus-reset-gpios
 property
Content-Language: en-US
To: Wolfram Sang <wsa@kernel.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 krzysztof.kozlowski+dt@linaro.org, gregory.clement@bootlin.com,
 andi.shyti@kernel.org, robh+dt@kernel.org, conor+dt@kernel.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
References: <20231027033104.1348921-1-chris.packham@alliedtelesis.co.nz>
 <20231027033104.1348921-2-chris.packham@alliedtelesis.co.nz>
 <ZTt+ZgNe5Y35E/C2@shikoro>
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
In-Reply-To: <ZTt+ZgNe5Y35E/C2@shikoro>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27/10/2023 11:09, Wolfram Sang wrote:
> On Fri, Oct 27, 2023 at 04:31:03PM +1300, Chris Packham wrote:
>> Add bus-reset-gpios and bus-reset-duration-us properties to the
>> marvell,mv64xxx-i2c binding. These can be used to describe hardware
>> where a common reset GPIO is connected to all downstream devices on and
>> I2C bus. This reset will be asserted then released before the downstream
>> devices on the bus are probed.
>>
>> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Krzysztof, are you fine with this change?

Actually no. NAK.

Not because of the naming, but because the new name triggered some new
paths in my brain which brought the point - this is old problem of power
sequencing of children.

I believe this must be solved in more generic way. First - generic for
all I2C devices. Second - generic also matching other buses/subsystems,
which have similar problem. We did it for USB (onboard USB), MMC
(unloved MMC power sequence) and now we are doing it for PCIe and few
others (Cc: Abel)

https://lpc.events/event/17/contributions/1507/

Current solution is heavily limited. What about regulators? What about
buses having 2 reset lines (still the same bus)? What about sequence?

Best regards,
Krzysztof


