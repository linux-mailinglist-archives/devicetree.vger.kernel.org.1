Return-Path: <devicetree+bounces-40980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CAD851D3F
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:50:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10028282E3D
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:50:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1FDF45013;
	Mon, 12 Feb 2024 18:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AKeXn7s2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE6D405FE
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 18:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707763676; cv=none; b=gYje8hacpEb295HDKkE6/fkkKy2AJFO+qWJqQyxpbz+hHDfvmjUYFJHCndq71HdN4NrbRptXGxHW4yJdg25BPb8vQgu1pJBjVrQ78jI1mLXNAWuCT/jypKwWRLCkoFe1GrgbRwCmnBxKzZGevty7z3r4JmWdAKZhOwBL1HN54jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707763676; c=relaxed/simple;
	bh=BFJjN8ONCgkmsa4PW9qUxSQnQuER8UwLgYKkgYkqKj4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=BpxjpzjjQn1VdvBc1p0a+FDemo470y4YGgx3u2wmpqgVFgKvQUCtbdeLtmKrrxnQEROU476OIhR+ksKBKTJOuiDWafk3nmmGyzGzoKewjK0t3TqVt6LkdQqeWG22rWX+nNsTjMjENaeXyVcqJp1gn6OPjz+48rob6KzIz5qbkTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AKeXn7s2; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-410da137230so8390115e9.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 10:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707763672; x=1708368472; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SYWSvZSGyZd1GI0l4m1/e99sDhaFp9G5rCeC7L8H0xo=;
        b=AKeXn7s2XHzMfdkaUYQUPeaQlu9K/JC2qHQi0hdhB3TNxeuO45Nkp2q1HDqO4JVguk
         7on6H5EKe1ZWYmGhhTIaz7wny799slBwadw4ugsiTX+pxs5WFwjs+l22F6LuH3GOPnf8
         90DemL9+wKU3WldQGj/4qw5NXBb8ukM8Mlquz/Ond3mKBC20k6O0+sYfhAZpRUenJnA4
         1y3KA8aO2sOvh8Yu4IHnOzrbGhPKfcPpDbMihK0rtu1h2PQp1qwS3qG374HbUWB8Ip+G
         PZHUpgZIR/lIlLgqNU1wgtCDe0TCVTyxiUfaYBTcBGQEjppnX7EwjRInqx22UbLqvjMX
         Hdyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763672; x=1708368472;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SYWSvZSGyZd1GI0l4m1/e99sDhaFp9G5rCeC7L8H0xo=;
        b=eDFOCkOnXVakqc3nIHyoSewVDX9yXd2IwB9yiEdKm+xRi67lljDP9BAe6mO4mEkNod
         buSNEEJ2kFG32JHkH/JUU1G96Q2TuykvTxS1io/x/e6s3QcjcHlo+1/7s1cbul5dqJfk
         EF88m/NPrrcXdc79QroJVFjiPgDdN7xbC+gVfQ7LmCS/PsDWJSkvE/q0BCKw5mToBy15
         o6thogl1HXe5AhTxqkXI2n5o3E3qBizuYhbvOQTjeOsQlN+xN9hVzLtO3lq6kmmuKVz8
         EE/hA7vpTeBhtv0F6Svr8krUVBgXfpI6TlphN2fTHwFNWLkbtHpfSH0CuIogF1XopRF4
         R5Ig==
X-Forwarded-Encrypted: i=1; AJvYcCUBhfZw0JH6NymB8YbWVhiBLVk4ZkggI0WmE9HMAael8NuXoN76MMJlVv7F9ffFfXcogb4LAW7UNP7jUv46x35TYN9JHJGF9FSMYg==
X-Gm-Message-State: AOJu0Yxxw1iaJuJz23BQx5j1sVRoTVgx5pRY6Nmw/R7zjA2DfkZTl5zx
	CvuLcwLV2Jfg9wyQPO8TolTLZ66m7HWqntg2MsU+/vGPV5WhudRdVNZlszPuUfs=
X-Google-Smtp-Source: AGHT+IE0ArX+pv8YDqS8Zzy/USZGC+ffgmfFlW3LkewjS26gDJQVwoHo+wq4KsMfWrkLlPw3YuDanA==
X-Received: by 2002:a05:600c:45c6:b0:410:4a3:1ae7 with SMTP id s6-20020a05600c45c600b0041004a31ae7mr6383316wmo.17.1707763672400;
        Mon, 12 Feb 2024 10:47:52 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUESZbskZAkeimcJbyMJK1tBzW6vO3rcPrK/aTQVfNFkN1ZmZep48UQlLeihUE7Xu8uzyZrUVOlu9hDWPmhIk4E1/kVmCnBpfaNV90oJJn2zFQY5tVKKy3D9JrlIAx4FcCIpykS31AL3qt9Vd60eGdfkP/E662yXmh9eafM9Vw6OXdZFtAl4WvAA9cbdUIDz46IdyjtKim/babwPjqnhfmxOA2JgOmJVH2TJqy/Xe6rYLWSrxVreLBz5HeOx6vtZv/OSb2ndzgXtzSDKEegoV1QnyKR5WN5LLfcRzDXEp1t3SKuG7IuENIbH8WV784Ap+oKtOH16Y0EAanL98cIFyj6MoA1oqgYW5WFh+VHfr+4oJdQn/UIUELiyPmDi8pofxALewo1d8ygmkee/3xFjdN7xR+4KHqWhShPYtPzu5eVhxothTvHn8oGx907nocOlNg616jqhFh29L+QknsCfGZ/zJ10ksH5s+ksNujQioSNO1WGGaWzWhU1WaHeC+Iz04oYY7E=
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id v8-20020a5d43c8000000b0033b512b2031sm7466475wrr.114.2024.02.12.10.47.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 10:47:51 -0800 (PST)
Message-ID: <44eec61f-5294-4f2f-b80e-56b8a9f220fa@linaro.org>
Date: Mon, 12 Feb 2024 19:47:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ASoC: dt-bindings: qcom,sm8250: Allow up to 8 codec DAIs
Content-Language: en-US
To: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240212183800.243017-1-krzysztof.kozlowski@linaro.org>
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
In-Reply-To: <20240212183800.243017-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/02/2024 19:38, Krzysztof Kozlowski wrote:
> Sound card on Qualcomm X1E80100 CRD board has eight DAIs in one DAI
> link (for WSA speakers).  Boards with older SoCs could technically have
> similar setup, even if it was not observed on mainlined devices.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> DTS with X1E80100 sound card using this:
> https://lore.kernel.org/linux-devicetree/20240212172335.124845-5-krzysztof.kozlowski@linaro.org/T/#u

Apologies, wrong link:

https://lore.kernel.org/linux-devicetree/20240212184403.246299-1-krzysztof.kozlowski@linaro.org/

This is not a dependency, just providing relevant work for reference.

Best regards,
Krzysztof


