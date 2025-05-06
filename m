Return-Path: <devicetree+bounces-174288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63168AACBD8
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 19:06:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C2BFF4A18BE
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 17:06:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC2ED25F98D;
	Tue,  6 May 2025 17:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HCdSYiW4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D462222D5
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 17:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746551165; cv=none; b=Qnn4F1WenndGuKISf/5etiY1ltoML60vwqrfMFiaG4AfAmtq3k9GABHMb64lHyjpyNusR+M+VwggEZQ5Nz9QiQ9T3t369RhlFB5k31pqsAj5AAbjmCyYwZqJwSRa+IWkh1N+IaYIlC1+WpHD7OjAk2ofhChxq2TV5RWj8zVD+Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746551165; c=relaxed/simple;
	bh=tUBsxMHfYRkjXRSEEL/gyTqeIsgMW7YeG9tVwe/Hw8U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GOsLvkzc+rDD/HhnN+AAZobK22IHCe+OQdspPbqH3L0BXKqh/rwp9aKGlTfdWc4fF5M1BzOUTuPxpjBRTbqyhS7NtRliM/OMp470/F6ugTuPjxybheXi2P+VaYuDYTROnt6nCuw/nC2F4HHfDrvwZbmr9HkjpCWJwRH31wFhvdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HCdSYiW4; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43cfe99f2a7so7556065e9.2
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 10:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746551162; x=1747155962; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ZKxUmPHgtJ1auRntYQ3zJdbwoBcjW9ng47toHLgvQyQ=;
        b=HCdSYiW42usxMdJndNHz+xH9HksItGGMrabv8eyn9aXxSLevHyHMQwYvyTaVr1YznB
         FML5AzOmkiUoZ6RZueqDlaekX3dxH8p9VItk0gCvTr9yHHMuQPMLUKwFsUTNUJPZBwyy
         8X99CuhB9fhyLPGCn2yEYtlnKdaXurJTq10aB2HFvxILQecOoy1dZIfB/ZNCjhcsDkMz
         A73YgOLGi/yM5hE7r5xemoGZ3BY44gYqvJ1dUWoDuwlccz6zxI+0Br2+/wnmZELZ3yXl
         v71+4kWyxIY65EKlTEUsuZrachqqczq7K8zn4QUtI3/twfd7FWyYrLvnBceVB2sPIHp9
         /iRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746551162; x=1747155962;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZKxUmPHgtJ1auRntYQ3zJdbwoBcjW9ng47toHLgvQyQ=;
        b=V9RPCsEMYBnulmAMZPFj7FCy54JrFe769FPwRumBj7jKGszMBpflFIvuVAMhi3biB4
         JO1ldCshksBYmrXjJzw66plVGub+pcxGgy7yZoRAx2wVhIUps72l7HA7ScgmrmnFx4DC
         323k2X0Qtd4LaRuGJ/NRP7ZyZa/HVRQo+eCLZkHUQexzHE+wLRywvmxuOWMd/Ztp9F5J
         Pev9NHLG7487UIRitxGCPA/z9wjjHTfBiUDjSkbMOnCW2FVy73IfpD/eWZBYunvuTYrm
         V4XWI08oD/OlAdp7N731o4pF4SvO1CS57naGjao0HKTrrg1OlGlUhVePrNkUlecxcsvj
         tUxQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6htL1XIFuQYjLr2AgBgiyG15ygvqqNlARd+VlEqiHlxx2R4nvkCurYOf3rsE3o7dydixsgra+oTjn@vger.kernel.org
X-Gm-Message-State: AOJu0YxWoGPrBNpHOTnkiNBQdjbBbga5cH24wtKCYLEruPlapzzovELY
	juAbNd+YiS27hnVvLBjLFVfNpRA8D2jZXtlLvEzG1F3x2USEfsTQ0ASggJAepWo=
X-Gm-Gg: ASbGncv9/F+9V0Q6BcyFp+WksNnWU+otFbK/GlCPW3nV6LNydMKrC/EnQ1jLfFYBkWU
	9XNaiZBNO9Op0rdPt5YNs+U8y0gCbXdImhIoQwSL5ffhM2TeZcx04DLODmwUEJMtle/OJMn11FB
	oP/S2KdLTz8Hp261Xbkhugn7IsHmJKXu859QKT3bUBXmw0eN1RC/pHSkKqkAkRDMYECfARMdvUZ
	J1DAbZXRvYTb2zhHZK9gXhkch9AqDJpQYYTkN3IFcGg15dFKUP2l3YIzkb3Antu9JVmPcSkAQqL
	tPMyU3btjjXzH+pvUU0hWyJvsaD6fgRgOyGOnNjaTT3sr8R7aUcQhjpbl/qDUkUANcG8GA==
X-Google-Smtp-Source: AGHT+IGHoQYv3yKC01U0PdcyTniOLz3Ljk+3J/XMWm4y8VZKBtbq5GjI8V30r+/hbEY1whEUZmU54A==
X-Received: by 2002:a05:600c:3b11:b0:43b:c0fa:f9bf with SMTP id 5b1f17b1804b1-441bbec0daemr57107415e9.3.1746551162115;
        Tue, 06 May 2025 10:06:02 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2b44474sm223802455e9.29.2025.05.06.10.06.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 10:06:01 -0700 (PDT)
Message-ID: <bb857b7d-97f8-4505-9d2a-1ba9d6319710@linaro.org>
Date: Tue, 6 May 2025 19:05:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] Add Luckfox Omni3576 Carrier Board support for
 RK3576
To: John Clark <inindev@gmail.com>, heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org,
 jonas@kwiboo.se, frattaroli.nicolas@gmail.com, andrew@lunn.ch
References: <20250506114115.613616-1-inindev@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250506114115.613616-1-inindev@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/05/2025 13:41, John Clark wrote:
> This series adds device tree support for the Luckfox Omni3576
> Carrier Board with the Core3576 Module, powered by the Rockchip
> RK3576 SoC (four Cortex-A72 cores, four Cortex-A53 cores, Mali-G52
> MC3 GPU). It enables essential functionality for booting Linux and
> basic connectivity, with plans for future support of peripherals
> like WiFi, MIPI-DSI, HDMI, and Ethernet.
> 
> The series was first posted as v1 at:
> https://lore.kernel.org/linux-rockchip/20250502205533.51744-1-inindev@gmail.com
> v2 at:
> https://lore.kernel.org/linux-rockchip/20250504102447.153551-1-inindev@gmail.com
You got extensive guideline what to do in my reply to avoid exactly the
mistake you did ... yet you ignored the guideline.

I don't understand.

Are you going to ignore also Conor's tags?

Best regards,
Krzysztof

