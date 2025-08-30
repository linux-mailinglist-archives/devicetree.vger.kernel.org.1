Return-Path: <devicetree+bounces-210763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A91C9B3CB14
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 15:09:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 671D3560934
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 13:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9811A23ABBB;
	Sat, 30 Aug 2025 13:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QbL6FBCP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA76205ABA
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 13:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756559377; cv=none; b=CePkMzn/jgvPuijTa2YJsfI+7EQ4ZIK/FNruc9S2TjxBzsGLKYacbY24cR/kmluhls8ffMV5E/fOAgheQ0AX5hIspchM+XEfNzbFqBK8es5sue30+FP8sOLZ71zggRRmj/cKgQDPzHrZ5b2nMaEWahZ6/Vuwsy3n5Tn8sccuOi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756559377; c=relaxed/simple;
	bh=E+8gaoJ2YD8eTRn2TEIvrhYnUYkXpKKcBdMxCF6j6ls=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hD6TNOZLS9wxxuagFvQY1o8tcCMsQ9tVSNmo24EwwoKyvjD+ThYKo/VKqra9VB5NFJ9MUB1NyARh1SsA/J3w0N7IlHI3bXB/xMut7snPz3e5yld5QZdmTZf7i9jpE7ZZZVwe06qIU7X21mTLjXg5kO0OpNZayXBx2IYuGFJD/xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QbL6FBCP; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45a29314d98so193735e9.2
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 06:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756559374; x=1757164174; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=NvZr+jIhkslKZB56cSZ0aYjmrmFIErH1qN8pLQMr07w=;
        b=QbL6FBCPT/bWW7zKxBjJ4A4Dz4jTPB+xcIJ1dIu8tb/RugCqImVch8cCASqu9Dx6Z5
         gxl/YEB3MczZLSUtp7TU7zTKayeMELq6puDlcGRthrOicFEv4ik1J8f/DL7BFvu34dhm
         fLZEU+9WRE0UePeuhRP7iXsVPHBus70BxrRyDZNdNxVjXYqw36TVjXuY1uRHCzU2R4+9
         RmaFTPh8KIGZCTJsnUvSs67E0WAUqk7jbva/Jjua1HCKR2m/L73e5B/VJHkL99a/r0CX
         J8fS+dVvUPE/XzOx3LNrYv8G23bePlFOoqr5u02J4pnlsGzFllNptei5IHZN0QpyXAFk
         lrtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756559374; x=1757164174;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NvZr+jIhkslKZB56cSZ0aYjmrmFIErH1qN8pLQMr07w=;
        b=R36ff62AXPmzeUHRs8JpzfLuWdViqkT9C2rjm5VtUm0pBVYBxy7NtowWNpcvkI+4F1
         FEyg7YKWGjTg3ljl05rnizPwFqYOsVj/Hc0R/CNN/xT31wuT9W2M4ax66tqPZsRT589N
         Mh4jzrqVx05Sur/ZX2acKlyKEBoo2Fdj/GjW0H7oTu2pUmJkashZgUEq3eiPf5Q3FVAo
         h6MrR25aW0upVpMxi2+2wdj8pzifjqNP695B8f0lAmt1hWN8NZejiJAt4CtVirEve6fG
         LF6oulpZ1kc4jMcPvkzn7T7oUtT6WtDDBTeOvFr2mWAVZbEbRtnVJ9wyY1n8OMbOgFFs
         rAuA==
X-Forwarded-Encrypted: i=1; AJvYcCV/lfHJqZsbsfdKRDdgwOT9h/iqXL45ZhtsoBisRiVjKYT8ZVOrWKQ8crnXYgwnk5gqBdcZ8cysArWE@vger.kernel.org
X-Gm-Message-State: AOJu0YwoWgIa4ESTbFBPrEvD+CGBKQuBQv1q/+z3ex0cCtilXr1o1ai6
	k/aH8tZGXct8P+vs4fuXeI5z7E8RbG5HEk6ejXZSXvgSK/lttXUjJOSaMtU2O2aMncU=
X-Gm-Gg: ASbGncsqWIV6FkmKNZMrHWUGzFANKo6f2vnTU02/k3WlIkQDoKcoZCRyF2dKp/jXw6B
	8K84Kc9ytpjETt71m91En4VsFjiw5J7uE8JrRoOhUtORRWgLeOQK37hIVIIb6S8TDWQpAV8jnHX
	yzRQGM1KT+3+NZlLxv4/b5ucwtZuf197mfHbASK/PIeJ9K3UGiO4M8jJ+hQWy9twUbGC1pjPEaZ
	UNoO66ni80D5ldlDhrba4M07YAImTO2m4pUI6HkDQBmuJDuRfPcv41kOb4rZEsocMxErvCpub+w
	UDuf0UJuiy9H2dTlGwWngCOqypaWHn/D87oYWbdB3tZ0to//4QyZRqb2p4N43w4L8yjJIyCLZQN
	qA0MU1cKW7QZp92rG9LtKKTXFhNMcgoXL2JIgENK753c=
X-Google-Smtp-Source: AGHT+IGa11CZQ7OVZSmolgs+BRgFwXxqJG6ECjAUdkPSx7J7mhDxvu3DET96g8lfamRAEETYvSkTZw==
X-Received: by 2002:a05:600c:4f8b:b0:455:f12f:e3fc with SMTP id 5b1f17b1804b1-45b81e92f7fmr22047405e9.2.1756559373590;
        Sat, 30 Aug 2025 06:09:33 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e68c83asm84593585e9.20.2025.08.30.06.09.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Aug 2025 06:09:32 -0700 (PDT)
Message-ID: <2bb6af10-c74d-450d-9932-8d161ae56a85@linaro.org>
Date: Sat, 30 Aug 2025 15:09:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] iio: adc: exynos_adc: Drop touchscreen support
To: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250830-s3c-cleanup-adc-v1-0-de54dfb1d9ea@linaro.org>
 <20250830-s3c-cleanup-adc-v1-2-de54dfb1d9ea@linaro.org>
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
 S296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+wsGUBBMBCgA+AhsD
 BQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAFiEEm9B+DgxR+NWWd7dUG5NDfTtBYpsFAmgXUEoF
 CRaWdJoACgkQG5NDfTtBYpudig/+Inb3Kjx1B7w2IpPKmpCT20QQQstx14Wi+rh2FcnV6+/9
 tyHtYwdirraBGGerrNY1c14MX0Tsmzqu9NyZ43heQB2uJuQb35rmI4dn1G+ZH0BD7cwR+M9m
 lSV9YlF7z3Ycz2zHjxL1QXBVvwJRyE0sCIoe+0O9AW9Xj8L/dmvmRfDdtRhYVGyU7fze+lsH
 1pXaq9fdef8QsAETCg5q0zxD+VS+OoZFx4ZtFqvzmhCs0eFvM7gNqiyczeVGUciVlO3+1ZUn
 eqQnxTXnqfJHptZTtK05uXGBwxjTHJrlSKnDslhZNkzv4JfTQhmERyx8BPHDkzpuPjfZ5Jp3
 INcYsxgttyeDS4prv+XWlT7DUjIzcKih0tFDoW5/k6OZeFPba5PATHO78rcWFcduN8xB23B4
 WFQAt5jpsP7/ngKQR9drMXfQGcEmqBq+aoVHobwOfEJTErdku05zjFmm1VnD55CzFJvG7Ll9
 OsRfZD/1MKbl0k39NiRuf8IYFOxVCKrMSgnqED1eacLgj3AWnmfPlyB3Xka0FimVu5Q7r1H/
 9CCfHiOjjPsTAjE+Woh+/8Q0IyHzr+2sCe4g9w2tlsMQJhixykXC1KvzqMdUYKuE00CT+wdK
 nXj0hlNnThRfcA9VPYzKlx3W6GLlyB6umd6WBGGKyiOmOcPqUK3GIvnLzfTXR5DOwU0EVUNc
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
 DFH41ZZ3t1Qbk0N9O0FimwUCaBdQXwUJFpZbKgAKCRAbk0N9O0Fim07TD/92Vcmzn/jaEBcq
 yT48ODfDIQVvg2nIDW+qbHtJ8DOT0d/qVbBTU7oBuo0xuHo+MTBp0pSTWbThLsSN1AuyP8wF
 KChC0JPcwOZZRS0dl3lFgg+c+rdZUHjsa247r+7fvm2zGG1/u+33lBJgnAIH5lSCjhP4VXiG
 q5ngCxGRuBq+0jNCKyAOC/vq2cS/dgdXwmf2aL8G7QVREX7mSl0x+CjWyrpFc1D/9NV/zIWB
 G1NR1fFb+oeOVhRGubYfiS62htUQjGLK7qbTmrd715kH9Noww1U5HH7WQzePt/SvC0RhQXNj
 XKBB+lwwM+XulFigmMF1KybRm7MNoLBrGDa3yGpAkHMkJ7NM4iSMdSxYAr60RtThnhKc2kLI
 zd8GqyBh0nGPIL+1ZVMBDXw1Eu0/Du0rWt1zAKXQYVAfBLCTmkOnPU0fjR7qVT41xdJ6KqQM
 NGQeV+0o9X91X6VBeK6Na3zt5y4eWkve65DRlk1aoeBmhAteioLZlXkqu0pZv+PKIVf+zFKu
 h0At/TN/618e/QVlZPbMeNSp3S3ieMP9Q6y4gw5CfgiDRJ2K9g99m6Rvlx1qwom6QbU06ltb
 vJE2K9oKd9nPp1NrBfBdEhX8oOwdCLJXEq83vdtOEqE42RxfYta4P3by0BHpcwzYbmi/Et7T
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250830-s3c-cleanup-adc-v1-2-de54dfb1d9ea@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/08/2025 13:09, Krzysztof Kozlowski wrote:
> With last user of touchscreen via ADC (S3C24xx SoC) gone, drop the
> remaining code from Samsung SoC ADC driver.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  drivers/iio/adc/exynos_adc.c | 196 +------------------------------------------
>  1 file changed, 1 insertion(+), 195 deletions(-)
> 
I need to drop also touchscreen-s3c2410.h header.

Best regards,
Krzysztof

