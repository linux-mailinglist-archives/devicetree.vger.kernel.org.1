Return-Path: <devicetree+bounces-133376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6A19FA704
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:06:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E1F818871A2
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E59AA193073;
	Sun, 22 Dec 2024 17:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ifZe09F7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1E5192B62
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 17:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734887146; cv=none; b=u/bXPxrHPBBVeqsL4piCttfLpsVBgSynm+Pvu2cRCCXUpq6Vvj06nU8cpNFO8x1JHpqHCfPQqiB5E32wDZ5Ua0iyMF76P9bk0Fuys01hFsHl5ZmT+6LfR0A59fCpN7YyeMH3zW4eraXJ3Zxe9CO0bgtJA+MAHJ5W3HycTc4dXXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734887146; c=relaxed/simple;
	bh=n6yoYjnKbi5rVHTB8jhSWowc2EOzEGWibaplsMGisVY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cNxORa642BdQQzAwJU0H649myhjFfds9zBNiH8HWj3nLEDLcAj67xY5MZC9UxcETo47DBHs0X/rZIyb5YqUFNwz30yFDj4EUg0me8Xuz89iJ1tIMO9IDqStL2kIVC2z4NFtg/fXXzOdHsavb95gsS38qEPEFfhe+t2Dm5f0Hv1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ifZe09F7; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aa69107179cso599316766b.0
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 09:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1734887143; x=1735491943; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RyU4lCuYuLHxLX+AwXcVxyfMEtnFlBSdsy5ZVGUKyRI=;
        b=ifZe09F7S7yRUW6m1NFkjAfzjZT08lnP6H8IpCefRSQ997f0Am9XaOOFrGH3CP1ZTp
         WMB8CGiy06Yzh9+kmaqSwUpRGIG3suLrAvtIwX5fc5MSWBgEHpg1MF9u/0tXgc7J44as
         sLwdkncu6v/ruePyqMjRxqE9cbVX8sUx/z0rM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734887143; x=1735491943;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RyU4lCuYuLHxLX+AwXcVxyfMEtnFlBSdsy5ZVGUKyRI=;
        b=lf4C+5y+l+Dfv5vjSEFypuzRGAICQVo+fNkPmoRcwG1rL4O17Hp8R4RGnHtM0TtdCI
         xQooFR/X7kcZaHVb8dCPZa3FPF5HTXUB/dhf84OP6iGF8++fXIatRpi2+QyK8JVH6Egv
         mOqDdM5BMv6VDPHKgudllEF8mwScBk4AgoiELA8U5DN0jdKOO+1zliwwmAHXcE6l+/dI
         MQ3dZ6xMU7vP9XY8PFmQ1p8a0544YX/UG5gS6lfIP3lG5FGw454ac0a3jfH7rNgNKM5Q
         8nHWMKqXoxdAH25ewNrAev2spmX9hdYTRmmjsVpCt2OVuVujZJ5wWbUPC1zlt8yKevnS
         FXfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWt0IIYdInTTxGUN6DpcnbW24vwQNqXJw586Md3n6vLImbivX2jUvIqumJv5t54TmW1chz0/GfsFlYl@vger.kernel.org
X-Gm-Message-State: AOJu0YyJievPx03wivNctZxWXAXQH1swOdZVCtlv0+j6JFqNToppNJpe
	v3hu3TufTSDCglOsELz+R12ANIP5+8i2dJg3VKahXONZhWUnTdn+TTmuVt30YvA=
X-Gm-Gg: ASbGncsY4mocUgwctWDQM/MJfGwhCteRLJiIUruAOWA8I0w7wrYCC1+Ai5wig5yjyYb
	+3CxlVNNR+OOHPqLXRSRjJE3NKtSoU8D4ts76b1Okaywd0ICi1yXiKINZU6moH1aGrZJiVKs/vI
	eNjFiL3/JebngPfxViqPveh/T6EzsEn0O8BJahgcefDy0qkjAEXH69vPlC4sP3cgVy7GDdaEhqo
	PKtJvmfqz/Un2McsaRnOs46NTn9eLJdJqzcx6WDwZRFmZkUGl6xat6GxevR3PiRf0TAd5S6TdwG
	IgI1VZUO6LBi2gHEaQILWW4q9EU0Awb9kQOhefwboaEIbA==
X-Google-Smtp-Source: AGHT+IGEXEEbDuDzwKi4k+vJkd3SyYQ1mRIpjQ1XjrU9M/ldV4p5zj2O9ZKURS7MYfi9C41Ss0G/Ng==
X-Received: by 2002:a17:907:3688:b0:aa6:aa89:6d5e with SMTP id a640c23a62f3a-aac2ad7f926mr1174889966b.18.1734887143441;
        Sun, 22 Dec 2024 09:05:43 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.87])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe48d6sm414056566b.127.2024.12.22.09.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:05:43 -0800 (PST)
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
Subject: [PATCH v6 03/18] dt-bindings: clock: imx8mp: add VIDEO_PLL clocks
Date: Sun, 22 Dec 2024 18:04:18 +0100
Message-ID: <20241222170534.3621453-4-dario.binacchi@amarulasolutions.com>
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
name used in the RM is video_pll. So, let's add the IMX8MP_VIDEO_PLL[_*]
definitions to be consistent with the RM and avoid misunderstandings.

The IMX8MP_VIDEO_PLL1* constants have not been removed to ensure
backward compatibility of the patch.

No functional changes intended.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

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


