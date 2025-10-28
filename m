Return-Path: <devicetree+bounces-232296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 36183C163C1
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 18:41:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 548541C243DC
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:41:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFFD734C991;
	Tue, 28 Oct 2025 17:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vUzm1ReF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07F734C824
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 17:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761673222; cv=none; b=O/E8nH5Y+37kJXY3qxM6nXP670kvKKBrdKHqcF/EpI50c88/sjljY5Iwzmyz2RYf7Sel+uiNIcDj3AvvqURHqQNil3cAYju2hrQbh9vwEPsduqcwuUBsgqEVb5XfxHjxC03KEgqPvwCPM708zaeFYIBqUNPogIR+yRLYfJS5MDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761673222; c=relaxed/simple;
	bh=33wyLUj2QslU96vkFuejtHTWTPXdr1QMfJdUov2O/90=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IqpJMAqeMYx+lbfNototj31x0/IrTzcRKPZQCqtjTP6drUs941TZznL5OHexH80pxpVoKy2yzCkluAdJtgQ2EYujeBCvx3zjTPJOJ5vVwjXOfLDLzDPBT9fes8J0WvuMbJ4xJ+yNMJBzWxzpidzTNngEMHdAgn8ckseb9vNiZjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vUzm1ReF; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-4270a072a0bso1042416f8f.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 10:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761673219; x=1762278019; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=odxA4vuWIg3DU9ItLUgKxGmWSsvINszlMmZ37wf20WU=;
        b=vUzm1ReFES4NbuNQPLP+b0yjTH0belyzbMszNqWp1zIrH7MjBoaCxOaugIqLqT7hOJ
         Itd6ihmT8yQlmfl0B1fUyQv1i7ADKSGFx+Yz5FJ7uYLzaxDP7cv2QaXNcf3JUNSDWMuu
         ALakqhV3nYWEAShyrfxLnxXJDbM5v+nQ1TjGdzvjU5D9Ag4m356OEB5wPh1OOMegHV/i
         0nm7v502htmcyUcIq6R/WB7DckZa+zIoxg3BX50fw4iGkFUvh+YWFYmqjljetsEQJM2H
         oK+JsFkpY+1ZnwqfCw2FmT0CCKnAF+E2vjnhsrlMqoEqBjM3R4nrCO2iIQu22kGJJwZZ
         I4ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761673219; x=1762278019;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=odxA4vuWIg3DU9ItLUgKxGmWSsvINszlMmZ37wf20WU=;
        b=qglXOHR8MBQ55fQWSzM3oQXJM9dO6GnfUOrpDOeAkZ347nMDH49gTLnjM3hoAyBKB1
         PN4cMn6LYF1k9AQ7rg1SkiGyKBHUl4VAzbqn55mfTj6JtMNBJRY3kbArUKOoQsMFq4sa
         z3U+Dzs2tVoiX3k8zPlExrJfTiAXWszhDTGMgb2sjRXJcC9aVaSTN/9xGxJI4Fnt9mqs
         GJbOW2YuZSvUz+6GXnQ7N6+zbDvddDerkspJfhn97YuxJswzIkll9IlrSW3aH/H1jJ0y
         QwzMO/T0zknOxtBf12Y8cqEsFZeRJ81eC8iGGJAUufp1JcVUm3xAYmGYEZb75vETI7Fq
         hGdg==
X-Forwarded-Encrypted: i=1; AJvYcCVQ4w0Wcv1mnjSFUdOpkfa3cWCecFv5yGhCIydYs7/JHkp/SZGpCET9T/x/xbo1acz5BiI2+8fHIy5S@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2h941/XcQE+dBBre6QXAKsr4oHx+g/BUpNY31Q8KIfU4K0Iw4
	NKhoP2ySmrHcxphNMzjBD8kNYZxM1NM8TQCfHZD4g4QCkdyl4PV0X1PSUO44DQqbro8=
X-Gm-Gg: ASbGncv2LzBndfrdeDm03gV86Ok9mRNv0PYylOIQus0Y159cRp+CBOgVy3xxQ+PDtGw
	/EqhU8CYsFYfgReFCOpbhwC71U9h+20gdQQU6GIMaCvjPKOQG3urL15EfWkI5mFHHaGyRXEsr6O
	lQh/Tddx2M9AkaHyUsfvDfR8VzpepZGwtbIKdn/kcNJM1VOTo7HgLqgQ/FfgC6U5o5IDuAodEPD
	jj6FJp4E857M5vpFDpez6Fgo3wDbo0t0acIAI0s+QGSDnbQkfBOYIBncyFKiz5Efe1J/fJZEBeA
	6+GOPVuCUpYsWOfVAGZklqjK9XdQHy3sSPZbtHstQhIiQrIbOvnbYQLa1nF+ZzVv74GL2ZKzsyQ
	yFu1VP8kb/W0DkQUL9rz2UgtNuAgrmTNKgRAHCNgcOJtQrXbsutheaARImvFOORvH7+lVRd1R9e
	H69pUB+8VjDVmEqElRwOTZ
X-Google-Smtp-Source: AGHT+IFy/1xBJegFAcxbIrPalGQnnNGCdCC9xAM0kIXP11B19VVM5aQ7fNW1Qn5qpgJClPtxqFFwIg==
X-Received: by 2002:a05:6000:1a8e:b0:429:8db2:a3eb with SMTP id ffacd0b85a97d-429a7e516c7mr2244140f8f.4.1761673218781;
        Tue, 28 Oct 2025 10:40:18 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952da12dsm21892420f8f.29.2025.10.28.10.40.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 10:40:18 -0700 (PDT)
Message-ID: <3d16d9fd-f1ca-4477-bb92-dd6689a61f9d@linaro.org>
Date: Tue, 28 Oct 2025 18:40:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/12] dt-bindings: bluetooth: qcom,qca2066-bt: Split to
 separate schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org,
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
 linux-arm-msm@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-bluetooth@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
 Marcel Holtmann <marcel@holtmann.org>, Rocky Liao <quic_rjliao@quicinc.com>
References: <20251028-dt-bindings-qcom-bluetooth-v1-0-524a978e3cda@linaro.org>
 <20251028-dt-bindings-qcom-bluetooth-v1-2-524a978e3cda@linaro.org>
 <176167254303.2794634.13957368391979283059.robh@kernel.org>
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
In-Reply-To: <176167254303.2794634.13957368391979283059.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/10/2025 18:29, Rob Herring (Arm) wrote:
> 
> On Tue, 28 Oct 2025 16:31:51 +0100, Krzysztof Kozlowski wrote:
>> One big Qualcomm Bluetooth schema is hardly manageable: it lists all
>> possible properties (19 supplies).  Split common part and
>> qcom,qca2066-bt to separate bindings, so each schema will be easier to
>> read/maintain and list only relevant properties.
>>
>> The existing bindings do not mention interrupts, but
>> am335x-sancloud-bbe-extended-wifi.dts already defines such.  This issue
>> is not being fixed here.
>>
>> Existing binding also did not mention any supplies (which do exist as
>> confirmed in datasheet) and Linux driver does not ask for any, thus keep
>> this state unchanged.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> ---
>>
>> Expected warnings:
>> arch/arm/boot/dts/ti/omap/am335x-sancloud-bbe-extended-wifi.dts
>> ---
>>  .../net/bluetooth/qcom,bluetooth-common.yaml       | 25 +++++++++++
>>  .../bindings/net/bluetooth/qcom,qca2066-bt.yaml    | 49 ++++++++++++++++++++++
>>  .../bindings/net/bluetooth/qualcomm-bluetooth.yaml | 24 -----------
>>  MAINTAINERS                                        |  1 +
>>  4 files changed, 75 insertions(+), 24 deletions(-)
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Lexical error: Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.example.dts:53.42-58 Unexpected 'GPIO_ACTIVE_HIGH'
> Lexical error: Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.example.dts:54.42-58 Unexpected 'GPIO_ACTIVE_HIGH'
> FATAL ERROR: Syntax error parsing input tree
> make[2]: *** [scripts/Makefile.dtbs:132: Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.example.dtb] Error 1
> make[2]: *** Waiting for unfinished jobs....
> make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1528: dt_binding_check] Error 2
> make: *** [Makefile:248: __sub-make] Error 2
> 


I need to make patchset bisectable.

Best regards,
Krzysztof

