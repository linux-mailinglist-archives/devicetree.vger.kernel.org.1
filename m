Return-Path: <devicetree+bounces-176623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D975CAB4DC9
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 10:13:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7AB5C19E7355
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 08:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34C901F583D;
	Tue, 13 May 2025 08:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mpxSmPI1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0F11F4C8B
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 08:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747124034; cv=none; b=I3rS9jnlmNcDn22QBlN74R4pPza3MLXqdxi2cPfHLUUXzjNftlTgIwfE2xiq5YGLCLpKbVnIeGrDuNoJTXyFql/EHNFnWQWdtAHV0N5tv2nTyzRZdO0nNIzqNAwguOzqpViwxGmMG6ObrScenP88nuMEhYMSggKp6iarb/A+qgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747124034; c=relaxed/simple;
	bh=OMO7uyKqiGXSdbBTRpMsGiPhXfiWRanx24fEA05hC4E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=sA+9R8JEi04xU0fYnzdXYqmpsPFkBOBA7SY7adC1r/CFBXVabAUuvUTmaIAA1ZeqAGnFbFKERsJUOB8MLWswQVg6wQSv1ApS7YgxmBLxS5nbHQltXCP9L5K0ZcergxSLwbTAaH/hkP+wbY7tMlMQf/BjsI1vcxpHgtJwUiZWf2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mpxSmPI1; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-441c0d8eb3bso5155755e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 01:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747124031; x=1747728831; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gfD8KA5bfxaU+Q1NTIOmhw+vBh6gQYcxk5fcGmeOrhI=;
        b=mpxSmPI11h3EKfIiLQkaiAISjzIZ8szj+stMXWAYDNeF53nobikOaDUlLF3CkU1po4
         FYBbuCIvt20FF94FRmuSXuwTRggl2TtkQN+scQNPeJocCwJ8gvLZEVY6rcF6OfBLGMkR
         Hl+UCYzU/QAHhXjjSaard7f+AHGsQ0Hsb0sc1gmGcM10OXS2bZJdUnl+KsqFt2/oT+Vg
         V5z1GcxCQSU54G0NR0Hp4J2N7GrxwvC2rbkGqMPAvDANRLFsB0SuWt0RIA54g5xf76Zd
         wCXJ7YiZ7V8iKNiNpLwaKYDkwSAJhlkFM7/Uz4dZpfJspADBvSkqLsW7xC0CKXUXZ3hn
         a3QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747124031; x=1747728831;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gfD8KA5bfxaU+Q1NTIOmhw+vBh6gQYcxk5fcGmeOrhI=;
        b=b9d9WtdE/CU7hz2CFVtumf5Ossb//+/2XmIJQuC/KYBwM9ugLBgUdtStLiZmtJVsmd
         bc+mGPBpkbut0di1teW3Ok6iD1EWIGQ0zUjhq7H3sY6O/j/pyo1VC6oae7Vt/5Pv88UT
         cIrknr1YFNbRl+34B22fta1tGMfuUFF2y8sSV8wLDIVE66yICeH8rvdXiRXoPd6bseLB
         LJFFluB5UtLgcxFgFyZxOWOYXHm2LO4J5+Ig09OjPWtum7I6VXwIvDoWsruT9iv2MffS
         o9U0zdUhVXZNII8OxYvlmji8efciCb3ZKT22gJ+2pkdrpu0Nr55EuuBdzeqxwCLoWpKT
         jzmw==
X-Gm-Message-State: AOJu0YwcFdzKb5aOP0w14O5ELswiS2Bvc1lceTNgXmIJwPnCkI/atMXo
	F3cXnB4OTMDwMUEumNgce9IK18X2mOKIsF/s6Lk7Y+oZs/vNxElEChQV1xyDm/8=
X-Gm-Gg: ASbGncs6XhNc0PTDc1rGPWTdwiFAKqmsjqML8d2uNE/Y0OfqoziKTzG3CYh+dvP2rsY
	8JNBosAISMMZpPcBcINjXUiaP+7yUkg3XfQwn4CHjx0cAJp49O2fRztZfruSW8YbfrUSbBlvG8q
	wyaVVMuXNQHFXzjNQqg1WhtqobX+HAO9MnPAhNogMLApjofAcnM9iWngtKGN7NJ7gZjR05UXzp6
	EQY8mLuty515K3ESQeyNidNgfZZI+T891Q/n11jl0f/jytQZEazWZ7yOgwyOb53b3ulqEuXF8go
	X4AEPNGWgGvUMZl5QH0t0qzpdRnETZJ4cRtuFjluEMeAN167GfvAr8FNsLfYTonIV0SbZRl9yYG
	iaSDqs+YCKeX+6NgFJA==
X-Google-Smtp-Source: AGHT+IHI0BUvRWvY4Y2/8bHQXKFDvKBHupqbi0BQODrVBg+55fcuB5CxUmKYcrieaLRvHUYS/EkBCg==
X-Received: by 2002:a05:600c:3490:b0:439:9b3f:2dd9 with SMTP id 5b1f17b1804b1-442d6ddd6a8mr47990065e9.7.1747124030617;
        Tue, 13 May 2025 01:13:50 -0700 (PDT)
Received: from [10.61.0.48] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442d687bdc0sm155170805e9.39.2025.05.13.01.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 01:13:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 tudor.ambarus@linaro.org, andre.draszik@linaro.org, willmcvicker@google.com, 
 kernel-team@android.com
In-Reply-To: <20250506-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v4-0-9f64a2657316@linaro.org>
References: <20250506-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v4-0-9f64a2657316@linaro.org>
Subject: Re: [PATCH v4 0/5] Fix gs101 CPU hotplug support
Message-Id: <174712402896.10876.6908975403195941350.b4-ty@linaro.org>
Date: Tue, 13 May 2025 10:13:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Tue, 06 May 2025 21:57:26 +0100, Peter Griffin wrote:
> As part of an effort to make suspend to RAM functional upstream on
> Pixel 6 I noticed that CPU hotplug leads to a system hang.
> 
> After debugging and comparing with downstream drivers it became clear
> that some extra register writes are required to make CPU hotplug
> functional on these older devices which use a el3mon firmware.
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: soc: google: Add gs101-pmu-intr-gen binding documentation
      https://git.kernel.org/krzk/linux/c/0475b0d8a1e0f80a47536dfb19c28dc4bb6adc05
[2/5] dt-bindings: soc: samsung: exynos-pmu: gs101: add google,pmu-intr-gen phandle
      https://git.kernel.org/krzk/linux/c/83b66cdb5d5b6aa4ed1f085b3b2f917af0c2890b
[3/5] MAINTAINERS: Add google,gs101-pmu-intr-gen.yaml binding file
      https://git.kernel.org/krzk/linux/c/20adeaca8bc6a084f2610e7c89a8601c9904a0e2
[4/5] arm64: dts: exynos: gs101: add pmu-intr-gen syscon node
      https://git.kernel.org/krzk/linux/c/aaf02428fdd50b818c77644bc0b8a0b282ce8ea4
[5/5] soc: samsung: exynos-pmu: enable CPU hotplug support for gs101
      https://git.kernel.org/krzk/linux/c/598995027b9181ada81789bf01fb8ef30d93c9dc

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


