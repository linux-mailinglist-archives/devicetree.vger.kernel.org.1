Return-Path: <devicetree+bounces-80183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C137917FBA
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 13:32:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E5651C23187
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 11:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 314A916A959;
	Wed, 26 Jun 2024 11:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ciTWKJNv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 796D81591EE
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 11:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719401562; cv=none; b=YfgJsP9vJmi/HofcguYqbKyEoJduOXtnk7ITuswsMpWomLmHRBwez4+o3WbGoOXqj8sJiPWa09WKuGyCqylx12R9rwNj96EQxkyK/WLFVUC5+cGV+kpJug2WiObYpvs7Rx9nzEE9dW5vVOeQykEt+uJpsEr6yuUp8XJV+6hXEyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719401562; c=relaxed/simple;
	bh=h+pE+XjMX/leEZevK7bhn45IDX+6bEp+IShsfbnxvCk=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=eRAVqKKkHnoghyymwq7xSx92P4ufWzn+8x0lh/1lC623yoQIELYBNLJ7B0kOcnXPtyG/o8aaMGpz46tqtg5m6PcCONhoj0uFJia/F2fscXMdIBAyZd59JPBXiGUSgqpgwhdMLYvB2rAjnSaLLGXrLZIgR3XB5Jx2aC0/aX2hdHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ciTWKJNv; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-424adaa6ceeso4822925e9.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 04:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719401559; x=1720006359; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aUV0B2evRba8OLOBqBc0gogv5ZUUOB3nvC4R4bxgD7c=;
        b=ciTWKJNvkZ1/QfLBa64fUagfeG0Nu1GOifL4B8ea2atfCAnKX84T9nwyoD9M+oU6E0
         2axLyHzDTbx70jAXiFQoC3UoI1a0pC0/sg3+V2Rgq65006JeFzGnyMKLdQ1rPRzGbYsS
         0xwN/mpMyIo24AQ/xLt5QGh9gYUDjwGq699ii+sOCj3AQFf2F2xZu2BOgiu/c1aNVqbJ
         KYEmzvCRwO5boT43RuUk2kvDXAMEdmglF5WotPyvhnqEMGgccjGuPSvFl9nYnWBjALs/
         uMLC2CrzTD95EmpH9wtTrZUgEY01Q4rJM7rAOdpmzm76XM87VdffAPEpoz4vG+pGoSUp
         xScQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719401559; x=1720006359;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aUV0B2evRba8OLOBqBc0gogv5ZUUOB3nvC4R4bxgD7c=;
        b=uG3doffmLtus7HEJ87WH06TAi0e/5VyqG+7hpDkKp9c9jwAbeR4T5sIRf7J2ePByZR
         6aAIZ6P3iid5LI9d6hVewpf1fBS35c0CPrUjSRm6q/8BDmpRfqbdXDWmPid3hqewFcEb
         kYLc/DohpH+ef/1F6yyKO0vsKCZrq+3NXzZMuRYMABbYYri0Rk4E0vXFXvn+PCXr2mMG
         O3++Uqh/jY7g5+GJXeG0bIRkaYcNz90+6G3kgCOr9HNc4tfOAopGQb7o/sBt2sZNLnu3
         wk15fNWDxJIXShTdTy/50tDoFoyfVNi06O1pNTnAYzKDjQr9m9QzzhtZmL1xG/If3rna
         13UQ==
X-Forwarded-Encrypted: i=1; AJvYcCXng/w7FW1FEiyjqLJE3ljxD1Hmc6EdxK888ZpuPWZtqQPFBsMHpf0XeSZqUyVqKXm66KOpJQhVUfhMYbzmtoxKW4MWQB5ZBq2qNA==
X-Gm-Message-State: AOJu0Yye6c7NoU4Fir7JM0J6qt500GZ7LQVC79FhBI5psfBZIOdqoJzU
	yELGiLhvX33fal2QPjqwdAWxx93x1zw1vfK5IzZbUMKIArTwaJeeUFh6UKpTAjs=
X-Google-Smtp-Source: AGHT+IHK0mpDhVKNwOxESEg68fC+6c0gzgt3Lbu44P9FAbzspjfJJ8HDEIg2m7fZxubKvuK4CunOQw==
X-Received: by 2002:a05:600c:35c6:b0:421:eed3:5991 with SMTP id 5b1f17b1804b1-4248cc593f5mr77892025e9.32.1719401558835;
        Wed, 26 Jun 2024 04:32:38 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a2f696csm15537815f8f.82.2024.06.26.04.32.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 04:32:38 -0700 (PDT)
Message-ID: <1b1e0922-30df-4aee-aaec-22fc674bfb28@linaro.org>
Date: Wed, 26 Jun 2024 13:32:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] MAINTAINERS: ARM: airoha: add entry to cover Airoha SoC
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
References: <20240613133840.6949-1-krzysztof.kozlowski@linaro.org>
 <25c8432c-7e2c-4d32-bf5a-225aeaaa809a@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <25c8432c-7e2c-4d32-bf5a-225aeaaa809a@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/06/2024 15:57, AngeloGioacchino Del Regno wrote:
> Il 13/06/24 15:38, Krzysztof Kozlowski ha scritto:
>> Airoha SoC is not covered by any maintainer entry so relevant patches
>> can be missed.  It seems Mediatek SoC maintainers were covering some
>> parts of Airoha and Airoha itself is subsidiary of Mediatek, so assign
>> the Airoha maintenance to Matthias and AngeloGioacchino.
>>
>> Cc: Matthias Brugger <matthias.bgg@gmail.com>
>> Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> 
> Acked-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

My intention was that this is a patch for Mediatek.
Matthias/AngeloGioacchino, can you pick it up?

Best regards,
Krzysztof


