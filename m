Return-Path: <devicetree+bounces-47094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B5286C35B
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D2661C2150C
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 08:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 768E14DA0D;
	Thu, 29 Feb 2024 08:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J92qLuxQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC46383BE
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 08:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709194906; cv=none; b=f1zgO1DMmWy1PCJXXG2V5/vZ3UDTpMc7vTtUU564Nn0Hrgi1xEyoelmmsshKQSCu8a4Fddzda/gSCVFIv7Hh4xvf8L6dpQvwag+x42GmdDhrbIyyAuoJMS4Ri2sj+sjgnFb8hhoNPGnDFheVxCA6hs38Qe3p8U8D4MPQSLsTqRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709194906; c=relaxed/simple;
	bh=7esDdgEsF2VumIt7J3c68eRHX2JKgI8+FLl+fDwgHHk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DOKhgJ4NfCPBbw59VGBjYmL3za2cm42eRrXADw36bHX+TMLMDhNxqgSER4NNKu18jObbl329SPigSEem5QXHg3hsc69uBizfqR6vjT7ZVifVrxnr130IDjw+maYO/8ZnIBkQG37dfiPzdz87T2p/aVSLtfFpdn0DLrS3iJfnRw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J92qLuxQ; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a3122b70439so106454666b.3
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 00:21:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709194903; x=1709799703; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TBH9c4wVCuO4Sa9EoUXGnZjeCWzvKkArRSqNifAOAKc=;
        b=J92qLuxQ1ZIF3AifLenSily9R47arkgKAn9HdOb5ZZ1Z4UneznuoDJgKt3QBm53yqC
         dtEI+MgxsU9PlulAqcXToY5Jnvc+b+0tb3iirabCUDfy8/5M/aSTEJTa1Y+pJ0Ija+SI
         0JedLQmfTD3mTz4pMbkXOGSjf95xw1bd4GlCtirb9TcJVHU1N5cEdQchxS66ph/wyL06
         IH8y1Nlh443YvfMSa1SCCDCE4P02vvwen32Zx41YTroUSTx14IQ3VVv0vfGisfCt6zw0
         9wrunGDC3SkalypAb0lT616E5Q8PwhJ8TIVz5gA7W0YbATXRm6zrNDakFjCkPRyEJNRu
         NY5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709194903; x=1709799703;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TBH9c4wVCuO4Sa9EoUXGnZjeCWzvKkArRSqNifAOAKc=;
        b=BLWOmqb/cNG1Y/jVTLcvvNbAkeSdzhnB1NqlCYmnecP5nq6CptGE3eMWZSe2V0l+Vm
         JBgprGNqiVnHDyFa2tMPVc1xF8fye60qCWd0k1V0TD/Gf7qWoFHLDLQLG9iWwvAQ0zmz
         WDJuyuVpiJWKPhzPtz6tsudJTv0qd99LyH3pFFaA5E0egXq/juCPjjM0zYYiaUFDz5U0
         TPo8xsKMzq77j4wsKv8moo2m/OzPv9gNZw5Ge5h18y8YWc0Nn/z2m6hjed42kMu2dLlK
         JdA5zl5Hf7DCHzesqhIFaHjfK1V/+hyYAcAn7zyJIQgf/ejo5/UtQnaz265FvPbU5dT6
         0Cmg==
X-Forwarded-Encrypted: i=1; AJvYcCVMTX3D3M1l+EtCyoiN8LxGE0xR/YXLlSvs022q2McS/9Clxg3Iow09y0MkGRKMGsGwp1TXP90AEsYg28Pcx7yY9Mg0BKOiemzohw==
X-Gm-Message-State: AOJu0YwL1JsHTvvzy2T1YeNywx7dkYb7yfz1PKfOiqGYnT+Vo6L1EIhq
	tai3ws1Wv19gytncujv8D7Sm1A8t2/5gB3JAzAmrgQQYzW3Qno/6l3CQLULePDY=
X-Google-Smtp-Source: AGHT+IGpNwcRoV7XRAz4ipWzV8NDFYki29oK2IdnQhKXj52f8NPUmkE4E46lNJ2+MVW4wIccaQYUIQ==
X-Received: by 2002:a17:906:3515:b0:a3e:34b2:a2fc with SMTP id r21-20020a170906351500b00a3e34b2a2fcmr867542eja.1.1709194902959;
        Thu, 29 Feb 2024 00:21:42 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id i8-20020a170906698800b00a43e8e76825sm429723ejr.149.2024.02.29.00.21.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 00:21:42 -0800 (PST)
Message-ID: <f4656018-d8ed-41fd-8d97-81fa5bee26be@linaro.org>
Date: Thu, 29 Feb 2024 09:21:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v6 07/11] dt-bindings: net: hisi-femac: replace
 deprecated phy-mode with recommended phy-connection-type
Content-Language: en-US
To: Yang Xiwen <forbidden405@outlook.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Salil Mehta
 <salil.mehta@huawei.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240228-net-v6-0-6d78d3d598c1@outlook.com>
 <20240228-net-v6-7-6d78d3d598c1@outlook.com>
 <54d3b190-c069-4165-9191-4557845cd87c@linaro.org>
 <KL1PR06MB6964FD1B688F1E0460E5ACF8965F2@KL1PR06MB6964.apcprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <KL1PR06MB6964FD1B688F1E0460E5ACF8965F2@KL1PR06MB6964.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/02/2024 09:12, Yang Xiwen wrote:
> On 2/29/2024 4:08 PM, Krzysztof Kozlowski wrote:
>> On 28/02/2024 10:02, Yang Xiwen via B4 Relay wrote:
>>> From: Yang Xiwen <forbidden405@outlook.com>
>>>
>>> The old property "phy-mode" should be replaced with the latest
>>> "phy-connection-type".
>>
>> Why? The old property is not deprecated.
> 
> The old property is just a $ref to the new property. While at it, i
> would like to update it as well.

It does not mean which property is preferred. Please provide some
context why this change should be done.

> 
> Since there is no real user in mainline yet, this update does not need
> to keep dts sync. I would expect it(the old property) to be deprecated
> in the future.



Best regards,
Krzysztof


