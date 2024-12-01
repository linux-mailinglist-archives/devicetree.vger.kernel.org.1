Return-Path: <devicetree+bounces-125834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BC19DF6C8
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 18:49:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95EC2281A57
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 17:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CB411DE2B8;
	Sun,  1 Dec 2024 17:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="TdXRAtwe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8A61DD526
	for <devicetree@vger.kernel.org>; Sun,  1 Dec 2024 17:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733075264; cv=none; b=HrPYicgX5eScP7kw/z5EccYiuNly3NSUv5pAvb9xxa/YsH77KhmJMsmQV00khogfnSO4jl3+E86Oxiq2AmQjFcgp4lRWYrTq7f811dX70MtfHKHe+yxeHG5rrAll9fXkHyxgs4EV/Bcz7GhoRgfgto3Y3US/883NywVPblfc0uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733075264; c=relaxed/simple;
	bh=i+zaQKGw+SJKrdqETRU8S6D5mn97fzLB2huk0KC7t7E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YrPuXwhFIk/JO0/8Of2c8u8DXa0/J/zp1WHqg7SZXpHFMf7WZg5eKbQ6pKPkssxKHK7PEiQyAwIlVuqAR2cfdTCLSlS2gabVa28IwXetZ09ZoAwAd8gQZby3Ol1g/cFHUvIBu9t+CjpJ0uFXvPYhx7uUdrM1/z1HQlLOrmlu3sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=TdXRAtwe; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5d0d4a2da4dso1332522a12.1
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 09:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733075260; x=1733680060; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B8Mnl1funP026bpupc6kClrugt4oD6R0yljLualdHeA=;
        b=TdXRAtwedXGz/VxnGAzSId548nGsSo4FiAhzNxCEnpvXo2MziF5KONrLvzuy2U8x0B
         OxpsJzoo+EPImiuLg4CM8qSasIW+mZk5ytJU4q21Ao/mjXDVlOm8ubA3MKjmMvKJvrIw
         sKo3X/nQtc3oQccs9QPfUgHZ3xOwtTrH3eIgE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733075260; x=1733680060;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B8Mnl1funP026bpupc6kClrugt4oD6R0yljLualdHeA=;
        b=Y2sy41g6e1VjjzYlXiG2HsuaQ6JuCj6DxNN7tqVA/Ryjn2xs32r0105L4CmqQDacNz
         VxqB7v46AHCwxZzpb4iU++PSKxT/MF0gdeqx6nJB8L+a6fToXB+LzXQaCYh7qBPjzpNu
         nMdkPjA8jvIYUuaRLUkEdC+juRn5KT/RP4Fhkv3AbU66A0WMkYiekJu/ecbDcrvfUuDK
         ToJ+AgNFZ72sT1FU9fUMGV2XlAwTbfmBufgrDS0GgbSnScDqpKTal08a2Z6OYhK1uFw+
         aW6f2T39CRzzlEvah1eN5YPZTvTLtNHBlSQO5N20msy3nHO5/s4i565DxMnuqY+9fg72
         vGtw==
X-Forwarded-Encrypted: i=1; AJvYcCXwQLXwqvOhDzEnL3v4Jk4mFEpXzoxge3v4NWxMxXupgb16WGykrqkH9o/4T2yxwuJ92MCuzGc51QGb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2bTNkSRU307mrY4w9ke5Jjc0RixjpGn4XgEhK4DzOElMa1lZL
	2Q/Rqdcg/mbuSomBKIZEqfvoH3AywzSlIG9C/Q2tLEiIHgtQLvrouZtnnjJohRc=
X-Gm-Gg: ASbGncv//g00CoUty940FJ7s6zOM8O5ywzbu7jKMvKBmY0WeBM1cMKWijcIvpXMTGop
	ET/2RGhae8ntiSMcZaMyELG7dJziTYB7/ywCdOq0xcUvA+tH0jCvez0n1C9vrGcujyFAFfYP1+q
	mHBr1r46AEryTlejtGCH7p2lZHGK7zCVRZT+XfswAo3ixMzbJUsWsvS7wXeMldLN7wUsbVughTI
	O0dmH6RsGG7YXYx0LPIldxBYxyzL8JwaT4Zpo+xkjZb63aXzBgIYf7YPLrJJh6hYkPaDwKeXKrP
	s/CZCXJltQumedxE6YGeu1HJBBsD9NTTz4dMZwpc2Gs5uB8USNHck7s7zYXvQLWqZlC8/MnxYbM
	VKRcANRdVbJHL4GsF
X-Google-Smtp-Source: AGHT+IFV72Xrog96l7fs/EfUFu2CelIfYRaRPp9iwFgjtNC+Uq3ekIXkP8zlYtkGxH0RM/aN9S5fHg==
X-Received: by 2002:a17:906:2921:b0:aa5:2232:c8d2 with SMTP id a640c23a62f3a-aa580ef31c1mr1541928666b.10.1733075260573;
        Sun, 01 Dec 2024 09:47:40 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-54-94-193.retail.telecomitalia.it. [82.54.94.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a78esm415220066b.163.2024.12.01.09.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 09:47:40 -0800 (PST)
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
Subject: [PATCH v4 13/18] dt-bindings: clock: imx8m-clock: support spread spectrum clocking
Date: Sun,  1 Dec 2024 18:46:13 +0100
Message-ID: <20241201174639.742000-14-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
References: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The patch adds the DT bindings for enabling and tuning spread spectrum
clocking generation.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

 - Drop "fsl,ssc-clocks" property. The other added properties now refer
   to the clock list.
 - Updated minItems and maxItems of
   - clocks
   - clock-names
   - fsl,ssc-modfreq-hz
   - fsl,ssc-modrate-percent
   - fsl,ssc-modmethod
 - Updated the dts examples

 - Added in v3
 - The dt-bindings have been moved from fsl,imx8m-anatop.yaml to
   imx8m-clock.yaml. The anatop device (fsl,imx8m-anatop.yaml) is
   indeed more or less a syscon, so it represents a memory area
   accessible by ccm (imx8m-clock.yaml) to setup the PLLs.

 - Add "allOf:" and place it after "required:" block, like in the
   example schema.
 - Move the properties definition to the top-level.
 - Drop unit types as requested by the "make dt_binding_check" command.

---

(no changes since v1)

 .../bindings/clock/imx8m-clock.yaml           | 77 +++++++++++++++++--
 1 file changed, 71 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
index c643d4a81478..83036f6d2274 100644
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
@@ -43,6 +43,34 @@ properties:
       ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8m-clock.h
       for the full list of i.MX8M clock IDs.
 
+  fsl,ssc-modfreq-hz:
+    description:
+      The values of modulation frequency (Hz unit) for each clock
+      supporting spread spectrum.
+    minItems: 7
+    maxItems: 10
+
+  fsl,ssc-modrate-percent:
+    description:
+      The percentage values of modulation rate for each clock
+      supporting spread spectrum.
+    minItems: 7
+    maxItems: 10
+
+  fsl,ssc-modmethod:
+    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
+    description:
+      The modulation techniques for each clock supporting spread
+      spectrum.
+    minItems: 7
+    maxItems: 10
+    items:
+      enum:
+        - ""
+        - down-spread
+        - up-spread
+        - center-spread
+
 required:
   - compatible
   - reg
@@ -76,6 +104,10 @@ allOf:
             - const: clk_ext2
             - const: clk_ext3
             - const: clk_ext4
+        fsl,ssc-modfreq-hz: false
+        fsl,ssc-modrate-percent: false
+        fsl,ssc-modmethod: false
+
     else:
       properties:
         clocks:
@@ -86,6 +118,10 @@ allOf:
             - description: ext2 clock input
             - description: ext3 clock input
             - description: ext4 clock input
+            - description: audio1 PLL input
+            - description: audio2 PLL input
+            - description: dram PLL input
+            - description: video PLL input
 
         clock-names:
           items:
@@ -95,20 +131,49 @@ allOf:
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
+        fsl,ssc-modfreq-hz = <0>, <0>, <0>, <0>,
+                             <0>, <0>,
+                             <6818>,
+                             <0>,
+                             <0>,
+                             <2419>;
+        fsl,ssc-modrate-percent = <0>, <0>, <0>, <0>,
+                             <0>, <0>,
+                             <3>,
+                             <0>,
+                             <0>,
+                             <7>;
+        fsl,ssc-modmethod = "", "", "", "",
+                            "", "",
+                            "down-spread",
+                            "",
+                            "",
+                            "center-spread";
     };
 
   - |
-- 
2.43.0


