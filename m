Return-Path: <devicetree+bounces-133375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D829F9FA700
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:05:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2BEB18870A4
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D52C1917D2;
	Sun, 22 Dec 2024 17:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="qnUVkx76"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9880318DF64
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 17:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734887143; cv=none; b=ojn0PJrG6oYOLdElpAGJJlITQ84yJl7ewdunIckst36+PlFESEEotnms/emeRctNxtwzU2/rp+FvJGU0rbC/Sb6tSQ8sDgRlU+aPi87J0zJ7NiMqhaEvk1r8AmrKNQrDT02w1KRgMgXCHJXkLFmJkeL1LeX5zvD4o+ijYuHhDt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734887143; c=relaxed/simple;
	bh=3RR7TtmT2tghjfLjtOiYGFW7M/pVGEzXb7TNNEfCgjM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WLTM4iVr+SGAy8BesXc5ewSPJnAJI4DwY30SEvp/n+SwqExaV55wXUV/bxtOhP0UVLIBz7obSOZNODaLMmlg9UA+MVdfAsz4wT7oRtjmrTMyRj+18iQHwBm/Fc5la/fW2GYMFTOpup17Sn1xbf5N0vaAAThODDrVSLDEqHEHl58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=qnUVkx76; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aaec111762bso154119166b.2
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 09:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1734887140; x=1735491940; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mSqZmzfg82O+4dHUY/JUhUjoJ4s2N8toybCaelOQrvU=;
        b=qnUVkx766GfQaDKN/O9fs2W4LH8O7ZhdjhPJ8W5rCZ3A/ypvwvRIC3lC4ElecL2YSX
         /vnNvdJLkFeq0pUpQ6NZHrzwPwtc/LtBCGlZXOV+CfWcDJA10vzt+Img4eLL4mJmMN9F
         sp7lx4Pc3TcADyDY72JPoha14yjtcur9MjDS0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734887140; x=1735491940;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mSqZmzfg82O+4dHUY/JUhUjoJ4s2N8toybCaelOQrvU=;
        b=XivMfKBlxY46Kh627KJK8S7ZltPkW6ToRhMS8HkKuZ5h5UAlyRnkEEwIkI7GAgs2By
         Qn4nWX/imINgDozQXj9REtO92HlMZLxeJk0nmWmJi4OgIuzkXxhFVwbrtIlpedGLnCBA
         0bmrvHPAAV9chk/T5CpxzzPXZg6TX8wsnrKbVO9hfP/b/e6cxUfARaOaWPFShWoEyndR
         Mux6nLGLK4gFhHUGwZKIbx85unqNj+tX+6ZbeJ42tMi9FeLl6x/spOZYQYGHL1gstbCf
         vqPO4aQpg8B9/d1xqgBBVgkjCF38eT7kQ35Nz1GMo5Gy0dG8r8NmECW/FzEYlP+kAiOz
         D08w==
X-Forwarded-Encrypted: i=1; AJvYcCUJEV1x+PBsNQS7TVuuedjh0VSsTKlcc+YviB6b/VyPx0VhFH+V3f0daSueZaJPUid+9phApgY86wiq@vger.kernel.org
X-Gm-Message-State: AOJu0YwgA7iWKvodCgiYXDJUblx7dgEFRisS2ZwlPUDcGwtGfRK7BuCy
	uBw7uIJJY1JnPNlrRfVqNQykyUIAUwbjwvp2CvWgwxKx8HAXGyheBYa325Nn1Zo=
X-Gm-Gg: ASbGnctBEUtcK79HcyollPapFFLLwKWrhW9tx4wMy0+4j6H7h4zp76WpHTYaNkIvnAj
	GPxlez/CjRktYLCgAPzmIMWyOEvZUKogYe+hrQpLGumrHjU7KO9rjRnJhYBRGaUer7SlUQTQnEO
	oRv7owghk1LAuzMxAfZT5PW940HFmT4Th5cfZUXJVQQg6f/tniV8Pepadd+sxVxJVC35MjXQiwg
	gmLQHcEvQDwWdQZ215JNpwkpoBm04xDXboKfo54MyYIopely8ENxiPoVj9YGGADgCS7l2X0Dq/9
	lOX5HAMODIPmFeM/sjA2/0bwvLFlQcXasfIBztnOeHNGjw==
X-Google-Smtp-Source: AGHT+IGoSNLLXoUG9w9h5MwSnQKDCveLmkkQwCAObiEaQRbH9lAFBzDeGX6ULegdYk7dQYszNotN8w==
X-Received: by 2002:a17:906:730a:b0:aa6:a572:49fd with SMTP id a640c23a62f3a-aac3368c074mr1008129766b.54.1734887139810;
        Sun, 22 Dec 2024 09:05:39 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.87])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe48d6sm414056566b.127.2024.12.22.09.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:05:39 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v6 01/18] dt-bindings: clock: imx8mm: add VIDEO_PLL clocks
Date: Sun, 22 Dec 2024 18:04:16 +0100
Message-ID: <20241222170534.3621453-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241222170534.3621453-1-dario.binacchi@amarulasolutions.com>
References: <20241222170534.3621453-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Unlike audio_pll1 and audio_pll2, there is no video_pll2. Further, the
name used in the RM is video_pll. So, let's add the IMX8MM_VIDEO_PLL[_*]
definitions to be consistent with the RM and avoid misunderstandings.

The IMX8MM_VIDEO_PLL1* constants have not been removed to ensure
backward compatibility of the patch.

No functional changes intended.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v6:
- Add 'Acked-by' tag of Krzysztof Kozlowski

Changes in v5:
- New

 include/dt-bindings/clock/imx8mm-clock.h | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index 1f768b2eeb1a..102d8a6cdb55 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -16,7 +16,8 @@
 #define IMX8MM_CLK_EXT4				7
 #define IMX8MM_AUDIO_PLL1_REF_SEL		8
 #define IMX8MM_AUDIO_PLL2_REF_SEL		9
-#define IMX8MM_VIDEO_PLL1_REF_SEL		10
+#define IMX8MM_VIDEO_PLL_REF_SEL		10
+#define IMX8MM_VIDEO_PLL1_REF_SEL		IMX8MM_VIDEO_PLL_REF_SEL
 #define IMX8MM_DRAM_PLL_REF_SEL			11
 #define IMX8MM_GPU_PLL_REF_SEL			12
 #define IMX8MM_VPU_PLL_REF_SEL			13
@@ -26,7 +27,8 @@
 #define IMX8MM_SYS_PLL3_REF_SEL			17
 #define IMX8MM_AUDIO_PLL1			18
 #define IMX8MM_AUDIO_PLL2			19
-#define IMX8MM_VIDEO_PLL1			20
+#define IMX8MM_VIDEO_PLL			20
+#define IMX8MM_VIDEO_PLL1			IMX8MM_VIDEO_PLL
 #define IMX8MM_DRAM_PLL				21
 #define IMX8MM_GPU_PLL				22
 #define IMX8MM_VPU_PLL				23
@@ -36,7 +38,8 @@
 #define IMX8MM_SYS_PLL3				27
 #define IMX8MM_AUDIO_PLL1_BYPASS		28
 #define IMX8MM_AUDIO_PLL2_BYPASS		29
-#define IMX8MM_VIDEO_PLL1_BYPASS		30
+#define IMX8MM_VIDEO_PLL_BYPASS			30
+#define IMX8MM_VIDEO_PLL1_BYPASS		IMX8MM_VIDEO_PLL_BYPASS
 #define IMX8MM_DRAM_PLL_BYPASS			31
 #define IMX8MM_GPU_PLL_BYPASS			32
 #define IMX8MM_VPU_PLL_BYPASS			33
@@ -46,7 +49,8 @@
 #define IMX8MM_SYS_PLL3_BYPASS			37
 #define IMX8MM_AUDIO_PLL1_OUT			38
 #define IMX8MM_AUDIO_PLL2_OUT			39
-#define IMX8MM_VIDEO_PLL1_OUT			40
+#define IMX8MM_VIDEO_PLL_OUT			40
+#define IMX8MM_VIDEO_PLL1_OUT			IMX8MM_VIDEO_PLL_OUT
 #define IMX8MM_DRAM_PLL_OUT			41
 #define IMX8MM_GPU_PLL_OUT			42
 #define IMX8MM_VPU_PLL_OUT			43
-- 
2.43.0


