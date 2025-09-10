Return-Path: <devicetree+bounces-215341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED12B512D4
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:41:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E19B564218
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 09:41:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 279383148D0;
	Wed, 10 Sep 2025 09:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lHSKzCSZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED5F3064AD
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757497276; cv=none; b=VBKIwupUNWQFN2/Fs414l89KlSrxHYERCSzB1+Xne7pnlUkUaY8DQX+9HVZz20kCbQGfbjL1dZ/UXSU32U9GK4Tr/TGNi0rZ05SFxw2uz9D1L52SMhA5FKO4EnSNLqFlVmZpFcPsWWwkgHjjdvm20wLLJNFoyBJ2ZYgvy93f9jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757497276; c=relaxed/simple;
	bh=iT6a/zPgyBzTF0XoggB8KlW7bpDBsu9wFGAHxlhXv7U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=kRV7DXq5Z/ZiWz8+M6i1O/g8BgyihChs6oF+SbeLGqzXyQjkCRMGFi0edtdDvOgJDiV34iYMwPNngXLdAeO0+/bgFZ/fVUCB5HeGE2Ug5t1PGXtjFDyMQR7SHPB37O7vD5aCIeX8K9hFXTA4Ml17Z6Wik+71mnkpHd1BkGNAgVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lHSKzCSZ; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6217d0a194eso950655a12.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 02:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757497273; x=1758102073; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0SOuA/g/nVXdKYjh7EclBkYe4s8OIpHOm/5rpv34JIc=;
        b=lHSKzCSZoBSfplgHs2b1zbxD7ew72xpOmcWdm0omUOP7VhOk6JD8xrSK4504pKtvQK
         7BFHNwxgoN3uPVLYlJBh9TuwojPstdzFMS+Mlv8zSHSNZmtTUM+8R1z9jdE/xmJNuH0t
         JjIFlWQzwUKvqjA6e3w0l9FuNahuo33I8GpCedoU8odUAK36CQYI/pa5lNEFXUKHkb9K
         J2Gx9jr+eAY9AG/8aJbmDWM/+k0TnkBLKi8hIh7XjvibM130HrsSlmJ0riHH0pkSyqT1
         FPLMOp0M7JppOPy/x+HogbbghPr/6fyVnUeXHuyBL7ifVRnQn7MVacBEq9rgsHIuflLY
         NjJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757497273; x=1758102073;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0SOuA/g/nVXdKYjh7EclBkYe4s8OIpHOm/5rpv34JIc=;
        b=VpBRWPUuV+JCsSFf4fX7tZIokX8WdN1lsv2zTHnh8TvJNL7Zj3Q/KaBkFGokdJwUk1
         HVqyyc6IB3+4YQxGoiVdtTqDf9MT89cNz/oRs4rS6WrrvovMZEemPdTwuynkvlkrp7EZ
         wKKkxGGNbvCG6gEY6CpGBC1hyTHSOT/I6W2GQaiYgDyMsw2s1Oz58mYbpH9qPKcbgA1G
         b8GAsAVYpyUG3NUNALs5Zx1ry9eMw0uQ8xPMEkHoNI+qHsF3SizCjFPjedgtYedCRL0P
         x671u7I9SmYdDxCr8qORmMwAJZdMrS2yRe4bfyZsXabDtMGVntPgkOyKZktVPrIL2Fma
         pNIA==
X-Forwarded-Encrypted: i=1; AJvYcCXoWkVmKSp8KSaE72zvnWZytzX1Ni2ZFX9BQtN+3Hrqz7AXEtf5zSZoxf4glOH9E+22MI2MNuSPP+Ol@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2YtzM5omXxPPheOC8VDfEYtCrgfwqNIYzk7cV7yeOKyfFzwAV
	D4OEUG+P07UEqKOhvi5a2aAa2TAdvdfPHiKKIjmib6WSZW4l/eFFXyj1Kw4qYxjz6m0=
X-Gm-Gg: ASbGncvW57wapHfOrP58USFI7VHcorVL6QqYuy+Pvo1F5X08gUnKSv+/5E2Xn8E0591
	E6Pih8Pr/4JU0YQtj2D+17rlp507pPhXrMid+vDVMtZjT15ET/gftiYVtCM7q2dsXsbQbkKuF5Q
	JBe3a659CpDxSsGD5CxAZ0Y51w9r6hWx7FKpA0Y94qsipUh186tY5jZU5z1JBxTif/bQE8XZu8x
	8/qVPNFRI7JINIyAhV7Ye/qwAQr3NNM0IjPFri3J9VdqpXEFhdPmaBSDWuTX4YciiKIYnHQLNK4
	e7sEcJgDijIbKxhDwwfTuKz9Hfbzx/bpgSaCGexQeRctTrezIFKRenNl3YrrvhpKIbXQMoOM3Ho
	X1emMyX3IH8ArwXL0RdIQA2Kk7xdwDQFHZ0w2TYs=
X-Google-Smtp-Source: AGHT+IFFimeDDYyh9wXdVWxN7z2S4of6Ed5oLlealg+J5WJbf9k2XtQ+Zl7cp5trMu0jBLQkBELkhw==
X-Received: by 2002:a05:6402:325b:b0:62d:c7b9:b149 with SMTP id 4fb4d7f45d1cf-62dc7b9b348mr387259a12.2.1757497273537;
        Wed, 10 Sep 2025 02:41:13 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62c01bdb7e9sm3021590a12.48.2025.09.10.02.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 02:41:12 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Dmitry Osipenko <digetx@gmail.com>, 
 Aaron Kling <webgeek1234@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-tegra@vger.kernel.org, linux-pm@vger.kernel.org
In-Reply-To: <20250906-t210-actmon-v3-2-1403365d571e@gmail.com>
References: <20250906-t210-actmon-v3-0-1403365d571e@gmail.com>
 <20250906-t210-actmon-v3-2-1403365d571e@gmail.com>
Subject: Re: (subset) [PATCH v3 2/9] dt-bindings: memory: tegra210: emc:
 Document OPP table and interconnect
Message-Id: <175749727162.29308.12636309161261093675.b4-ty@linaro.org>
Date: Wed, 10 Sep 2025 11:41:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 06 Sep 2025 15:16:52 -0500, Aaron Kling wrote:
> These are needed for dynamic frequency scaling of the EMC controller.
> 
> 

Applied, thanks!

[2/9] dt-bindings: memory: tegra210: emc: Document OPP table and interconnect
      https://git.kernel.org/krzk/linux-mem-ctrl/c/550faad18505aac40a1551a5b467e0a63bf2d639

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


