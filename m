Return-Path: <devicetree+bounces-229500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF296BF8403
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 21:27:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8C173BA27B
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 19:27:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AE1234402F;
	Tue, 21 Oct 2025 19:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hIdZdCSZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C5F3351FDB
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 19:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761074835; cv=none; b=V0e1MoaSzX/7bqnbBiptLXPeVjWW7w9GTBHFbNzIe9T61NvbtE6c+DYW9KfsySHG9jtRkbRNtS7sLF53+fMx9y0Bm3Gc5WpiZ/OL69aHEhFkb2p47LPOrkeI2jLRV3P8YcVVnfutE8vRD3qj7yxnd7j+X7dWD7tRq/VmHADZVn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761074835; c=relaxed/simple;
	bh=sCX36mBUUD7UPbPD7/zGy00Jms3sN0alcNuZJLzWb5o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=TPWQ8QxxjTiahLLj6WPMRPhuQpqAmFCKXQBqvzhpTTtUrNMoV+TWgNpYwmid64nwamoYenuk0ykEaA5F5N1dfcVzjFMHVldiduIjf2U6ZAoDUfo4k+z/aXMS5QHK2u2RjUq6K4yMyFmmNHWob/9BCpI65DaDdeHObPtImvfM59o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hIdZdCSZ; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47116aaf345so6950705e9.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 12:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761074832; x=1761679632; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M2AwA2f/f6W+wFYqRdKOL2857kAZtGdLXYTnjc91Eh8=;
        b=hIdZdCSZodnhQJVNtzb8i5NWpR1bSKkvGlmAngh/xj09Pa8YvTs5FYf69of06kTgg1
         Ul1tb6keo2pwz/SMat5cztvuH3bn4q3jss1qg04pgXAkBwHsFmAATyCoIeo/LT0Pflic
         hHi1RIt1fvhzVTSNcW/EZRjOvO63yFNMd2q1aVV0ZjKMxTGTtDJpFJZ17jNZQdKBdWbY
         GdSzvj/vavI9j8jcMu7G5EdMHtaa51hEOyPNZ+gvMV0W9XorX0RZRWBhmN5/lNnppL/U
         S1NVvG0h4mvp4WE2GNdT2f5aDsCGgJSBF7Bgl3CvrtUsu1V3m/Q761fFv0RXOwvVnj0W
         av2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761074832; x=1761679632;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M2AwA2f/f6W+wFYqRdKOL2857kAZtGdLXYTnjc91Eh8=;
        b=R9QFpJ47my34ZVdLUtbHIwoHeKZehDy24R5Y5bFQCP+jKe5gMO+PWIuEjGQRYzBKIB
         bRyMvMBjUouGeZ73jpXjLMcO72nVaR7/movwsGcf6ndpvGTev7PHKS9o7l6VEC0lTvoV
         u4p5vChrfT45ukVwcg4PxqNq9pVWwGbgTGUEiuUfXeF9KAy/seqKehfdGN8cOspSlu1o
         JASeNdfleoTQPRU+4YPYvZgEYimyaH5mfGD5/zMvHorE778ehjLSxAtecncbYmO90wS7
         AO9C1iKB8aiFXCVqdPSzQVsXD42Drtsc48VcWlW0fgikN86DpMpDbxZsSGa5SUP6jSEp
         HtYA==
X-Forwarded-Encrypted: i=1; AJvYcCWZ8qkNJAd/g2bb40Ml/GB6HT9FH4J5jnT0nnZi5WAiY0h9u/UBR7fE//e8zOJ6Ceh7na9YNTdVgup3@vger.kernel.org
X-Gm-Message-State: AOJu0YzuSpUT+/yWhyr7gKFQIsAhsl96hZ3ggam3FTvg8+QXXmf/whd3
	3aLWknmHqQDMFDNHMNwzsQxaXV671r5LUNcBgX13X7GxOHrfvqGC+Hx2hNoiU+IBpFE=
X-Gm-Gg: ASbGnctEOKOpYSTqV/YpR5dJm+MzZVCAuspBUFqfGzxtWoI0yr/sPkLFGHrReTJsYP2
	YF1nBPvTSOO20KStDx93quek8K+vxG605QO86XJdvMvFyYsK3woesI2vvFpK+ELwRkCzwVjpGSJ
	yZfGXF4KT0eENruIK4yDInagruL7OOAJwMeGxeUoTq+pbMChCmPUB3D+QoQCQ/d6C28qsC2b8sb
	AWjLffLYqrWFDZ/O7rITL1tqiqbHDC3d9XsZuF7vrmUYVq7hUl0xkjCfRIFHVN7JbyEcjstLmOz
	xDOFa7zEdBnpms1GfHJqPcNXXoyu6sSzmfHVRa9ecZC3Gps/xZc9sPX3AyDIKAYc3Atm5eh0To8
	e/5EGbGXrLQvRFxqdhr4ojnbm87CBaQEGJE+XaIowKh8M0RzBZFU56UafEe8bK7dVx4Q6oCp+Fc
	LpeaapyGKSVlcth094
X-Google-Smtp-Source: AGHT+IEAsN4GLGZOi/gLAJB0fdHh2RkmlNERThaNChpJGeL/SOfJubwUVSTNSVXsVki9aW7gKT0ayw==
X-Received: by 2002:a05:600c:3b04:b0:471:12be:744 with SMTP id 5b1f17b1804b1-47117932dd5mr72625585e9.8.1761074831798;
        Tue, 21 Oct 2025 12:27:11 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475c42b48c9sm7839115e9.15.2025.10.21.12.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 12:27:11 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 kernel-team@android.com
In-Reply-To: <20251013-automatic-clocks-v1-5-72851ee00300@linaro.org>
References: <20251013-automatic-clocks-v1-0-72851ee00300@linaro.org>
 <20251013-automatic-clocks-v1-5-72851ee00300@linaro.org>
Subject: Re: (subset) [PATCH 5/9] arm64: dts: exynos: gs101: fix sysreg_apm
 reg property
Message-Id: <176107483030.33931.17680247324177119299.b4-ty@linaro.org>
Date: Tue, 21 Oct 2025 21:27:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Mon, 13 Oct 2025 21:51:34 +0100, Peter Griffin wrote:
> Both the start address and size are incorrect for the apm_sysreg DT
> node. Update to match the TRM (rather than how it was defined downstream).
> 
> 

Applied, thanks!

[5/9] arm64: dts: exynos: gs101: fix sysreg_apm reg property
      https://git.kernel.org/krzk/linux/c/4348c22a4f15dbef1314f1a353d7f053b24e9ace

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


