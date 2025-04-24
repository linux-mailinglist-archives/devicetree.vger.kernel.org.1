Return-Path: <devicetree+bounces-170178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B3FA9A1E0
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:26:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9804C16F54E
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C75A32063F6;
	Thu, 24 Apr 2025 06:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="S3od7xZq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF24B202C5C
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745475752; cv=none; b=r31hGZkJEslJlIdi9DX07C9EwFWIiGk/nY7zk330kLpjGxcf4JIB/SrWB0DD6Ek0WPRwc/NqsPuYNZYAkkCcMM10IRt6lpS6mPgV0si11u5yMaL/Kk60aCfo9WtWpVSgI2cAOsH1o83lo/Iwi2QXkaMSUT2v3C/0X6pdfJjOSDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745475752; c=relaxed/simple;
	bh=34ql/C/fKkOiPnnjJ/7R42kXdOJ4oBZrgE3R/kLi4t0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B0tcmYAGnCExg5uIFl8TwzaAN61Mtl8hXI+KbAT+obDL6jm/XRT8VX6o0CIz48yIajrkOkA+dJ/2yaA68BtC8NPQohh6+EcQ0sd1ije1fT+ipK6tZaL37gub0RiZeWe18i7S5E59rPRI38qO/QdQOo8OPeTxbBG5m9wxShl9tQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=S3od7xZq; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43cfa7e7f54so3707325e9.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 23:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745475749; x=1746080549; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4lFy00OTtg40In8pvAKghkkcDK/j3ZCpiu8RgaE7BUc=;
        b=S3od7xZq5Q0XsLUEYG4rCBlSJjIZaML5PdpyjWEvrKuNRuDAJ8dJO/5j+/PPMcgDym
         eqStKKqaAIA4Gbg7rHLU0Aa38v3GknL81wFWWHPZgKqjKGhRREcPEIOaWfN0V0IUcqOk
         VRAMYd2a81hV6jCFZ47r5Tz9J9BuElfshfnRE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745475749; x=1746080549;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4lFy00OTtg40In8pvAKghkkcDK/j3ZCpiu8RgaE7BUc=;
        b=PUCd/gwILwciCuxklxSnCchB5tHw7i1o2O+tV7smkojvBiovi8j+fa2qJD5EdwNbTr
         s7FPoyolqZsbnFkeeCC7QO15DuDZuDaWnGigD1uL+SWcyDMxkab5H34LUOukvMB3hYL8
         b5pKaLEw5XJn91dxns7Rlrhq/IEN9PbS6TBQLFZ4Mc07/EOWIPOGWcvzJ7qOdvI4XU85
         0kFzney0hGQWG6srKFG+qx2uoLD5TdO6RYhk6KEhOdMzjDTQbJLuOffV6BOLe/CVS521
         aTX2Cj/QjFzGbFCrq3XY/wF+jErN5y7gjMMAtL35gx62Jhd3LGzuSWMVkP+j6FrkNRZj
         uXSA==
X-Forwarded-Encrypted: i=1; AJvYcCU/JIyQXha2fZIpx9upyMrMSMFECBxdvwBOub37HtoaO2Gi/Qkvk7sgH/8J0j+PO0zsH1wETt0aQDsL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8gfoBCf553UwRP4lgIshL7kcP33O4IRat/vzpMGAiPfMIMWQj
	we3rDiYWkytc7Dhds3zcsEEevcgZd4U6YMB5xIuGhh1aZyQ8reb7mb73lcRKLx4=
X-Gm-Gg: ASbGncuj3YxTcscgX2yR9AJ63huqQEzQkfLMbJx+8pbu3mvkNwZNQUmeMPvEcBqLiwW
	LuOGO++mNPHB/OYAvaGEz61s2zHUxiZlufjTRq2R3ooG5lo28HGrMBcZiwTBJ9q2h+3eh0qGHZm
	sE0OBHn0C1HQ2E6SfuJeNRq7u2d7MGL0m4wMYqBMgAnuGCZ9UdfgSQXAQ0ST4HTJ9sejQ/9TAVh
	3oMpO18dr7rzqVEoNnpy/+sNZaytVbuceBpP2qlMhoLIuK5wng+hrJbdCtrxSS4h1LdErlMQTJk
	aPicSIwzCBO0wPoaDCnGANxKnq2Njr35cyoL9P8imaMQEx+d1WmtLiQr5KW292slQGGDk/m7ECx
	Ao36G
X-Google-Smtp-Source: AGHT+IGGlGn1TKiYozz1AjS13SIEPJhaArHik4vJz2EcfG850BwHredNkQnaeix77ID0kQX88QIyKw==
X-Received: by 2002:a05:600c:2045:b0:439:8490:d1e5 with SMTP id 5b1f17b1804b1-4409c46087amr6406085e9.4.1745475749362;
        Wed, 23 Apr 2025 23:22:29 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2bf8dbsm7243435e9.35.2025.04.23.23.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 23:22:29 -0700 (PDT)
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
Subject: [PATCH v12 16/19] dt-bindings: clock: imx8m-clock: add PLLs
Date: Thu, 24 Apr 2025 08:21:46 +0200
Message-ID: <20250424062154.2999219-17-dario.binacchi@amarulasolutions.com>
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

Though adding the PLLs to clocks and clock-names properties will break
the ABI, it is required to accurately describe the hardware. Indeed,
the Clock Control Module (CCM) receives clocks from the PLLs and
oscillators and generates clocks for on-chip peripherals.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v11)

Changes in v11:
- Fix conflict while rebasing on master

Changes in v7:
- Add 'Reviewed-by' tag of Krzysztof Kozlowski

Changes in v6:
- New

 .../bindings/clock/imx8m-clock.yaml           | 27 ++++++++++++++-----
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
index 4fec55832702..e83f08abd44c 100644
--- a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
@@ -29,12 +29,12 @@ properties:
     maxItems: 2
 
   clocks:
-    minItems: 6
-    maxItems: 7
+    minItems: 7
+    maxItems: 10
 
   clock-names:
-    minItems: 6
-    maxItems: 7
+    minItems: 7
+    maxItems: 10
 
   '#clock-cells':
     const: 1
@@ -93,6 +93,10 @@ allOf:
             - description: ext2 clock input
             - description: ext3 clock input
             - description: ext4 clock input
+            - description: audio1 PLL input
+            - description: audio2 PLL input
+            - description: dram PLL input
+            - description: video PLL input
 
         clock-names:
           items:
@@ -102,20 +106,31 @@ allOf:
             - const: clk_ext2
             - const: clk_ext3
             - const: clk_ext4
+            - const: audio_pll1
+            - const: audio_pll2
+            - const: dram_pll
+            - const: video_pll
 
 additionalProperties: false
 
 examples:
   # Clock Control Module node:
   - |
+    #include <dt-bindings/clock/imx8mm-clock.h>
+
     clock-controller@30380000 {
         compatible = "fsl,imx8mm-ccm";
         reg = <0x30380000 0x10000>;
         #clock-cells = <1>;
         clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-                 <&clk_ext3>, <&clk_ext4>;
+                 <&clk_ext3>, <&clk_ext4>,
+                 <&anatop IMX8MM_ANATOP_AUDIO_PLL1>,
+                 <&anatop IMX8MM_ANATOP_AUDIO_PLL2>,
+                 <&anatop IMX8MM_ANATOP_DRAM_PLL>,
+                 <&anatop IMX8MM_ANATOP_VIDEO_PLL>;
         clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-                      "clk_ext3", "clk_ext4";
+                      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+                      "dram_pll", "video_pll";
         fsl,operating-mode = "nominal";
     };
 
-- 
2.43.0


