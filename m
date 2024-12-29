Return-Path: <devicetree+bounces-134569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2E49FDF5E
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 15:50:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 42AA97A12F8
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 14:50:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99780194C96;
	Sun, 29 Dec 2024 14:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="gHtmf5Xu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B664B18A956
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735483837; cv=none; b=ELUMyiVazGWz2gSVPkRVI3tjsLNV0Tuq/NJRhlnQftjF+qIVnMSQ8QcZ7RyhqOXd3fQcYSg47NGws7gS0v52bF1Ih1ZuE71ZXnl2JowenETxwXWuFbgwc7ubPGkszcMN7BPC25qSUT2CkcVRUsv1QM5GSigduXS1Ca/Xb1mXvXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735483837; c=relaxed/simple;
	bh=+1wDCnUf6V6waC2u4F0CjceMoJUJQ3m5duPgNX1wMjo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lV66TC2x/xy45S7FCueTbVWgH3ESYsrkaMNsTi85FyGuPfQoIClTvE1iQAhNK5febQZ4crfeRiCSFJfSLhUPHxfucLGVxLPhmZM4tUWXt56xXI9PKP3h3J3Nk8FgYL4LcE+ezcCVpInw1lDt+V9JTsYeTdmwm9gOjPL/i63JBc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=gHtmf5Xu; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa692211331so1632516866b.1
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 06:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735483833; x=1736088633; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0D3K2ln9Lb+MNQxN4twGUjq+Zn0uEKE9IsRwsBI/jVw=;
        b=gHtmf5XuC9i4a8ViQuXEmZ/iroMQLVn4ZbLpbRinDSC78zUJ7d/MqZIiGVssSQ8pME
         mP1IE6WEXS+ki3TZLKLw94Pm4kn2M6yt2CChFhZLmzj1BDRPy/m/2tG6ev8a5bEjbdv2
         hE1IBkM0tMsjKrb+2A+ZImMca8Gnqd/OM3G+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735483833; x=1736088633;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0D3K2ln9Lb+MNQxN4twGUjq+Zn0uEKE9IsRwsBI/jVw=;
        b=uwnA2EONvxKu2mDl964b5azCKgiz72pPFieIxaNbZgvu6I19CkiwqiJy6e72qXrNcn
         RDFaUc5PYVR+2KlvOsYd8SdTrc/p6GN3/KDt0Ct2kv7I9UCMlQ7NBxLdLViKa29yXv4A
         phw6IM20g1hZkAKQYKpBkcDRHYc1qxQuXXsdaUjCxuYEQmAtK/f78b8QCMtxVASKvivw
         eKBNWbfY76jVhKtZmcg9yJd5hw95WbbUObVr6SabQUFR5gUuSseBI9EEeisZm+oNhSL/
         2ypR2EaFl9BmGFotZMCl1BfQ9eUG4qninnYQnA7Hy05mi9+na5o19i8kJPyI0dM56zJI
         lGTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKxYi/+/EaW/C1sGLIfFAahGjNkw3XwPRktSdq9yjBHwZBaDW4ACRqxrdV6u+UX+Fq0S3WyP0K6miH@vger.kernel.org
X-Gm-Message-State: AOJu0YzaHQEsn6aipMyAsndGKuXFScvb5S82eAULrMzsFR3XKc3iV4mw
	49Khl7xTUbedDiCvFI4JExD7i9iGB2xiik5x6mcIuGwUZfW+GHmuFGmC5kmXnaQ=
X-Gm-Gg: ASbGnctMyt58laW6olW3A5CzBQzYswXE5LoIbl4h+fc/VBiKPpxUJNCkOzaV9XVst3k
	giOP1jmQDNwcpRfb4auW+MYCP7to1t8z2bgT4TsQahwmhwu1ncwlFeYTnBITeB5yX/xECQ3bjiS
	pmnRggFfyY/l3T8qW3SIrYl1Mhp0L2KLy0ZUBIz1VhriQUluEAL+1MKKY02E/jh1ECypJ5VUqwz
	hDJq3YhXYxPZXEMn4ngjiWKcvauU0FHMkaZ56MbPbMbKJkea/yRNpc1dWNH07kNDMGJIExiAlFE
	v3VZd7VS0Kc60mV50m34fg==
X-Google-Smtp-Source: AGHT+IFV6+DUifWNgtI/l9xv/1AQmyY+vn0i8+uFyhjAZ8e8hW4Xl/fClO119sqnG2ifR6YSa9Jbvw==
X-Received: by 2002:a17:906:415a:b0:aaf:c0:be7e with SMTP id a640c23a62f3a-aaf00c0c9d4mr1166766266b.29.1735483833021;
        Sun, 29 Dec 2024 06:50:33 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895080sm1362084466b.47.2024.12.29.06.50.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 06:50:32 -0800 (PST)
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
Subject: [PATCH v8 01/18] dt-bindings: clock: imx8mm: add VIDEO_PLL clocks
Date: Sun, 29 Dec 2024 15:49:25 +0100
Message-ID: <20241229145027.3984542-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
References: <20241229145027.3984542-1-dario.binacchi@amarulasolutions.com>
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

(no changes since v6)

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


