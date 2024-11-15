Return-Path: <devicetree+bounces-122108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 966F39CDC89
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 11:28:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C4A0282EA5
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 10:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7EB81B2195;
	Fri, 15 Nov 2024 10:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="dsbPoBiK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B803F18FC86
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 10:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731666503; cv=none; b=BI0g/M3E6oyr4Yx1zLukXdu3wRvYY26omD+nda5+U5sbQKS7ZqqL+dhrmTL0wEoSDzbAhqOQgm9LRGNDK5+0yXASvTaf1MhHNkbrMWF4pW8rKDikboj9vWDBRX2MiAhKt1G4FP7f6KyjcHXb7V83/o1UH2OkqnTgricUzMfg1HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731666503; c=relaxed/simple;
	bh=I23MqRx0oVpPyh5En5+mqt8IakuAbOD21FSXB7Pokjw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m3pa1OFRzirLs9dY14tovwFh1HKAD/Ksmgv2EKoOyW1mXkQqX9srpbXNxNWcX9mf6w6SaI4jGAw99sDF8H6l5a7vOEGTHV0tN6Abc+p0a3+tG4dVaJhKNKgws7qaP0uu+jKul0o0M6bsRxvtvJuhh4x2SFsccCYQDBY2vYsu6fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=dsbPoBiK; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53da5a27771so1831061e87.2
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 02:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1731666500; x=1732271300; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AeVRNwt25ArwMSQcy6JB+fjHlRU8KJMM5ExLQU0Xlhs=;
        b=dsbPoBiKqMVljV6TpLy9EWyAwRz4Fs06M6lRVKotV3fEjkr63rQDLfUGfq41SN4pvi
         nn6Fwparl+Hbz313+os6jx8DcGt3wNpwcLte3FPfqFkqQNHgr6639Ho2lw1hszlw2kf5
         dKksOGPCA2burxFU4SWjPGGcSQEX+j46/rfFE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731666500; x=1732271300;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AeVRNwt25ArwMSQcy6JB+fjHlRU8KJMM5ExLQU0Xlhs=;
        b=LdL7kY7+GakQFOzyiYnZt9ShZsFB4jLA2pledrR9u6Xqj504YOYIC5tRwB5KNNxn9D
         Qc0qVYWsGXq8Inzj7Bb9yEnv/TIKjSAyEEMQSa3JQ2bXp8qJ4UsgZT5NKHZhksvZ1gLI
         bffNOs7OUacPH04OqCOH2jNcY27cQtDQDT/85k8aWMy6rINdF6bK/keISK5Vx0xqDqQj
         wZxL1SUIieBZjVXTtudi5jD4veX9vwnT/Pe99HNpKU3ENIHfzyNlixJ/3UFf1L6EJOCD
         LpTcxvaqaWAr2pwPyvggmrbjOKrcSVQxJqgcOSP7pcgK/sgmKRFPZDsXb2GRjmqpbhP1
         WgJw==
X-Forwarded-Encrypted: i=1; AJvYcCX03HFSyhQ0iY3bdi3AXmgJ4OYIr3RWi5ektJCz4882gqRTiYR8PowFaMa6DJfySAFquXGXhwUtdevj@vger.kernel.org
X-Gm-Message-State: AOJu0YwpcVlVXFT83Jq44fttblP3SwwqQXFK+Th+A14E5C+JfzmkEcqM
	3XBG04JASr9AB6KCmyrUUS+KDKgzyF/nQ6e3+YUMNrCznoKzwEBHwEiksTlAz84=
X-Google-Smtp-Source: AGHT+IFBN3peXOm6F+m+yUvXzEeZIpt7nq2QcdVGDQZHS7iuTlSaktisaS0pxP3Ep/mhVmKVtDpViQ==
X-Received: by 2002:a05:6512:3b81:b0:53b:2105:1919 with SMTP id 2adb3069b0e04-53dab29ab3emr894205e87.14.1731666499761;
        Fri, 15 Nov 2024 02:28:19 -0800 (PST)
Received: from ?IPV6:2a01:cb05:949d:5800:e3ef:2d7a:4131:71f? (2a01cb05949d5800e3ef2d7a4131071f.ipv6.abo.wanadoo.fr. [2a01:cb05:949d:5800:e3ef:2d7a:4131:71f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3821ae16170sm3982865f8f.69.2024.11.15.02.28.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2024 02:28:19 -0800 (PST)
Message-ID: <86e1ee84-788d-4809-8722-7a553f727751@smile.fr>
Date: Fri, 15 Nov 2024 11:28:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: dra7: Add bus_dma_limit for l4 cfg bus
To: Roger Quadros <rogerq@kernel.org>, tony@atomide.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 stable@kernel.org, Romain Naour <romain.naour@skf.com>
References: <20241114155759.1155567-1-romain.naour@smile.fr>
 <e4c45744-3e5d-4ded-a33e-0d9097aebcaa@kernel.org>
Content-Language: en-US
From: Romain Naour <romain.naour@smile.fr>
In-Reply-To: <e4c45744-3e5d-4ded-a33e-0d9097aebcaa@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello Roger,

Le 15/11/2024 à 10:20, Roger Quadros a écrit :
> 
> 
> On 14/11/2024 17:57, Romain Naour wrote:
>> From: Romain Naour <romain.naour@skf.com>
>>
>> A bus_dma_limit was added for l3 bus by commit cfb5d65f2595
>> ("ARM: dts: dra7: Add bus_dma_limit for L3 bus") to fix an issue
>> observed only with SATA on DRA7-EVM with 4GB RAM and CONFIG_ARM_LPAE
>> enabled.
>>
>> Since kernel 5.13, the SATA issue can be reproduced again following
>> the SATA node move from L3 bus to L4_cfg in commit 8af15365a368
>> ("ARM: dts: Configure interconnect target module for dra7 sata").
>>
>> Fix it by adding an empty dma-ranges property to l4_cfg and
>> segment@100000 nodes (parent device tree node of SATA controller) to
>> inherit the 2GB dma ranges limit from l3 bus node.
>>
>> Note: A similar fix was applied for PCIe controller by commit
>> 90d4d3f4ea45 ("ARM: dts: dra7: Fix bus_dma_limit for PCIe").
>>
>> Fixes: 8af15365a368 ("ARM: dts: Configure interconnect target module for dra7 sata").
>> Link: https://lore.kernel.org/linux-omap/c583e1bb-f56b-4489-8012-ce742e85f233@smile.fr/
> 
> Please add the stable tag here
> 
> Cc: <stable@vger.kernel.org> # 5.13

checkpatch.pl was complaining about "Cc: <stable@vger.kernel.org>" I tried
yesterday. Now it fine with "# 5.13" tag.

Thanks!

Best regards,
Romain


> 
>> Signed-off-by: Romain Naour <romain.naour@skf.com>
>> ---
> 


