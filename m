Return-Path: <devicetree+bounces-154807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AB641A54949
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:31:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D2021894C9B
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:31:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A7F720B7EA;
	Thu,  6 Mar 2025 11:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="EEKtrSlr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081A120AF9D
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 11:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741260637; cv=none; b=PhknbeC1pTfqIU3vHTAWZ0SN2CqLf8b2TCY5PTc4oamnMft4aTM6j8QUgFLfJNwM/e68rMCwZ/Mcqu370Ec+clG2XpaHFJhJDsnrKJVrx7ghaZAb0BjXJjXNlaPuYLVmhGdtrAd4w70LtQz1jV8pMMei964IF8u5L8PzvmlTxvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741260637; c=relaxed/simple;
	bh=+1wDCnUf6V6waC2u4F0CjceMoJUJQ3m5duPgNX1wMjo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iCCFDRJqDy0cNy6meqvi8poJTmQxHq8x7SI0uN+yvH9HbBJnkREoRTmnFYo8CTVolnBaiAC82R+AUjeyYsR5E5s7KTZzSxLglSq7rI/8X0h2oy3uzV2ttBCVi6Ie8+kjJ0m6uFvOBFUqFb7fHNMXQJw3FRVBjnLt56YlDeiyZyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=EEKtrSlr; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-390eb7c1024so371382f8f.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1741260634; x=1741865434; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0D3K2ln9Lb+MNQxN4twGUjq+Zn0uEKE9IsRwsBI/jVw=;
        b=EEKtrSlrEHkyMoLoObcX3TVfd3kwuOPYXtEHaQWzZtv09l8TgWZK1W8QZjzxyBh+yl
         9ftdbKj4J2Vw8DJzSGQNl5dL8QLnRRZ3wIs3RSW60jUc3d/6+O9VHGSM/B2JPNsxR0ve
         yHT2CBeQlHXNtta0hLHAnowjwt4S5wJAflh04=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741260634; x=1741865434;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0D3K2ln9Lb+MNQxN4twGUjq+Zn0uEKE9IsRwsBI/jVw=;
        b=ca6gW0TC7TEyDsMXbp7pBXUBxdK3AxtYMpwjitzdcW8iI4Cb3rT/FXzbsCq5haX50t
         n0XrKdGZA6ZX5GFY8oJrYYxnbACvzM2rZ+9KisW02nvPfXz+RC9FkzRRzrnbjky0YFYJ
         fXzKZOMgI1C0FnU5Pk824/o+rVDSn2YK8HNZ7nq8KIpCurIIgZ4N5twAr6x19q6DynGm
         JzYMCcoTlLuG4BNSHJ/8zOlMof2ymi6LgbbqxCAioWH39a0qc7MzZ3QYrUqvJtnl9zO+
         Uhu7AwIMacyTBlue2EQ4m1h2GfpFi/Y+SdRFcWWg15OOZTyk/XO63KewyrzB9VikiAR7
         sEAg==
X-Forwarded-Encrypted: i=1; AJvYcCU5e+ghm8Ebv0HiN61yPFnXLgk286ITUu/6Ez8/NOQcGS4kKFm4HtD7Bcts/FJ/8H5Dl+qqNKSTr8kE@vger.kernel.org
X-Gm-Message-State: AOJu0YzhPOlRLIfvcZPe9gwK3VymzVGikGYPoqKgMBf3rXyYXbZsz91O
	1YM2tUge4dK8lkOBEACskaHXtG2+TRD+ivB8yUvZAWbhk794Y+7Bw3Iik3ElYSQ=
X-Gm-Gg: ASbGncs5TXO1fwGNXySJ3G4rKG+gFIMztN/MnJOnklJ9L1a+ODJhy0SZO2T9qHWIoWz
	GBoWuJ0XN/lTauAWGU4/7I79Xu+8H7cC9Pxy2Tw59iYS2qbk5uqHsZp/nIuRwV+jMPUxX3H+Hd3
	L+ygUj7hyBrdSr5AhI9WXYOpwNE+4pJrgGQGLXRFcEJj5zBjNE0eEad8nRVmkmGSHhZWHiVLmnp
	qgkkPnO+bKjpPxKz0/MWJeqHfTq5zyG9KccOoV9s5/cHxXm6yJS+lyiGOpkbuy36Y5BrXxsYNv7
	MQivJZexMWtKBZwS4UprZzPuWyc1isx5bgyF85Ek1P2OoCtNDi6z6EbpmhB1ESK4QyWr6oGkpX8
	VuIkV4w==
X-Google-Smtp-Source: AGHT+IE/gkxbTJgrx5WsPeKouxumhVaFZMtJX0zav5Vxl8++ByMzD32+sUdGSHcbzM+0gAmJx3MEGQ==
X-Received: by 2002:a5d:64cb:0:b0:390:df75:ddc4 with SMTP id ffacd0b85a97d-3911f7cba2amr6815821f8f.44.1741260634196;
        Thu, 06 Mar 2025 03:30:34 -0800 (PST)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:4703:aa8c:6eab:8161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912bfb79b9sm1749650f8f.3.2025.03.06.03.30.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 03:30:33 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Stephen Boyd <sboyd@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Abel Vesa <abelvesa@kernel.org>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v10 01/18] dt-bindings: clock: imx8mm: add VIDEO_PLL clocks
Date: Thu,  6 Mar 2025 12:27:50 +0100
Message-ID: <20250306112959.242131-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250306112959.242131-1-dario.binacchi@amarulasolutions.com>
References: <20250306112959.242131-1-dario.binacchi@amarulasolutions.com>
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


