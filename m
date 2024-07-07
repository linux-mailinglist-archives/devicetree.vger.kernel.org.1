Return-Path: <devicetree+bounces-83655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3146B9297AA
	for <lists+devicetree@lfdr.de>; Sun,  7 Jul 2024 13:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A82FBB20CE5
	for <lists+devicetree@lfdr.de>; Sun,  7 Jul 2024 11:44:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 218041B7FD;
	Sun,  7 Jul 2024 11:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WIZvwvF/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EC01CA96
	for <devicetree@vger.kernel.org>; Sun,  7 Jul 2024 11:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720352639; cv=none; b=BPKFSX6ZXV1nxbhuKwTgP29CrIbaVNzUSJFVWGqrP0/BaTy4mUSCXuJnLKPcxtZOeUeeWpSRFnVzzKDCA3W7yiXPOoERWZROT3vVqTvm6eFL891pl3z9Zx7vn4/7Cr5Q2N6UHGdFOesxkIwRXHLWnzmiZXJA4XryqA5LI+5tTaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720352639; c=relaxed/simple;
	bh=vBzrKaBKaxOdJqVOKo3Cu2WVHn4VnwdxQrytWg0Clvw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LBDVQhXs+4DWl8qYQhV2hNSkoudq7y0HUarNL2eWjCoISisoMdAMQg3gmX+Iucph6cgQAlfV7c10tM+hJjWvL5XVZJJzH0wOsdQLO1k2vnm/eUn2hxsliM4jCNPgXsf30HA+jCP1S7PnJD5N4bpLaAIrZiAQuBm303AtuZuIS/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WIZvwvF/; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4256742f67fso20959675e9.3
        for <devicetree@vger.kernel.org>; Sun, 07 Jul 2024 04:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720352636; x=1720957436; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Zxz6+QMHUPbkUXLgSRCL9HmkS7E/ilLeb4pYpny5c58=;
        b=WIZvwvF/ASBl4AK3VGee0/kMqZctd6OAbhM+NErd1qy2ZY+kD2i9vvTybwZmmu3KAl
         u56B0qE9+41jlkOSMvcAHjq3g+xGI3AJXH6TQVGSwkrP3p9S31seDCYRdPvocl6oyng+
         1CYwQ/hRZwAQdNaY4fjh0oMEbpVEoyu0HX81VKEPpFRR5yJdxoXJYr8CUvpYUdIzlXfY
         nrUX1soLpAaocUrUF4Pe+dzeivDP9GInbRhMR281N5U/yaOhIcJl6RkpbufGDDj06Wyf
         4eslqZhYHqVZP1dQru2WVGPvQK4+FOMiXTmL872f+PUe/sUhqcfbu4iU7vtsMkqMeDmn
         wDWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720352636; x=1720957436;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zxz6+QMHUPbkUXLgSRCL9HmkS7E/ilLeb4pYpny5c58=;
        b=FVFCr9nI8nbWfDGM8Um1fZ6fE5F5TIyv4XQMZjUSEC1YvVge9LZ+EXPw7TpPWdig0L
         n1s0JH8gFvMYDVDJyzv0Q+hVBXvySOQg/WUKAMQq/4eGC9WsUFABQbxwwF0t59U4xUqR
         MMR5mEFrY8+fo+tHowHmcQl1mmFqGRANX+j6UU0gBLImByoam+IGQWzRwPW/U/1iAtB2
         OiWohGik7UQgwx6hijqo6wvGg2xw/qergGrlUAGXs2v8x/z0CFHOqOFV1I5Ah+h3aCs0
         tLHjxtDkt1qDDNNurA7Xi/cxVshbqXndspi3+0m0LCN195O9ustnheVZ6oHBcLsQ8ZX7
         76eQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJDS0pE8UTplDqhCQ+c6KxLkoNpJy/Su/YsxweDSq3Y1hZaEu4lA8WEKGWic7ZjgC3fQnQ3xPKPS0jKl0i4nuBFjRBqvOTopguYg==
X-Gm-Message-State: AOJu0Yy47LC74nEIKggxlxbZBq01CEirdI4oFYM+56oJJLNdJy/GF9Lk
	0k6uDeDQGyHpKgSGtkeXTlWReZKIhgz3NflfVXyW3BCr+ESwjt3Tg+ovY0O/Z7c=
X-Google-Smtp-Source: AGHT+IGL4/XhBxwcntFI8vT9yDsLWEzayrBVf8u8Og2henIDXNG0ixRSE4cBI+iO1LGFwxemMUi/uQ==
X-Received: by 2002:a05:600c:5128:b0:426:6861:a1ab with SMTP id 5b1f17b1804b1-4266861a3cemr3790785e9.39.1720352635677;
        Sun, 07 Jul 2024 04:43:55 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-426602e45afsm48426705e9.39.2024.07.07.04.43.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jul 2024 04:43:54 -0700 (PDT)
Message-ID: <69fb8e60-3ba9-40df-ad4b-030c3dd0c48e@linaro.org>
Date: Sun, 7 Jul 2024 13:43:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/8] dt-bindings: interconnect: qcom: Add Qualcomm
 MSM8976 NoC
To: Adam Skladowski <a39.skl@gmail.com>
Cc: phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Georgi Djakov <djakov@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240704200327.8583-1-a39.skl@gmail.com>
 <20240704200327.8583-2-a39.skl@gmail.com>
 <03e96fa4-b916-4121-a9bd-bfcd40fb10b3@linaro.org>
 <7e918762-1175-4ad1-b595-3d1992b6c4f7@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <7e918762-1175-4ad1-b595-3d1992b6c4f7@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/07/2024 16:06, Adam Skladowski wrote:
> 
> On 7/5/24 08:55, Krzysztof Kozlowski wrote:
>> On 04/07/2024 22:02, Adam Skladowski wrote:
>>> Add bindings for Qualcomm MSM8976 Network-On-Chip interconnect devices.
>>>
>>> Signed-off-by: Adam Skladowski <a39.skl@gmail.com>
>>> ---
>>>  .../bindings/interconnect/qcom,msm8976.yaml   | 63 ++++++++++++
>>>  .../dt-bindings/interconnect/qcom,msm8976.h   | 97 +++++++++++++++++++
>>>  2 files changed, 160 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/interconnect/qcom,msm8976.yaml
>>>  create mode 100644 include/dt-bindings/interconnect/qcom,msm8976.h
>>>
>> This is not a valid path. Please correct it, otherwise tools cannot
>> validate it.
> 
> Somehow got this weird idea out of qcom,msm8953.yaml
> 
> seems its wrong over there too.
> 
> Should proper line be like? :
>   See also:: include/dt-bindings/interconnect/qcom,msm8976.h

Only one ':'


Best regards,
Krzysztof


