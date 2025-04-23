Return-Path: <devicetree+bounces-169684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C0250A97E81
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 08:03:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0B3217E5F1
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 06:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E338266B6B;
	Wed, 23 Apr 2025 06:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="AIrWiW+L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1380D265CC8
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 06:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745388183; cv=none; b=DmMR2d0tlxWv2Q8RA/glgjSlajWDvKNSm23DSc1HmTFijsz499ntsJcAtvd9DdTArmB5e4xH3qdQwPbvB0KbtIetoDCEdIYBgwVSrXAMOy/MaCq3oS6AufCCUWR8bJH7E1EKCsDHLNmfsdIYDn+WfDOx5gRBJT0I0tduO6bYM6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745388183; c=relaxed/simple;
	bh=xUBRrkr1aLPPwLeMGNd5Xto6SUkG0PhtvIzCxxAX118=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bw2ljwjWa1bjswSaZuD0o1QpmzrwNlgKBkxYGliInr+MO88cN4r78vjW77vKJdEwan2UcRDktK8vc5N9paSlEDOdPJKAokXMlq2g+azWHCr1UARNfzMzIUPZPzFYp+EVFHrwlmN4bXIy4LX5jXVN0m8EBoykBViLNmqxK2YOaok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=AIrWiW+L; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5e5e34f4e89so10965363a12.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745388180; x=1745992980; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T8/6J4AE7rdE7DvbcqL7lv8LvF8nVi/MJUfgoa9DfhY=;
        b=AIrWiW+Ln7HlOyCWTrPwaVpoQQTWTXksMQks5mENQBG1qm4nVIl4rymbpDmb0kdt7r
         QBe7gp+lBz4e1JJMmGKQdE3cbx+f5uCHJt2yrodw2kVvGTlKECxgfoTNkHY/5k4R6bf1
         qHspPd3wmTXKccOPmoRFHgDVVLJ+lwVsniT0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745388180; x=1745992980;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T8/6J4AE7rdE7DvbcqL7lv8LvF8nVi/MJUfgoa9DfhY=;
        b=amsKZjc0mJ3pfKRN5wUmtz1wsimK9tc751rTPteIsotYBpD8ymXB3QJEMyhkLi5jit
         AQAa2nMbFXrz3vfNhqkEs1AB1GEBq+TV+b3lmGHx2Dy3UcbulLqKMYHQK5gd8LQE+Opc
         F0snxL83oJaMvEzFnifV2lU/in1oQVPGmYkBhb7oc1JJ44yGmRkntyiy++2gjRsBfZeo
         3bfAk2666nljZltNCHfKs64T3/OIQK2C+sHuTsM8RBmg7DtrlQggD25VK3g0CDAkS7rB
         QOWpt8h+LQkA4iqRTvYRI3p5Mn1yoZG4Doiaept7oCTu91AJa5Jf0GvOKFeNecDLP49i
         Bc6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUMVQ1oI4527J7sOZI661VV/Ld9Y0OifT29S4JAo6Eb6ZMroE9wlityBdJwNjXDromyhmruM91U1sob@vger.kernel.org
X-Gm-Message-State: AOJu0YyFT5YyXaQ2ReUcQ7E1ARPRG+qBBLM2au7ImPm6ASMiLGt/fg66
	LsoG099UY7NUeEsjzTqKmDjpRFLJlb03/qgbCdklZSgixA4kabFimkSwGv6HYDs=
X-Gm-Gg: ASbGnctOm1yVhC5sODjdfys9mjMh6GAMRLODsI8Fyggo/RppsWt/TgtlQBSxu+zNLQ9
	soIIxa7+Cx4+PAN/sxP2MkLfEA6ZiJ30h4MCnaEKxDX/vRbxa0U1LEKyyVPEzBy4qnH9Hsyq8qL
	Ob902kvexz75wOnsZZtSV/VlBXLQwKtFmfyzDBoPu3guLzO3KShgPcZaA8EbQYIMhm8RoIAIjdb
	qYUyJCZq5LjLLKPJAIwy72Y3fIpsGEqLgAYSrlDTULhG75JzRnIelzJ9EuiCKFkIyFNqNLNsi3A
	idacEdKgxJ4P8YFnf2Bva7agfpDFBPxYcsRkNC5gBDy62Ej05B2fXOi+otALPnekxYAI04YUsxh
	PsFFo
X-Google-Smtp-Source: AGHT+IG7e3Q3dj5KdFkcFK0kkZNsQ7n4rcyUNpetxzkW6OWRUCissFclqwW1aRy2urkwgRK2/F5w3w==
X-Received: by 2002:a17:907:c807:b0:acb:bbc4:3344 with SMTP id a640c23a62f3a-acbbbc43a1amr550390966b.22.1745388180459;
        Tue, 22 Apr 2025 23:03:00 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef9e7e6sm745234366b.162.2025.04.22.23.02.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 23:03:00 -0700 (PDT)
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
Subject: [PATCH v11 03/18] dt-bindings: clock: imx8mp: add VIDEO_PLL clocks
Date: Wed, 23 Apr 2025 08:02:20 +0200
Message-ID: <20250423060241.95521-4-dario.binacchi@amarulasolutions.com>
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


