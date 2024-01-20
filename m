Return-Path: <devicetree+bounces-33371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B215833220
	for <lists+devicetree@lfdr.de>; Sat, 20 Jan 2024 02:30:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9594283E48
	for <lists+devicetree@lfdr.de>; Sat, 20 Jan 2024 01:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6439D807;
	Sat, 20 Jan 2024 01:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SoRyJjGS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E2EA4A
	for <devicetree@vger.kernel.org>; Sat, 20 Jan 2024 01:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705714192; cv=none; b=iBlKah46lHNz70+h843zkNiR/K44fGUYKyWsOSWIPWpJZXgEvbnmV80cG5QLlLfJEEH0WuQ6tpaZ9KlFxoh+id219HuhztGIixxZkFtR9PUyzEvOXCDTMakbBV8DJ+bbhSVCBfMrwMwihdAa8wwMBdYhp1RGetFumcyQ3JGA93o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705714192; c=relaxed/simple;
	bh=PHM+PUZh1WEOtXdXYgb9b4DuZfeFk/IFh3obigtXf/s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dY0hdfTwnlaZVNxSU9qtR9f2McjZsLu2OI1SrUuFBSqounM7IVVP+Ujt1Mg3WfGM+PfzMi7YCtl0kx4o4+eUYIVcdyR+Smz+Oftg1gCRONYLkxOF1h3P+6YR6k+bNX7lAPVlzgPzEXP/RY+OiB/sqcPv8KHS/YVISbZOZ7XEwf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SoRyJjGS; arc=none smtp.client-ip=209.85.161.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-59938699589so681960eaf.3
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 17:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705714190; x=1706318990; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pOh+A6yoru/fud2VVMbdwCtFaTASmlRl4jFoamYCmps=;
        b=SoRyJjGScOXGXF32Kd5CgOw5znegmwpIlUAS+lGpOKe1um4FNHZo7T8fUtBkjlU0SS
         Pd6BF11rSmrCabxiQuTBJ7VSdTmKN/GfDef4RDTS8xYkflt/k8clDKxD5ZOt2v8ekKVU
         TOxZXzWTjcQmd14L7q70OFK0TLI5/9vSCpsRVx6uxjMWopTLfTSJjW3EPCn76UoAjFmV
         HhoURQzkDxVZJdkkQ7eNYxkOSoajA/wfilyPayPdj40Of4fjNLqSmHJi7CzyPjOut9Ii
         cEKSFOSxgAerQCxKyvmKU1NfL8cFhVpNi78KJszsjyZ41q7F8brLZBiP8THJQTmnPwic
         jGTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705714190; x=1706318990;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pOh+A6yoru/fud2VVMbdwCtFaTASmlRl4jFoamYCmps=;
        b=sNcMs3XRVgtMr9aAVycdzrqi7CelPRyOn23cwcFciIast5izeY4thUHEmOkm9S95Fa
         BsinvkQ6YzOJJtP8Snr1I7mEva3n4c4T6yCxmEBn/CiP29SIdqHmpirhyQSGbXiDWqTw
         v82E0YRPpsKsR+gzFe/a9N0e9qSxfcCG5plU4geasfeKClhoTCaPYDTNziQczLjreLcS
         BwApqHJQcOLZBXZADntFjK/MxxwypWT/Am2yUcbpDHHsQF8r7jW4v4IP0aLu7Kqk9iEw
         NN6LgBKeSNi2svtmcAWwD/zmLiMU6akIm6Yl8QWm4giLMcsXxMZdj7lS3UUFuiPF9OcY
         CfaA==
X-Gm-Message-State: AOJu0YxVZ4UKfbMko9ZZqgqWnJwspGaDQij7s9nnA1CIi+dozeJvQgHo
	hL4BZzOp1J+HhA2snQpOaf05H+MHad9iH/eWHf65kX1Tc3tGlnzt+grern0HfVw=
X-Google-Smtp-Source: AGHT+IHt3z8Smx+UFgzhFWWb0D1+mHBv4b6YDMYb6WfSq9zRCHIV7KOAlIiRHBVpMyVKR2LIuC/phw==
X-Received: by 2002:a4a:d885:0:b0:598:4255:1bde with SMTP id b5-20020a4ad885000000b0059842551bdemr514043oov.8.1705714189836;
        Fri, 19 Jan 2024 17:29:49 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id b5-20020a4aac85000000b005984163c66fsm3191494oon.7.2024.01.19.17.29.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 17:29:49 -0800 (PST)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 1/7] dt-bindings: clock: exynos850: Add PDMA clocks
Date: Fri, 19 Jan 2024 19:29:42 -0600
Message-Id: <20240120012948.8836-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240120012948.8836-1-semen.protsenko@linaro.org>
References: <20240120012948.8836-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add constants for Peripheral DMA (PDMA) clocks in CMU_CORE controller:
  - PDMA_ACLK: clock for PDMA0 (regular DMA)
  - SPDMA_ACLK: clock for PDMA1 (secure DMA)

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 include/dt-bindings/clock/exynos850.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/exynos850.h b/include/dt-bindings/clock/exynos850.h
index 3090e09c9a55..bc15108aa3c2 100644
--- a/include/dt-bindings/clock/exynos850.h
+++ b/include/dt-bindings/clock/exynos850.h
@@ -320,6 +320,8 @@
 #define CLK_GOUT_SSS_PCLK		12
 #define CLK_GOUT_GPIO_CORE_PCLK		13
 #define CLK_GOUT_SYSREG_CORE_PCLK	14
+#define CLK_GOUT_PDMA_CORE_ACLK		15
+#define CLK_GOUT_SPDMA_CORE_ACLK	16
 
 /* CMU_DPU */
 #define CLK_MOUT_DPU_USER		1
-- 
2.39.2


