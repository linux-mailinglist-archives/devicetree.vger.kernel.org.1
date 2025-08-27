Return-Path: <devicetree+bounces-209649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E880EB38338
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 15:01:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA5DD7B9129
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 12:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB0F353374;
	Wed, 27 Aug 2025 12:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vGh/t5bn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A3034DCD7
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 12:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756299598; cv=none; b=Vc5rGLcASGGrmhyG1M3zvvPvbSKj/hXohV/J1nZzNUXLux/Vkaqjjf/jpAiVAOBglbpkVTkj9Fk+2GKYgghCOf/Vty3z4r1PHPf2i1yWYmUjj2Mgem5nyMuj1i7ryxU2DaC3kag573qeo7XXnHPv77OtkTKqWUT3dJtCqIsjkO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756299598; c=relaxed/simple;
	bh=lXqAHsVVGobAqxHDBDj2hfAW5L/ixpf0F+OYYJ4nT/w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=elovjsDu0DfbE8DLF99k6KJbPV3TT7UQ/iCA4O7C39/WqnxpUFaRnkkoEesUrbigFc5DfbD/zYyGON96GqU2Zt4uySdte4qD+EMEVvrQP7m+4aZ2e7sH3CnTuoySc+wNfEXuGU958WYDQZtDPGhX8hPV+UeZM798Pkr6wYp5WuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vGh/t5bn; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45a1b066b5eso36751355e9.1
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 05:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756299590; x=1756904390; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=St11QoIkuwt6LD0qyFy2W7TckyvP5Gq6gOAm3aWS/Ik=;
        b=vGh/t5bnupJIjbNNLkWrelgN1x+vnYeZB80lDlbAu2sR7vqO4QpBjNCeZhBvKYHGuY
         700Id3X+DHpfup/KUwUtT1mLDV9WTJbiNy+zCz6JN1wioY4fTYv4zhfpoSxbovg/DeWk
         1fVd810pBH6hmyOrQLhKC28sfvjG4EjV+LHw1bl3EIZoJpgQsccdcFE9gBqdPCdcDnjS
         vKRGpKQoCAg9tSIceDvEO1kFyuU1gSDoPyezboXq//GGkmz1SH4qbOHmLXd+MeKztWe+
         2Pgr8JdJxdzB1V4ycx8jjIXhOYvBFmd3SZ3joe5I29uXApisnkKtSEGchfgQbJtLijOI
         ytIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756299590; x=1756904390;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=St11QoIkuwt6LD0qyFy2W7TckyvP5Gq6gOAm3aWS/Ik=;
        b=vp8OA6HTlMLEI2pML9Hzdp2keCr7b5XuPeK22AQtZMFFj5a2DcdGoO/YD4xWtAERMM
         AKhPM/mN2c/20Jvb3jyqgEKcehd3JHa0mOG8OAfn+iIEOfuQkgqiVoERwQaELMd2H2oV
         lmRLx4OH+/jyPpOGqLM0BILI+pTM/0PP+Z5NlQ5dR8U6rzlkoYX3PDQUmvquuZvc05rG
         7P2Zhbp5ypSG6hSK4X1cBKnzWbzJVTNQZd1a6pAT5+dF8G42XojF6roCW6AH4phAVv5P
         7aY2fWEoGKfRURH8nfHoux1VktLZohOzq7oRceLh49JRe/F09Dw0pWZ/ntfBZhKnKih3
         B6HQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLOMBdaFS1IG5E0/fsAnsQKi8AkpPPlpXgq+dyAOBixLkPGR+QQIBwDDK6csKfEOA45xwDFlO2qsO2@vger.kernel.org
X-Gm-Message-State: AOJu0YwwDfFVjIIajXCafTJrydcwEY+ipsFXaddrvnHnimLri5RyoZWU
	Rcmzs1hu2rM5z0oIAKYvJGXvVh+HDF1Omx+yqOgTqrPgOOmTloXIgy9SFXr+Xfe41A0=
X-Gm-Gg: ASbGncv5TqkPI7/FmQcdvz8bIRpqd3TG0AlFNugSlV/1Esakq5Q2tEb2RKrAfDKo1D5
	KfugLmnVOoOVPE8BJeLFE66/aAAoCwRJRoHh4E3N2RUAKWNc8g3CaLWmLp8wHnrgs1mijJPOc6/
	9fcOLa+GoWKZVzCgJ4eL4cBHVuo+WI8ZwWgQqpQ/UX3Hy5/aCIPBVDlXRNkATpHOZIFGZxc1Tfr
	E3gS1+iFKBGlUo18/JmFkKsu+ukT+xUTwksWQ2O1TxPIbqH+1cWg76L42RqBXB1X616K0gYIP16
	wUKgiWLtqJU+dL5iRm0ObwJLR0AsSaeBhyuZAamSYXPt8bye417Ps9s32xfT3kPgV+difufd8U2
	9q1hh2WAhTzZ1N+zlz/vNYAKtCREqunlh4e3hhaUA+2AjV/XtEYO/DYfmMjNPe520tpkffz+AoP
	uaqA==
X-Google-Smtp-Source: AGHT+IGrO5in4kxeXFs8Ggk7J9FQe0NLAJGrBqkvOKY0AV+1WCmJgGAiQ8Lyh7hq52k9MPnYiLZGlg==
X-Received: by 2002:a05:600c:4f47:b0:43c:f0ae:da7 with SMTP id 5b1f17b1804b1-45b698efbc2mr40559705e9.7.1756299590136;
        Wed, 27 Aug 2025 05:59:50 -0700 (PDT)
Received: from ta2.c.googlers.com (219.43.233.35.bc.googleusercontent.com. [35.233.43.219])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cc890b178bsm3272069f8f.52.2025.08.27.05.59.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 05:59:49 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 27 Aug 2025 12:59:46 +0000
Subject: [PATCH v2 1/3] arm64: dts: exynos: gs101: add #clock-cells to the
 ACPM protocol node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250827-acpm-dvfs-dt-v2-1-e1d2890d12b4@linaro.org>
References: <20250827-acpm-dvfs-dt-v2-0-e1d2890d12b4@linaro.org>
In-Reply-To: <20250827-acpm-dvfs-dt-v2-0-e1d2890d12b4@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756299588; l=858;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=lXqAHsVVGobAqxHDBDj2hfAW5L/ixpf0F+OYYJ4nT/w=;
 b=1hf3mcPjyceW9nVsY3YJaxdSK+F2L7MXoZnBJFli89bCPqeG8RhhWI+dgSmVFITri3grRwv4z
 cDeXEVit+3jDX/fnKLE9QVz2WyAluN7lZ9fP3bWF51Nsyhbi7g8lZJ0
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Make the ACPM node a clock provider by adding the mandatory
"#clock-cells" property, which allows devices to reference
its clock outputs.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index c0f8c25861a9ddb5bbd256b62c66a645922ca74e..f00754692bbac39fd828ebd4ef7c269f746f2522 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -202,6 +202,7 @@ ext_200m: clock-2 {
 	firmware {
 		acpm_ipc: power-management {
 			compatible = "google,gs101-acpm-ipc";
+			#clock-cells = <1>;
 			mboxes = <&ap2apm_mailbox>;
 			shmem = <&apm_sram>;
 		};

-- 
2.51.0.261.g7ce5a0a67e-goog


