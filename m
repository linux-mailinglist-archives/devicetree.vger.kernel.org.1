Return-Path: <devicetree+bounces-38952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0270084AF99
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 09:07:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 295F01C24129
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 08:07:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D44312BE82;
	Tue,  6 Feb 2024 08:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sWq7Fn6a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DE212B16D
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 08:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707206724; cv=none; b=qJjYBxyJvlWknmOvEv85PXBUQSjAgHfIxxRvmn4Ec0aya9uL3I5pje6NJf2HsPHRVAn225YjKF0lqXnpKjm12ee/Il5bWvV4OB/UirytkRVRfEP8G85emOV0/+EGP2BMNJ99iMmrgqOlhTPbTw6FLvO5AR507V1SNE3jKBo6VTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707206724; c=relaxed/simple;
	bh=Um60JkQzUBGSC64kTMW6YHQTuqTRStEzoO7ef+w5i3g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=eLB7jKutT9Fo2l7grlZypUyQ/kAvvqNHbnd2EDkEOvtfz25sSoIS0PvJ/jKLtnN84vBVMlnnSoMvBIU0lhMwFzlkC5HJF477aR2P7PrEtycMoSRKyHfzgo2WkubY9dFx7Ydu7GPFY/0elZyfjmnO31WoecrcnhT+G6tHQ6SrECU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sWq7Fn6a; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-40fe2d3d5a9so2393005e9.0
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 00:05:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707206720; x=1707811520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8/5O9hY7fbi4192+EtrSax1khEqAmyKf9Dz+7tj6y+c=;
        b=sWq7Fn6aRDJoMuBXSiAJSNMVbHdBjYuyUNiSYfeXW3pnCWabSCBqK/AMh45fppIHxw
         CbbV9Q+qMl61symnDksFeShlqdeN4YNe5aZQoTFoy6S9hKstfrCs7RObTKZel+t2G9GE
         CJpg2Ehz0oAaHoMoTWya8Pk5Lpxw3uvpW0znb4WQ7/log/FvZqj3vtY1SiXTpWQ053ub
         my61Lkg7Qyx0hGcbwmEmkfd9MhKTmICXKtkkCnUc/NpCmS7N0KbBXW9IsWY0d9k147w9
         34OSZko7jOfiPfKYl4s8T6HWddBk6dLJQGKyXzKc7HvcePIzgFwPo/IL5++sXHxgBbmj
         xjqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707206720; x=1707811520;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8/5O9hY7fbi4192+EtrSax1khEqAmyKf9Dz+7tj6y+c=;
        b=X5yV/SAPRU7arSK+Jz84zzvYcOntsPiqHVVb30Y6ccA2tRJKVzpBsJCGAy62IiaVyb
         Ht/PZS6tB/s9Ae1js13A8ToX9je3N+h+ljuXoOcKekkE1FcgJMO0eaHifhI74fXfnRew
         ojdcWT7bQIYJ2/eoCu/Pv4cgEqM8D0Cj5dqKCqn28dCZOJQAIsdhEdW690j5QTq7W+q3
         SlVbNvKAwc3nnKjtewYrjf/h10GIdgthPfEv6oiNktGp+bqbNzqVPE0hQ2Qv9CDeLchq
         cVkU/s2BavgF5Qa3AOxd4TPoYKQPpJ69Ja63bCviyf+1NkkJIfn1XJYMXh4vdLUsA3rX
         FeIw==
X-Gm-Message-State: AOJu0Yw2kJMIJ5o4O8QipR56Ee3aUlpWeLxBFtfdVWbT755eqDgRtN46
	ikecbcJpTpLXTPToW20OcbVO9Az0bBqJFhz0Pg2JGqIOYF5x1l3+oVnVbLxn3Dk=
X-Google-Smtp-Source: AGHT+IGKG+VSFIDgMfRKAK9AQt7FxNAXWRFHa1rOz7Jlm0XieP63tB7kyE+GfcKivT3w26JT/H8zfw==
X-Received: by 2002:a05:600c:3543:b0:40f:c1fc:e5b6 with SMTP id i3-20020a05600c354300b0040fc1fce5b6mr985429wmq.38.1707206720460;
        Tue, 06 Feb 2024 00:05:20 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUe2geaP+oOuiQq06DsJip5NUAjRyW2c5AmrzJdWbWmgqpiGz4B9lE4wLFq7BkQBvB6vfZPHDyjboN9/NH5vsJTCBaShQquJYv2PO1Osc6C9oKYH8yILcudw/fby9uHBL8do7bXOUoEC4zjtZgQ2ar5lbBBfMqxDNfgdXNSmaJURzAc938DAvXXBBcRqLyk7pnJVWYBM4Qie93K4nc9gnkDswT3pPMFCXyfp4Acgw0dS6GoykYRFLUzirYYhgdh9j6k6Ih/G70yi4N5WfvL
Received: from [127.0.1.1] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id fa13-20020a05600c518d00b0040fb03f803esm1101405wmb.24.2024.02.06.00.05.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 00:05:20 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240201183025.14566-1-semen.protsenko@linaro.org>
References: <20240201183025.14566-1-semen.protsenko@linaro.org>
Subject: Re: [PATCH v3] arm64: dts: exynos: Add SPI nodes for Exynos850
Message-Id: <170720671934.8244.1763443195474086978.b4-ty@linaro.org>
Date: Tue, 06 Feb 2024 09:05:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Thu, 01 Feb 2024 12:30:25 -0600, Sam Protsenko wrote:
> Some USI blocks can be configured as SPI controllers. Add corresponding
> SPI nodes to Exynos850 SoC device tree.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos: Add SPI nodes for Exynos850
      https://git.kernel.org/krzk/linux/c/2ef4cddd31950f563b5642e34d8fa38ad2352ef0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


