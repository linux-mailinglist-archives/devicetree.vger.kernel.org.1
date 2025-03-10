Return-Path: <devicetree+bounces-155975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6F2A58CFD
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 08:36:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52E777A1F60
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 07:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B96021D5AB;
	Mon, 10 Mar 2025 07:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CRLmPr/f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6FC21ABDC
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 07:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741592178; cv=none; b=ONqIxJmxb74OlDOZsOZdrNUVgpxcn/7s8Kj4ncCaCbzByYXBn8TgiG0lePsSwjbxAHdAJ6N2x7LuBrlqKN6KJyoDCQkPA8dmxQtuPDd0bpHjUUULQtWtfujIcAue5rLlAops/PPIJtvp2suRzsN7ePnifPhTb86DyLiZG7CFUPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741592178; c=relaxed/simple;
	bh=cWxy0cI9IRBdtcF9hBtL064XIaLB5iQpj1puE0k2iHs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mf5+TkPeSNxl8EGsfrRJXDZd6t9u5hC0kR9ArLWFQFRdJDI1MzwVLT53ZVsjI0xElx1hjF3zAsAwuXazYygPZ98lS1zZ5KnjCOxXGeAqqyuFYtlDN7qj8Snni7K0jDP1MaMYuGOu8dauLs3QCu4R3wT+tgi7nhcrpjA7/rDAwfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CRLmPr/f; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4394944f161so4173875e9.3
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 00:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741592174; x=1742196974; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=xa4CNNhvKmxPqvqn82oXm7n4I9nALluv+zVQC8jnB2c=;
        b=CRLmPr/facR7ohzWPPFJOPuR8ZgW3AO4gK8R7Y77KRTAlHvI+x1SqX3UxleCQ03zJw
         WGnC/dnw8NkC926C3v4ySkZwqK1o3NvvMDebuxZidfac5WOptdQAq6yx1wrYOmYVCjT3
         ENQJRRbh33RFfXqTgFyA2I7cVXDAXbwyq6uTzTRJesqnRjWPezoBQgtBZ8nhROLpyHZ+
         CN7BIQFlOA0LxGTtCkfbZtf4RyN5z1pbl1ioTqjPd084FvenfvKYL13UNPlmsUojHPh6
         GDxrVbxMl683/qus9EOyol8dV/nvIBuiJHa3e0Is22Vp9Ovc3pDQtzs/zol9r+qztyU4
         QsgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741592174; x=1742196974;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xa4CNNhvKmxPqvqn82oXm7n4I9nALluv+zVQC8jnB2c=;
        b=G0VAUfBawxlejP5WvWBL5tMT6Y6abF7D3D+a/lVJ0V2fiUT2qN51XklztxArV7sirx
         4HvJcc7lCbvA4k8vvF4M3PWn+HsWXhSR4xBnwv7f+7waw6IrJXqTjQXSbrgPhjutESvU
         uEB/8D0ACWTjDAMrk9GfM4pcl2bK5bgPqMjfFmxZUeEeFwzPn1VKIhFl5zV753N5Si39
         oz9vovY3F3KX2iBIIQ47pwkJv9XcDi/QEiPSxv4ybWkm+gCzXnKfSw4a0lmBJQkszlOP
         UCrP5RNjdqDlUBsdWELGrUUEvt8+jhJrqPI2MasfV8ja865iVBf3xwO55onNWRemnMrc
         4J8g==
X-Forwarded-Encrypted: i=1; AJvYcCUBjD+kA/fnsjoKIFQZo2MN/cHcpg/pZJEJgsBhRnrpk3Bn3gDtZYKfkIg0S7g6BKVsW9UuxmSdd1c+@vger.kernel.org
X-Gm-Message-State: AOJu0YxuI0pEaMqPKDJuqe/rxrqfoLqjZlKdKYi8g+Gtt/Qr/hO28cWt
	RQBwH4hodCS3BbHvfme4Wf/g2aYnNcbLuqFjOKMi4wRdFKaOsR/15WAfuZjfG/s=
X-Gm-Gg: ASbGncvV3umvFPibJwzV710KLbXvgeR4xmTZmSaOQ9ZZ0hFR9hAqXQsEcw1OZkNqC7t
	cyUJDiFB7XwsAL+u1HpzLjp591saaUWUCsWD20QZ5zE3E2ODoRAR7gTXMdgXwk/hlNR8UcSTLfq
	9GlsnoBk9XFcICoXrBMqf74CJzLV+cORUsdY69IoORdjSw9hFmcwKew3fntNuv+IbcH5Nf3iCtD
	VyT2nGIFuJvBjkqGcF8spWr89VuladGGkiMs7vpb22nodOZ7BZI6G9jsA0u1SVB3xcNlRQreAsA
	URAPHlo55U2ij+4myVqKXYwa8ZqQ+t/uO0gmeMDswS4BmaLXjOzylaHfp1UV8vzV
X-Google-Smtp-Source: AGHT+IFVXFL64jZecsah6xQkhxZkKgRHp9R2l4F8ZTX3AzFLhyxktPPsVkwFvk588glmtmFgKAtL7Q==
X-Received: by 2002:a05:6000:1a8b:b0:38d:b090:a0c4 with SMTP id ffacd0b85a97d-3913bbbae73mr1776799f8f.10.1741592174645;
        Mon, 10 Mar 2025 00:36:14 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912c0e34fasm14110350f8f.75.2025.03.10.00.36.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Mar 2025 00:36:14 -0700 (PDT)
Message-ID: <056eb3c0-ed76-4b38-9d23-1ffb738ff864@linaro.org>
Date: Mon, 10 Mar 2025 08:36:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
To: Zhang Yi <zhangyi@everest-semi.com>, alsa-devel@alsa-project.org,
 broonie@kernel.org, devicetree@vger.kernel.org
Cc: tiwai@suse.com, amadeuszx.slawinski@linux.intel.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
References: <20250307091916.100164-1-zhangyi@everest-semi.com>
 <20250307091916.100164-3-zhangyi@everest-semi.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20250307091916.100164-3-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/03/2025 10:19, Zhang Yi wrote:
> Add device tree binding documentation for Everest ES8389 which
> is different from ES8388
> 
> Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


---

<form letter>
This is an automated instruction, just in case, because many review tags
are being ignored. If you know the process, you can skip it (please do
not feel offended by me posting it here - no bad intentions intended).
If you do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new versions
of patchset, under or above your Signed-off-by tag, unless patch changed
significantly (e.g. new properties added to the DT bindings). Tag is
"received", when provided in a message replied to you on the mailing
list. Tools like b4 can help here. However, there's no need to repost
patches *only* to add the tags. The upstream maintainer will do that for
tags received on the version they apply.

Full context and explanation:
https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
</form letter>

Best regards,
Krzysztof

