Return-Path: <devicetree+bounces-170170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C2CA9A1A1
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:22:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D83657ADD59
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41C931E5B95;
	Thu, 24 Apr 2025 06:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="kc1Ik57t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4781E376C
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745475724; cv=none; b=A1b2KkqiV6MnTRbvK+rzq5wPOo4NrJhB6ETeB/+STJT+4PtoCs/FgM3+DUYh904mt1KAhEnQvFYhZYn7cfMtq78dulO59J5VlJsaS8zFkmtf9vFWCstZYft6ga1e5QT9ASRhPf4hM+3GrcGy8z4x0xPrSYLFTC6+NPN8SOjEjhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745475724; c=relaxed/simple;
	bh=+1wDCnUf6V6waC2u4F0CjceMoJUJQ3m5duPgNX1wMjo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=P+cxW33LnXIRWbX3onmmXwfv4ch2C6U2C4FOFiXN+NYyHZ0I/8y7ODcixI663TERyF6UdFVp+bLZlSKjkb6HDLY6/H8TN9JJsr9Ks99apfxnCreAyetPXUcmTuc6IT4BbGvwISf0AeGwWVE9CHln7G8v2zWCovvfbWNhsrxfezk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=kc1Ik57t; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43cfa7e7f54so3704795e9.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 23:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745475720; x=1746080520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0D3K2ln9Lb+MNQxN4twGUjq+Zn0uEKE9IsRwsBI/jVw=;
        b=kc1Ik57tXUuabpv2UqrZwYPKt7saiONA03ufohvvZop7y9CVcANJv6xw/7HW8l+bJJ
         9tFaJtxRIWg57fOGFoZM/7SNXgS/MRs+dyYjzTDMSs/WvFeL6rJuyCgtuxfdOwoXidpQ
         ZCYHxE3JZWQSW40vUGTdGbzsVYgtVF4ysh51A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745475720; x=1746080520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0D3K2ln9Lb+MNQxN4twGUjq+Zn0uEKE9IsRwsBI/jVw=;
        b=LVY5aeuLqN5TzfMLweEKFwm86DfWV4dQ4tAnLerkGmhnJm9qGKbUmji7Yy6nhKlUQk
         rxjB8wbg6IO5Hd8QVSXN7M6NbzY51qLYeIBQg2jW5X+DkwBMxMmY4mVGT3fdtnFJozeM
         vQIv2v9g5ZvvQBSWentP34uoHoKezZsV/Rs8ZPB9HLMcFCXfTR8BMXs+nkou5MCQ5tZK
         aZ4eLX6UgPMOGCzNhLNv1P2RPBVhHgsKUWEaCP/gPrmJS0YupyyURFmP2QLB6jjmdCh6
         aLQFzjIUqGVkPI5uEi5NcVUSPC3sTDDBYyQAhPuJRtaTECKHklNmCw/9vbCr6GumpK4W
         XP+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUW8zhkK0IMyDeRcRTH0ZgZ8xpVL+D9WdhOmqD/oxyNa1UF4IjPxiMq4GU34NI0WbCcrNJMnOZ9w6pq@vger.kernel.org
X-Gm-Message-State: AOJu0YxMSccApQMFhBujVFihom0jivCX4HIu0DRFqLM/MwEZWN6xauNk
	tAd5HKeEVyNwl2DHHvoqwTp7XgFYnhCijITs99qqBkqdsXffG9yRGq2aivDQ9Eg=
X-Gm-Gg: ASbGncuZU298prWIFV+jyJtZB1XFpBkiXrnYT57BmON9l7tcBo0r9aXlKoM/TxEqLKw
	8drcP6d7uhLe9/kwfjcI882oEgYgA1s7l6+3NCyDdnM56AFCBTBnrSKvxFmf4IkY0qdoE4t79cz
	6P5v4dq/VKRInQW8dBD35TgrDRTtoWslLIs8btBK+F0slsDQ0cCEPLJb4iK0M0KsKHtOypJy4gz
	WyB+bIv4Bo6cuTVwBbjdOQYX+7L1G4LM9J6AHX7XKhzn/cfYWRTkN/G9F4RGoLGRK5Kj9rm/RcZ
	J1rQIWin2d0XZ2kjqvS3NSZQBADf29Z0NNL5KOX8fBVbvZriB7fbrAuXc9lraoWUvtnRpe0p2DQ
	jaVHT
X-Google-Smtp-Source: AGHT+IHymxJmFKpLmwrZam+TMOOI/0cy/ciCsXy9MSaKz4V/Z0qmORSIolFTEtnoiInGOXnttK5eTQ==
X-Received: by 2002:a05:600c:c092:b0:43d:186d:a4bf with SMTP id 5b1f17b1804b1-4409c399b9amr7368115e9.0.1745475720552;
        Wed, 23 Apr 2025 23:22:00 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2bf8dbsm7243435e9.35.2025.04.23.23.21.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 23:22:00 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
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
Subject: [PATCH v12 01/19] dt-bindings: clock: imx8mm: add VIDEO_PLL clocks
Date: Thu, 24 Apr 2025 08:21:31 +0200
Message-ID: <20250424062154.2999219-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
References: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
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


