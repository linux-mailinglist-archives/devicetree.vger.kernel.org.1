Return-Path: <devicetree+bounces-195784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 645DEB03062
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 11:12:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E767189E4DD
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 09:13:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D452275B1C;
	Sun, 13 Jul 2025 09:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hRg1H883"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334011DF270
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 09:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752397971; cv=none; b=BoE8QjoRPBac4+hCKPOcKfl9CfB63/Vz1fuoi2y7fr6AAxrwaUg/esf6X2HpJXJU7/7gCWZBRbXhyNxDbMM9NnN1SuJgwIzyP8wA2uPgVvxdAxGm59IDRdzjZmQdnBzwIURuJhtSA6M0BK3ldfKe5VfceTlXAP238OT4/f5INTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752397971; c=relaxed/simple;
	bh=ttP2+H/bej+IM7hX8rbyBToQUHpPpcZy6rtLIIOb6c0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DXs/FQFAXGGVliHRcMjp9AgPXONGuz0Wazib6QjQr8NL2y6OocUYbnDd4933xpknlHmg16Kw8BlhwPYiQ6po9B8TP+/FGbuLDnL4+OO9RyJKGe6Q+VpXztvU84LdcU8aC++Zz9TnXVjAvfmd7RMxT8keELWl41fkbq7TSAJdrBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hRg1H883; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-45363645a8eso23044605e9.1
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 02:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752397967; x=1753002767; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2bZfg9DF5nDVKhJoydkljHjxo8IZW88WiR/LfC60k7Y=;
        b=hRg1H883qwLMSTjeEigBOEFhVD6QoGYt4zn8ehVVliF72zunVAlKF6WNNtBtgsOkjo
         yeWypeD88AfwA0risdqQDYOTXkWQtUEI9wgSRcPWRTTeC1BDJzzxqhGjuU9Z6nnO12Th
         JO0qvtjoh9undSE6DPYmGfRWpxzu1IdfljeRwn2if4+TgwT1cD8tPGYIGCSebmwD5r/d
         3+oEqg0jYBrlmBwBR5I2hK4Pqr1ynD5FfMPE7/ElU5olYtwPe7GE2og0ReNSy//+d5/N
         p9Hum00PCC1Sso5SS0NksWNep0lqBFuCcdpvC4NT8J51UWaugcDVmKOIBPdj/VdWsR50
         CdlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752397967; x=1753002767;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2bZfg9DF5nDVKhJoydkljHjxo8IZW88WiR/LfC60k7Y=;
        b=ZdeQ3nHEQxZAEsNzm4VPlfZhU4n2UAaQQv/NUWqLYsofXsbNqVFInoxHz/AC9ae0Iy
         aoCoNWMAttei74J8y8Rp7lRViD7jA9zcyLLEgZi+C5iW9MCEZUyDttOhnwDA8/gXqXmg
         SNgsIKolubg7Dtkq6N3sCi+PZyLQyFNQo3WQFsEYeLGF5bnRCcyOdcKLgiN14mP2en31
         4tK0Il0iDpEWgy+qz2ZJvm6mvMOHDZwnuj1m80Dl8QRujIYih0TivHiwlIMEimxVykN2
         8DXqccKjd6tghPfdx0zfsysM9/q31ZRriPFIkA0XNxVEq+Ghrvvdvv+1xkqWz3mm/UMm
         Yc6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUtyX1dmb5FolHXwSf//9Atra5cUT4nuTofaKx0lGpWnOn408cv9DS9s25jb3GWNCXR3RdQJ1pm4ueR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc7BpgNhJQ/Dw8qq2HXX05J8I/A/TM0KuC0R/kjzKWp+5xREQR
	41spLy8LvntE6PJh0DAt44BJw3P5XUxpJmfNsay0vOepnAOmilJdXhEZqaI6wdKRNnY=
X-Gm-Gg: ASbGnctITp2uHEQoSAFcBF9a3JlsARjmKrTpSueUTp+7K2d9glk/NpCQlX5S3CFU63/
	NmyCS1JIqHBxk5WOhlTgG8L1GGPmFWoZsA0+N6A0oxsKroKYxSWcBozlGUT+Wvdcwkf3afsIgF1
	Gvqg52IR/oc1puR/Rmk5sDvfW0PxFQvRuP65N6zNYxKyPRmcQv9TbnzpGfk8II0sOdYMR3xZHvp
	gurncNFmWYEKSZfzI9YuARokdf6l7Oj7Y+s4iiEwH5oBBfvD0jrvRVNT416wrlN8ntr41FXHldu
	2r0NH9O3UEZAZc273gukaNrDN3rLrQTCKxcFbqT5HgEP11uaTuuwz8f1j495Ul35UQV3x2CVjhs
	g1e1LJsSjq1U/0QXNtOGU1hgKKSlvh6k+MMoH66mnvIPMPwkivu06CgvfE8m2fXg=
X-Google-Smtp-Source: AGHT+IFYMtWgYdOmndlZ3GtfdgwsQKMDhvhnsOVqQJrHIBGY5YzlakXukB0kQt0B+MV4iFsnSxY0lA==
X-Received: by 2002:a05:600c:1f8d:b0:442:e9eb:1b48 with SMTP id 5b1f17b1804b1-454f42692d9mr74678445e9.24.1752397967443;
        Sun, 13 Jul 2025 02:12:47 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc9268sm9235312f8f.41.2025.07.13.02.12.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Jul 2025 02:12:46 -0700 (PDT)
Message-ID: <6ca1b24b-5f9d-48e7-9afd-7dac47b486b1@linaro.org>
Date: Sun, 13 Jul 2025 10:12:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 01/15] dt-bindings: media: qcom,x1e80100-camss: Assign
 correct main register bank to first address
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-0bc5da82f526@linaro.org>
 <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-1-0bc5da82f526@linaro.org>
 <f4fd544b-bd5e-49eb-83d9-290f77e503ef@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <f4fd544b-bd5e-49eb-83d9-290f77e503ef@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/07/2025 09:15, Krzysztof Kozlowski wrote:
> On 11/07/2025 14:57, Bryan O'Donoghue wrote:
>> The first register bank should be the 'main' register bank, in this case
>> the CSID wrapper register is responsible for muxing PHY/TPG inputs directly
>> to CSID or to other blocks such as the Sensor Front End.
>>
>> commit f4792eeaa971 ("dt-bindings: media: qcom,x1e80100-camss: Fix isp unit address")
> 
> I have next from few days ago and I don't have this commit.

https://gitlab.freedesktop.org/linux-media/media-committers/-/commit/1da245b6b73436be0d9936bb472f8a55900193cb

>> assigned the address to the first register bank "csid0" whereas what we
>> should have done is retained the unit address and moved csid_wrapper to be
>> the first listed bank.
> 
> This is confusing. Did that commit change entries in the binding?
Fixed the unit address.

What we _should_ have done is put csid_wrapper as the first entry.


> 
>>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> ---
>>   .../devicetree/bindings/media/qcom,x1e80100-camss.yaml       | 12 ++++++------
>>   1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
>> index b075341caafc1612e4faa3b7c1d0766e16646f7b..2438e08b894f4a3dc577cee4ab85184a3d7232b0 100644
>> --- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
>> +++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
>> @@ -21,12 +21,12 @@ properties:
>>   
>>     reg-names:
>>       items:
>> +      - const: csid_wrapper
> 
> Anyway, this is ABI break, so needs some sort of explanation in the
> commit msg. We don't break ABI for cleanup reasons, unless it wasn't
> released yet etc.
So I since we haven't added the node to a dts yet which to my 
understanding means no ABI break.

---
bod

