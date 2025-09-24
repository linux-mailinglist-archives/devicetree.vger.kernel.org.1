Return-Path: <devicetree+bounces-220800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E0FB9A81C
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 17:12:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF87D3AAE0F
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 15:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44EBE30E859;
	Wed, 24 Sep 2025 15:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NnQ7WPoh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA2130C617
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 15:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758726678; cv=none; b=S3ObtkY0zRRsUMBMEf2vqdqZXiDcBMc6MBT9azJWjByqia+jOcFP/vu6n8cwaA8bbVIrrZpSuzTVzyZL52VIWsKu+vLYaw3qRmHtCDl4hE5l9bMBlu9/mrG9bs7dewuG4hhzD5dEfBCGTpBPHDtbH7wLCJ5UGHLRphpguT7kO88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758726678; c=relaxed/simple;
	bh=xIpVlqe4DgqHRCmW3A7H3ri8twq/hpgQwg/JQ3/NwCA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UPngzBbBvfXuAc9mm2ykS6FpvUb47zyhS3bkIY9/PHlRBHUgSjAekVtKsEy+zEmjF/1rLuR8d2iHk7+UHM/S2E21WIXnmFAh6P+kj9JMP2gRUz3AveY9SvkzDzzeXx+IEpsZNBpha7K2is122AtdII2/wblgq7Amw6hW34hDa3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NnQ7WPoh; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-46e1cf9fbe6so23581485e9.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 08:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758726674; x=1759331474; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5s4FpMZhs2JDSa9c1gCTflWw3s59360Z3ANCY77Ti6w=;
        b=NnQ7WPohdgVlptg3OytPDzjTtCLALbezoa8X2iyQsY+kE6LXXKjgKqzFkfIvmNcN6W
         OtPSwxoQnvjVZS+iJboMKlxSTg58ytl2JmPI8kbgYtEjX5FpqiM+KThg1r6g9KPpHFUY
         sdtmuvmXpKmr6sHOQ0OKCIRIclo62cnJa39ppPMzJs9Aokd90KjsyR1fs07hqXmBaafK
         XR/MMeYP7c48WD0WPWE668HuoBoraGSzkBS3Qi/T778Pa4EiV76CzHJWMOZdWD+1q08N
         ysZueqek0FqjoFQLyV9RGzGiYFQZfchEksjzwHbTsWDlrA6mbHRG1vPtuNvBspMFXJsm
         HlNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758726674; x=1759331474;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5s4FpMZhs2JDSa9c1gCTflWw3s59360Z3ANCY77Ti6w=;
        b=ZFdgeD9AJKFUjl2uzcz1xEFsY4eg4cyeAWMcmHJe4p50+nLgrxQ7z3SfcIe52SmrEH
         VCxfOV4XiaZ9olwK1eyGjD1F9aJSP1VdpEKOMhcucEnzuamxCSXvXg1N9R6SaV9yEG+U
         31dpLzzFXm7nywJtyXihwKQXvmoGUnwwARUZ6ctQXjqK0qGie+PEghyPUmau+bD8CKSh
         SNUFVFIgU9qENozpRLWQa48tdii4iPTYV46XSuTHO//kC7tLP71maF1iYx1Xlm9FKejv
         u3zP48bGj/kKPHH3r9m2j4LaVix6FTtl3D+QDJ2dwcOADzuolXDGWviYr3pJ32B+twHt
         FNGw==
X-Forwarded-Encrypted: i=1; AJvYcCUGOWINZDtiO0Q4k5RSSfqcB0AckUCzTJhjZEaimsWZAvJmpIcNOtZ9/JS/0S76W5pW4mtyev6Rnzwz@vger.kernel.org
X-Gm-Message-State: AOJu0Yxfaki8aTgi6FY9A/WTEHKDQup9vZatXT7VlGT/91o27SypTLVd
	sYGlUK+0uuTRN/BOvG4f/70GGC1BivqwXIRJSaDVPgB9OouVU/NgWOGMM+CzuZGWLdY=
X-Gm-Gg: ASbGncsT9LyFcM3iTRoUrnSd0VMNy3rJ2SYWHtrPcyUiyNgLkATpauCCUhhZ6mZqoqe
	ZStwZ7S7vEsyDd5ly4A8Vd7CWJHP9WbhQNDw1UUnpfbZb6A+8wht4N11CXTTkqreCwgKT3lzUi2
	NVU+fafTU9IuVHpe98TPVgckFL/JQ0/HsgbcDF7GVJYpAYxbiG8XyD020hCBeEObmhLtQAbWXQ+
	LwiF5V/N5trvo/dGUZ5bP94t6JyLJhZshtoCndl+E5bTEHeeQbA1LhJNCE23FG4YK5g3IfSByPd
	Xf+1oWcHpuetU66CNMgC+mvGmzYY36Xf1puwQ8Z73OXpdfl3/f5hBLDigYRM8IlTW6L701TeNhT
	8be0qISsjCQ78dyxxmo2WMHJHraujXY8Rfxpfr6Ie0ISR+pN+onfafJ8DX7RddvCb549TsBY5vF
	I=
X-Google-Smtp-Source: AGHT+IHqxep/cc4oLyuE3HkDZXgTyzUFzuxNas67CCOIgFLvhkPXSKwzO0M1vA4oarAwjHeMAdt19w==
X-Received: by 2002:a05:600c:46cc:b0:45d:7d88:edcd with SMTP id 5b1f17b1804b1-46e32a030cbmr2096795e9.30.1758726673765;
        Wed, 24 Sep 2025 08:11:13 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2a7c8531sm36045145e9.0.2025.09.24.08.11.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 08:11:13 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 24 Sep 2025 15:11:04 +0000
Subject: [PATCH v5 5/5] arm64: defconfig: enable Exynos ACPM clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-acpm-clk-v5-5-4cca1fadd00d@linaro.org>
References: <20250924-acpm-clk-v5-0-4cca1fadd00d@linaro.org>
In-Reply-To: <20250924-acpm-clk-v5-0-4cca1fadd00d@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758726668; l=946;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=xIpVlqe4DgqHRCmW3A7H3ri8twq/hpgQwg/JQ3/NwCA=;
 b=T1W9QO6+wC3/3UAC8KME30JBVVpkIcd/QWetlJFmV0a29DJ0ch+9QIyJk/3CeLRIN/rq+eDDL
 Wp7i7Gau7g5C0/rIp8NH9P+T+1wyVZVtps9in7VOZIRgtRa7ujunkW0
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Enable the Exynos ACPM clocks driver. Samsung Exynos platforms
implement ACPM to provide support for clock configuration, PMIC
and temperature sensors.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org> # on gs101-oriole
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e3a2d37bd10423b028f59dc40d6e8ee1c610d6b8..646097e94efe7f1a18fb59d5b6dfc6268be91383 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1458,6 +1458,7 @@ CONFIG_CLK_GFM_LPASS_SM8250=m
 CONFIG_SM_VIDEOCC_8450=m
 CONFIG_CLK_RCAR_USB2_CLOCK_SEL=y
 CONFIG_CLK_RENESAS_VBATTB=m
+CONFIG_EXYNOS_ACPM_CLK=m
 CONFIG_CLK_SOPHGO_CV1800=y
 CONFIG_HWSPINLOCK=y
 CONFIG_HWSPINLOCK_OMAP=m

-- 
2.51.0.536.g15c5d4f767-goog


