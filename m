Return-Path: <devicetree+bounces-134407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B18CE9FD624
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:58:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 97DEC7A259D
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EB791F869E;
	Fri, 27 Dec 2024 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="VpAXR/in"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDB21F8681
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318653; cv=none; b=cgijqO40klMeS/TdJNM/8xMaE2MX7YdQCxsQ+vbGpiC+Dpc86UgwcDye2ayx+tKRaI5z/FT+I8ZYmV+Vh84S6TSncnzgXxqqI4G8JeVYZidC8H3dnDvOUz1gICkeKjNyNMjRmt49JxFP+OVoNbfUeqjYgaAqliBTFHeBTd3ZkQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318653; c=relaxed/simple;
	bh=xUBRrkr1aLPPwLeMGNd5Xto6SUkG0PhtvIzCxxAX118=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WykDsrgLE8oYhxsNEh+KD2fIqQ3wPwG6zmdWpCGrS4z0wo08+BMT3arDFtT6iIKDKmwpBv2wwBfTQZtdTNaA+IM8RGUBWjeB281yqWRczVz/a617kSpWWy+RMC7nywt6tlNiJ6h2cYeE0MrheSvZ7RHzEQJlXgSskzhoe1jAaEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=VpAXR/in; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aaeecbb7309so523279066b.0
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318649; x=1735923449; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T8/6J4AE7rdE7DvbcqL7lv8LvF8nVi/MJUfgoa9DfhY=;
        b=VpAXR/inn36pyVqmBAL4FUoiYvv3d7BuV31I1NTSMCPtw05ELD9dlEL7JoRukU9nhp
         pTP7gT3Psc3e2djy5tnZAHWAsvQQKZ09YuSRsZraHksKWi8LXm4kobvngT/gJnftDBuQ
         QaiPd/i6cnfedlkOoKBNe1VR5tQLleLphaZrE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318649; x=1735923449;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T8/6J4AE7rdE7DvbcqL7lv8LvF8nVi/MJUfgoa9DfhY=;
        b=F3Xwawv0ZayKMt+IEXKwIv+MsKpYlIG6j6ETmk6BcUZBcreblrJ7m9Beaz86Wwsf6K
         fjz7rPn2jwbw8CkMm0k7RVBDOgDt/L5i79J7M/CPk8eoX8DCuz6dqbjcbHowm2LKOt58
         DvbO46W3dLgXOljyqDUvB3bVVBFkYq1Kxb7WkHkqviX1ENz4NWvANau9PdTwo3J7UsNK
         x69pC4bGV9QU86ls/kIUB9DfkflULyKiHheT1KBu8rZqnzl2U8fVOkrDezhvtjpKAspq
         KDpJ76Comi8C8Jq+XXYbJYFNtHWqBBCOLV4bs6DTmDK8iVv/RsMUN8dMdaB+tm7FBwyb
         v19A==
X-Forwarded-Encrypted: i=1; AJvYcCVVqmjoR1az4x5q6MMnTD6k3wieut/MCVvViq8w9lXq7vFnvzk5Vsa5dT4DhZNfsptxeH71e9g9EFeS@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0nqI1E97WuqfItBAVF7orJGHrwcPIuo70ux6le+LPtfkfTkUc
	pRO2KiuNvdsHdBAAEnr2kUL3ZaLhJ/3g1ZoIUTlCL/pnuVh8GpDTTJkYmrYIYYg=
X-Gm-Gg: ASbGncs8otjbDsgwg6N4Qi1qWlgLvnvDO8cqt3Xhk0uLRefxZITGHU32T157CixWeDI
	HE//DlK7wG54U5UAQztxOrdiN7k3UFXjZE7mj6g1Rz05muH+hH7iW5UiC6bR/Jhq0nD6FQzqObp
	jXpiuVBvPSkMmpY+zVM5PrQtJAs6tlmHozVxVQ048IYPKu73ffwX4jM2donplxSbsgWXE4zUgcd
	QvKA1BMv96BtwLlUjc8hVdZUR36Sl5xpy4oCodqAJqai44SZxft/mhtH6IV+mJvdkAbAK0lH3L1
	Nz2c5qWPNOB874dQ9rVZwA==
X-Google-Smtp-Source: AGHT+IFx+qy8M9nbBtV4lkWk1CHCAzysU4JJGTIU9Blyy6kuVAhYju8xODoJ5uqYIFLq0x7fFfprVQ==
X-Received: by 2002:a17:906:7312:b0:aa6:9461:a186 with SMTP id a640c23a62f3a-aac33549f50mr2397618866b.46.1735318649395;
        Fri, 27 Dec 2024 08:57:29 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:29 -0800 (PST)
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
Subject: [PATCH v7 03/23] dt-bindings: clock: imx8mp: add VIDEO_PLL clocks
Date: Fri, 27 Dec 2024 17:56:06 +0100
Message-ID: <20241227165719.3902388-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
References: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Unlike audio_pll1 and audio_pll2, there is no video_pll2. Further, the
name used in the RM is video_pll. So, let's add the IMX8MP_VIDEO_PLL[_*]
definitions to be consistent with the RM and avoid misunderstandings.

The IMX8MP_VIDEO_PLL1* constants have not been removed to ensure
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

 include/dt-bindings/clock/imx8mp-clock.h | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/include/dt-bindings/clock/imx8mp-clock.h b/include/dt-bindings/clock/imx8mp-clock.h
index 7da4243984b2..3235d7de3b62 100644
--- a/include/dt-bindings/clock/imx8mp-clock.h
+++ b/include/dt-bindings/clock/imx8mp-clock.h
@@ -16,7 +16,8 @@
 #define IMX8MP_CLK_EXT4				7
 #define IMX8MP_AUDIO_PLL1_REF_SEL		8
 #define IMX8MP_AUDIO_PLL2_REF_SEL		9
-#define IMX8MP_VIDEO_PLL1_REF_SEL		10
+#define IMX8MP_VIDEO_PLL_REF_SEL		10
+#define IMX8MP_VIDEO_PLL1_REF_SEL		IMX8MP_VIDEO_PLL_REF_SEL
 #define IMX8MP_DRAM_PLL_REF_SEL			11
 #define IMX8MP_GPU_PLL_REF_SEL			12
 #define IMX8MP_VPU_PLL_REF_SEL			13
@@ -26,7 +27,8 @@
 #define IMX8MP_SYS_PLL3_REF_SEL			17
 #define IMX8MP_AUDIO_PLL1			18
 #define IMX8MP_AUDIO_PLL2			19
-#define IMX8MP_VIDEO_PLL1			20
+#define IMX8MP_VIDEO_PLL			20
+#define IMX8MP_VIDEO_PLL1			IMX8MP_VIDEO_PLL
 #define IMX8MP_DRAM_PLL				21
 #define IMX8MP_GPU_PLL				22
 #define IMX8MP_VPU_PLL				23
@@ -36,7 +38,8 @@
 #define IMX8MP_SYS_PLL3				27
 #define IMX8MP_AUDIO_PLL1_BYPASS		28
 #define IMX8MP_AUDIO_PLL2_BYPASS		29
-#define IMX8MP_VIDEO_PLL1_BYPASS		30
+#define IMX8MP_VIDEO_PLL_BYPASS			30
+#define IMX8MP_VIDEO_PLL1_BYPASS		IMX8MP_VIDEO_PLL_BYPASS
 #define IMX8MP_DRAM_PLL_BYPASS			31
 #define IMX8MP_GPU_PLL_BYPASS			32
 #define IMX8MP_VPU_PLL_BYPASS			33
@@ -46,7 +49,8 @@
 #define IMX8MP_SYS_PLL3_BYPASS			37
 #define IMX8MP_AUDIO_PLL1_OUT			38
 #define IMX8MP_AUDIO_PLL2_OUT			39
-#define IMX8MP_VIDEO_PLL1_OUT			40
+#define IMX8MP_VIDEO_PLL_OUT			40
+#define IMX8MP_VIDEO_PLL1_OUT			IMX8MP_VIDEO_PLL_OUT
 #define IMX8MP_DRAM_PLL_OUT			41
 #define IMX8MP_GPU_PLL_OUT			42
 #define IMX8MP_VPU_PLL_OUT			43
-- 
2.43.0


