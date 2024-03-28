Return-Path: <devicetree+bounces-53951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA7588EF86
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 20:50:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 35C54B25F20
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 19:50:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2068815216E;
	Wed, 27 Mar 2024 19:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gNbpt7vF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679521514EF
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 19:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711569013; cv=none; b=Kt8yb8wG4AxirHJVqCVBtiiMwBYX8SNfkqj6WIQlBD2hRR2F33kGdqOalNa/bNjH3bfToSLaidbU9j4PjqtYk548v7KPh5wPlWqIWywZRczc11NzFSy+kwPOTYUpwbYtPd5o1rBi8C/g8MpUGFuz0+FWNgLeDiKBgU3wjO/UmqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711569013; c=relaxed/simple;
	bh=wuxCCv8VQBgulT0IC8qi8fq3uXjMWvgWTlKCDOY8Ffw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jIgrSEgpet//3ipImQ2g76hg0HBvewRKnvAhBEaToxppicWR81PnTNn/MpeyQYtiPdIBqewTCf6rkG3tseVxUkGeF676DC+VHiwkCe6wZuBXE6nyCvBxh0sIEkxdaslc2DrAsSMRUJjmAjrEjR+9e+edsJs2pSdvKewisW4HCEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gNbpt7vF; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a4a387ff7acso22947466b.2
        for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 12:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711569010; x=1712173810; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=+bMAqCJ8t7P3InP0WP0DeRsP6LlfPzKdNMqUuNEm/4E=;
        b=gNbpt7vF6Lp7b1WE+806lp21l16X8JpQKm9TyOC95a//5gvRvfOayyyEYXPkwukkHN
         HTm/pwT+/VAxZ/W3dWlWIqFix4pdANMkIKCn0O87whZhbDXENo7vptE+ST+I6qBq8h/u
         GDLqHI7pKtNKAhSnhlsPWnsCw/ld6wpTrm3MaasqZik13sD9AolXmFHjoXJV+dSC4FXK
         tyOdeArf5Uzy1r6eSrdxBUGPJ+W347rs9p1PYzypMqREkvV9dbm786ULDvL1HmdA1fM3
         VpAx5HmCuavm4e4g9XN0k/sAA2wZ3x2XcTZU2+N8nLWLx7skwuSWvV4B2vKgUJ3Gl/VE
         FAow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711569010; x=1712173810;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+bMAqCJ8t7P3InP0WP0DeRsP6LlfPzKdNMqUuNEm/4E=;
        b=qcT1uqAzzikFL00fvt08RsL0kwS0Ol6nW8HI/ICT8Yd+jWDYz5JSNCl2CxHYT2tG9e
         jFQMd/0POhZ4t0+rVBt9gS1h5TtycZ9VtaFf0d5BtvSYYUv3evPQIFHhBYq9pcI/hfKn
         7+fn6PZidPN7A0bVaO1fSbm3r+8UAboubcy9yI8CveQWUL2vjdzYwfXv8AEHkU5B8LDp
         +L5b0LR3E2oovzXG3gc0q0uO9BPE0b3ifRcOPhmnDl+CdcxhybWT6yqbkJve4/wSkKY2
         6iSrBVt/T7FxB3hNnhDEhJsoikcRalaXB1LmcQQLlWlNjb5skxglUnOa2JjBsxctqubA
         Z+GQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHsuoqJldgHF8NR9kYKWNckpKEnbUH4SUdfPmZ4mjGRfSFdJr+K3fJrz7UFC6C/lAVFovmb/SxjMcMxxdB5aQpxk08YpTJ9dfFUg==
X-Gm-Message-State: AOJu0YwMgwoBPYn3kxQ/JsCBpChbJc80ryTx2QbqQEdk32FT09hteN3C
	cWxY5c91MXcNgTdQS6BsZ5UcdRqr1pv0H+sfTrrRes8KEMObd4UdtmH3M2qhQZGI6qRRD6UPzb3
	v
X-Google-Smtp-Source: AGHT+IEK1FEdv++g2vsCy21f89ME56VjBd3DO8jXMfxko/7+tJDQKxkB0s3d5Wy0ekpNPimPsqDxwQ==
X-Received: by 2002:a17:906:2a0c:b0:a47:3c66:b396 with SMTP id j12-20020a1709062a0c00b00a473c66b396mr294393eje.64.1711569009863;
        Wed, 27 Mar 2024 12:50:09 -0700 (PDT)
Received: from [192.168.92.47] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id z15-20020a170906270f00b00a46b8cd9b51sm5834772ejc.185.2024.03.27.12.50.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Mar 2024 12:50:09 -0700 (PDT)
Message-ID: <60428572-a611-4c43-a185-a850ef69d2de@linaro.org>
Date: Wed, 27 Mar 2024 20:50:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] ARM: dts: qcom: Add support for Motorola Moto G
 (2013)
To: Stanislav Jakubek <stano.jakubek@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, phone-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <32c507337ab80c550fb1df08f7014d1e31eb4c32.1711454680.git.stano.jakubek@gmail.com>
 <8c605fb9cff8364ea6ac321b5a3fc265c5686def.1711454680.git.stano.jakubek@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <8c605fb9cff8364ea6ac321b5a3fc265c5686def.1711454680.git.stano.jakubek@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26.03.2024 1:11 PM, Stanislav Jakubek wrote:
> Add a device tree for the Motorola Moto G (2013) smartphone based
> on the Qualcomm MSM8226 SoC.
> 
> Initially supported features:
>   - Buttons (Volume Down/Up, Power)
>   - eMMC
>   - Hall Effect Sensor
>   - SimpleFB display
>   - TMP108 temperature sensor
>   - Vibrator
> 
> Note: the dhob and shob reserved-memory regions are seemingly a part of some
> Motorola specific (firmware?) mechanism, see [1].
> 
> [1] https://github.com/LineageOS/android_kernel_motorola_msm8226/blob/cm-14.1/Documentation/devicetree/bindings/misc/hob_ram.txt
> 
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

