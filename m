Return-Path: <devicetree+bounces-210283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1270B3B2C5
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 07:59:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 976B0987C91
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 05:59:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6F4B220F49;
	Fri, 29 Aug 2025 05:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ez7R80Br"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE925202987
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 05:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756447146; cv=none; b=WAYHeRzPMwNRa+LJsre5MDwsu/fOEAfXA0P47sE+f3npL0Ati7doXRbp7QoH1dG7N6az+wI+dCeJqQ4miOugU4O8FPzvqbug1NRzXCuJBf6c2S4uxtrZ8T6GuUyDejjljkxbe+fNasW+V1cANC6JBSI2S7491ZAXZQIP3ctPtRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756447146; c=relaxed/simple;
	bh=kCfQ8ISGxKI+1ym5WMCNEewc5989yFoQC7vkJ/V7emA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uWX20pYeZ2gZZaYygxXxCXnh/ZxUGFRWyl+rax1LgYn5G+zT5pXu+PG+nvrXRzgpNGDMhp0EU8P1aB7AEEN/yM2+wVW0D8vqyd+BnyAZoyQFLLKCb9RMHRDt4a0cg1RN6t8P/t9ImjQ+z7G97V4Z/KwVfMXxdYaAsOGC2PwCzrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ez7R80Br; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-afcb7a5cff3so28520766b.3
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 22:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756447142; x=1757051942; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=a8nLSUsm88QMj2KXiJKv/xrkbZBm4Zb7nYR0CSmM3jI=;
        b=Ez7R80BrNnbHs2A2NDuLU/W3ATfGGPi/DFFWiIJd002J6NbMczmaOPr90HfaiCA19+
         8nca2JZH/ilw0HUtfMP94c4bYWEVDe/mFCKlPKaeUkYnJJ0GDJ6LrsMHrSN2aqCsGo8f
         L64Mp+4qDRGmhAiiwPZOpVb6mW99JE+4ABASbJkS82Mn9/O5t1aGdv5Y+ehG06yvo52v
         j1RlQ7OHQZ3nqbrzzT9vI4sQ/r8xI7B1vD/tSinC0nwixiU+nhhiUKZEyWJczRhW8R8f
         aPDh2HZeR+7cC4ZnDtXdaRD4xb4zhUIHBuDiNxI0bPqCT37+1om339AoVdAr1yBdxvGk
         /uAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756447142; x=1757051942;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a8nLSUsm88QMj2KXiJKv/xrkbZBm4Zb7nYR0CSmM3jI=;
        b=iT/ZYjAnYNFoVtXMUSEFu9xWetDGkExgnmPTrGTUsKj0tseJY+stTX+Wj0L1uAleJl
         t9uxXBIARtjQSkMRniD0GedzC8JmgIj7nAchprDYInOC7V0hD3TC2hs84ZGuX4MYfLnv
         kRwopnewDhv9IpexBXzE1zv/kPhLVSLmat9k3xoopyxPn7SU2sYeGuKISgslerdpQ0a8
         DMlLHNNS7cSJNX7GU7aIwyQ2fM3Gld9URWHsYLo2Nnt/DHvA6s9fC7s3B+2SZnDjQHO8
         5mOxjA3PJ8B8HlZennAEan9/Jjqbw9TzRth37xaNzLIQUQix9rnHRE/NQS4Av5uHuvtg
         cAvQ==
X-Gm-Message-State: AOJu0YzDbmxH+TPayPeIQkPkV/i86TiXQIhh8Pf4zyOsLI0cK3ghRaAO
	GIQ7oEG4UCgJczWCEWyzICvpjSqgywb9JECq+38HQxk6h7pUIkfVzahfHVodhh/kwM4=
X-Gm-Gg: ASbGnctrjfHMIqwrlFNzRrmL1NgP4Q7j313x8VKapFJCFoReMNFnJ5Au3FYkmyo1cIm
	6Tdx/+q8u2q7lwV5aIvZv5Ud9BT+a5wd4GgfGWc6zYggj+jbMcpbsLD6MjfX7F/T/ic/Gbf+wqh
	J96Z7VXvT3ChGAt5CxNSkcgpuHM1hqi5aeMhktcX8Pazokl6CdvB6l1t57U2sLadiG6TDzsXVX3
	AglQyLqXhoZZHDXL/sDONOchZqFYS5genu6A1h7KfCd0A6MLtNL146Y8HmHI1Lav/iLHHcNKeNG
	CETo36/1WjsnmkBmo9RXzCJH8Rwh5mgPo4UtucHWN6UDs5AsqH7Zmxf+/f2h6I5pFVBc6IYDGUZ
	NvLAOxReQc7Hsh9ymS+dJ+7Vb4IxAYiz/cKwXxTQS3evMSSILfRk5GA==
X-Google-Smtp-Source: AGHT+IFJoBS+3mvK22Fgj6iGPN4/Io1Wtp2BF5CgdO2geYPYBqSJlkS1FUSI5IVAmVO8bCseZE6bPw==
X-Received: by 2002:a17:907:3c95:b0:afe:ee31:4b93 with SMTP id a640c23a62f3a-aff0e28a1demr8112766b.0.1756447142009;
        Thu, 28 Aug 2025 22:59:02 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff00a5e96esm99362866b.88.2025.08.28.22.59.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 22:59:01 -0700 (PDT)
Message-ID: <4e51bbdc-744b-4a23-a695-a6c49d82e779@linaro.org>
Date: Fri, 29 Aug 2025 07:58:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: axiado: Add missing UART aliases
To: Harshit Shah <hshah@axiado.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, soc@lists.linux.dev,
 soc@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250828-axiado-ax3000-missing-serial-alias-v3-1-393111f4bd9e@axiado.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250828-axiado-ax3000-missing-serial-alias-v3-1-393111f4bd9e@axiado.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/08/2025 20:27, Harshit Shah wrote:
> Axiado AX3000 EVK has total of 4 UART ports. Add missing alias for uart0,
> uart1, uart2.
> 
> This fixes the probe failures on the remaining UARTs.
> 
> Fixes: 1f7055779001 ("arm64: dts: axiado: Add initial support for AX3000 SoC and eval board")
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Harshit Shah <hshah@axiado.com>
> ---
> - Run "b4 trailes -u"
> - Link to v3: https://lore.kernel.org/r/20250824-axiado-ax3000-missing-serial-alias-v3-1-5db4143bf189@axiado.com

Please don't do this. It just generates unnecessary traffic. See my
instructions you receive on your first submissions.... unless you want
to send patches to soc@ (which looks added here) but then this is also
wrong - we do not send patch by patch. Collect *all* the patches for the
next merge window and send them around rc5 (rc6 being the latest).

Best regards,
Krzysztof

