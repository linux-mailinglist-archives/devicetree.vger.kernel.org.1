Return-Path: <devicetree+bounces-77315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB9290E321
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 08:13:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E18E61F22094
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 06:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A744859147;
	Wed, 19 Jun 2024 06:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HDKgzKY8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D8D4A1D
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 06:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718777619; cv=none; b=gEcrxqkTW6PATyWxxd0m00imGMVobdcIkx5TSHgWMkahfPVMBFi4PaeP9dnhZAfSaIP7oTzulUKu1X6F+hLZDj6dGBeZ1r5PEMMB6+rdKG/ne44fjJ13LLGDMY5Drw5jvX9CTutig8awdD1NCoAHxd3YUFp5QaspyKnAbzB0ZKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718777619; c=relaxed/simple;
	bh=+KagVbv40Iy8olAi65x1lcz1bW1kYVmtylPQM82tIWY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hXIJYMyznUrDlmAL2fmeZOyxZebnXPhcXUmpPy+djnd0vKUa5dg4N+TD9LRBj2FcLdz473TtTWGX4svyQMld05AR/011QlYrrBamv2vjzypZu+BvnYwdZJvb5pTGiGEX/nnUMVstLJweacQ8Q8Ms7PqqYRLZ1V3SgSEbtCwGfxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HDKgzKY8; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5295e488248so6733933e87.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 23:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718777616; x=1719382416; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WVkmbDXYL5ySJUdmePgNk1csNydtlHtn6VFWdViOca0=;
        b=HDKgzKY8hqUMz488aaPq6DJlgRbxgs1QDGjnASAlO41r9bfTELUurFtOkXKJ9nBk67
         71W9sPucWAUpghgOt8QDNQe8olM6TfrSsgobbXzbkAMXDvjhdI5CxnfXd/KVj470xR5C
         +fE/pebE/0st9EVDjOzNebBlzomTPXGzGMdsj3pSPTVrHGDkPgAzO4hEppfBWJtrGNzX
         n3soTJPoUAXWJRUC2ufF7sEcHxHNAnfgU+TkveRuU4GxO0Sykt8YjaT8EkPY2LNVsg7C
         FwbmYyJOyl4wjR/fmfnNtAuiAus13kEQQRLcfvyZZvUnGomeUHncLfWDkWkq58FdVdKc
         wZag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718777616; x=1719382416;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WVkmbDXYL5ySJUdmePgNk1csNydtlHtn6VFWdViOca0=;
        b=hvIdWAxtP7KQT5jXDtdAtWZLPoTLxaW/FuZCOxOrSnTjqFaiULBrCPaqZJZ0fDUwxI
         EOmq9Qu48MQmf9cCD2ZKWGYmq2D0F6sNPvepPXymCHVr/6RuIRNARtBrLwCnN7TOLhzh
         EMfbS9vBiShOT6f64QcXQNIP0dXX2ETjEVhvdWf1yH9/GbeiRxbQX6IkTM3FcO+icQTg
         085obaXrVmlmrAph6g6H3QSKHvK86bkYQuoq1XWJyptTnaW7JWYjVt6t5oIOIQwNVed2
         6Q7sbnyuMhY1uHI9bcvgKLon2xhciaAzKMkBQe51n+BqXHT9+b0199H9JzUgMuLeXVqy
         sVKg==
X-Forwarded-Encrypted: i=1; AJvYcCXrY0jKcIWt3c/CvFwal5PgitwRZbbCsSVSGBCSD0hO5NCsSWJ7x00asuwDxDF8yVIeu8HjyyV592pZ12ldCdBk6lemODcVIiDPBQ==
X-Gm-Message-State: AOJu0YyydUFc+hsjenTB2snKqdGE0C2ZRaH0seC94LGFWfuo5gzIsKMk
	6Ivd1lwtEMt7tHWLIw9I4JaIKKJKZwTPXztEE9fV1zl4W9w5+yss5iLIS4dkZ6mKysD0Jr0Gss+
	9
X-Google-Smtp-Source: AGHT+IELgV0NdmXpheUkkhrWxazFCfCpBQA390FmzrBXbbWR4b3D7l42HCestGv5+ViVKDPcQ9pcag==
X-Received: by 2002:a05:6512:6d3:b0:52c:7f7f:dc1f with SMTP id 2adb3069b0e04-52ccaa5c755mr985043e87.61.1718777614797;
        Tue, 18 Jun 2024 23:13:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4229c60f758sm237007285e9.20.2024.06.18.23.13.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 23:13:34 -0700 (PDT)
Message-ID: <1cd10170-a758-49cb-a156-a17f4f7c49dd@linaro.org>
Date: Wed, 19 Jun 2024 08:13:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] ASoC: dt-bindings: rename akXXXX to
 asahi-kasei,akXXXX
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, devicetree@vger.kernel.org
References: <87sexb3yfo.wl-kuninori.morimoto.gx@renesas.com>
 <87tthpx135.wl-kuninori.morimoto.gx@renesas.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <87tthpx135.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/06/2024 01:50, Kuninori Morimoto wrote:
> 
> Hi Mark
> 
>> Kuninori Morimoto (5):
>>   ASoC: dt-bindings: rename ak4118.txt to asahi-kasei,ak4118.txt
>>   ASoC: dt-bindings: rename ak5386.txt to asahi-kasei,ak5386.txt
>>   ASoC: dt-bindings: rename ak4375.yaml to asahi-kasei,ak4375.yaml
>>   ASoC: dt-bindings: rename ak4613.yaml to asahi-kasei,ak4613.yaml
>>   ASoC: dt-bindings: rename ak4642.yaml to asahi-kasei,ak4642.yaml
> 
> As Krzysztof mentioned, [1/5][2/5] can be ignored, but should I send
> v2 patch for it ?
> 
> And as Krzysztof mentioned, indeed there are some yamls which doesn't have
> vendor prefix. I can do some things for them, but I think it can be other
> patch-set, but is it OK ?

For me, renaming YAML files is mostly churn (messes with git log
/requires -M/, might affect backporting), but if you want then correct
all ASoC bindings in one patch. There is really no benefit in having 20
separate renames.

Best regards,
Krzysztof


