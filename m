Return-Path: <devicetree+bounces-54150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C1788FBCC
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 10:42:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A17941C2C934
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 09:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D99685FB84;
	Thu, 28 Mar 2024 09:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZEUAWmZ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A5A50A77
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 09:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711618915; cv=none; b=eWeDeoA0fvd0c7tunGaFmQ/0p/wKdc4J9t3U7DR4vGaaCZGEqdbfu0miM//P/mP9XBso8+Nm0WuY2NnuSwyNthgrFEF+hiF8B14l3e2RDg9P31ezphBdWhfMvJVAwJVpvUdfCcmWdyn588TlDsa4pmecdNMlCnDaVo4PIz42eic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711618915; c=relaxed/simple;
	bh=XzFZH5xsMBixzU+tZgUBiaiv21fobgFgOQmqXappNgQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cL0L32/ktgKQRai5ptN9V5c7X8aRSnlngRqV9rzUW/vNWmNUx1e6KNP4tyS/XuX4pVd1t1yGwcY2cDKtyxIDAuB/BQO3jToCQUm4wQ7JZFVdxqjdZ3fF9vvEiNAnqpqxCqVDHOTzaAZnRx41S/VCKCeX9dWLOvkK1ifME2wXJ68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZEUAWmZ6; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-513e14b2bd9so746418e87.2
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 02:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711618912; x=1712223712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=omEKxKAAmpTJFEJtEwU49AHtsbMPWLnZYOVWH9d95I0=;
        b=ZEUAWmZ6z+g9LK5XNWS8SBUKl4CDTOcHD4jGhQjoyM1YB3kekJMBawDfGU+4x2YPAw
         DI1LR0pBMj88qUMWqZsEOMtziTq8U8r0Xa9iwyYV9O73iiS1vANbpwdbu0miEL4pL6OJ
         5DVsUUo6kINyyaQml6Zqjbl6dzrE80hiIfZeztzy7czvcZ2+RlRZJCdVauw7plVYH/J7
         dbkxQhmEmBIJ/COjiBLOw6rpoW9RsQWvU5yROkyGj8HyO9cvmpSykuw0l+JP0sBPqEGu
         32V6KILhKhh1bKknEIvcpPv8YqGxMCcT7yQMhf49G7fp1HF1NMtDcSzj4TLuQ86ievWt
         rsxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711618912; x=1712223712;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=omEKxKAAmpTJFEJtEwU49AHtsbMPWLnZYOVWH9d95I0=;
        b=dI6YyF2+832x3nOYa/qvR2oxjJmI8cKrAGIYxUEiXDp+h4BzGdJkz0GfEZMM7Ms5tv
         5SDE1T2pObW8P6js/PMGCUI7rCQld/nBu1bqzYcyv2BpvdzJ98nhXBKCCVUVEWMTPmVr
         wMfIZAzeeEguxl9zhORtDv3+nPP14r0nb+Z+589Zo6Bckf3AvYRMhvrecVCbhuaeHFu8
         ckUv7CnR18P2V4GiazOKOc415QFwgMpVmi+Xz11htomFqoKb5bsOYryUQsKwbiEAFhtw
         4JYLGkAoCltbkXhTwLIzFe7tgkOul+5E4LdZmJJs3fHQOS7xq9vH/ub638h+urJh635j
         Tryg==
X-Forwarded-Encrypted: i=1; AJvYcCXvS9s0fQ+uYY1mXhi2qwqBF/33Em8uhQL5tay40n6J+Eqz4Bcl/OdzSNVvbAcMGZRiVSeRZTPr1ZD7PR2ndP/zuN6jGL+gRLsd8A==
X-Gm-Message-State: AOJu0YyOMJfjeUp1cNAOQA617qUbmwRMbdKnwciQzI8LwHi+Gu4V/jkk
	2fthPQI/GBmIG7UKCgxgX255MAnVEqjmdGaR7vmCM6ITlnSniuGJaMEVuAoB0HM=
X-Google-Smtp-Source: AGHT+IHDr81vF3zRaP+wqZ0e/t3Npy7uy0+VIJt9rq33DGzEfErerpHR1e93tPmTzcCcl0IZq6Sihg==
X-Received: by 2002:a19:3847:0:b0:513:d5bb:3017 with SMTP id d7-20020a193847000000b00513d5bb3017mr1358675lfj.36.1711618912288;
        Thu, 28 Mar 2024 02:41:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.148])
        by smtp.gmail.com with ESMTPSA id g8-20020a05600c310800b0041488cfd0fesm4857970wmo.28.2024.03.28.02.41.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Mar 2024 02:41:51 -0700 (PDT)
Message-ID: <68fd00b8-d6f1-463b-9d0d-b77bf9364f7f@linaro.org>
Date: Thu, 28 Mar 2024 10:41:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: arm64: marvell: add solidrun cn9130
 clearfog boards
To: Josua Mayer <josua@solid-run.com>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Yazan Shhady <yazan.shhady@solid-run.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20240321-cn9130-som-v1-0-711127a409ae@solid-run.com>
 <20240321-cn9130-som-v1-1-711127a409ae@solid-run.com>
 <0f7ca0ed-a1c1-41d2-a1fa-27431d14c056@solid-run.com>
 <e1836cb6-64cd-4866-9c0a-f0dda096aa18@linaro.org>
 <6a6e7c4d-d5fd-42ae-bc3d-a3978d65e8e4@solid-run.com>
 <b086a02c-624f-4225-a9fb-164095742ce9@linaro.org>
 <6af08a38-5239-4f5f-9e87-108e3400a6e6@solid-run.com>
 <62242f04-c18d-4da0-bd40-1be26886e41a@linaro.org>
 <1153cdd4-ed86-4a1f-ae4d-d9da1161f763@solid-run.com>
 <539eaf79-cff5-4bb7-84c8-7c9943c6d8ae@linaro.org>
 <5ea0feb4-4d7e-4a10-9254-b034e368e8ad@solid-run.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <5ea0feb4-4d7e-4a10-9254-b034e368e8ad@solid-run.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 28/03/2024 10:33, Josua Mayer wrote:
>>
>>> 2. 88F8215, SouthBridge Communication Processor, System on Chip
>>> (only usable in combination with a CN9130)
>>>
>>> Now, in terms of compatible string, what happens when a board
>>> has multiples of these?
>> Multiple of CN9130? 2x CN9130?
> this specifically is an academic question,
> the main point is multiple southbridges to one CN9130.

I did not know to what you refer.

>>
>> You <cut> should know what is this about and come
>> with explanation to the community.
> If I was to come up with something new, without looking at existing
> Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> I would describe the hardware like this:
> 
> SolidRun "CN9131" SolidWAN board is comptible with:
> - solidrun,cn9131-solidwan:
>   name of the carrier board, and name of the complete product
>   includes one southbridge chip, but I don't need to mention it?
> - solidrun,cn9130-sr-som:
>   just the som, including 1x CN9130 SoC
> - marvell,cn9130:
>   this is the SoC, internally combining AP+CP
>   AP *could* be mentioned, but I don't see a reason

With an explanation in commit msg about not using other compatible
fallbacks, this looks good to me.

> 
>> You<cut>r platform maintainers should know what is this about and come
>> with explanation to the community.
> Is there a way forward?
> Would it be worth challenging the existing bindings by proposing (RFC)
> specific changes in line with what I described above?

It all depends on "what" and "why" you want to do. I don't know.

Best regards,
Krzysztof


