Return-Path: <devicetree+bounces-128457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 363CB9E8C78
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 08:43:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5304281434
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 07:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A787C215059;
	Mon,  9 Dec 2024 07:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vcLgJyR4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56C2215041
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 07:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733730193; cv=none; b=fdg5eGBXlZYKV/zDkqd8KNoedsKCJOEAOC7YC5LHRcLUfAmCwKE5y801EJjYlQz7ZDwKIeN3X+347ac4qXN6+YwtFyrOp+Dq0/kh1mP8hDzZoaT92mB1uKFft5LCzhTEC0urgsrqy72H7aKG+cVKawijdSZdMk+bXOU9nBcg4l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733730193; c=relaxed/simple;
	bh=5SUPyYL9CLudvKpRplV8NotoHf7mZ8aBVuxAUdV5tFI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g8wHimNBqPkjqouCpDWRzEGrDZD6fLx3kw47b/UFYPBZio/CaHdR1DoeKqiAtx4VlzCGOKDOazWWhnUAo3h1/DfEBKE4yR5BFV68wqzSYa7bJ/YuJ1mJPDHIcG9sVK0mUKrtBuXn2t4vAMYymAJgQurNte3KX2DiSdqifrHRMCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vcLgJyR4; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aa67ac42819so148055566b.0
        for <devicetree@vger.kernel.org>; Sun, 08 Dec 2024 23:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733730190; x=1734334990; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5SUPyYL9CLudvKpRplV8NotoHf7mZ8aBVuxAUdV5tFI=;
        b=vcLgJyR4VELldb8Tb52VP7YVuyTWxg6iKMf5pqR2BAR0VwnL2xcG6uDsNeHFIX4ehh
         c4lA2HXP2kreeBRYw90Q05sHOyCyAcogbhM9Z27CWOX39VCs83v/pg5WWoUH0rsIAj6Y
         MBN4J+NI8+C1wyfTYcuZE+/rJxvWmFqZqndYOHeiCutoqjsqWEz74nJ/dBV8s5qZ7sb2
         9s35XBO+FRlLWYnI1ZeEkSB4u4m9KCmrseRt7pAHN8iCUdluxfor1Aybz+je/uO2K0LC
         kfCNLUCDYO/u91xjIpbZgVpp8U0Z47hmH0GkFipndIp3fVy3n5HdvO+Je8Cs2Xr019UB
         k2EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733730190; x=1734334990;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5SUPyYL9CLudvKpRplV8NotoHf7mZ8aBVuxAUdV5tFI=;
        b=JOdGqBl4mWYKmsfePd0HhJA9bpO7oshqSoX0o5hbRtaC7Yoc4KrlJo8IGHzfHjsTJS
         LTKwEQ4wu1OzH8pPuwbXh/jHuF8Wy41htJVdNxKR1NPKRBCrb5YbNcQknpYp4T0uUjHx
         mMPxRLl7oKQszejt7waSYdEs1HU/m4+tQAIhOo6BrmpzeJUHxs+ZsSpbueHWA6m7oHKY
         YbBsSzabSsoDV+XvmUjb8g4419/VNXBFnTsv42llBWYo9oVOMZa+CrqI9ACeUWe1ewCT
         NnezgN5caXyqCUXst6N0SpW+XhP9ENBdsjCGHK3Gd+JFUFrxuJtS1IY7f2SBjnFkjZRL
         4tOg==
X-Forwarded-Encrypted: i=1; AJvYcCWCzfr9srBDZXip33hHFkYH7pmsHm7zsOId9wUBIk54iS+ae13c9a9k/NlrNfos17oLwWq3ECt4Yaag@vger.kernel.org
X-Gm-Message-State: AOJu0YyxYVdnUc/L+A96Q4CUBXWCmNfWmy8g9UaBEixtEroOTGw5BUym
	xjRCfM0WkEhaoslKcMaB8DMKS+2tTf6hfSxrstzhTKvjYfweBDpLH9zBb9DkMrA=
X-Gm-Gg: ASbGncvCS9+LRN1pdKT9l3em35e8oCP9h+e9m/8CWvmM6Ei1lSCIEqUJI8IlKm+i6gk
	TqtYgg9nqDW7+ZgB3tGHKaBGIcV35KHCdt4UvGeHcYpzR/db1NjDdErXHlv3ylmXXL28TIf6Fxk
	IFeutapohpmzoT1vVQObFlQGhWj2ArTKEut0X2cXifNrdLLZogb5tXd6/57Ts5to6umyEbXb1dQ
	tW5EMg8uUlgta0QgkEFMcspFqr+t0Yge7ZQcUI2H8GqmHe8rZIlQeA+IA==
X-Google-Smtp-Source: AGHT+IE4Pfx3VtI619bsbgSpgxWDTPFXq9jVrwkrA/qIDqOtyMaYbAKpFXJ+v5CONhA6hibvHdCtAw==
X-Received: by 2002:a17:906:32d0:b0:aa6:75bd:eb5 with SMTP id a640c23a62f3a-aa675bd0fc3mr426902866b.57.1733730190277;
        Sun, 08 Dec 2024 23:43:10 -0800 (PST)
Received: from [192.168.0.14] ([79.115.63.27])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6845ab4absm133840466b.73.2024.12.08.23.43.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Dec 2024 23:43:09 -0800 (PST)
Message-ID: <07a4942c-023f-495e-a4b0-e451c949ad80@linaro.org>
Date: Mon, 9 Dec 2024 07:43:07 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: exynosautov920: add DMA nodes
To: Faraz Ata <faraz.ata@samsung.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, alim.akhtar@samsung.com,
 rosa.pila@samsung.com, Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 William McVicker <willmcvicker@google.com>, kernel-team@android.com
References: <CGME20241204122402epcas5p2412733eb46d495fadfa30e5af3c5ce83@epcas5p2.samsung.com>
 <20241204122335.1578-1-faraz.ata@samsung.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20241204122335.1578-1-faraz.ata@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/4/24 12:23 PM, Faraz Ata wrote:
> ExynosAutov920 SoC has 7 DMA controllers. Two secure DMAC
> (SPDMA0 & SPDMA1) and five non-secure DMAC (PDMA0 to PDMA4).
> Adds the required dt node for the same.

typos: s/adds/add, s/node/nodes

Hi, Faraz!

Have you tested DMA on ExynosAutov920, did it work with the upstream
driver code?

I tried enabling it for GS101 and I had some questions that I couldn't
answer, and I moved forward in the meantime. Would you mind taking a
look at:

https://lore.kernel.org/linux-arm-kernel/e4089855-aca9-4993-bac6-e59370cf7954@linaro.org/

Thanks a ton!
ta

