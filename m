Return-Path: <devicetree+bounces-64724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 691948BA8EE
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 10:40:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B17B1C22156
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 08:40:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B8FF14BFBF;
	Fri,  3 May 2024 08:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DC2q8hZ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7315579CD
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 08:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714725603; cv=none; b=kmBnWbMtU0Mk2shQqSy9LAxpIcnrjOKcJGggGtPyNuEV7vCKD7EF6ZRN8ANfa7f2yS73mlgxfvluacqVu2bzpmy7zlhpndNLqSJ0N4u96ECObkjOXW8pALNCLi26ciYw5sFrrwBE+3/lO6bCywk8AJzb3OYOClAEan/BC1f1RZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714725603; c=relaxed/simple;
	bh=6cqDU6nyC9QVmMog1BprNjYhQIvdazHuL/+8ud4VoTY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KdJP/Vsd+VLRgxeg6vgyFxNZzbQ/Nvo4Tr8j5Gs+LS/yCBJq3qDB8lm69R7bHgEhFDZdyX01ddxr1lFVw784DLm18Eg4A7qe3RQPF9zEny5TkzYt1QWPD0J86KViUPsrrCU9lYpyj0EQJqsqxS3z86AluBSC4gc4yCMg/dkyODk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DC2q8hZ/; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-51aa6a8e49aso10875028e87.3
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 01:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714725599; x=1715330399; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xd2nsty2WG6SHHF8+nkpeQv9fDcTG+0JYjbHe+PLVZg=;
        b=DC2q8hZ/ASRjwd1kEpdWbaje5M7aJvCYlmtaIXCJfYKl8F9sPrlL7j7lE5S2WFKETM
         /FNg3lyC9b9CdIwTA4+OElvrBELNuldLre/zk/8sybAaUS5OKURNuHpcBtNoanJy/oxH
         dnyEgJ8Z0cAfkJ98N3tSfQWFE0iCJcqInbduMRJP2V3KXt1i8n8KOXNBc/fqnmN/t8D8
         slWzuNqNGRzLTi5LUgyJ6leKkPREjbZkBQfgXMwkXbgK2d4oIWWVD1RIxbekEvqYRAFU
         SMiDPqRBY0tlmdc0M68EkM13K/W7+loRWlztKIe3HxnKDFnISWLYjOmha+FYpSRPWhu5
         02XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714725599; x=1715330399;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xd2nsty2WG6SHHF8+nkpeQv9fDcTG+0JYjbHe+PLVZg=;
        b=GhgNRQwGieraaIhK0ICEbGPagmZahQy3rIsHKRvIvXp2fwZQsk3FeqEL5JWlifFG+r
         +AGFYVZjheLw8mNFZX8lPaOVmZTQT3f4G1EF5yNumw+WuOFlbMScU0BLoE62x1H1RkVr
         9hbzEr/XhHZMQPKCnbbtNEPu9Z0LEHi0PCfVDpl64CYFDxtjI8lr1mrBp4e7NUQg8gTB
         miEGrRd3mFaHcFzxd49cPvWy0BvxlQ2BFY5bwV6DpfC1Eu/Sfpx2CxGDQ8JAafj8qhQE
         rDwU5cZHEzDk03gEzSIf/6mt0bMVDIntONB0Zx1oqFR0tmIyh8vRaIgxdb/fMTvJMnsI
         cINw==
X-Forwarded-Encrypted: i=1; AJvYcCXfuMK/cggSunX9y9geFyeT7B9DUE4TbEt0VFdh1j/HY03rbohb5R/T+9miLoK2DSQocmaen/ssLLuGGwicROUy/lFIYKdRemxp/w==
X-Gm-Message-State: AOJu0YxSP5bm4u+c6V6ZsRaIXEbE1gXh4ArFsreLyu7cSoDouil+wd2V
	YCur0K/GV5bWw8ZZDl+Of24skKmCvJ3rFAayW+C2JXwsn4ZgPwurAH0Q38RdwO0=
X-Google-Smtp-Source: AGHT+IF4QKcb/sXAo8+X01dOQnrnNqk2SSFq/L9I8igfxBKKMdF/CsCxYt2AjVAF4ukP/fC/AnH4MA==
X-Received: by 2002:ac2:58d9:0:b0:51d:bbb:7a4e with SMTP id u25-20020ac258d9000000b0051d0bbb7a4emr1341798lfo.24.1714725598711;
        Fri, 03 May 2024 01:39:58 -0700 (PDT)
Received: from [192.168.1.119] ([37.251.223.213])
        by smtp.gmail.com with ESMTPSA id j3-20020a05600c1c0300b004186f979543sm8674790wms.33.2024.05.03.01.39.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 May 2024 01:39:53 -0700 (PDT)
Message-ID: <7f5e3ab6-515c-4943-8678-03232fd9aed5@linaro.org>
Date: Fri, 3 May 2024 09:39:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mfd: Use full path to other schemas
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20240503072116.12430-1-krzysztof.kozlowski@linaro.org>
 <a2886f72-210e-41a1-aae0-c079a4d11396@linaro.org>
 <0af10387-ddfb-47b0-b59e-eeba1644be1c@kernel.org>
 <20240503082444.GJ1227636@google.com>
 <72f94454-867f-4a6c-90c8-134db2ce150e@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <72f94454-867f-4a6c-90c8-134db2ce150e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 5/3/24 09:31, Krzysztof Kozlowski wrote:
> On 03/05/2024 10:24, Lee Jones wrote:
>> On Fri, 03 May 2024, Krzysztof Kozlowski wrote:
>>
>>> On 03/05/2024 10:08, Tudor Ambarus wrote:
>>>>
>>>>
>>>> On 5/3/24 08:21, Krzysztof Kozlowski wrote:
>>>>>  .../bindings/mfd/samsung,s2mpa01.yaml         |  2 +-
>>>>>  .../bindings/mfd/samsung,s2mps11.yaml         | 12 ++---
>>>>>  .../bindings/mfd/samsung,s5m8767.yaml         |  4 +-
>>>>
>>>> Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>>>
>>> So this should be Ack. You cannot review part of the patch ("I have
>>> carried out a technical review of this patch...").
>>> https://elixir.bootlin.com/linux/v6.8-rc5/source/Documentation/process/submitting-patches.rst
>>
>> Reviewed-by is totally appropriate here.
> 
> Submitting patches is clear on that:
> "A Reviewed-by tag is a statement of opinion that the patch is an"
> Not "the patch or part of patch"
> 
> And ack:
> " It is a record that the acker has at least reviewed the patch ....
> Acked-by: does not necessarily indicate acknowledgement of the entire
> patch."
> 
> So no, reviewing part of the patch means you Ack it. Especially that in
> git log the Rb tag will suggest entire patch was reviewed, while it was
> not true. Review of 80% of patch did not happen.

Thanks, Krzysztof, I'll keep in mind next time. I now confirm I went
through all the substitutions and they look good to me. R-b now applies
to all the changes.

ta

