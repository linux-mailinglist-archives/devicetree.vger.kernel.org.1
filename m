Return-Path: <devicetree+bounces-201059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4D6B172B9
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 16:02:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4B1C586C96
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 14:02:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2FD12D374E;
	Thu, 31 Jul 2025 14:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pvqE5oat"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B772D0C80
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 14:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753970524; cv=none; b=JeYvsd3vc50LM4JWsUnJ+WrvQ8DFnlMnpmJVNwsbT9dKI9NRIxiI1UFp5dKyOBC8OL+60SWXjd7Afbbn5me/eUQVwruLo5xPmL2gAcyRkVxVWL6hd2tT/BiUyY0Bnu4BsSy1tJ1L7gqdve3YPH2l8LKNI4Wege5qL3ze/K7hAzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753970524; c=relaxed/simple;
	bh=vcA02yLSNwMr2sw3WTjr/QQMCrQppMAlK1ftMTli3h8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mCkhu8lOwkgGtktxavs1P7OpXweZSU+C4dFuGttmQ11ggfoxitRZn4DZE/iwCPjlg4KPFHifjNmJWxB5mPhDAR6BT+l1RQ6sLWiPHhipexLomUFw80TwDBamrkyboV1E3xzbAYOriT2u1qFWMBfPOTDESzeMLMTxlF1akpC5hIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pvqE5oat; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4555f89b236so3965195e9.1
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 07:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753970520; x=1754575320; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aB00SSfP6c+OHo+3LviFK6KTCkRiE6kjMG1sy5ThVvM=;
        b=pvqE5oatdDMxVpLhdugSamCoWqFPJboKanMleT8QPbmOIKbvCGGMV5AzRzFGVxPE6o
         WOLtuAmq5+wx2FcENC2Nw1EZ3c1Rv7Ci8fyiaUFZEaFniw8e6/uuC4/j2dw6Hr1yvcyv
         T0hxbtYJUS6g5/apg6uge6xnhJ9TkGtGi4iHZPhyS8490ZMFb5cxki7zwrfxcDN54yxF
         NR/Mb6rG7AOCKv1RZGPOCMiKYGjQrk7Ay9HJejGq4WwU01/QPuKAepRb3aSgWdRRKSrr
         GrpMiKQojygNHC7a8MnIRf7Uj3k11zj00ymtyh1W/uMWgDnmcdB408ugvQyUbDtLy5Da
         gAAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753970520; x=1754575320;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aB00SSfP6c+OHo+3LviFK6KTCkRiE6kjMG1sy5ThVvM=;
        b=cueKscs8lt5HDKFYoAaRyUXml703sRHhf0WV7vjAOtwQPV05R/UZGb+ztl5xIuWhuY
         sjApu+xvI3Bz3MgT83YBBB7RCQB0Uw3hqHSSL1SDkjYIDDlXL6pkPhCNq6RhajLVv96i
         WwCq9MAfykb7cMOTGHW8cyUyevw1k9nWq7WbpTBZGsROrqpGeNv/UkKWF8XT26UzixzR
         btQ7RAaD0H/1W2SMbrthsS5nxiSwL1ofUfJztcivfw+EF83GZdG1vGJh0G4JQbjHOspw
         hwbOBVAI0mPQlkjw6kry1l8qva/Lj8nW+6lwbDtM8SNQZPw4mRiHAwJ/JIsg+gSjb5Hk
         4/kQ==
X-Forwarded-Encrypted: i=1; AJvYcCVa2xHpYgs/GXg6b9NH+8Ufn4Ne6rN6h39zSVqk67kT9WZlDK8GX36zf5ierUoW5aRcE0FgFJ5/gM+A@vger.kernel.org
X-Gm-Message-State: AOJu0YxMpuk8NmYqNIO3X3UnrDUGYxOUKLb/JeQuZI/LtoD9BFcv5yPx
	P7wUtlZMyWGpz6RG5Ev08Z5aPYWzfyE3LO5Mq8ctIIJHYmCYwYs9vkGKcJdgaLXwi3I=
X-Gm-Gg: ASbGncu4F54U+fy2465X6HcnMFmP9fJrJSIwM+yIlpzTBp7Yg3wuBOldZFjMh1t7SBM
	Dzs0oo+mk0F+hlOl2y10pSDIVmmUUldJr4b1urzXN9UKfT9gxq5MEpf0eFHq1yG5LlrL1QFrhUC
	BMSi+zKhFaXGzUbR/F4NRMtXUJO1TgQ/0fH1byV70QDMHNZNzVuXPhRokUyCsKUGxqDivSWaixm
	nen6nb3mIQLFaHuzYewMCP1fPYHR0r+aZme1m/P0SRA6ffWN/DuASPvqbgpTNOHaAPAmnNPUgA5
	wL2OPK2DZfBJDUus73wRF9+7EtKDqdexEKiDzK1mKpw6ZlSAPxt7jE15Fk7Bs0J4AjGl/U+UicY
	DlyBnUq3NxI4InK2K9kW1ywX7QT/zNGgmrjMMUKevbn518z10
X-Google-Smtp-Source: AGHT+IGqwlW5ma8WPKveKqUhTUAr3VgKYFhAtuL+0U//6ALH9ryJa3alHyJCYGFqgrUVq1o4bMWuuQ==
X-Received: by 2002:a05:600c:8711:b0:455:fc16:9eb3 with SMTP id 5b1f17b1804b1-45892bd7be5mr65100585e9.33.1753970519969;
        Thu, 31 Jul 2025 07:01:59 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589ee57c18sm28121285e9.28.2025.07.31.07.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 07:01:59 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: mbrugger@suse.com,
	chester62515@gmail.com,
	ghennadi.procopciuc@oss.nxp.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: s32@nxp.com,
	kernel@pengutronix.de,
	festevam@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
	Thomas Fossati <thomas.fossati@linaro.org>
Subject: [PATCH v2 3/8] arm64: dts: s32g3: Add the System Timer Module nodes
Date: Thu, 31 Jul 2025 16:01:36 +0200
Message-ID: <20250731140146.62960-4-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250731140146.62960-1-daniel.lezcano@linaro.org>
References: <20250731140146.62960-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The s32g3 has a STM module containing 12 timers. Each timer has a
dedicated interrupt and share the same clock.

Add the STM0->STM11 nodes for the s32g3 SoC. The STM7 node is not
added because it is slightly different and needs an extra property
which will be added later when supported by the driver.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Cc: Thomas Fossati <thomas.fossati@linaro.org>
---
 arch/arm64/boot/dts/freescale/s32g3.dtsi | 99 ++++++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/dts/freescale/s32g3.dtsi
index 991dbfbfa203..c2c986f03986 100644
--- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
@@ -374,6 +374,42 @@ usdhc0-200mhz-grp4 {
 			};
 		};
 
+		stm0: timer@4011c000 {
+			compatible = "nxp,s32g3-stm", "nxp,s32g2-stm";
+			reg = <0x4011c000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		stm1: timer@40120000 {
+			compatible = "nxp,s32g3-stm", "nxp,s32g2-stm";
+			reg = <0x40120000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		stm2: timer@40124000 {
+			compatible = "nxp,s32g3-stm", "nxp,s32g2-stm";
+			reg = <0x40124000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		stm3: timer@40128000 {
+			compatible = "nxp,s32g3-stm", "nxp,s32g2-stm";
+			reg = <0x40128000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		edma0: dma-controller@40144000 {
 			compatible = "nxp,s32g3-edma", "nxp,s32g2-edma";
 			reg = <0x40144000 0x24000>,
@@ -471,6 +507,33 @@ i2c2: i2c@401ec000 {
 			status = "disabled";
 		};
 
+		stm4: timer@4021c000 {
+			compatible = "nxp,s32g3-stm", "nxp,s32g2-stm";
+			reg = <0x4021c000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		stm5: timer@40220000 {
+			compatible = "nxp,s32g3-stm", "nxp,s32g2-stm";
+			reg = <0x40220000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		stm6: timer@40224000 {
+			compatible = "nxp,s32g3-stm", "nxp,s32g2-stm";
+			reg = <0x40224000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		edma1: dma-controller@40244000 {
 			compatible = "nxp,s32g3-edma", "nxp,s32g2-edma";
 			reg = <0x40244000 0x24000>,
@@ -560,6 +623,42 @@ usdhc0: mmc@402f0000 {
 			status = "disabled";
 		};
 
+		stm8: timer@40520000 {
+			compatible = "nxp,s32g3-stm", "nxp,s32g2-stm";
+			reg = <0x40520000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		stm9: timer@40524000 {
+			compatible = "nxp,s32g3-stm", "nxp,s32g2-stm";
+			reg = <0x40524000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		stm10: timer@40528000 {
+			compatible = "nxp,s32g3-stm", "nxp,s32g2-stm";
+			reg = <0x40528000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		stm11: timer@4052c000 {
+			compatible = "nxp,s32g3-stm", "nxp,s32g2-stm";
+			reg = <0x4052c000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		gic: interrupt-controller@50800000 {
 			compatible = "arm,gic-v3";
 			#interrupt-cells = <3>;
-- 
2.43.0


