Return-Path: <devicetree+bounces-32702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1903E83034E
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 11:12:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B56FD288BD9
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 10:12:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 706E914295;
	Wed, 17 Jan 2024 10:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fR0+ULyh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B158E14276
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 10:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705486337; cv=none; b=skG0Hv1nfrsqGfsLz79cesaHPPZneXy+9f0/rilZAWk6QPKgkL/SGLFgwQJvaV4IAtnPSEuwKx/gmyhcXatYI/RitwMu0yXvhtmqRHsyG41DXo5v779RucQ2AFLIIp6ZABDlfj/B2TWQXLjoZzlIsnb3evnQQ4SVdVi8Mcg39qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705486337; c=relaxed/simple;
	bh=rhgo8anDiEoNehQsFNXFLCGNEdAxInN4EQOHuEaGWUc=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:Content-Language:
	 To:Cc:References:From:Autocrypt:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding; b=jaDas6CYdLWUk5txUAB3hSp70tFSXE490TsmESvn7IAiQQ2uqGSpyBp/44wTw2eP9FPVNuhPWWTnqI49kTTb+3hsP5QqCXxpPXSukkVzNL3/T784tkW3T0uoAoBl0Tmo/7eBOUviWUg2b4UDXYdcK2R3G4TVO7FQyfZBD7GX3Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fR0+ULyh; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-50edf4f478eso9417953e87.3
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 02:12:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705486334; x=1706091134; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fLz4I1weXAmYca488G/BVTkRV5enYY8Li2toFrdjODE=;
        b=fR0+ULyh4e8rWIMMpfgYgjUGLlK/Tdv0ieUksJxyK1VJWDjGyEPOXbupa3ZEaF9rPA
         pxTT0D6E0ISCNt1RvFFNmyEkmZC9h9M3xnnvrWT25Yh7f05S51SZak8fZzIMZDnsyJGj
         KddH0VKS3W/nG7Oyl38Ytyf1efkjVMBkMWyvoz4a1tmePxdURIlOGYscuBjOl79duwWA
         BZGWf2zpQ3uU+qvN+1CayIsfr6vI7hE60uUdExybJxj7Q4/R1IAWh5AXX/SuPvfOiPPk
         abfeXUHj/TgGXWIwhTZij9yCPV9u1p/oP+FJ/dZ0q5pYYzLaof2AvFJuU3NDWB7+Ikdy
         2EyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705486334; x=1706091134;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fLz4I1weXAmYca488G/BVTkRV5enYY8Li2toFrdjODE=;
        b=rV8xufxRariS5bg4G7jJqA2ReZj/+tjXCExYQwxZAdc8ptehqFM1zO6ldbWZqeHcPu
         SfelDp6E3b8/VneHJCjb7qUPGk/lwWsyqAWmaxUxCoeZvicNJ2lrWQQLZZcB7TvQJZx3
         ccm3JOtXwO3eHlPHPuGlvK0AUIqNeuXE7MIS1fbWLaGSySLNitDkThEsEmCdD+S0BmcC
         venLV0FjajrkwRqIZx5R4D258ZH4sqIKfnK0118NcCBIx05vR9F7kh41sLprVKuLnDV7
         SAL5EegZKMBSCsKd38lml/x/W1EFUYj3AEQt2PS5x2C3ewI1gbN9+2f+1T0ElleNlPeN
         kELQ==
X-Gm-Message-State: AOJu0Yx64Iry1YyugoTjoAcaLfbP1q1SWDHUAz+LSOSjwGjaMgOykSda
	AGk0A5fbXFpJE2P0LrCdMdUdDKKXvwYTLdje9MrKjOYE4pg=
X-Google-Smtp-Source: AGHT+IGHUS47ntGtAxqgSc16gGw4A7eJz5ipanrm2FHcARnMas7/Pt79IoAoxDaiz42CzBkaXPgCsA==
X-Received: by 2002:a05:6512:239c:b0:50b:e724:62a8 with SMTP id c28-20020a056512239c00b0050be72462a8mr5089885lfv.92.1705486333780;
        Wed, 17 Jan 2024 02:12:13 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id p13-20020a05640243cd00b005597b0380ebsm2312997edc.92.2024.01.17.02.12.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jan 2024 02:12:13 -0800 (PST)
Message-ID: <71413ca3-1a14-4eda-ad29-dc5fcbe5afb3@linaro.org>
Date: Wed, 17 Jan 2024 11:12:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: rockchip: Add rk809 support for rk817
 audio codec
Content-Language: en-US
To: Tim Lunn <tim@feathertop.org>, Rob Herring <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Zhang Qing <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org
References: <20240116084618.3112410-1-tim@feathertop.org>
 <20240116084618.3112410-2-tim@feathertop.org>
 <20240116193701.GA286794-robh@kernel.org>
 <64bce36c-468a-43b6-9d8d-0c20fbd53939@feathertop.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <64bce36c-468a-43b6-9d8d-0c20fbd53939@feathertop.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/01/2024 10:37, Tim Lunn wrote:
>> You can drop the description.
> Yes just 1 clock, i will fix this.
>>
>>> +
>>> +  clock-names:
>>> +    description:
>>> +      The clock name for the codec clock.
>> Drop.
> Just drop the description? I dont think can drop the clock names as the 
> driver use the name to lookup clock:

Description. But anyway the problem is that adding clocks should be
separate patch with its own explanation.


> 
> devm_clk_get(pdev->dev.parent, "mclk");
>>
>>> +    items:
>>> +      - const: mclk
>>> +
>>> +  '#sound-dai-cells':
>>> +    description:
>>> +      Needed for the interpretation of sound dais.
>> Common property, don't need the description.
> Ok
>>
>>> +    const: 0
>>> +
>>> +  codec:
>>> +    description: |
>>> +      The child node for the codec to hold additional properties. If no
>>> +      additional properties are required for the codec, this node can be
>>> +      omitted.
>> Why do you need a child node here? Just put the 1 property in the parent
>> node.
> This is how the existing rk817 codec driver was setup. I suppose it was 
> copied from downstream, where there are more properties than just the 
> one. I don't know if there was any intention (or need) to implement 
> those other properties.
>>

You need to clearly express ABI requirements in the commit msg.
Otherwise you will get a review like for new bindings.

Best regards,
Krzysztof


