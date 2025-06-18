Return-Path: <devicetree+bounces-186942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DE9ADE39C
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 08:26:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 55D917AA4CF
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 06:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AB25204866;
	Wed, 18 Jun 2025 06:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GiCElrMI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12A1202998
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 06:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750227977; cv=none; b=s8yB171Ovumd2VIGW8slXLxVo1Kus05RX10pKLVcUoIcyLFYOBma7q2rtvLYE3+SkRmH9OMmN5JQ0pKltRkw/RtPh62b711p/XO+IVV+u+8E/r6McBNnpIinVPCNheszQnBJrNc/Wpm56NzjSFuqHRjTrZ8JJWwwnou36pK1ux8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750227977; c=relaxed/simple;
	bh=u3WEU3NWNESANE0A7UcpZkbIbzH13/ANqv0dO5bT8tc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W2gNszXZcIIFJjuVG2SX6yYx713OKyNykxGHkZHuWgh6c8RlX7MBG+oxMVLMoP6G18QLkFpBgbdZwVZHvsR15bBVWVQzV7BiMit56tXCBqFkFWfOBFgiUqUI4nspwAJiuu45je5r5Z1DQNE6RuxXZZ6vZDPTWBiDxAOvgMdkifs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GiCElrMI; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ad56886dd60so79806666b.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 23:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750227974; x=1750832774; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=u3WEU3NWNESANE0A7UcpZkbIbzH13/ANqv0dO5bT8tc=;
        b=GiCElrMIiHdpN0pNozfCsC/rGZz3cTpG0M802dKa0MS6MqETsxUjaTQwGhd4tMm5Io
         osy2hKBkKe/ORSu3D2IbdSdqv2QUN1opahNsDF4qc6s3ipFjMFrKzybvfRDBNH+q4qsQ
         SAf3pTEdAuYczpBL8GzOYmOczswQJhrGjWTOyrtMbnMv2KvDmm0/qPnpLiBbA14GJyFF
         unUdmqyX06z8YaRgGrFcUT7EdNnsNOfUXnuELcL7qRL8u0XSbJwVc1OajlM+0c8X4wh1
         mUN4JnBrZARloINJzZtH3y+gIIwRFV+Mif2yQ8eR+s7bw6SnrZxhHk76XkpicqsAz4Wt
         MDDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750227974; x=1750832774;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u3WEU3NWNESANE0A7UcpZkbIbzH13/ANqv0dO5bT8tc=;
        b=urrB984pEKzP1QeVb7Ot9+FXHsQ4PO64mqhQEBjYXJkJv8uZ/SJfievbAh5js+pvbF
         R8GpY9XCHRaBdRLFkWfSWaRThe9nT1vlrdsUPL3bjJ6Uwpd8e6EnGmPWwePKiVCxjlC7
         PaD8uK8Fe251TU6odQi/R88PiG76G+qRnGtjcsLd9u31z8xh8oKz2B0//D3vd+5Qu0x8
         6FrzSoURlEEGNYvyo0nmJXAqLvVlKSMfTPwo23EC/OmbtAbo9bYSI/5cA3wuA+DvL8RE
         trEGCgWA8kB1Y9KjdQI8B/7vp1Aotv0pG8jW/EZ/tmXKDXJjFcwac0saHnZUN+ct66hd
         SatA==
X-Forwarded-Encrypted: i=1; AJvYcCX5B4pe6rMi6WKsuJ1NCIRDWQdTfGtFFmf/IXwlvedUrFRah2Kjl+qAMlRsMos+m/21nxwaoeQBYAB6@vger.kernel.org
X-Gm-Message-State: AOJu0YxQUyQdGUOvFBxpsqpdF6uDqgGvh6wkbIpym/V4Bc3gqy0t8yIp
	pTvnI+qeiiqoPA9bW+qinzGFjJWCnNeDr1BZ+7jSIOEsK4MZwNaKfjx7E4vxXhTIZbo=
X-Gm-Gg: ASbGnctz3wglgkjM7fdopILinLo/PN0vSAcfSzsghebp4Bgk3bI9k2LPqP0j3gVlq77
	zAmms3BQnfA87gdoqHVY1Bwcs0pX7ZtJ+3UsjJRi2Tom6abIo5bEZL4dkKR7OHCUO+CtOHNX6Jb
	iKdV3bdo5HJmRGSQdI4lYsaSc7j9vbpRbXFH/EkNw20OEdg7K2e2BymjBGqM7c3ffTfMXv/EkaW
	y4wISXC/csP4RGJcX3I0YRtGhyhz9pV40bi1KKVlqzvpSl+qX78NH8cUddN0fu+DFTZ6P7c0DVb
	Qag/F0xISMMgS2HMykXf3NITfOB5Z2TznI3SkE9JpUBGmQqVLtgj4AuMeq9gK3HIdwvnQac0Jj9
	2QzqkwkI=
X-Google-Smtp-Source: AGHT+IGAV7YIhPrmissia6Y8+pmxCv0IdQifLcOSWFuTUsKSyZmDHIuz8fEmRood6n5G3Gg8LNWjJg==
X-Received: by 2002:a17:906:d555:b0:ade:3372:4525 with SMTP id a640c23a62f3a-adfad502daemr570460366b.9.1750227974079;
        Tue, 17 Jun 2025 23:26:14 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec8979563sm977939266b.158.2025.06.17.23.26.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jun 2025 23:26:13 -0700 (PDT)
Message-ID: <4657c6d8-8454-478a-aac3-114c6194b72e@linaro.org>
Date: Wed, 18 Jun 2025 08:26:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: clock: qcom,sm8450-videocc: Add minItems
 property
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel test robot <lkp@intel.com>
References: <20250618-sm8450-videocc-camcc-bindings-single-pd-fix-v1-0-02e83aeba280@quicinc.com>
 <20250618-sm8450-videocc-camcc-bindings-single-pd-fix-v1-1-02e83aeba280@quicinc.com>
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
In-Reply-To: <20250618-sm8450-videocc-camcc-bindings-single-pd-fix-v1-1-02e83aeba280@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/06/2025 21:07, Jagadeesh Kona wrote:
> Add minItems as 1 for power-domains and required-opps properties
> to allow this binding to be compatible with both single and multiple
> power domains.

This is your hardware, so you know how it works thus I expect here
arguments why this is correct from the hardware point of view. Without
this, it is impossible to judge whether this is a correct change.

If I overlook this now, it will be used in discussions by other qcom
engineers, so unfortunately you see, you need to prepare perfect commits
now...

Best regards,
Krzysztof

