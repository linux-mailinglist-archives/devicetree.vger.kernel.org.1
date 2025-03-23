Return-Path: <devicetree+bounces-159942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8540A6D1A2
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:40:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5FFC616F20F
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:40:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D8B11E3DFD;
	Sun, 23 Mar 2025 22:39:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="evgXH92t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44E71DB127
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769576; cv=none; b=XRGJuos79y4PbC83hDdvK3LynvcnoRooRZohdQTFg1XXzGNKZ8NOoyf3dFbSepFvM2WsaQLtUZy0kVilq8LFQq5H1lDY9Je54bKHDbCnSgeboX0ow8tFoafb/ZGlGQp81uPmqG+OOI/A5p/gQc1JXdT8eCX/y/2gdbgn6a0gUeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769576; c=relaxed/simple;
	bh=vhmwcNLdq/vAk/57/nIwHgfUXmRE5veIwzqtkTfIDCM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z7ZGJcLIoHlHnKLAeMT0hd4gumlUbSYvQ0sNOoeP9LrSYW9Qfodf1rWBmbwnyDcVPqNC3WfEn3W2WikPfuHeXTAY7bVsS5/ypvNdAY4Lj6CnT5FuugDW7ZzaHZKTzPs9nQLHsKfEoaRcEzpVGoO6nMb3Wx5S7i8Rtrl6E7+9krI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=evgXH92t; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ac3fcf5ab0dso326550266b.3
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769570; x=1743374370; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UPaIY3x3VVrMkB4/G8kk/a/tWB9/OjPG56rBALdlvrQ=;
        b=evgXH92tqHyJLaExNh4ZZ8xmGgq54s0dUHli9+RWyVVeMQgxKwBPqgNUNz0NTbUKmt
         X4nhCb8UtjXIROlwBJrVveHFIKsHis4G5uEl1/7Acxh9QIiC6kQX7TJiZgX0p5diHZOV
         iJL0kLCMz5v5paf4P1xrwduIoXzK5eIpNYZDwQQsG4nCsRR8mZu8XLdMOUbz9SgpNut/
         sX90rblFd5gfW4jk0iinBQPRvGGsXH3u1AhRjMA331+a8JdABeHlrzOy7Mj+BV69FpGy
         47Az53jUg/1QoF2F+L0D+n+DDFucYPdV8DShGzY0JJiw203ZlWQQsZ6Z1sXAN6JjEx3r
         w/EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769570; x=1743374370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UPaIY3x3VVrMkB4/G8kk/a/tWB9/OjPG56rBALdlvrQ=;
        b=QCrmYypTSCQzfUJL5CFtrGnvYWCy7+jzQDWrVXhFthS/0vFo6NURVyxoGD/YeH8dyl
         metK2gJvtSyUzK1ku0GN8taoe1xTYCK82QhSTnqmh02ne/ArC2bl5tms3UcgPbhcigrA
         cClBhke38xk7BNzA4QcyHlshX7HOUy/S2yaniWq3mX5Uatf68EpSDV0gx5ImZXQn6+Xu
         QCfCCINONGMxqJa+bYLCg5dgdSpvvqU/zVhSeMySxEFuDrwYLJDnuudnOrHMCc/yfqM5
         9zcotBC13iEIBGFNAIhRCvn+qcxn/FFsE31gxXfOfvDW1JW5eQBDk/jXT418b6gSzceI
         xSkA==
X-Forwarded-Encrypted: i=1; AJvYcCVCArEcJnUWt7F6/DlZjruKiTZOa6mHeEePR55IHdsDpYXexCkC3KPSQxMhEsoR5NaGop8rTevh5uge@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0eTbZS9VORJCVJQ/dWyyDiEvwouvdjt8KTDbvsTW0ULzhNE6K
	WWZaqC7Rn42xxTPm1qw4Q60OToUjJ8cJePdeRDag0dlazR3BaCnPWFAqSLrJnds=
X-Gm-Gg: ASbGncu2KFTCB1eSOwn2+MopGExNsI4NIKno0/HX9HPLD4r6GWPyVdmdm8iuHl7Z3Fv
	Mr+bKvpmij8UDSyr5YV9jYHV4+ZYhc4D/TvNfroTxDLdZupcywpittAK/x0RX00XTit5hnZKqNK
	BDu1vc0QEpF/uZ+AXBaQ8bJTg7vWJZjNbvwujGih1MBrpTOtR0BTdDERku5O/cmzxrSRaMl16qh
	hRgeb8us/DrE9gVcIVERf/41HQaI5miRizenkSzw6XZX1rT8zsh2kBS8UQb4yxqOd6eAlYf7LLJ
	EAzQmCoXl1EnkvxwRumjeRKBynWAvJF4+/s8TagSfakkQ+1MEHr2wQ2OGCygvOtt6GRITuQNErg
	ZHhMql7AjBhDTSNmXwmXNBm9FrRJM
X-Google-Smtp-Source: AGHT+IFPXn5kuydsVZ5juxiG+97RkmMKn/3aV6ozY9UpbUvRFJV9i4K4wAS7EARyuWbOU8je237GtQ==
X-Received: by 2002:a17:907:7293:b0:abf:fb78:673a with SMTP id a640c23a62f3a-ac3f22b0fb0mr895769166b.29.1742769569876;
        Sun, 23 Mar 2025 15:39:29 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:29 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:27 +0000
Subject: [PATCH 11/34] defconfigs: rename CONFIG_MFD_SEC_CORE to
 CONFIG_MFD_SEC_I2C
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-11-d08943702707@linaro.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
In-Reply-To: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

We are adding support for Samsung PMICs that aren't using I2C and
therefore had to rename the Kconfig symbol.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm/configs/exynos_defconfig   | 2 +-
 arch/arm/configs/multi_v7_defconfig | 2 +-
 arch/arm/configs/pxa_defconfig      | 2 +-
 arch/arm64/configs/defconfig        | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/configs/exynos_defconfig b/arch/arm/configs/exynos_defconfig
index 7ad48fdda1dac69a4a9612eabb573729bed7b3a6..251f45be6c14af59263373f21b27b15f42ec7f61 100644
--- a/arch/arm/configs/exynos_defconfig
+++ b/arch/arm/configs/exynos_defconfig
@@ -167,7 +167,7 @@ CONFIG_MFD_MAX77686=y
 CONFIG_MFD_MAX77693=y
 CONFIG_MFD_MAX8997=y
 CONFIG_MFD_MAX8998=y
-CONFIG_MFD_SEC_CORE=y
+CONFIG_MFD_SEC_I2C=y
 CONFIG_MFD_STMPE=y
 CONFIG_STMPE_I2C=y
 CONFIG_MFD_TPS65090=y
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index ad037c175fdb0ec8601c9b3607aca0c0e5f3c145..7d06ac5369b1a2f325462f2cf5b54fe22061ca77 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -612,7 +612,7 @@ CONFIG_MFD_QCOM_RPM=y
 CONFIG_MFD_SPMI_PMIC=y
 CONFIG_MFD_RK8XX_I2C=y
 CONFIG_MFD_RN5T618=y
-CONFIG_MFD_SEC_CORE=y
+CONFIG_MFD_SEC_I2C=y
 CONFIG_MFD_STMPE=y
 CONFIG_MFD_PALMAS=y
 CONFIG_MFD_TPS65090=y
diff --git a/arch/arm/configs/pxa_defconfig b/arch/arm/configs/pxa_defconfig
index de0ac8f521d7612704ce327e9ac16ab9e999f3d3..064e79baf20da809c9ab1f1fa18282aaba11a41f 100644
--- a/arch/arm/configs/pxa_defconfig
+++ b/arch/arm/configs/pxa_defconfig
@@ -335,7 +335,7 @@ CONFIG_MFD_MAX77693=y
 CONFIG_MFD_MAX8907=m
 CONFIG_EZX_PCAP=y
 CONFIG_UCB1400_CORE=m
-CONFIG_MFD_SEC_CORE=y
+CONFIG_MFD_SEC_I2C=y
 CONFIG_MFD_PALMAS=y
 CONFIG_MFD_TPS65090=y
 CONFIG_MFD_TPS6586X=y
diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e8dfbe22db68d9aa24df5af0786a2eeb8f33bf3c..cc4dc330cfe82d11ca0c4c9ba8cac4b14decdeab 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -769,7 +769,7 @@ CONFIG_MFD_MT6397=y
 CONFIG_MFD_SPMI_PMIC=y
 CONFIG_MFD_RK8XX_I2C=y
 CONFIG_MFD_RK8XX_SPI=y
-CONFIG_MFD_SEC_CORE=y
+CONFIG_MFD_SEC_I2C=y
 CONFIG_MFD_SL28CPLD=y
 CONFIG_RZ_MTU3=y
 CONFIG_MFD_TI_AM335X_TSCADC=m

-- 
2.49.0.395.g12beb8f557-goog


