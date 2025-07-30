Return-Path: <devicetree+bounces-200875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD74B16723
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 21:53:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8655F7B7E89
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 19:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C95521507F;
	Wed, 30 Jul 2025 19:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lv3hkDvR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638ED20298C
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 19:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753905186; cv=none; b=kXEnJ8v3KDTbhZr1MdLC4oG2+F8LD7UoycgmX07glLUMZ2dQktTI3PVGLkBrtm/gM/FKUWT/BSsfUJnEZdWcfO7GyxPT6u2ySp1qu7+eq47RWxZET1uX7hRCu+ZFOJ1ACe02hjYHkhPt4Yg9TnxXo6rcvyEOSw9d7bMZKlq1sGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753905186; c=relaxed/simple;
	bh=7T9IvGmnAZ+njhExWBgbmnGfV74VG31YPxFr5ceIVAM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jumgrvPdGZeajvReyEBUXByDNJrbE5F/yc+Kom6wt1FoRaIvsvUThq7vmXthHFATGKrdiuYwkBDxAmJPeAqAl5kywLuQuPdQK23masH3LQPiGT0FRfsxbEGraNBX65597OKI1dxnWtT/pXjWmdBVarwvR+XvGS5IFeHflGKyJUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lv3hkDvR; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3b78bca0890so117437f8f.3
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753905183; x=1754509983; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cJueEuqTtjiM6Dim8VP7OcBzmxZWJQ/hM96x+rO92Gw=;
        b=lv3hkDvRRdmOjpMI8VQx7zg0TOGxExWvKkc+nBcUIoFvPPIlJY8dorj4mpuviCtNNo
         HCY1+sG3qVrqSkX4WLNyGJqJnm4myIktaPVRUVqAkMBSn/pfhXGqacBco6v4S+xIKUDg
         evOFIRiBay2nX5NjtnWqpSA+LDkP4PRIyRu6S2DAtpIWRIxn8/ZUKndAPbgOsGVwVw3w
         36zfr+vyM+H4cGdiL8BChODtjROXIEholcpqBXpr7pWpCsar4izp87/crGSLW6oHOh+d
         igvB/OCr+beTerRSDulZTujvLCDucDM49hD+RzDqQjpcUbIoB3iS22CxbxcJmClGIzZA
         ytIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753905183; x=1754509983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cJueEuqTtjiM6Dim8VP7OcBzmxZWJQ/hM96x+rO92Gw=;
        b=o88XuJCc31Xx5OLfbv+NQQix19fTeq7draX54l2O3SA00qReSnN27972a31/feM0sl
         zRqQZloFAgdn2So6ahTrHKU1kD4pdTuD7XBhM1Gn/j1q3BUz7vCJWq6EFhiUWfc0R7kz
         kyi2kwGyMrqMVbuNCIqPDL8AnURILiEsSndU8naUqBwhlPItGRkMXekj9dJAyd89X/6+
         LLhPGmFL+yCzQ9VnMsXPICLlw44Mi1A3vyoM//b3L20L+fkpPasGExM9wUqnTo9867iY
         EGs+K4F9gBHD/A4KxFHULXC1QGoSbjZFW5QNhhOLlkz+Q/AaZ2UWM5eX20DjARzLVtKt
         ylwA==
X-Forwarded-Encrypted: i=1; AJvYcCWMY8EgtWs71qwYNJblfWgtQgpD264qcFxAoxFYofyqAOLhbDbT8uFa3kp8jrKaR85riABguviUmCEe@vger.kernel.org
X-Gm-Message-State: AOJu0YxhkGp4D2z8fiq0ozPzFXx73FyNvq7WMFltQAjgDH7ZaMWaqQp5
	JJo0dbCqaDhjcfhrXv2Plod1rJFuc7Q9IfIqRMJZMFlzHWC94Dg9vSly5CElgQ4Jyq8=
X-Gm-Gg: ASbGncvJZJmuo1H4RIApRGRAGWLpj7QemvodHByLUiET4JLwaB9FeieKPlsbjEZDzcr
	V5UOmcDsCbnY60U1WBSRL9JxJmmttB6n/RpKJmVjAJnHS9KhsjN1foOtO3c9wQIx5xXPsdMZgC+
	9YFYmTo3zV1D2s+frebugzifyG0c2s1JE0nL1hkIBE8+mvCOwY9IkHA37/7yBl8D8ZHwB6srPaw
	EtA+Is2EZKiBiiM5Sxmz6tka71QwvyIhEintpYetJH++oksVpiUSAh1sqhBP6PhmEA7Es1jMxtC
	/6MDt/faNi6ze59rZchvhN3i2QYcbM0a9VGpgVm5CH+7HcO9gh58SWKpyR2e3OC6D43T+Hj7yR+
	BR3GHRkngs+QKSAmN6a2FN5d5C+ECvbnNkZOL9VdmgnLW+BV6
X-Google-Smtp-Source: AGHT+IF7rvI/lJ/fkpm1P7rRxksLVW4UNZm0omkhDcU4fWbM+p01RshTyd0V7avWFg7SQdZZGsyTzw==
X-Received: by 2002:a05:6000:401e:b0:3b7:9173:6948 with SMTP id ffacd0b85a97d-3b794ffa8admr3769630f8f.49.1753905182660;
        Wed, 30 Jul 2025 12:53:02 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b78b26a4dcsm9556193f8f.32.2025.07.30.12.53.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 12:53:02 -0700 (PDT)
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
Subject: [PATCH 1/8] arm64: dts: s32g2: Add the STM description
Date: Wed, 30 Jul 2025 21:50:14 +0200
Message-ID: <20250730195022.449894-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250730195022.449894-1-daniel.lezcano@linaro.org>
References: <20250730195022.449894-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The s32g2 has a STM module containing 8 timers. Each timer has a
dedicated interrupt and share the same clock.

Add the timers STM0->STM6 description for the s32g2 SoC. The STM7 is
not added because it is slightly different and needs an extra property
which will be added later when supported by the driver.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Cc: Thomas Fossati <thomas.fossati@linaro.org>
---
 arch/arm64/boot/dts/freescale/s32g2.dtsi | 63 ++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
index ea1456d361a3..3e775d030e37 100644
--- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
@@ -503,5 +503,68 @@ gic: interrupt-controller@50800000 {
 			interrupt-controller;
 			#interrupt-cells = <3>;
 		};
+
+		stm0: timer@4011c000 {
+			compatible = "nxp,s32g2-stm";
+			reg = <0x4011c000 0x3000>;
+			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		stm1: timer@40120000 {
+			compatible = "nxp,s32g2-stm";
+			reg = <0x40120000 0x3000>;
+			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		stm2: timer@40124000 {
+			compatible = "nxp,s32g2-stm";
+			reg = <0x40124000 0x3000>;
+			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		stm3: timer@40128000 {
+			compatible = "nxp,s32g2-stm";
+			reg = <0x40128000 0x3000>;
+			interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		stm4: timer@4021c000 {
+			compatible = "nxp,s32g2-stm";
+			reg = <0x4021c000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		stm5: timer@40220000 {
+			compatible = "nxp,s32g2-stm";
+			reg = <0x40220000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		stm6: timer@40224000 {
+			compatible = "nxp,s32g2-stm";
+			reg = <0x40224000 0x3000>;
+			clocks = <&clks 0x3b>, <&clks 0x3c>, <&clks 0x3c>;
+			clock-names = "counter", "module", "register";
+			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
 	};
 };
-- 
2.43.0


