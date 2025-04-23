Return-Path: <devicetree+bounces-169683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D53AA97E7E
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 08:03:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE28B3B1ED6
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 06:02:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C035264A85;
	Wed, 23 Apr 2025 06:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="GBWtZFq8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AA81EB1A7
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 06:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745388181; cv=none; b=VY8iaeR6FokFHxJJY8jSJZNsG3OU8Ys5fUQ+oTcPcHQpUrRoF4+s+oexmEH8wzKohDL7XQoInycxr+BhajN/iuptGWBhBznh4E/66xcibkcBaFvdlcDxvDWL137APdfeUrdW50xtTWe869rTad+VBxhVrHaPLd9O2Ac2JDZrDiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745388181; c=relaxed/simple;
	bh=+1wDCnUf6V6waC2u4F0CjceMoJUJQ3m5duPgNX1wMjo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ieNaNmRIIbOk+dgmTYiyOxkYiEXnKmb7AFWHh8kT2CgYhXr4OZjW49VgeYJ/nhrlzemfPl35HF3fhk/YH5fpFdyHCsLdTSizjrUv/hQpy9ILAUPxGLwUi9HURzxIqwV5ap5kz3cYfGf10Dm2Ll7Q0Gm0q6/y+jBiIXCZ9iwUgX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=GBWtZFq8; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac2af2f15d1so685380266b.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745388177; x=1745992977; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0D3K2ln9Lb+MNQxN4twGUjq+Zn0uEKE9IsRwsBI/jVw=;
        b=GBWtZFq8Vj30qot4AKkrRRoS/jx9ek5VzvnvHF1KRuxPjkNyqoQx4Ntdgp4YQ3ZZ3a
         PLBFscxJLEk5cBE7ZK7RN4VBo2Nqcgkd4qWh3+K3oCOWNzagq0EA6+d2mL5r+bb2Uht7
         41gcSZaaLW9r4y6J/GA8+abeXuU3Q1HjTesq8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745388177; x=1745992977;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0D3K2ln9Lb+MNQxN4twGUjq+Zn0uEKE9IsRwsBI/jVw=;
        b=NIITzRLuw0d6pcoKGhCNNALjykOuJEWjiCs+NSUzHGAKMsUAbKBsQZE1D6V4AFqA2X
         Mypu0gWBQSaz8/SIfMqN8sMmwxIB0cA50jfLD8HV3uqtmXaH/DpkQGlC2oKhIfWTytSF
         G+E9kBrnlqZi+jTd91h88nCUClsu29yLhqXgBH+gJwrLHXGrH17p/ROAaRZ+QKMm7qWn
         olXxVp50PojuJf9k5s6tqOZZFprA0RPmP2HFoOMnnRUbClTparT62MiK3e1o205PPKmj
         +X6Ie5aYu7UKkNrjlBhUpeQe60rbKZr9qtdZpUWV11DOdS9ZAvnm15AUH3qTuqJMfgr2
         1UbA==
X-Forwarded-Encrypted: i=1; AJvYcCUV6vurqu6lxR6+htC5TPZYB1l68iJfT5P4NDaEMHWyuiW5I2jN/54LI2TXEtmPoN2V0pTkzTO/DJuK@vger.kernel.org
X-Gm-Message-State: AOJu0YwcSUAd4CwTZSCCXFDne0jdHXNKphZxuuqR6Y28aEX2R305kZiS
	JcSCoQzVsmbTf1xHvyIsjYv/2G7el0rQAimk5iReWOv9TvQFsuCTBzsKnK+TcGM=
X-Gm-Gg: ASbGncsYpDZfkHppstsBP4KauFy7JMZcoKDZHkjA84SyzeEpXBpUTLVeT/HiJTMAypM
	ghsYVq5ifEHHfz+8QsmGJdaNZm2WeRwA1PPcyMMF3gbKDXgeZv1U2Gy/WU5I8CrgTfGKTkWOw4I
	QtxJVwoS55EAsQSyVqnx6HaDmjGs3wQ6F9vxF4cBEBfp04s2WbFkspi/gYR4sFDboJWfcaP53Jg
	AH1IlL8munmXUOIGc+cQr+NAah30W6JPm/9QdM8OJM5hyNpPkjrq3YOC9ImVLDOUHjzIDDNdOgL
	Lym8XYUETW9FWvkW0DnrH+ssWtB4HSlwPUzEqy17hSCHKaLhbb/EVnqT20BIYdt1hACNjPLczuG
	jm9WnsQrBeKqwvyE=
X-Google-Smtp-Source: AGHT+IHHI/Ae0cN5rkqgDoL4MALbmLyqGqjR8G5Zysx6M9ySgMiQIXVA9Mcxb72+usZBPZS4gYqX6g==
X-Received: by 2002:a17:906:ef05:b0:aca:db46:8170 with SMTP id a640c23a62f3a-acb74e79d11mr1536173466b.60.1745388177443;
        Tue, 22 Apr 2025 23:02:57 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef9e7e6sm745234366b.162.2025.04.22.23.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 23:02:57 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v11 01/18] dt-bindings: clock: imx8mm: add VIDEO_PLL clocks
Date: Wed, 23 Apr 2025 08:02:18 +0200
Message-ID: <20250423060241.95521-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250423060241.95521-1-dario.binacchi@amarulasolutions.com>
References: <20250423060241.95521-1-dario.binacchi@amarulasolutions.com>
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


