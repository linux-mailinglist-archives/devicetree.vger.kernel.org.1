Return-Path: <devicetree+bounces-146275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F18A33FDC
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 14:05:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B9953AB3EB
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 13:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82F43221720;
	Thu, 13 Feb 2025 13:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HQDEeelf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A243C25777
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 13:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739451923; cv=none; b=WG9+pHU8EgUKXcPfZWJsWyXvoruKRE0zcXkB3YQyXdDInpo0Zb8W5ZD+eDw2plt2JfVjVQVdWs+r8AzXmkqIc8T+c0o6j1lS5PHV7yF45p+wVSL3Coi7dsnFuCooDP7d6pPOKI2wLRWd4b/QdVeqFr8/FZlF8czYFuOOdEPVhVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739451923; c=relaxed/simple;
	bh=mxio+qKZ0oCarMDdKVLWSkQ5r9o/ZU/FWiQSXWeFPIk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MiYR7ppev6HMlcE19OX+RaBTtTdW5FSl+zD50SmH+8udSZB+7Jd+gJTqUfCKonnPB/tr1eyW4fAZE4pKwL3Ios1GhKLaobBfOg+9I7dU47rgAiODzD6DPFTeafO/c2L+QiAGkVgBG9dNU4mcp1Kmt3otutwVOQhZ3X+hHLYQwBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HQDEeelf; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43963935585so5105625e9.0
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 05:05:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739451918; x=1740056718; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zHOUQzUPyOdT3w4jRKuGIg3i9ApsudVpLcIIKx7XFPI=;
        b=HQDEeelf+j/E4ptkdMLkkstJuvqV1DKHDRsXonj6R2YCHoao753LThTulU4siSq00i
         dCd2C/TRnMyIq8PVbnArynpw2gnQUHmLwtGfFRx4uqcKSlzYJfZXyLMRoTe88ksOokT6
         h4/5R1FRWmMuyUB2K7hGuuu8hNxTfKq99BEKnsduDEt2k+WlHNQ0DmEZ1gGWg/L+UrAV
         cvbYy4Mf6fRS6flVjZb+VwAdOq+9k5iLfsMTuoDsb+51SsY1okdOs/6OoJlWdW4n1SRk
         InoIrhk3iecG/u/2hOsJVsAp8jA+b85D3ftwvUYQ5TsCydwRmYQOeLXDUc7muogzdV//
         WelA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739451918; x=1740056718;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zHOUQzUPyOdT3w4jRKuGIg3i9ApsudVpLcIIKx7XFPI=;
        b=P81LwnwJk9sChZy7hVE2Q1j1H4DveHVkTGoP0wduUwcU6oDR+rVDh5Y9MKpRaCvURY
         X52V8VN61pb4ASlGOeNviNKxIIYdVoY15nGgdjOBv9GImlxL1w9uXHiB8dbwDJld1h6Y
         dggy8FgTEFJhtJd5UXllBvPVuKVA/omq3i7gqwqSYMFuHLR449zFsP1V3SHjax/wY8Hq
         GITDXddACFGvNPk3ZkXORZR9L4MR/ze2Mi1ivNzI/B9kKY5uni10DLJwCkVbOWPXqFvc
         Etc3MONQVud/jCZjE3A+6GEQc5sKvtwka0E+Xc7CNlTsN2mpwly1yktNW7Qh2pxNLTeP
         rIsA==
X-Forwarded-Encrypted: i=1; AJvYcCXdwudt20c4FgVTrDRSIbP0xuVzyDNrQr8/AGEk/pNxu8XvGQ2pp3NXqWTq4MCZNXIBR3NQjmxHXakx@vger.kernel.org
X-Gm-Message-State: AOJu0YyCgCy4eiRy5zjsS5GT3HC2r55Wwo1ryT83fBd7cPt7Xfatvy47
	eIR7MZ/KlHQ+6+DrTM4cJF45MCCLxF8bDMuUMlv/5LPUsKl8TJA7u9A3ExKsKbW1Z5wrkvsKVKZ
	ZwXw=
X-Gm-Gg: ASbGncvkH31zFgsFUWJJ/fM/Re08wkHBwgkaKWX6eGT0UuIU/MH420sh8LRc/3dK8AM
	lLOQGyQbBzOv+vW0YTmuKllym65NyJfmNJJGo5dGAkBfvda29vO/P0fh9BL0tFNXH2pbT6ISt0O
	XU60bADFaEuxAadUDmliNHs/xSVuXEnyuKpmcLOtLwnm1EgDF+3Oto8bvGnBaKGssXRpz+ek4he
	qssslCMdIDBKvbnAyEMcwJp6+zf7XaVrUEUnTkeRT7Gg2BUAw1ExzW69sh3mtSVGYV05Seyokt6
	Zm+OeSKF8DuQfPVvWntOQcnq9g4HgpvmghK+E2SLOfQFEfZgOPcEaGSHBHRSpEGufOMNckM=
X-Google-Smtp-Source: AGHT+IHgAl/NTXWukWtRPOrcZw6v4KuAstgKfnNDDXq/WjRE7Xg59rRDQuiiCesGIdxFPL7opskBkw==
X-Received: by 2002:a05:600c:3b92:b0:439:44eb:2db0 with SMTP id 5b1f17b1804b1-4395817ab18mr78523335e9.15.1739451918162;
        Thu, 13 Feb 2025 05:05:18 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43961884251sm17004025e9.31.2025.02.13.05.05.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 05:05:17 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Thu, 13 Feb 2025 13:05:16 +0000
Subject: [PATCH v9 3/3] MAINTAINERS: add entry for the Samsung Exynos ACPM
 mailbox protocol
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250213-gs101-acpm-v9-3-8b0281b93c8b@linaro.org>
References: <20250213-gs101-acpm-v9-0-8b0281b93c8b@linaro.org>
In-Reply-To: <20250213-gs101-acpm-v9-0-8b0281b93c8b@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739451915; l=1230;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=mxio+qKZ0oCarMDdKVLWSkQ5r9o/ZU/FWiQSXWeFPIk=;
 b=GiT09Wr16zJYvD7p0ZCHkOHEx8QQPR1xqF7gPsJekwN511IOr3sW5U1/bKSFoCjDMsYO7zMub
 7HYPPkCkvERCkZePKsrvCh1pUdoxfmcR4KxfZzUNiIkht1bVjzHd0Sa
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add entry for the Samsung Exynos ACPM mailbox protocol.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 896a307fa065..79ac2f3abff0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3070,6 +3070,7 @@ F:	drivers/*/*s3c24*
 F:	drivers/*/*s3c64xx*
 F:	drivers/*/*s5pv210*
 F:	drivers/clocksource/samsung_pwm_timer.c
+F:	drivers/firmware/samsung/
 F:	drivers/mailbox/exynos-mailbox.c
 F:	drivers/memory/samsung/
 F:	drivers/pwm/pwm-samsung.c
@@ -20899,6 +20900,15 @@ F:	arch/arm64/boot/dts/exynos/exynos850*
 F:	drivers/clk/samsung/clk-exynos850.c
 F:	include/dt-bindings/clock/exynos850.h
 
+SAMSUNG EXYNOS ACPM MAILBOX PROTOCOL
+M:	Tudor Ambarus <tudor.ambarus@linaro.org>
+L:	linux-kernel@vger.kernel.org
+L:	linux-samsung-soc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+F:	drivers/firmware/samsung/exynos-acpm*
+F:	include/linux/firmware/samsung/exynos-acpm-protocol.h
+
 SAMSUNG EXYNOS MAILBOX DRIVER
 M:	Tudor Ambarus <tudor.ambarus@linaro.org>
 L:	linux-kernel@vger.kernel.org

-- 
2.48.1.502.g6dc24dfdaf-goog


