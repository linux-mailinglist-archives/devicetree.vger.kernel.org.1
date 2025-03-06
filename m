Return-Path: <devicetree+bounces-154814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F2AA5498F
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:36:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E9913B1B89
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:35:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EAE520AF6D;
	Thu,  6 Mar 2025 11:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="dZCz4B3m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604862153F1
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 11:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741260659; cv=none; b=D4q2u5LyWQ6ijei5WwgB65HhmbkYC3QcYHbDl4IF7G1GU3gDWdud3p+1O8NVLGUcQK2Y6wiFkV95gZN+9kKz2dkHxWM2USln2uhgUzCzPYn5donFxrjFYtF1ddLe6nA9pOAzDHnz09Y7mysgpEl+8NmB8ucSok+Ubz85kG9G14o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741260659; c=relaxed/simple;
	bh=3HpG5JSfnp1rR8LM9tLDyGAnkrv7gQYHSv7Ks+OYcRk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=U78oljU1WD35kfsWmwOByf2Dv93Sl1q7zQ5q0ayqrVRXPVAO7srkygRRz45M3jvvyBGTgdKglAuz/AYfpYQZrCyjjaJwZn5yTP4eDMGWfwX4JLJyT4/7jryz9o/OVLWyS7mulPE1gVNxyFNyS6erahQmOC4Wdk21mlZ5QMjSBDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=dZCz4B3m; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3912c09bea5so413286f8f.1
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1741260653; x=1741865453; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AjwlhaAOkrwwhyUyrS6nha6mqO5aPDlQoHWfonPTSAw=;
        b=dZCz4B3mo1aJhl/32RYWzj3TKW6fTmDe004hw3Nel2Ub5pvvKpoflzJg2ObwKji0Gw
         2xs9/MVvP9sfulN62JvIpELZLs25hc/LiRNbTz9T0/vwD3v/7YKrjRPT/OwJpT710+Gr
         P9c9BcmzDxu8Jm6UZyCR4ioipG1JjvcsckrYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741260653; x=1741865453;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AjwlhaAOkrwwhyUyrS6nha6mqO5aPDlQoHWfonPTSAw=;
        b=Uozqz+ZBJTcvpC8u8wXai4jhobEcEkoZYb8ztKS2nZpFyDq+wFkHUSU8d4NGZLRnKC
         D0QplDpuZVRauvW33AF9b7RHM5OXzq08qs4jLt/L/+i8eHtkRM4L6gR4Kys7NWUGcRf0
         on+rr6G+rrwJt8VFuMBK7jYoeid8lqV3sw1RprVL9x0TKsGZGB8VjjQu6Hyb58OQBkmW
         LzWfsGRuWXvDTtOmNpph194sS8CcXmb4ucyqZR0sbVecxSwGK3n1vDdPx1c1SzMzIZn2
         y0ywjHB3PlaYG+53pt6BV9P52gqfOcJCdvb5cz4G5YK7xuI+nZuFlXVIT1cjl1r5ifQB
         YV+A==
X-Forwarded-Encrypted: i=1; AJvYcCWcaEA/DwT7KIVa880Gp90VuypvPKIlotRFEWppSYNn0TorgIZTH38W4fzrErNRAVuit6seThChZP43@vger.kernel.org
X-Gm-Message-State: AOJu0YzQXVzrgnoAw6HUiuXBLbFMkv6XK5f8DbgmT3wCeLoY90+yJmGP
	NaMbLc+4x68sWte2onQp8/CfS9X5w//se6Hit0PHW9OwQuyEfgP1a00T1e3aUb0=
X-Gm-Gg: ASbGncu62USoEEkmR3UOiPtRjwAupi/VE/i0wUtvK4u+W/R2H+CcNJjVm9zE2rSESHw
	QhsRYroWOIsPoec3QLXKqBuecjllSQdFRV5WSi8Tq7m/h3wNiVZpa24nhSNsmh0FEpjJPygYVeD
	MWgvJj1Z0xWDwsf05hWYUOTarsyKAkP9Hcw4Dy3wStaWF0GBnKV80khxd7Jy3z5S4E7njun5AY7
	uyhxC0btAEbMDMgcApG2JDPpVX5SQ+GKIYE20EOUyuR4WEtFhjJrj/RemT6NNvKrKGGRcj+/l+Z
	2uH48MeaJwMDWWwvwTkb1Xt/pzocZ+HY5slNZkCXzuCz0e/xSog+5U8Z7XNyOZliugs+DYOF/TQ
	vhaCcCQ==
X-Google-Smtp-Source: AGHT+IGSCIcSTKiT7I3EfkCIRWduueONT660Ga+g5wK4QQGoA8bK63FcMx77szIfKMFdz74Of9fxSA==
X-Received: by 2002:a05:6000:1ac9:b0:390:de58:d7fe with SMTP id ffacd0b85a97d-3911f7d1074mr7102679f8f.51.1741260653419;
        Thu, 06 Mar 2025 03:30:53 -0800 (PST)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:4703:aa8c:6eab:8161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912bfb79b9sm1749650f8f.3.2025.03.06.03.30.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 03:30:53 -0800 (PST)
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
Subject: [PATCH v10 15/18] dt-bindings: clock: imx8m-clock: add PLLs
Date: Thu,  6 Mar 2025 12:28:04 +0100
Message-ID: <20250306112959.242131-16-dario.binacchi@amarulasolutions.com>
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

Though adding the PLLs to clocks and clock-names properties will break
the ABI, it is required to accurately describe the hardware. Indeed,
the Clock Control Module (CCM) receives clocks from the PLLs and
oscillators and generates clocks for on-chip peripherals.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v7)

Changes in v7:
- Add 'Reviewed-by' tag of Krzysztof Kozlowski

Changes in v6:
- New

 .../bindings/clock/imx8m-clock.yaml           | 27 ++++++++++++++-----
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
index c643d4a81478..d96570bf60dc 100644
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
@@ -86,6 +86,10 @@ allOf:
             - description: ext2 clock input
             - description: ext3 clock input
             - description: ext4 clock input
+            - description: audio1 PLL input
+            - description: audio2 PLL input
+            - description: dram PLL input
+            - description: video PLL input
 
         clock-names:
           items:
@@ -95,20 +99,31 @@ allOf:
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
     };
 
   - |
-- 
2.43.0


