Return-Path: <devicetree+bounces-39473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F2E84CDE7
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 16:23:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 976CA1C24EC3
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 15:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C8A77F7DF;
	Wed,  7 Feb 2024 15:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YQUmnG+x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B777F492
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 15:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707319405; cv=none; b=P9yAkbQDaIo1pCjN9uDoABe1bVN7MGqr9NyWNtey3a88YwaYoCZ/rj2FOUxRI1x0rfOw3pZ/mgxByuAKBEVoyPYM6+UELAzmSKhwRk5Z1TZwjlAqojIK782V2keBSgOPH4MR6fBSTH9OpOXSF6xbBmzOOZj+BZhHCsGelu6NNkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707319405; c=relaxed/simple;
	bh=D1nHBy9BTEGJ6f8wgI2PA54FXtxwvMIUT6iWGXX6YOQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oPOJbehx+ULAfon9EFoASL68pRqIJYnAQP34mpudOMdxGG+fm4zQuLdouNcycsTQ2Fnz4JLImxrWq+zTNFHFUxKATRCOwj4BYawI3Me3DpT4cZFyOPCiGQOYRgxuLumkLjChgjBje22qUpL+eMg1r0zDSWqMVeOYgVRbGBH7HUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YQUmnG+x; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40fd280421aso6511285e9.3
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 07:23:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707319401; x=1707924201; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mCvQlP1u/ahMkxnt3s+kY4WBZy5d0gK0JV7DH+GWHro=;
        b=YQUmnG+xPxfjgPc1fZOyCPdUSG5gWG+pQ+cELWXQYiKQC4yzcgt02BnF/6tRRYczqG
         XoSnnL0PnSKvxQLTcA0l9d54t73570VDiKfxVsZyk09V4icjuUYRWsnI9iw6jI8F5NRf
         uCBQNkYND7QABEBg+ywLH2n0gpnTGcCRSMg7VFXyzoqGNrjJt6QD0pZGCAL+mZdi1WbP
         e5EPeglkqxKnP7kt353NH4TS128SRXmVGlToa6AtLhUl2tnhSZ4k22IBa71Vr/KYnYDn
         Q2K4R64MEvYUBxHPsmaKXx+IkPHU61gAp/0NkAfglkOGPfEbgVkLhUlc4nIykvzT+5qD
         o8lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707319401; x=1707924201;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mCvQlP1u/ahMkxnt3s+kY4WBZy5d0gK0JV7DH+GWHro=;
        b=TOV/h+ondabWtrMxuGgS/LSS/KTMJPteco3oJhmb7EdZgCAxXJ814v0YsnyY4WiHF+
         Cd55OX4b7TBbI5xMhX7ldn/XQNcC6qMv/KR4squQZU58Ak2kJzKvn4TQeGcDW4q3CKp0
         5lLJQ4CJRrTL69fVwApjmiF7o+c0SuismDJOcZhZmLaintO53tQK2G2qePx3VwPL+P5E
         Q8lRVHOSuQMSt9SlX0ZsJvaJv2tpv1FWEss0aXMDkin9m2Jc5u9pbbQlNsNtck6UOU9v
         7godejGetPOlocpqaNkpV2bBEzqJyuHhs9D+/FgpF26sGAEvzhJwbwMk+yefWPbv5C++
         4l8A==
X-Gm-Message-State: AOJu0YyBgJlF6rrZpSXaMrbRhoZ6U26MpJPvojDCGXfNjXMHmJ+eMyj8
	qBmvMGCjgDOz4ix8L3OjIo5cP/fSaaPp6bzYlH39mHCPwYRdErQjHfJfHzO2LBA=
X-Google-Smtp-Source: AGHT+IGNjyyB9/HI9xRkpYscVCCwB8DaNJjgYqtNY3P+rNPe1NY5dOlwlyA00QbTwbWNcMXClESO1A==
X-Received: by 2002:a05:600c:5198:b0:40f:eb8c:71b4 with SMTP id fa24-20020a05600c519800b0040feb8c71b4mr3703239wmb.15.1707319401403;
        Wed, 07 Feb 2024 07:23:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWXDwo7H10qk/Re+HBBozFGkmpsK1Tyk/vJlHWPjxrhHeQORyYoFdTMgFa74InYKeAoQkHeVrninH1RWyWSkDXcxFBzKmbBq8KldAKaUHbEZVbItHJvLu3ihvpE+hcgmpP5yh3I4et3YFFk8t0XEqP+0bL/5UE67OeRUTy51YWbbfP8neqaFyKXweJVzaywHaq0tZAf+Y88ABsN56tRettYbTKGIXaeU7EhMNsJJssxRKPMJvn61ZpA7wgQEOd2hE0MLBjOLq6VlJKnEmgaurCHHJLx3RgDztmP5Qlr+ZEjGpQlm+nbfKr5Us7b3GCFvJB7Hui9zacrunpjhojPup03wGynY1s0WzNwq/Lbb6Ri5Hvuwnvh1WAxo482wnHLNjCm7CzugbP5zckSY36GaZq6O15GgbPRMLn44N2HFabQM1ssWUgi6sP1Q7+vr+oAJaVe8NbDzSAUuZB93dd20+dnj+nrcELNlhHJ2jlNV6z0AxohVP1gRmisjefOqDbSpvqqsbf036zZvZoJeEkSNREwD99LbD0+taOYJBKMDe5aO1k8XJr7s0VihUsxk1ye8kVE3QJyhs5MSvwmG+9LgKuF1Ki6KJgZdE+MvXHso+giaJP36+rE+bOygTadKkRCNA4CtLeNhjEyG73GJyLh+QugGcDaDvfbud1/OSmFg6qSga7CCVOFig==
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id b7-20020a05600010c700b0033b459e8f60sm1723604wrx.18.2024.02.07.07.23.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Feb 2024 07:23:20 -0800 (PST)
Message-ID: <6feff535-d9d7-4f4c-8e7c-956c4bba1713@linaro.org>
Date: Wed, 7 Feb 2024 16:23:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/7] gs101 oriole: peripheral block 1 (peric1) and
 i2c12 support
Content-Language: en-US
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com,
 tudor.ambarus@linaro.org, willmcvicker@google.com,
 semen.protsenko@linaro.org, alim.akhtar@samsung.com, s.nawrocki@samsung.com,
 tomasz.figa@gmail.com, cw00.choi@samsung.com,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org
References: <20240201161258.1013664-1-andre.draszik@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240201161258.1013664-1-andre.draszik@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 01/02/2024 17:11, André Draszik wrote:
> Hi,
> 
> This patch series implements support for the 2nd connectivity
> peripheral block on gs101.
> This block contains an additional 6 USI, 1 I3C and 1 PWM
> interfaces/busses.
> 
> i2cdetect shows all expected devices on the one i2c bus that this patch
> series enables.
> Everything that's in scope in this series works also without the
> clk_ignore_unused kernel command line argument.
> 
> While working on this, I noticed the existing peric0 support for gs101
> has a couple issues. That explains why there are differences compared
> to it and a separate patch series has been sent to fix up peric0
> support.
> 
> Cheers,
> Andre'
> 
> Changes in v3:
> - drop samsung,mode = <USI_V2_NONE> default assignment in patch #6

I am confused. I have "another" v3 with different changelog.

Best regards,
Krzysztof


