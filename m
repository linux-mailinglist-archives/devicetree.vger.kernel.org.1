Return-Path: <devicetree+bounces-134406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E649FD620
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:57:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75ABA7A25AF
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 075761F866F;
	Fri, 27 Dec 2024 16:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="eyl4VRCD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE1E1F76CF
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318648; cv=none; b=bCgpFm+cDRXBq8edVEiJnOeyevkk6zUhQE+WaRHF6nwVJQso1qUk4sOpQ1n08peUVyNz5fWx0Q3S6m6tenhYQLS6PpPI43a1YqWSVTfPbRmU4WtMJ2OipcwktalfAce76VlgQty8y8GTXuwjNgcwaWuPCYy//yJhtWBsby4gTYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318648; c=relaxed/simple;
	bh=+1wDCnUf6V6waC2u4F0CjceMoJUJQ3m5duPgNX1wMjo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J36dkk+2eZZFQEVFQOEnq1P9bBgw62djodNC1/NM8N8zG8AN0LS0kuLoRuDKy8frFYysD31lRxa+P7uZMGaBkUsBdoqJrEtVogd7c+OwbhQXuDn4/W+MStS8sKUO1OAlRAkQBW9n0UlqBsGGyuJ5PW8w+5bQn/ZMaGuSR6rcCxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=eyl4VRCD; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aaeef97ff02so519557866b.1
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318645; x=1735923445; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0D3K2ln9Lb+MNQxN4twGUjq+Zn0uEKE9IsRwsBI/jVw=;
        b=eyl4VRCD9EM5XtwEMUi5XHUsqiip8hcsZ51LRkRgn/Jz0xwYGP0B/HnrGBg1W2Q9UF
         qzyLp71TtJzCva95Poamaypoff775fYCFQJ2YFYxbj2zCWvXWLVbjBRirtjv+Tw0deAF
         NlJw0DFYcCJWp6nJLwrSUNyo1zlIBoGtqXb24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318645; x=1735923445;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0D3K2ln9Lb+MNQxN4twGUjq+Zn0uEKE9IsRwsBI/jVw=;
        b=j5P4bEYr3B8o9z5nq1Xz+jBOXHQyBZAqUFsKvuHjfO319yui3nPMQKO6lb+lKGeVYj
         P3II+zcBQrG64Pcd4pVRo1Wos6KfoNKr/kCL8iOoee1k/JHsOrTr9JBUv/lkxlEBJ5SV
         g5ImsrkeblS7t6BBt5XlFby3ycE++483ZwlX9fRuzAxG630hxyQP+AIUlKdc0X8kVAkY
         O6N/m4HwdmMdZctBm8MGdmk5pMuTLQF25lP+jydsn/g3tPPZlhi0/jLdy6Q9rauewXej
         r0lrHrE/bFuTL/sClco3lQqDAUgFNN1uqP5sDcAE1Fm/sL6q79p5jM4LSra2o6nJWEQp
         x4/g==
X-Forwarded-Encrypted: i=1; AJvYcCUI9HHRCAGo+gu4O0DpoIk/7/8xu2slcQcOiLAnhTW7REJ8XsqKGBkCw+vCxJK48XkNBWgxQEMr1YC3@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9mRhtr0ZjnQYrRRF/NQfRGiU9gS7ezm19xCgIVbNypXM0LlFU
	zE/OUQcXqqX1rIQGw2DIrWkUhocXbYSvdSPc0eJ7s6jXko9O6rzLKQg44ssQQZE=
X-Gm-Gg: ASbGnctqPC1xZFB7nt/HzgEI2wVBE3SK+PLbTiBcHbqC0qGdcPLIxwZKyZ3DAmGhgqI
	QcAP0auIUn/VagnQic9Q5jqqnTkSZtkkxVLt+nMnBuhthR6VWiVss7jtlkudDO0iWACl1DOyyU2
	8kxzQpdXmi64toKbH88i3lTXpE4/5+rmYMgo7m840oMzb0WTmm+izp2bocc6Mrg/LzwVmLvMgN2
	Si7EtrSU+yLsubUpsV4gz2Xoldk7ixhLCccLO144k7OUvN5yaL/M71atuKQu8sJsQYD2GlOcCyD
	l6r01Pp4ZfUNYcYfzMt0ag==
X-Google-Smtp-Source: AGHT+IF2wAZiZXOhSk5ioYTNrzhfdCszg+K/Yp9x5T8NwwqXN7bzl3LV9Ed9BE9UWV7Fx+sow9CFjQ==
X-Received: by 2002:a17:906:c106:b0:aa6:7cae:db98 with SMTP id a640c23a62f3a-aac2d447333mr2312573666b.10.1735318645446;
        Fri, 27 Dec 2024 08:57:25 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:24 -0800 (PST)
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
Subject: [PATCH v7 01/23] dt-bindings: clock: imx8mm: add VIDEO_PLL clocks
Date: Fri, 27 Dec 2024 17:56:04 +0100
Message-ID: <20241227165719.3902388-2-dario.binacchi@amarulasolutions.com>
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


