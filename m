Return-Path: <devicetree+bounces-47846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5272E86ED2E
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 01:02:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 41E0DB203FC
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 00:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEC1A13AC3;
	Sat,  2 Mar 2024 00:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MJOE8Ook"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E661A12B9A
	for <devicetree@vger.kernel.org>; Sat,  2 Mar 2024 00:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709337741; cv=none; b=r6JmbXeRoa3AyKUYwUlD6XBLRsLNPkL1Xb/lu70f4tB4oufsaClihYh2CIyrlV14NSJwengU3JbgXpvyBkB0/szIY13K/+EjlqPQUgT1jOI10MGxcFfKSqAYxoASisazqOy2ISYUCiUxcOu+RsnP9bPbYkCPzIcDN3F7XFoo8Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709337741; c=relaxed/simple;
	bh=W4AhyqwXdIhFKajysCA9NrRA/h4FXqkehwZ4Lu2h3YE=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=fV1zfxP6vQNcAwZ93Mu2loKqBFyDFGX7eT5IpuF+Dsc+CLdJ3jTV5z1l2mvuTRtRXFMAkgEOpIPY4pUbKI8YnJ9MNhQEOV6qxbrNuoHlcUhBZ0Bnk+XbVE4SKs5yqm7iQMAbDOTNxFwmLdjHYcD4t18kZ//bKu2PUVPWL/027fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MJOE8Ook; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a445587b796so297766566b.1
        for <devicetree@vger.kernel.org>; Fri, 01 Mar 2024 16:02:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709337738; x=1709942538; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x9q9LijGyf/cQhLMHOPgLv8fKJnqDKu+0pSqK5rYNck=;
        b=MJOE8OokHddUdX9bb/zO146Y732oHVr8bAQuKEUfiof/ijwvbRaYKAklmw2ba/60ok
         Dy6ywHXw/CHQ3vzn4Xeu4w5a0rCljGNXwk455SwChaBzFTG1wRLHZQH5ESzggPmdbyal
         RP+FMQG0YF/DhbDeQIVI9O5d/eOV1tQ8MlA9Ixt6Hy4kh4Wrz6P+RAFWjb0blW9CWpnZ
         +RPdQcnIHJY4WWj8vtvRslc4zrvUEjFI9xZD6bP3sjimKvDvR4HyyFC6g15fg8t6n5rw
         xFMWkOMX+zouDDlC2kqzvQht2fdj1Pt20PsHnCXCNa6S8pYo+D3TaFikBO0sSiEG+bxs
         buSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709337738; x=1709942538;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x9q9LijGyf/cQhLMHOPgLv8fKJnqDKu+0pSqK5rYNck=;
        b=EkNHXUwkB6lj5KVC4kanDWYsNH1MmzZPHQJo62Dgqb2anvWrf20bJukNwrBtOhDhYP
         sE91xDvgwsuhjTrxPgJukRoqsIaaZqeNEDrdRi0fg/ESpzLY/2J8iqksi2WTHbiyDcv2
         wuthDnTYGvBFwEHeF4ZKVIABQ3KjjwdBqjk0COFrF1AN7KnJMJwtEWjEZMuPhTf53LPj
         pDefpfr1L9GHKwzM02ow5AXF8UM/+unf/zrC/lqlgo0kvGOtjtSgX69G+8BOvWGcrkGR
         0/bKR6oA2Ldg+Xwb1SM0Os+ZsYH//evULtQ7zFSt92a2+04gmOTHlLSEJzsrGPxKKB4B
         4WcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcq5xyELbZzZRrYI/pV2pfUDDbRvjx4KPNwiJZOG1WR06Dt/nOm4dmDTGCS9T4/BVBlL9iSuAQwvl4lxtdGEhi1V6cfxtCeZr/Ig==
X-Gm-Message-State: AOJu0YyPc3IvYVs2xqlSVEgSQ+8xa8+cv5srIJCddOnNpeVIshI//P+I
	hmc2MeGl/Xj4NOxDv6Qdamejz8LRpe8QhP9oSoGqvCiGvFaNgP+qrEuMhcW+rYg=
X-Google-Smtp-Source: AGHT+IE2RHF38QfSY2eqOTpOMQ1e8REw4SoS+NC5wenMyr06SEcYaAdFG2KRFZKCkYv2WFo9CZWHvg==
X-Received: by 2002:a17:906:7809:b0:a3f:d7ee:5fdc with SMTP id u9-20020a170906780900b00a3fd7ee5fdcmr2425423ejm.46.1709337738413;
        Fri, 01 Mar 2024 16:02:18 -0800 (PST)
Received: from [192.168.216.32] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id w25-20020a170906131900b00a44bd00ed4csm466451ejb.0.2024.03.01.16.02.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Mar 2024 16:02:18 -0800 (PST)
Message-ID: <4ac01428-1823-4d19-be83-6773eac062cd@linaro.org>
Date: Sat, 2 Mar 2024 01:02:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: defconfig: enable reset-gpio driver as module
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20240227142725.625561-1-krzysztof.kozlowski@linaro.org>
 <20240227142725.625561-3-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240227142725.625561-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27.02.2024 15:27, Krzysztof Kozlowski wrote:
> Qualcomm X1E80100-CRD board uses shared reset GPIOs for speakers: each
> pair out of four speakers share the GPIO.  Enable the reset-gpio driver
> which handles such case seamlessly.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

