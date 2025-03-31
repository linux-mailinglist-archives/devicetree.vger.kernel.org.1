Return-Path: <devicetree+bounces-161952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B41FA76139
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 10:18:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E37218843E9
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 08:18:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 732431D5166;
	Mon, 31 Mar 2025 08:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Iml7BNKx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89EE0157A5A
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 08:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743409112; cv=none; b=PiwlS1IP2qxbQ8Up+lbCeeg16FwKJH6aXcbSZLsidKsBE2RL1xI/C8Or/yyxTrB5hclGrcHWc+xUZGdBLfHocel+bZkUj4hL6hTJhYwdkGKXexNNy2Hoa5z4FzY1dbU0oMHb0od7Aut4RUu8fqmdhS5S42CB46sxuvQv1sWoAPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743409112; c=relaxed/simple;
	bh=7czGx19+Ue/FYjTju2NXhPJvzgtJl1O+BJtmO/KaSwE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L6U9O3ubLnx4BCDFSWSn7qRz4dTNZD8V6CC/QamjgG3y1FvQvPpjpb47ZJQvVu3zO5DXNvWSxmgh4DfjSeCeSU87guNhyuZdJ8Z6LT5k85n9+ohuMIgW9K2TSZfH4XLOXSOOZJmK0Yxr0GkEJ+6imPVKmJiy+QwTvpDLL4lVRpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Iml7BNKx; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3912fdddf8fso3184062f8f.1
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 01:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743409109; x=1744013909; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R3znnsuY9dskTAhbds49XMwfp61S6Bya9zKCMQ1uerI=;
        b=Iml7BNKxPBjoFpdfonxjuVFiATR4LNX7INqwE+UAAYdEe7EQSPatNOw14HJF3W3g+O
         TJqhj7sFr0GmaLEP3qirv8kv8RCsuzw/gqXQW6H/+Wt5ol+HaS+k/KgcurL6DDZFTpl/
         BepKxvkPTLRpiSC8FcpofaSayIfwQSsfmrEQP1DqpRk4ud4L1nCy4r9uAI19H4DMaDJ7
         RwVQs6UFF34hFSp4QDB5gmIdalZFKG4ZoHpPk8+Wa1ZAzrSC+KvGCAdrIiqdzYaoa15q
         jBcyfeBIfilJriQkrF/kp1Ho/ggIBhWIzLaVsTK3dHjtdzQHDkYX2Wx1CIgiXVo/gevs
         gsfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743409109; x=1744013909;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R3znnsuY9dskTAhbds49XMwfp61S6Bya9zKCMQ1uerI=;
        b=IdlG3NqYk9bcGm7r3Dm918Cb7sgHVtLJnyPIcnnepWn1/ApC8oXphHGjpRk18LP2Ae
         0j8RAVQM8aopYTI458a6YTGOES6CwmmbaiknTSwjtcvBCNUqXZrrvSAkcLu7pIl73MqU
         /8W6H3QSFmpMhOUDYjA2A3twSshI5Kj5dmavbCz9dg+Fo9iPLT1lv17DRud9iIwxsZdz
         +GqCeARBGpjhH3E0AxZPqGelzObDO4vDCIAJAC3qAyc3G9bwYGam8jJVdK67GAXA5XPz
         vCrqSDvZX83aPtbSJfPqn3MTSMB5x4BpQZTERQh1uQk99kDzenp13eIfni8j0Iw695oJ
         Ohqw==
X-Forwarded-Encrypted: i=1; AJvYcCVfuH+CpEcUIxnoQVQHFUSY77x3BXFhDQ02Ar+oIRc8zXJhTujfDT0ezznwbfSK4WUD2Ze+yuZ58Khm@vger.kernel.org
X-Gm-Message-State: AOJu0YzsF4CYxqjqIRHTzesgcfNeBu/2yzjZgt5HML5P/TEmrctFSkWR
	UMf8BI3bBds1G5fVi8iT28sow/+YfJuoE7gR0eu9lk7uQ1ivrHuf9G2eBxhKLtzAM8O2khuJS97
	r
X-Gm-Gg: ASbGnctv0LbCpn1yECa8np0Q2WHTKXkwx3KOORM5B70yZ5+k9AKBJXjHwnX0SI9FeRG
	7TX0Kf1GUm62g0vilD6976Pha/5+475TvloJ5jJEfvDkWvf9tzJc9XHFA+nJfnhXPhoaoSl1ig1
	69P+hdIFa69EbyGMbT9oM70xSqLCnnXqODvgnjm6piRTe3nbML+mV2ON7nfAmfAA7nxwsfonkJN
	1jC0kwcbXg5QVkKCP8RCbb+LXGsvqdz6e/AEh8mNbzhyspWk/7lnApnN8Ty2VQXUHFxtTC3jmHL
	4K2NudSafwwbjDX+xXmxtyzX9EP/jlWM5x0gHxqbTv4n1869UZ2Mz+RjbuXmEBKKa4tI3te+3Sy
	kScO7t7bU
X-Google-Smtp-Source: AGHT+IHLcLbL4s9+Xu8fSEA3SNUb2QL3vBVWN0CnlLGjFlAuBAAgrW4sXB1cYcumCEVCYdoZzh11Dw==
X-Received: by 2002:a05:6000:2cf:b0:38d:d166:d44 with SMTP id ffacd0b85a97d-39c0c13b00amr11109382f8f.23.1743409108903;
        Mon, 31 Mar 2025 01:18:28 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43d8fbc10e1sm113721755e9.12.2025.03.31.01.18.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Mar 2025 01:18:28 -0700 (PDT)
Message-ID: <fdcbe997-6ffb-4166-92fe-b31b6e12391f@linaro.org>
Date: Mon, 31 Mar 2025 10:18:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: Add NXP Software Watchdog
 Timer
To: Rob Herring <robh@kernel.org>
Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, linux@roeck-us.net,
 Thomas Fossati <thomas.fossati@linaro.org>, linux-watchdog@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, wim@linux-watchdog.org, S32@nxp.com,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250328151516.2219971-1-daniel.lezcano@linaro.org>
 <174321222207.2172829.15350189767926637719.robh@kernel.org>
 <20250329171215.GA2298924-robh@kernel.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250329171215.GA2298924-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 29/03/2025 18:12, Rob Herring wrote:
> On Fri, Mar 28, 2025 at 08:37:03PM -0500, Rob Herring (Arm) wrote:
>>
>> On Fri, 28 Mar 2025 16:15:13 +0100, Daniel Lezcano wrote:
>>> Describe the Software Watchdog Timer available on the S32G platforms.
>>>
>>> Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
>>> Cc: Thomas Fossati <thomas.fossati@linaro.org>
>>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>>> ---
>>>   .../bindings/watchdog/nxp,s32g-wdt.yaml       | 46 +++++++++++++++++++
>>>   1 file changed, 46 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/watchdog/nxp,s32g-wdt.yaml
>>>
>>
>> My bot found errors running 'make dt_binding_check' on your patch:
>>
>> yamllint warnings/errors:
>>
>> dtschema/dtc warnings/errors:
>> Documentation/devicetree/bindings/watchdog/nxp,s32g-wdt.example.dts:18.29-23.11: Warning (unit_address_format): /example-0/watchdog@0x40100000: unit name should not have leading "0x"
>> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/watchdog/nxp,s32g-wdt.example.dtb: watchdog@0x40100000: 'timeout-sec' does not match any of the regexes: 'pinctrl-[0-9]+'
>> 	from schema $id: http://devicetree.org/schemas/watchdog/nxp,s32g-wdt.yaml#
> 
> You need unevaluatedProperties instead of additionalProperties.

Thanks!

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

