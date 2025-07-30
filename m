Return-Path: <devicetree+bounces-200877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D10B16728
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 21:53:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 045717B8353
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 19:52:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED6D821CC5D;
	Wed, 30 Jul 2025 19:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xwTT7DaW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70952185AC
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 19:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753905188; cv=none; b=gcN40A02w6OTWteXeeNxkR+7UAahWctUVBA+Ju4c/Y+TBYr//ASrXKiPKQ/rEx9ob5d4R5RXspVNB9nhao11OR1qBtoYqEkSlgFHQR0X61npg7OKM+Kwtbljf9l4QfpoKtwpN6c1ljCqco1+7okSaV8shDSkYbHj9zB4eXaZdjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753905188; c=relaxed/simple;
	bh=rmz60z1XyZMfPXoIbmmaBGrnzamPcvt9l/QVKy3Qsiw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LfCOYEPEE38uzo7KM8y6Sg/Zem/5D/NSjdeJaoxFnaDz9a+R3Nml6VMFj4Imbb9OBjasUmGPImWnh7aA0xmawwibgLtASz1lB0acJ5KR3vue3y4nOyYCvjbIgWdJEe5PKyHrC3jH14nzmZEz6dUsbPPZB0Svmzzl1ePCRDNGhw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xwTT7DaW; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3b78315ff04so137050f8f.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753905185; x=1754509985; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sz6eddCfDwzrey2Pd9gsm6USefudsi6UDSY1qIrWHdY=;
        b=xwTT7DaWoIZO4SBwi+8vJ04fKpki/XtzHY5WGcZquv2VC54mMdwWMsWCuHvx6pQ2P7
         CDTAftorZDZsC98vwgld/3Mhi4iOdY3vuEU7jNCkS1lsWTyApydxNniEYzZ1WdEDTZrX
         e5IFiCr6E3BMZugAUlqOLE8O0IIqjAoNoH/rbgU9bhP9cHxwFs4X7uoygkyb6CBpG0n6
         cCVNsXktlSCxEs4+q/6iDFXZsaHAqijFNM7gVkni2ySXkoP9VJHNZu1/TcKCBNqYlsfA
         nBsyhhjSUVSZFadK0O+AiVzlF1zesT1BLuG1bTOCPPEGAmdcyNgrjSIhxVBH4pnn8eQJ
         34DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753905185; x=1754509985;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sz6eddCfDwzrey2Pd9gsm6USefudsi6UDSY1qIrWHdY=;
        b=m3vZaSBBdQNLEsUXTKoXRs9djyb0H8ZtGVquMPsw3W7Mj4FuoE5RtixK99CLhhmOAY
         pszoX/ArYhzJP0+r/o+wKxgOtL4U2RF1ShocKr9CDRVqBhzkciXXEwcxz1pva8yaHXtL
         QfBxnHECqQYYwzxoA6Min68JNE5M4SUo3RQAJXzH1IK1nPI49H0JGfE8H89vgtoosatR
         5q3VjsL0P6YqKqSZ6vlKrcP6AIyK0dzl64r1HHBoSKyKXoc2/zh9hnFIU/d6LBrOwOKj
         vR4U59Tkmlo0Xz272IKPS3TZJb8nNCxKvyrCgRdI8N9Wzp9A6KUXQkAJ8dfevLr1to+V
         8fZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUp25jlIUSK8jDHtQjLY7UDB7i6wbe4KaxvPneCPulo6moGJEL/dhz8wnZy1xpjrzEj3JQsyzt6i4Q@vger.kernel.org
X-Gm-Message-State: AOJu0YyAkMvCVtu1hgpEdHnOHnkGxLLFPgr7H8hrwM18B6dFrsWuRMgC
	lFNUfzoMzNj9TwV6g2teQJkbbQoie5TL43zHAV2i+w+8VSDTN0stvmKRNcqaEayIzuw=
X-Gm-Gg: ASbGnctEpIBLO0CI/vCs6+Tc9bgcEj3Mn1C2jAhEufw9bk+1GRQI/x1EzwY3Wn1Ou7R
	/I5AMbMP7mPkpBucI1KK0PGF/5+SQj1/wdVCrUz6DGOn9BTmZAJWfzIN6Egiff10vaLEGNFPUZf
	PP6ozsGSGvP/r5NIwx5hSqWQ9n+jEJpjWR4hst40IkkdXdIJNGl+B8SXKkkdPmj8J2Wpuh56CGn
	+1OGgzfJh3jiMykt8v7jJlk23TmRGuSPVumalf6KD2z3wMyhvFan6qa+Ve4GstaC8WDApz+S8K9
	TGEcZI1ZYKEiIQFctOiFDZSLiXcCPcWYa4NUpVjqEDbilDjEENzEc7AkLIMuX6Q/sHf79zJnDWU
	csTsvu+P8KdbVifqRADmh7WsoZAcpFSZE53hRNyeSyCJ+P6MBY3YuaLs8uu8=
X-Google-Smtp-Source: AGHT+IHzIiy/Kjn2fq5Cd9OViC1/oll8LjWMCbcWSd+u4kL6fJDbI8sMyWN0hXhAmzSyYRVPnfnyGw==
X-Received: by 2002:a05:6000:230a:b0:3b7:6205:25c7 with SMTP id ffacd0b85a97d-3b794fed24amr3712859f8f.13.1753905185056;
        Wed, 30 Jul 2025 12:53:05 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b78b26a4dcsm9556193f8f.32.2025.07.30.12.53.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 12:53:04 -0700 (PDT)
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
Subject: [PATCH 3/8] arm64: dts: s32g3: Add the STM descriptions
Date: Wed, 30 Jul 2025 21:50:16 +0200
Message-ID: <20250730195022.449894-4-daniel.lezcano@linaro.org>
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

The s32g3 has a STM module containing 12 timers. Each timer has a
dedicated interrupt and share the same clock.

Add the STM0->STM11 description for the s32g3 SoC. The STM7 is not
added because it is slightly different and needs an extra property
which will be added later when supported by the driver.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Cc: Thomas Fossati <thomas.fossati@linaro.org>
---
 arch/arm64/boot/dts/freescale/s32g3.dtsi | 99 ++++++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/dts/freescale/s32g3.dtsi
index 991dbfbfa203..77ef75bad4be 100644
--- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
@@ -571,6 +571,105 @@ gic: interrupt-controller@50800000 {
 			      <0x50420000 0x2000>;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
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
 	};
 
 	timer {
-- 
2.43.0


