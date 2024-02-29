Return-Path: <devicetree+bounces-47389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD7886D153
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 19:01:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C67EFB27EE2
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 18:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 784DA7580C;
	Thu, 29 Feb 2024 18:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aECIX57Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7786675800
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 18:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709229680; cv=none; b=cjSW32j8sVOuE4wTE7GsqfH+EVFKIwU+pWjS1gGAJ1v2ejGZPpEqUEPJsow0LM4K9hc1uOs354qTmYJ37cxRvMFOpNk1xw3YUrMs4wIMr/FWi6R4+dvqyChEqUSflyYBPLDAq8UC1hqHdN/TQ5loEm4nwnS7uPrlr6aLllPraU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709229680; c=relaxed/simple;
	bh=Xue5UAVBQenEy8HaVKuZb2fAT3LpfxiaL2jhI1u6l64=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DnFNgawmaKdEXlitjgrN1QZHO/d62h17q5A+CXxdGh67e2XeMcbIG3kCxgfhR0x3DnrwA3L/bCsosmiWa5T9Df6wCrsXBdzjTvTLVvRfc+l840k5bIzeOJAsu4Xk7kYVuLVovhQWZo9TU5wcB0PUGE4IH32iy2PK2G+1i6/MOX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aECIX57Q; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-56698eb5e1dso1602065a12.2
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 10:01:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709229677; x=1709834477; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lHMgDY3TT5Mt7pWJec7bAvKA3YwceKXSHmaJA+g0taM=;
        b=aECIX57Qkv65OnnmkZCAWXr+aTa/6KS1hXLWabO7h0+bicpq4xKVdl15YL+ABn/k+T
         sAiQjTD2EZr/GIGLjEHc3VJ7JvH7kLyPeIdtdM/lX5xKbg2Q1GD9smhtaHP5lu0PAZJs
         o+tWDf1PAWrI0sCgNekZwGu7W5ndDbfvLvnO5BGXf68ZT0vq3InDS/SiNzFwnefpELbJ
         pxTbSB3dUriUzeDkm8GaHN16b7Wcci7T3gyzzRriUfm958/3PF6hVDdvoifHarLxqAf8
         A/ULuRnjpyvqkur4LPrdMYseR0AuhNWAd5Dj8hBtypm/84qLHh3rzGTs3jkK1zWaw/UK
         2LMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709229677; x=1709834477;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lHMgDY3TT5Mt7pWJec7bAvKA3YwceKXSHmaJA+g0taM=;
        b=UhD7ojwdTb7ERxYyd7YxsTimuTC1pJIqz6vCtwM8g9rcnDNvGq6MT9yeCaluPNZort
         2ZBwIN4T/FqyT1uJy59M3cMNfd/FvSnqySqPJQkb6tRjIw1TjNEXgNN95dqnuKvqRCJV
         WBUT1iU9dyKFyMboOaYa1Rfxz0P4A7yxk6+YiqnyoQ0RY8qRrt0LDsa7hFlHG93c9y4+
         sGGK8iRm3P7ki+qunuuo82ImjsaTdlFL4chMHUZz+/E13rozSDUWOeg/KHs2LPEWWBVC
         YNjjo79OIMOgF21/oFRDDYVMAVp2+Ddl3cfxCbNoLpbtJ4253U98Y7nMqbJLoCkiQTL/
         Fngg==
X-Forwarded-Encrypted: i=1; AJvYcCU+ozmdK44cXjo6zy7y7fKyDkHtBsi84nP94161uon8UqVX3VX1aLgCPtqeU7RmhhVatqQ6+dqv5hK1J1yS5XVU6b0GdDRsAnLFHw==
X-Gm-Message-State: AOJu0Yx9xyXOlbexpjAI/76fKEHuuCNnTKkGvUWLTOQTu7FIHTTG7M0e
	y4kUQWNqr7eFWDOlc0MtKp4O9Hzfmj+yWfE8RECHZjOxNoDSOq2HV4ZFEAKgppI=
X-Google-Smtp-Source: AGHT+IF+a1md1sQxrI7UcdftFAJXtDp8LnFj4TnT8vuwrg2Uj8kHXA3vWmBCAO40XN2gCLzBjvrxKA==
X-Received: by 2002:a05:6402:c97:b0:564:81c8:cf8a with SMTP id cm23-20020a0564020c9700b0056481c8cf8amr2065272edb.20.1709229676910;
        Thu, 29 Feb 2024 10:01:16 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id p17-20020a056402075100b005662f95fa6dsm808619edy.89.2024.02.29.10.01.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 10:01:16 -0800 (PST)
Message-ID: <6e55e911-b771-4938-be9e-a62cbde4c1ba@linaro.org>
Date: Thu, 29 Feb 2024 19:01:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 01/10] dt-bindings: iommu: Add Translation Buffer Unit
 bindings
Content-Language: en-US
To: Robin Murphy <robin.murphy@arm.com>
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, will@kernel.org,
 joro@8bytes.org, iommu@lists.linux.dev, devicetree@vger.kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, robdclark@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, quic_cgoldswo@quicinc.com,
 quic_sukadev@quicinc.com, quic_pdaly@quicinc.com, quic_sudaraja@quicinc.com,
 djakov@kernel.org, Georgi Djakov <quic_c_gdjako@quicinc.com>,
 Rob Herring <robh@kernel.org>
References: <20240201210529.7728-1-quic_c_gdjako@quicinc.com>
 <20240201210529.7728-2-quic_c_gdjako@quicinc.com>
 <20240202211749.GA1467077-robh@kernel.org>
 <680f9ba7-1f32-4365-abd1-771b8c78e844@arm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <680f9ba7-1f32-4365-abd1-771b8c78e844@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/02/2024 20:12, Robin Murphy wrote:
>>> +  '#address-cells':
>>> +    enum: [ 1, 2 ]
>>> +
>>> +  '#size-cells':
>>> +    enum: [ 1, 2 ]
>>> +
>>> +  ranges: true
>>> +
>>> +patternProperties:
>>> +  "^tbu@[0-9a-f]+$":
>>> +    description: TBU child nodes
>>> +    type: object
>>> +    $ref: tbu-common.yaml#
>>
>>         additionalProperties: false
>>
>>
>> However, that's going to break with the extra QCom properties. In
>> json-schema, you can't have 2 schemas and extend the properties of
>> their child nodes. The validator doesn't "see" the child node schemas at
>> the same time. You are going to have to move QCom SMMU to its own schema
>> and remove it from arm,smmu.yaml.
> 
> Although this common binding is pretty pointless - sorry I missed the 
> previous discussion, but these TBU registers are on obscure debugging 

Hi Robin,

I am not sure if your comments were resolved (no response here), so
please kindly check if nothing got lost from your feedback in v5:

https://lore.kernel.org/all/20240226172218.69486-2-quic_c_gdjako@quicinc.com/

Best regards,
Krzysztof


