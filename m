Return-Path: <devicetree+bounces-173551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 719E2AA8C68
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 08:45:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B543C3B4486
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 06:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4DAE1CCB40;
	Mon,  5 May 2025 06:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r0CjERFh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A704A1ACEDA
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 06:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746427508; cv=none; b=utxqwDNBztewfdfbvRWsDzG/aGDUTK8YD6iZtX6AVKxh1Ccjwb9Bgp1Vt8FRVWeqFXrCKg0NwIH3HszOtyxvp1fDJ6A8etAKrEsQSttu0bYOWXEjjC4wMi+kXypC5xOThVurwKer+ADEpMc50seugdHOtUt0JPfj1zmH9HsB/6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746427508; c=relaxed/simple;
	bh=Ksz2MkhzWiD6KlQcTwLlFEF5v2ADwK9Yf6rKIUoP/6I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hKctmczd2FzdAifIg9P5+saAgeVV9/SmvL422qR51PGgtTHFd+LbEAhV35/nNSOBmR2/6HZYpfzN4aY4z+TYr7s4AzV1herXuqccyIsB6mszkFGV5sFVd5gAUrxBw39Jv92CKhfURcBEr3dB2+69PHU8HU8cMcOSQYmtZuas3wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r0CjERFh; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43cfe99f2a7so4920945e9.2
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 23:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746427505; x=1747032305; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=w8noPVR70Xgd7wEK+1WJmgui78pNLLCVT+Tyy9XyHfs=;
        b=r0CjERFh7wR4yk9MwPfumA/Slp0Lg148wkw9DGW/kzMgF0DGNOaRVco+7iLvNV5sy1
         rGl0yq9BoIVoz+F94T/wxPB7F75asQnu4YXraTmBQ79zE6n+zdQRENNsajJnt3H/nncD
         /GgiQ5NkZ+JT52JTe/AuZgIoueiXiuDAJ3u02vb1J0QCL9ghUP+fOB+ROXhFthh+Ec/7
         9if7CwvxnaRIzFjijG69SzGOwYGaQddydDIMP6ejPWjixI+ijrCfWSfXEiLom4QNe13V
         9F4MF7r0ozRrilrxNqgKYhc3mndhXnb+B1zFepCBgvC4FwY990ZsX5457io4Xo7N7PgJ
         Gcyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746427505; x=1747032305;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w8noPVR70Xgd7wEK+1WJmgui78pNLLCVT+Tyy9XyHfs=;
        b=pyM+2nzoxtLHPiJmu/ne4S5Lcu1MiR6TRzPOeYEoQ48Aq7LpgJgKI0XCzDuCIY+Oox
         zCRyg7juA7BzcYUQFnw4xKuMMcY2nHhCfr9ebO1c6aaOgU0ZJqfsdrNGMf0UaiyJSR+B
         XJr7C8ArC1wzyIIMbmUFQGBKHPsU6H8p6uMxOYzC7MVsl96FKGe/mMkQ9cA+c1F/01UX
         t2TMsyMPfQpB8ldRz2b56MCn+pshDMP2MvPIeLjtlUF2oQTHfLdr9eB5y+/FMnZsFELr
         s/O5L51kVhQgo83lPQGXKfG/sN0QpAk4yasBMRVb53nYElHdZcHxUOuTtUlNm+osSTdg
         xXQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdWCIxTpwW3CcknAFUx6d1DFKiD1C8ZbQwaTmGrDH4XyW2dfsb2vXrsr8jCg91ZVZTDwcOeb5WRTZP@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz8KBWt7AMiUmaRUsL13WKxPyp4nJfzAkjB3KxFRLItTtfQ65H
	tBcHZqFOTM2Uf4hVtjrcz/6xUJdCmgtIcF46o7ggHRQkW7t7Q2OvR6lzgaMrV28=
X-Gm-Gg: ASbGnctQXQqmgwg3atqXgjc3p3WPdGaugrAXRkwolK3Fn31FbpHaKfKu1s+Gq3tFihl
	46tJLCqUROAxnvbbt9Zr2DldRaBS4ULCjdtFKIEc11Zw/UKauuuKiGMP7RG9milq25XkOPbRTOn
	OsZhj2xNC/bKoMKdTCchn2NdGmvc4Lstwd5mJ8Ot40KizYwgrkM3Ev2b/cwTIkV2HEoHPVFSU4+
	o57w4j+/mrv96WqxIubCIoxE9VWRnYlM3SIij2yB07ctHUVBUYzp2eq8H59emi87WFG44tbsTlw
	Ew28f7+wm0u8Xy7leu3P2udOBsU4ku9V7OubAaxh6xyA+UDcuIkL4XaMbzg=
X-Google-Smtp-Source: AGHT+IFqK9ylb6N7k08mb0TyDcKoH9DPTwdh1zCrGridcwy/TzfJH8PhEKoWWMZ2Yj9Gv9rTYTvRkQ==
X-Received: by 2002:a05:6000:2481:b0:3a0:782b:acf8 with SMTP id ffacd0b85a97d-3a099af619dmr3414511f8f.15.1746427504927;
        Sun, 04 May 2025 23:45:04 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099ae3d3bsm9521985f8f.33.2025.05.04.23.45.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 May 2025 23:45:04 -0700 (PDT)
Message-ID: <5c307e88-a3fc-430b-8ccc-af59e2097da3@linaro.org>
Date: Mon, 5 May 2025 08:45:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 19/24] drm/msm/dsi: Add support for SM8750
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krishna Manikandan <quic_mkrishn@quicinc.com>,
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Dmitry Baryshkov <lumag@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Clark <robdclark@chromium.org>, linux-clk@vger.kernel.org,
 Srinivas Kandagatla <srini@kernel.org>
References: <20250430-b4-sm8750-display-v5-0-8cab30c3e4df@linaro.org>
 <20250430-b4-sm8750-display-v5-19-8cab30c3e4df@linaro.org>
 <ahx623ttvzd62u4fri6iqguj7mirlf22tvwbu6k2ngxw6hwbcp@oh7mmex5fjmz>
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
In-Reply-To: <ahx623ttvzd62u4fri6iqguj7mirlf22tvwbu6k2ngxw6hwbcp@oh7mmex5fjmz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 03/05/2025 00:52, Dmitry Baryshkov wrote:
> On Wed, Apr 30, 2025 at 03:00:49PM +0200, Krzysztof Kozlowski wrote:
>> Add support for DSI on Qualcomm SM8750 SoC with notable difference:
>>
>> DSI PHY PLLs, the parents of pixel and byte clocks, cannot be used as
>> parents before DSI PHY is configured, the PLLs are prepared and their
>> initial rate is set.  Therefore assigned-clock-parents are not working
>> here and driver is responsible for reparenting clocks with proper
>> procedure: see dsi_clk_init_6g_v2_9().
> 
> Is it still the case? I thought you've said that with the proper flags

Yes, as we discussed many times - this is still needed even with the
proper flags.

> there would be no need to perform this in the driver.

assigned-clock-xxx are not respecting that flag and anyway, even if that
was solved, they are executed too early - before PHY is initialized. You
cannot prepare PHY PLL before PHY is initialized and enabled.

Best regards,
Krzysztof

