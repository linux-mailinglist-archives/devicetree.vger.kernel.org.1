Return-Path: <devicetree+bounces-174833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C2CAAECFD
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:23:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8876C7BC55E
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3259C28F524;
	Wed,  7 May 2025 20:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W07aIr+d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7E728F509
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649367; cv=none; b=nkV6O9ZpWeHwmt/7miJnJ3DGKODYM3yLIid4n3IGQhCia2fKWphbTrVx/FAUyPvtj25od+LcJXqSysNnKlWafn/eQH0fGy1H+8tk8BnU1KiHFX3f144VuQufrMOmzYZj+JUppVd/K17lwnemVM2MPmNUEs1YD9UaeFMJ7tpRcMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649367; c=relaxed/simple;
	bh=jNxw4qfsxNuQ4Z+Xll2+D80lh0Nv01Lue2RSitNK3+w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NbOpyyuzvuKOQDwUyp2Gt0dw+cPFUipmd/YU8BfxrqoGWljh43bm8sTgMM8HxLFEaaO8PWXCwu1xS8e10hoMvtRhll4Id9DGK/xplwF0W8liTCqWMpjYuO3jb1E8rm4zS/cnljCL/fzINOwBHyRfMd5a3ChaxV5QPo5OCd/TIQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W07aIr+d; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-72c1425fbfcso189020a34.3
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649363; x=1747254163; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5O5IKDOodRu44GGCb4BG8zpMxyESHszk53bt91Bq6Fc=;
        b=W07aIr+dKSTIeAlp+cA1yYC9aJV8sJKdjZtJJDEvuy9IhpB9zchKF0v7LA5l5Mw3fa
         1cTXym8um1OPPThICu9kcX7MJnlSgWt3+G5pBVfVortODQJ3eYyrvxKuzhmrdMUHWVTK
         SgG4E0LEpVpoNZG8s7Gr+4go9DWdnZrxOTJceg8oW6xKDjRoRrBW/YUelIBI4EN89ODv
         XVefVSanxhaSf1u1sbZqUxWNA+crOctEwfc7/BvVGeH1dmWu7rAIyEsO453G+INof/Eg
         xHHqVCCCfC6AkVQ9loqZfrU6hbV5E2rEbS7y7j5vTUG6/oUKufjd3pJN5tOU243MX2g/
         yy3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649363; x=1747254163;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5O5IKDOodRu44GGCb4BG8zpMxyESHszk53bt91Bq6Fc=;
        b=Efdc/ScFZqzZsGxcMn2iDiYZRysEYGEXQwEX73JBWhguYvonS20KK9in38Aavr6Brq
         93kuHvJ2uOd8Cu5m8cefIxmBEIqaMROhpebbJO1OskV3EIk/Vzn2b++vJfugf+6pAhiP
         gsXLoUoiWBrQWDQZoqVULChwnTcIm7QBVku4LU7PaVJ8IFKABQx1bsZVAZ/4H+Bb1Jwq
         ZphmsdJ4Uq2gxDGvvWNrz8Suu/s7tHrrCGx9e2mMMuoCTSlWFeu1P+jI/RlmDpvwTKqa
         MJN0s8ewNUqPm3HleHPHIW6m5cgjzYEKeg/Xgsds3TsChzYt+VHV006Rb74s4HrAUO9F
         Kyiw==
X-Gm-Message-State: AOJu0YxH+MSpMD0jVpzRnHGGsshpoN4COX68w5gci6W2iDiNhxM4b/Jg
	hFmsfMO4LLX25vwxYyOEhuVN5g/dfsMHxgPXMthYMviW7sF2PZYw
X-Gm-Gg: ASbGncvONH3wxnC9yxRoCJM2ZBEgMnRktLn7MgARVjXQO22FNfF8+vU2vEuDZzIs1RV
	JTfZNmn4RKDt3HlXKTW41KR3RPIE+5xUgNTw5j4TULOg2H1iTDvB+kYSR3ePldwZCJ7y5wNQWBk
	+ix8w6iAusHBE7iE9DoBAHR+74Aan3anMIYl9KO8i/rITgm50BpzWFFMapfSAoyvfsDBBrCHa/E
	m6YtgKG6aEklKpa2vo3GVVmbYVqTHG0HvcdUMPXl9BD56wUZp4d+dsGGcPCJ57BifIyGAd1m19U
	vP1v4vQJkDNAyrc1qZHnVzr67i1TCiMtOW1PzQVeXGuP82t9S98w8cBmEQB3
X-Google-Smtp-Source: AGHT+IEOq3je+wdHKClXriTnH/qW1I0Dd/fwjIaZZ5wgaKePHeaYweMEfsDSEKSVXN1KtPnla+IiCg==
X-Received: by 2002:a05:6830:280e:b0:72b:cdcd:628b with SMTP id 46e09a7af769-7321c900e1fmr477585a34.20.1746649363335;
        Wed, 07 May 2025 13:22:43 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:43 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: [PATCH V9 21/24] arm64: dts: allwinner: h616: Add TCON nodes to H616 DTSI
Date: Wed,  7 May 2025 15:19:40 -0500
Message-ID: <20250507201943.330111-22-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Allwinner H616 has a display pipeline similar to other Allwinner
devices, specifically the A10, but using a newer display engine
revision (DE33).

Not all output pins are exposed on all package variants, for example
only the H700 and T507 have LCD pins exposed, but all variants support
HDMI output. However on the die these are connected to a display engine
via a TCON TOP and one or more timing controllers (TCONs).

HDMI output support is not provided in this series (but will be in a
subsequent patch) so for now note this within the relevant node to
prevent a DT compiler error.

Add TCON nodes for the TOP, and the LCD and TV timing controllers. The
timing controllers are compatible with the existing R40 driver.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../arm64/boot/dts/allwinner/sun50i-h616.dtsi | 139 ++++++++++++++++++
 1 file changed, 139 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
index 542d129da9c3..129ce78ae5f3 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
@@ -7,9 +7,12 @@
 #include <dt-bindings/clock/sun50i-h616-ccu.h>
 #include <dt-bindings/clock/sun50i-h6-r-ccu.h>
 #include <dt-bindings/clock/sun6i-rtc.h>
+#include <dt-bindings/clock/sun8i-de2.h>
+#include <dt-bindings/clock/sun8i-tcon-top.h>
 #include <dt-bindings/reset/sun50i-h616-ccu.h>
 #include <dt-bindings/reset/sun50i-h6-r-ccu.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/reset/sun8i-de2.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -912,6 +915,142 @@ ohci3: usb@5311400 {
 			status = "disabled";
 		};
 
+		tcon_top: tcon-top@6510000 {
+			compatible = "allwinner,sun50i-h616-tcon-top",
+				     "allwinner,sun50i-h6-tcon-top";
+			reg = <0x06510000 0x1000>;
+			clocks = <&ccu CLK_BUS_TCON_TOP>,
+				 <&ccu CLK_TCON_TV0>;
+			clock-names = "bus", "tcon-tv0";
+			clock-output-names = "tcon-top-tv0";
+			#clock-cells = <1>;
+			resets = <&ccu RST_BUS_TCON_TOP>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				tcon_top_mixer0_in: port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+
+					tcon_top_mixer0_in_mixer0: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&mixer0_out_tcon_top_mixer0>;
+					};
+				};
+
+				tcon_top_mixer0_out: port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+
+					tcon_top_mixer0_out_tcon_lcd0: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&tcon_lcd0_in_tcon_top_mixer0>;
+					};
+
+					tcon_top_mixer0_out_tcon_tv0: endpoint@2 {
+						reg = <2>;
+						remote-endpoint = <&tcon_tv0_in_tcon_top_mixer0>;
+					};
+				};
+
+				tcon_top_hdmi_in: port@4 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <4>;
+
+					tcon_top_hdmi_in_tcon_tv0: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&tcon_tv0_out_tcon_top>;
+					};
+				};
+
+				tcon_top_hdmi_out: port@5 {
+					reg = <5>;
+
+					tcon_top_hdmi_out_hdmi: endpoint {
+						/* placeholder for HDMI  - remote-endpoint = <&hdmi_in_tcon_top>;*/
+					};
+				};
+			};
+		};
+
+		tcon_lcd0: lcd-controller@6511000 {
+			compatible = "allwinner,sun50i-h616-tcon-lcd",
+				     "allwinner,sun8i-r40-tcon-lcd";
+			reg = <0x06511000 0x1000>;
+			interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_TCON_LCD0>, <&ccu CLK_TCON_LCD0>;
+			clock-names = "ahb", "tcon-ch0";
+			clock-output-names = "tcon-data-clock";
+			#clock-cells = <0>;
+			resets = <&ccu RST_BUS_TCON_LCD0>, <&ccu RST_BUS_LVDS>;
+			reset-names = "lcd", "lvds";
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				tcon_lcd0_in: port@0 {
+					reg = <0>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					tcon_lcd0_in_tcon_top_mixer0: endpoint {
+						remote-endpoint = <&tcon_top_mixer0_out_tcon_lcd0>;
+					};
+				};
+
+				tcon_lcd0_out: port@1 {
+					reg = <1>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+			};
+		};
+
+		tcon_tv0: lcd-controller@6515000 {
+			compatible = "allwinner,sun50i-h616-tcon-tv",
+				     "allwinner,sun8i-r40-tcon-tv";
+			reg = <0x06515000 0x1000>;
+			interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_TCON_TV0>,
+				 <&tcon_top CLK_TCON_TOP_TV0>;
+			clock-names = "ahb", "tcon-ch1";
+			#clock-cells = <0>;
+			resets = <&ccu RST_BUS_TCON_TV0>;
+			reset-names = "lcd";
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				tcon_tv0_in: port@0 {
+					reg = <0>;
+
+					tcon_tv0_in_tcon_top_mixer0: endpoint {
+						remote-endpoint = <&tcon_top_mixer0_out_tcon_tv0>;
+					};
+				};
+
+				tcon_tv0_out: port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+
+					tcon_tv0_out_tcon_top: endpoint@1 {
+						reg = <1>;
+						remote-endpoint = <&tcon_top_hdmi_in_tcon_tv0>;
+					};
+				};
+			};
+		};
+
 		rtc: rtc@7000000 {
 			compatible = "allwinner,sun50i-h616-rtc";
 			reg = <0x07000000 0x400>;
-- 
2.43.0


