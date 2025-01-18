Return-Path: <devicetree+bounces-139439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A3DA15CD0
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 13:41:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57ED5164652
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 12:41:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EEBF189528;
	Sat, 18 Jan 2025 12:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ZEp4Z5R3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5BF19340E
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 12:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737204063; cv=none; b=nEsnHqsikegO7yHxGciz9yqJ9ewW7oZ9dyu3R4BDaIsa4qXjdQaNlSYoaSSnbllFsQ90eGrE3bC5qe8sdYTLiWzLW2f7M4LCMEkNXCYO+LJkseJ3fdqsS3R+vLIjd3pZPLhTF1jCdSMpK2k1mp6gy7mukMDI4FL0CCCcDznPG2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737204063; c=relaxed/simple;
	bh=xUBRrkr1aLPPwLeMGNd5Xto6SUkG0PhtvIzCxxAX118=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TMowcmrdx6kRrK1HmigYM5lygMX0QQCEV4o5jc+WusOANg2RYsQb4CbDj56q0P7Kyv60YK3VDkhtd5UPZCTH0JtQJO4urFX3Yrqe9x3l56jE9jWhf6L9vHuzhgQ2LvACXk47jg8u9Kinee76WW2HGBZc+ynQ9TNN7b3soFApI3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ZEp4Z5R3; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa689a37dd4so577461266b.3
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 04:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1737204059; x=1737808859; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T8/6J4AE7rdE7DvbcqL7lv8LvF8nVi/MJUfgoa9DfhY=;
        b=ZEp4Z5R3X1VQRnqhAwWdAoKNwaCmNQcQXCEZx/qPPChjUJc8zCBX3+NkRL9PqSsUMJ
         so2AupEgVF9qpo73y+foLpOz/vSpfFhzXxb5YtWpFbDJ9EgPqSHvXSqcIxnJreHK8pwy
         6qhbZgDvv1/krgViaGFyxYNXCaQwBiazAqNRo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737204059; x=1737808859;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T8/6J4AE7rdE7DvbcqL7lv8LvF8nVi/MJUfgoa9DfhY=;
        b=IDv6P8/VA8m0YfncUEE+O6N7ueUxESKatr2Mx310LvYsbrK/LpyY44+RE/OYgWJN9y
         RTRpABOwZjHkbIxLqhhzsNxqjt8YOTgh26OFs30in+K8v1FeLfqaSoJy8JRZoeghuu7l
         v8U0zNsE0eyy8WCmIpTzNhuNvdXzsGLbtuVGchRkPP7zKmQ089tUYZBpwd6uHly+kHCW
         zRaxSUOyvjEsPvavyq50w7bWQ6gxNX5YyNscD6g4DY4UxyhIdDk6EPcz5Jw4SqkTG4XT
         ilC804wtOjT95+8dBeo74OM/ih0ku3yTKZyw5mh3wrwhnIldmHBmxr6aga71EtGohKEQ
         j9Dw==
X-Forwarded-Encrypted: i=1; AJvYcCUEGRurKe2OKyW986RULyNyMerIOJfZhEV+PcFzaCoKsD+XLMrCa+B14F87ucKK/YLPUCK+kHaV7KwH@vger.kernel.org
X-Gm-Message-State: AOJu0YzTGnaRnJQygqd2zdyeRshZCMDK6zIh0fcoU8dlf5cHLZzpKCvW
	hTkFpgT4Kg1PCVqkLGfIbA+ZAXgp4L/gt1ZrZ2PdzHEJJki7v3y/QMc/Gtsf+68=
X-Gm-Gg: ASbGncuAAlG7L2R/uV3dPu1s+jdx8OK12T2RlBe2H4occ25O+V8tfAfPcNZiOjKGlEL
	R0/40/VJ1GuKnEb9ucPAFlfbsss2dxsJglek4qsQX4XTSv+D6tboVofR9d7b0CKRISLH49rREFy
	Ao2xy0mjz9vUinMg41z7POFrC5+wENlJlZ3f0cBptOqF76kgsl9totFQfs2DRrpScX/z7OTpwRL
	sjBlQ46OQTECuFWWs8jClGMQJ93/38U/fAicJw5rDycPOt9xAVn1CXzUDXehWgxpxNW9/UPL6+M
	0hamXK6mRzjuxWdHJi9rx7O61Ps872loM/x0gQjiYNm9sGDnMq8gcZYPxKrWpRs7Bu7ZWBTsef5
	5f6xBUWB/1U6YcNNj49rmBJXWM18c4e4s6wkb
X-Google-Smtp-Source: AGHT+IFQ8yRpDrn6T0dn98YTwfRiOw5fpPhXyLBKHn9xj3KdLRo+kA5BkiKZot4n2tztl2zWC2T1Kw==
X-Received: by 2002:a17:907:1c0a:b0:aa6:abb2:be12 with SMTP id a640c23a62f3a-ab38b42ae4bmr531043266b.37.1737204059477;
        Sat, 18 Jan 2025 04:40:59 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-30-28-209.retail.telecomitalia.it. [79.30.28.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384fcd73dsm332562366b.178.2025.01.18.04.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 04:40:59 -0800 (PST)
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
Subject: [PATCH v9 03/23] dt-bindings: clock: imx8mp: add VIDEO_PLL clocks
Date: Sat, 18 Jan 2025 13:39:46 +0100
Message-ID: <20250118124044.157308-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
References: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
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


