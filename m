Return-Path: <devicetree+bounces-44232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC6085D287
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 09:27:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE8281F231EE
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 08:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF1183C068;
	Wed, 21 Feb 2024 08:27:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yr6OH8T/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88F53BB20
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 08:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708504059; cv=none; b=k8TxkCr/rC+zAEoaQ+s6iGyBxq0HuWrKDgAFMBewS5ksLKyYEUThgGNEClyQ/vYP+PZFCOyIWSrvwSuwXLk3mmG7YBmfdIjQ7xTJW/wqsyeSmnCNla0V1uaskCaCUweP9q9NLq7e+bNEPUqGc0bIgbLFQTYK66a6OoUrlYjYdrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708504059; c=relaxed/simple;
	bh=QeMzv/etgEhBablKw0Yx4a+QCh4YoauFHNBIDedTeHE=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=emyKWdUvt2c7aOuJ9RAl+YRjf5BZrVQIMvy4AJ268S5UHgAY577pvRuwX9YGYnw7borb0LzrM5L23nb4tk0B/LD0lQdHPO8Uz/0nOEAmAKzS0FUmYeeJATpP0FL+YwQzMY/LoEXfFMlcRvyX++jSPdxt7Ce/7nbWtMBBsL+z+1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yr6OH8T/; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a3f4464c48dso28286366b.3
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 00:27:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708504056; x=1709108856; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=YQjRyAwQWZLJeaCmy33nzaWsWm0D5EPxrwsuAppNSUo=;
        b=yr6OH8T/fJFJyckKUn+Gt+7DRkGeqpX7WYTzYiY50OopGKO1stm22Ub3T4Iojc54Z6
         WiqEtEld+/aP3J7nxtUuLFZrx9AcWodEuws1buLjuR/P6wXpyPAXIef/0p4uouI8udFK
         vd9Qu68GjGsblADxxUd68SnkPDlYO9llL4X4qnSLnZZtz5LGop4xfRLw33aqNGxOFqJ+
         d45QkJbgNrytU8NkhiYbd1Bg8VhZrFDxD9xUf23BSjINv8UAFihqmzsRda8Y9PPOWsFS
         VTclQtWT244/L7P1PZboXS80FH9cFdANB+w8rF6g26J0wF86NEKTbm2IaWHOpzeKo39o
         b7dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708504056; x=1709108856;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YQjRyAwQWZLJeaCmy33nzaWsWm0D5EPxrwsuAppNSUo=;
        b=laiP2dex/T+HwK/3ECfA3pQjDjK9yjubK2NL9u8J0u4ABz4VGpE6Aw7gLgeCNohHHL
         RHRSqLQwVig5tHmFa7d1ouPioLP5MvAYdtgBLbflIb2n06R1f2MYMIdUMWPMuvF9YY8u
         sltyJz8Cc9mQv1FcuNt1MrxRrwe5x6FXmGmDtki3Gjoqfw9Cz3pNu0Sv/gnW3sRJLpUu
         vjylSZ/fp5b6SZQKflKW+vTgUwE6w7GymM/4er8enU75sVfPJo7ZYNaHgQVQQM5vY+Nb
         W6OIxAhYy3DhytkSKtXIUwm/pcr6H+7vYno+3JLKlVfTCb2Hz+sDv/sT44w4DP7V/tnv
         G1/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUU6d4q0QWE/GUsECgoMAxL9V3Rn4CIaP5plAqLIkJiOP8zvE5mytg0DJqxPv4gQBipY8MLg4LgrfjCcSFFi0fk/jjAR/ExbfJjbA==
X-Gm-Message-State: AOJu0Yw3Mg45u5vZlKsryt0bge7JUWwPbdE+5xsG8WkzV2yKmFSx85u2
	LkXxpI9iFnf4WmYbfaXv9NQDKRjae5k8NQdbfSdibfSVB7Q5EfbIw8yncz7b7cQ=
X-Google-Smtp-Source: AGHT+IH11iclK1l0XHNWC3iWDhuoSvnEaHN2KJ/rSAIvwRdL1g1iBo940/0DAdFDJwaAxGIsTshvow==
X-Received: by 2002:a17:906:abc8:b0:a3f:3e18:8f0 with SMTP id kq8-20020a170906abc800b00a3f3e1808f0mr822820ejb.43.1708504056246;
        Wed, 21 Feb 2024 00:27:36 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id fe12-20020a056402390c00b00564fa936b2bsm337395edb.94.2024.02.21.00.27.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 00:27:35 -0800 (PST)
Message-ID: <b051c8b5-4559-43cd-a3fc-02756dd12d1b@linaro.org>
Date: Wed, 21 Feb 2024 09:27:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: memory-controller: st,stm32: add MP25
 support
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Christophe Kerello <christophe.kerello@foss.st.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 devicetree@vger.kernel.org
References: <20240219140202.85680-1-christophe.kerello@foss.st.com>
 <20240219140202.85680-2-christophe.kerello@foss.st.com>
 <fea964af-4ae8-46ed-a12f-d9d2849e25a7@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <fea964af-4ae8-46ed-a12f-d9d2849e25a7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/02/2024 10:56, Krzysztof Kozlowski wrote:
> On 19/02/2024 15:01, Christophe Kerello wrote:
>> Add a new compatible string to support MP25 SoC.
>>
>> On MP1 SoC, RNB signal (NAND controller signal) and NWAIT signal (PSRAM
>> controller signal) have been integrated together in the SoC. That means
>> that the NAND controller and the PSRAM controller (if the signal is
>> used) can not be used at the same time. On MP25 SoC, the 2 signals can
>> be used outside the SoC, so there is no more restrictions.
>>
>> MP1 SoC also embeds revision 1.1 of the FMC2 IP when MP25 SoC embeds
>> revision 2.0 of the FMC2 IP.
>>
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 

Heh, that's actually a patch for me.

Un-acked.

Best regards,
Krzysztof


