Return-Path: <devicetree+bounces-42394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 582C18576B6
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 08:20:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0ED771F22FFA
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 07:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC06E14F62;
	Fri, 16 Feb 2024 07:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K8UmTcLx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0235E14AA8
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 07:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708068017; cv=none; b=NhhNZ0qTKNfhhKLgutsUXLYvdZ2YUrOafQB6o+71ioQTk2tY1JIwOIVfuvrRgupFi8KrQBD4b2vcxoXcJ78ggm/2Vq3oyUU+uP3ok1BXFzwIEOKLptYYRnqGjSt3+5oMEJ8S7GntcxypHjoTeP/liIB6BrfLD63yBYS4hk1xomk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708068017; c=relaxed/simple;
	bh=2Z2PtID3hA/zrviCoah3L9mKKSeBFIJsIG9dnqA/+oQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qYusSf+8uSjpuPUPHbf2PxP9EkoOCLYKLQqTmjidSsaVn78RCyhH9orVlIn2VCBYdPsy6ClCYh4d46Ix9YK57z5I9dG5Yq/f7cgTf/pzmy+ve5myGuE02DV/RsWJRH58J6RV2NtLKELp6TEbRQth4fD3OERKd19tGEZxuDiZUnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K8UmTcLx; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-511acd26befso2208310e87.1
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 23:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708068014; x=1708672814; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dwxwyqJfi4NGKn65q9qE21GCyp1HvjyF9joz+2X2fhA=;
        b=K8UmTcLxTAzL6j/s4AT5ahUj0mggM7NS+Gnm77zFNUuMGmCaN10wR14eiyaQa4NCus
         ZiVINNt5UjGK4YEqopai41MzGQJt0qhADxIROhADCTNO7Jm49HyLHZua878IIf0+Mq1E
         70m/X+q9HQ03GPkQyXCqZmS2S2YhtwknB/eGYYi0LbTNSLHezrfFgSLM4vBzzaXupVrn
         H9TbO4R0c/3cllDEdpt/+D0Yq+V54ZRye6mW62afRYCFQgBGbS8tsHhINu18o8l3Fz+W
         49iYk7H5EI7HDPyixvpj7bsGWXcELmCclOjQE12+kcLwQ3JJANdxAVPQA7ALyJGW2Ydp
         RLhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708068014; x=1708672814;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dwxwyqJfi4NGKn65q9qE21GCyp1HvjyF9joz+2X2fhA=;
        b=FOMjqvXXe4fBQZL0d1G6WSKEkUeNGdEgMV23SKi4WO8LEaPIcPOJCyppEFq5WEl75J
         T8X26Mh6hqsunRtAmBirNZG2q6zxgb7vkG+gY6tBcSFtTZkNsEOv7vXVNa9avbLYWtMa
         OpB1k4YhqOH7l8bORdCkcB/2SW76pOLfmVKnfLhGVdQbcftospDYH4hUIhpMqN4ex3lf
         D5VFGtV9fjxcCAdHt5qsBPOJx5eGBwHQyZGEWxf4Wy9g/3Njl37ygwPIfP3NaP6x52ga
         nAM8GMVhsG9FAX6QrlWmB0YhLmfyMJ4lpGOCtg51kCQlLmDQuvNmHb3MK2NhkiW1fzuJ
         ua5A==
X-Forwarded-Encrypted: i=1; AJvYcCV3g+6E3JpgTiObdJxwEyVjEdgdJZDUhG7DjXWjGUMkDX0lnjS9tFgsM3pBvvyLexWKRetLJqYUGYU5FPuvqAMbFUV/xe2Dv8QdUw==
X-Gm-Message-State: AOJu0YwsucUIVap2Ja78oR14BP9yyTSkwEta9tcoSSFciBbJhg2JuaEZ
	RvcuilpSl4k43cXzJ/a58WcMY1VdIQIkfyk4BJnkCIsKRF0ZDMvL5nOCFxxw3eI=
X-Google-Smtp-Source: AGHT+IHobUQWXPNA/VZce0oPogHdpPPygokTUj7FV5WW59j4z65Nxb0h+m5TaPKtW8i+fHzd+0dnQA==
X-Received: by 2002:ac2:518e:0:b0:511:6764:a8c7 with SMTP id u14-20020ac2518e000000b005116764a8c7mr3020251lfi.10.1708068013620;
        Thu, 15 Feb 2024 23:20:13 -0800 (PST)
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id tl21-20020a170907c31500b00a3dcab6f8dfsm455118ejc.5.2024.02.15.23.20.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Feb 2024 23:20:13 -0800 (PST)
Message-ID: <fd4b58d4-5420-4605-8f44-7c4d53c7a094@linaro.org>
Date: Fri, 16 Feb 2024 08:20:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] dt-bindings: net: add hisilicon-femac
Content-Language: en-US
To: Yang Xiwen <forbidden405@outlook.com>, Rob Herring <robh@kernel.org>
Cc: Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Conor Dooley <conor+dt@kernel.org>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, netdev@vger.kernel.org,
 Salil Mehta <salil.mehta@huawei.com>, devicetree@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>,
 Yang Xiwen <forbidden405@foxmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Eric Dumazet <edumazet@google.com>, Russell King <linux@armlinux.org.uk>
References: <20240216-net-v1-0-e0ad972cda99@outlook.com>
 <20240216-net-v1-4-e0ad972cda99@outlook.com>
 <170804935994.836701.6122628077585764606.robh@kernel.org>
 <SEZPR06MB6959E0F113C7C7CF2669E40D964C2@SEZPR06MB6959.apcprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <SEZPR06MB6959E0F113C7C7CF2669E40D964C2@SEZPR06MB6959.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16/02/2024 07:30, Yang Xiwen wrote:
> On 2/16/2024 10:09 AM, Rob Herring wrote:
>> On Fri, 16 Feb 2024 07:48:56 +0800, Yang Xiwen wrote:
>>> This binding gets rewritten. Compared to previous txt based binding doc,
>>> the following changes are made:
>>>
>>> - No "hisi-femac-v1/2" binding anymore
>>> - Remove unused Hi3516 SoC, add Hi3798MV200
>>> - add MDIO subnode
>>> - add phy clock and reset
>>>
>>> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
>>> ---
>>>   .../devicetree/bindings/net/hisilicon-femac.yaml   | 125 +++++++++++++++++++++
>>>   1 file changed, 125 insertions(+)
>>>
>> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
>> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>>
>> yamllint warnings/errors:
>>
>> dtschema/dtc warnings/errors:
>> Documentation/devicetree/bindings/net/hisilicon-femac.example.dtb: /example-0/ethernet@9c30000/mdio@1100: failed to match any schema with compatible: ['hisilicon,hisi-femac-mdio']
> it's fine. This compatible is documented in a plain text file 
> `./hisi-femac-mdio.txt`.

No, it is not fine. This must be fixed.

Best regards,
Krzysztof


