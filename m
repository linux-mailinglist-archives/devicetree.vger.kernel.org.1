Return-Path: <devicetree+bounces-133382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C29F9FA717
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:08:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C96D2165148
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 770621AC427;
	Sun, 22 Dec 2024 17:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="XGuLn1o8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F309B1AB53A
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 17:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734887163; cv=none; b=a864dAptQwQUiHBXepLDC6Otl9nGuCh3o7S39y/LH3sgNBsh/RNKGu3K/Ax0+ThBi0gIO+MB+iIXqnpKkska8sWZJh6iKGNfIzIaugUgnVl1PQBhdksOm5pNA5VWxjlrzF/PUC9sXcbJN0XapcMUQvsRM3C861kf8HC3xu2OSxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734887163; c=relaxed/simple;
	bh=TjoCD0n/fid43aNSIysze2zCd8hypyQLvXidZ8o6K7M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aKUZ7Hn2qMkxWIfTF+54omHCTKogvBHS1QPNqXP/MFdm7BO5t/UsYSTDU6OQaDVoFkGkacEciUxMakrUhbpQqXQMfcX6ItWndyCsl1N/USqcM+TeHRu9UTg/S5PCUqUd9sBTJ6YMgzkUIxIoGvtJjF6DlwphLbhZrTiPnmoxGbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=XGuLn1o8; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5d3ecae02beso4181648a12.0
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 09:06:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1734887159; x=1735491959; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m5m5kN2c/9wWpkcrILoC2ZFZNTUAnB55ZbrER3I9Ujk=;
        b=XGuLn1o8feF39Hw+B0LuxNTEW5D+Jg7Zkc6YqhVx1BEXSUtAhq2/whrppu+jOyl0jB
         Js1njevU1YfffPO9HralzuwA8bG98OZZc44TrUXc1O5kYqLEj+uhjgn3HLPHJJrehewH
         PRN1g7/S0TvabFNK1TgcU3nDmlKusSUQNxM38=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734887159; x=1735491959;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m5m5kN2c/9wWpkcrILoC2ZFZNTUAnB55ZbrER3I9Ujk=;
        b=RHkYhJHIGztQvd6Whv74nDL8tkMSZLBq++1LWL0g+/ARCNv3127q/htbazROTAHv6J
         g3zQmuPqvaHNxuW0svDpy+RlpFufqyHQLpZ0bvxdAGln4vF8aZxXp544C/eZxQ4+E59E
         kS4Q4LBZqxQUiBfh+mVIbrXx1vMWOYyP2MFanhn75VJYeJ9d6GVxjMGPfKkG9+vOHQna
         ltl2LZB3YHw2K0kfAKSgZTcssrx/7wc/Tck9spOi7LRdm9Ivl1uaj6W4VuMrNbicMlco
         QxM+MayuoqNlRgGDS36obdRJKotXeLkl19aEBGl0tfvG01BkXPNVKTiWzmAOnuR62Fgl
         fJYQ==
X-Forwarded-Encrypted: i=1; AJvYcCU340WazjhVwB3TFbVBjjjoD/mM6zxRcDG8i+Lbu67s3pQyUbUpj7kiO7/AwEceGAMjGyLUkZzvpB96@vger.kernel.org
X-Gm-Message-State: AOJu0YwSXwbCBWLzIjYTL55tGrt6GjrBTpMUikEQDOljjLjxAT76x0mb
	xG8Z3B4jpxqH5ATAjQtvLEns2BKgP02sdWJiSteYzO/kuyIFAdkTIj9rn3YOijw=
X-Gm-Gg: ASbGncvnnFkpzHBXCLzhqPLIels0sELaucdfAycBjrdxh+fRTFPC0Gcy96ybUrxzOHV
	Cw/xLJkhfOlwgsj0KmTpg7FYHsLRwSdp4ziVNlkiuzZWCPaeZYFbD8NXVtWHcxcj9WT/D/QZCSB
	zUdVz0DaLFcqjJAcsLagfQ7QZAIuiBw4R1QxfA5i8bsGfhRjlFJqtwKjgPLptY7P27Kv3sh2EDp
	VIy7hu7l1fzNSEtFcnOuepsaRY88RsNyPtqpo6Xh9mOjyF64thJJDM+Pk652+XVbBrNYNb29lMz
	OA/MYxhEEffTQ9lV8YmCeQxa8lHP7OMkRmNUfRZKOeWEsg==
X-Google-Smtp-Source: AGHT+IGQ5PR82cMFXIsPEja5Rl1PnbvtKofbUp3RjtQReEYEa0n9aDLlqkOdSSEf7LtARguXmUTwww==
X-Received: by 2002:a05:6402:3714:b0:5d3:f6cb:73e4 with SMTP id 4fb4d7f45d1cf-5d81de1c236mr8514264a12.34.1734887159497;
        Sun, 22 Dec 2024 09:05:59 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.41.87])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe48d6sm414056566b.127.2024.12.22.09.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:05:59 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
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
Subject: [PATCH v6 12/18] dt-bindings: clock: imx8m-clock: add PLLs
Date: Sun, 22 Dec 2024 18:04:27 +0100
Message-ID: <20241222170534.3621453-13-dario.binacchi@amarulasolutions.com>
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

Though adding the PLLs to clocks and clock-names properties will break
the ABI, it is required to accurately describe the hardware. Indeed,
the Clock Control Module (CCM) receives clocks from the PLLs and
oscillators and generates clocks for on-chip peripherals.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v6:
- New

 .../bindings/clock/imx8m-clock.yaml           | 27 ++++++++++++++-----
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
index c643d4a81478..05bc01960045 100644
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
+                 <&anatop IMX8MM_ANATOP_AUDIO_PLL1>,
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


