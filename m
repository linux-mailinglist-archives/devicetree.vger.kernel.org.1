Return-Path: <devicetree+bounces-45684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5099C862B77
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 17:10:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A8A7281475
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 16:10:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7571F175B1;
	Sun, 25 Feb 2024 16:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MbJHa2gx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF65175BE
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 16:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708877454; cv=none; b=fPEJw0KTSxypKLHL9m3w3xCyslZI35Q9leg1pMZWa3JBFx2ZmgvvAlqvMsO+i3skICxLT+10MVn7Xo3a0/zdEDmwlMXpZqYtiElfFoY9ZCUWrh9lV6GMoY9amZiEomeyXBX9fIVxt5F2Tg9XwsiTzjMIhn/Nvle5nHV09ys0x1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708877454; c=relaxed/simple;
	bh=luqumiOYHe0YL8m3bzkjGWav4F4qaMkUn3HD+dcfHno=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ldSDEklf5UGBjjv0ojbrk+wyv9XzPbDCgs0Mg/KphNHfTHyB6DyV6apAHDQBSqqiZgIUgbj6YL14QG6gdaHuVJ3p1G4KZu1+EG0NVwjJjvTOodckw3Pk/LeFApNvBaWvgnA+tmbqotifL53tlNNLA3puk5Ukr+c35DFtM2Zi7qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MbJHa2gx; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2d21cdbc85bso37862791fa.2
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 08:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708877451; x=1709482251; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/aWIzeSndpV/EM9Pw+LqSurfkwfAu0VjRDqWKktMbdI=;
        b=MbJHa2gxisi8ZiZIaBo6jR49EGveha1DPX3/tZ8DCjKX7KcV6223SlX8ipmMLqkenJ
         /WfxHPNsoUgsmSPDf7fv/Pj3O7h/ppXPYuu5BeFXsTVj0vUEq09Vi+ehU8Mu7dNBqdpt
         mx0bLmkMKgy62O4VBPss7P+El3b2ithoyP6qr7NXvUsNUh1uFWGM8bh19ZeqjyGY7Yuh
         lOw6lI1s2QrwvRSJ93NtywdxarHHusvCKeVe8wY4V/UdSbeYVLq4ZZddXJV5cFCgpfp9
         9pQaEEacBN8C1bZ2816HugbocZsucfChIGRTH+lCrmwcbie2ovHGLwM9/GuK/3FTKg+S
         +sGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708877451; x=1709482251;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/aWIzeSndpV/EM9Pw+LqSurfkwfAu0VjRDqWKktMbdI=;
        b=BjTzq84TrXjXCxFyWoClQ1mXxGh502GUsv/2X3+CJlG6ANYHp1W8wF6IUuOaTjwPUd
         Y9Wt07TOB8t8SgxE6GXY6X/Tp3bBf75ABMnrFAq/EYCBrr+HD1km+E6FCMxqbV3y9Mft
         7687m6bJtUDyfPsedxP4Ol9ge8lh4o/6T6FF5dLHbogOD2BI45yZsply+XVdIAY34AWj
         2baS4JoVB1O3dLfandLOZDyvkarppuGhZcV3lCAotbDnz55uAQeCDtFnLx7MVz8JOPOg
         FG4mpoPQDXUKw9chLG5vfQJvHgMY2dnH+m+4lC8E/5wOXju2+shfQdMqQAjEL4kDfCvJ
         8iUA==
X-Forwarded-Encrypted: i=1; AJvYcCUr5tqYbM7CdBQ57PUIvqcRHvGTWz/NC42Yt7QrDK/oPlzFrTxNVAoCpsJMAU3fS4TSrrnd2womoFBmpw0rcmDX7rcPwzhi1dUF0w==
X-Gm-Message-State: AOJu0YxGcWTeWyYIsAZ0MGbLE+pvlMlRhqnvpispCAzBWRDzVmBx/DWY
	qmcQEaO/4TswPv5xya3hTh3cMMCPMVGd0Hm6fgA7hAJMK6+cjCTlkL6U+uJMMSY=
X-Google-Smtp-Source: AGHT+IFoEJdAQ2LRJRMkWthTKYIaeFnY9O+OOfqYWxI/j5luvbJLjWNP2gFDQ3N4JSECfTVMRbkGtg==
X-Received: by 2002:a2e:8947:0:b0:2d2:4d0b:5bbf with SMTP id b7-20020a2e8947000000b002d24d0b5bbfmr2715823ljk.22.1708877450730;
        Sun, 25 Feb 2024 08:10:50 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id n21-20020a2e7215000000b002d2697570fcsm579184ljc.93.2024.02.25.08.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 08:10:50 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, 
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240224202053.25313-2-semen.protsenko@linaro.org>
References: <20240224202053.25313-1-semen.protsenko@linaro.org>
 <20240224202053.25313-2-semen.protsenko@linaro.org>
Subject: Re: (subset) [PATCH v3 01/15] dt-bindings: clock: exynos850: Add
 CMU_CPUCLK0 and CMU_CPUCL1
Message-Id: <170887744864.215710.16887740186318953401.b4-ty@linaro.org>
Date: Sun, 25 Feb 2024 17:10:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Sat, 24 Feb 2024 14:20:39 -0600, Sam Protsenko wrote:
> Document CPU clock management unit compatibles and add corresponding
> clock indices. Exynos850 has two CPU clusters (CL0 and CL1), each
> containing 4 Cortex-A55 cores. CPU PLLs are generating main CPU clocks
> for each cluster, and there are alternate ("switch") clocks that can be
> used temporarily while re-configuring the PLL for the new rate. ACLK,
> ATCLK, PCLKDBG and PERIPHCLK clocks are driving corresponding buses.
> CLK_CLUSTERx_SCLK are actual leaf CPU clocks and should be used to
> change CPU rates. Also some CoreSight clocks can be derived from
> DBG_USER (debug clock).
> 
> [...]

Applied, thanks!

[01/15] dt-bindings: clock: exynos850: Add CMU_CPUCLK0 and CMU_CPUCL1
        https://git.kernel.org/krzk/linux/c/76dedb9c0bb3cf3c6d639d043d7ecc98816053cc

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


