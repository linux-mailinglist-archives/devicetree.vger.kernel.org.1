Return-Path: <devicetree+bounces-144961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFF2A2FCAA
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 23:10:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3E32164280
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 22:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 560172505AA;
	Mon, 10 Feb 2025 22:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IGpENDGQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F69C24E4B8
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 22:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739225409; cv=none; b=I35rfaGD/JE2laNMsg/cmbAqdt8ilImpepPCGk33/QG03guUoOkzkl2/mshOZLWFHBBXCWJbaxR0OYVzVj49HrRedWgAMvvKDxnLQNE+y1bX+rQrQz21A4RNvyY6A5ymhj9Orm+BzRkkJYIfOmk5T0U9URKxpdOFc3916X6Dmmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739225409; c=relaxed/simple;
	bh=36wD/NQDjc3/awdDMS/pWjfJpFkfTtHE330A1WWvTgw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W8tfRXiKn2rMQGi0f8McB+VuCrvZNWpfS1S2fA8wp5MNA4p55HQ30bC5laLdm8VcQLHpDC9AwC9a3TDmJ88+EUAdvJ+vzVMZQFomaN8vTu2joihT+QQj9iR9Tiyk0H81ex3OrmO2pCjvdHT/bw4GY/wS/LDOv0u/eRaAV936FUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IGpENDGQ; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-38dd91c313bso1135540f8f.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 14:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739225406; x=1739830206; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J36P/705noaRfrv1RgfEgcaXBGl51BJjTj6/wIyO+Bk=;
        b=IGpENDGQHycVjd2OMhDC9m1sRA8e6e3U5cpEdSAX7pArQKY4ngr+WYKtW/UFvK91HX
         klw3fXV8j8shpgblWP+TiSrL9xlhURmrUEXAepwt2GuLV0tAKI8vD49Sf0cn5z8qT/VV
         aTRTQE0lIub6Onb/s7/d0FqIwoke0bNZIyW8t4oBxxeZmNXZlxACoAF7OJRCRJkiT4hv
         xIIG46MPtX2YQYmEroC+7FHUNcForjsruPNRiUtMph8ULLqiX/jGzpDAb5BwHV1z+cQV
         hswQFoWKWte+PdOWZmyTSB1peq07QneKucHPS6fMITnoKI02eSb+rkxlfW844INBdPGy
         hWtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739225406; x=1739830206;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J36P/705noaRfrv1RgfEgcaXBGl51BJjTj6/wIyO+Bk=;
        b=SNkoIXRYLERKLgY+rNdpPcf7iQZEy7XYKKgDwl0cNxpBSFpTb8ipQpY6HI2MCOkx7M
         xkJm67knYmzt8v8lR4udvRPfxLlnBIyW8p4NXsoRQ3s39Tuf+HV0yFLRpQyZ8IVEB78E
         r91BlCavrATITajPX7GIhmF1bQ91lRPJvOSTVTQyBbbNRgzbOcfnx+PpCKXPFGdRJ17G
         NLuB1f3G7zvqlz1cgqpV4GpZoWW1sdJaIzrWYvBIh+UFeTr0U1EHBcZ/hxtZ5Ds4Z7OO
         ISWmLctGAZUiMKteNnBCytumg5FVKfialo6wlEJeT8wYU1sTqfQL2mGtEJdSjYivKpM2
         iViw==
X-Forwarded-Encrypted: i=1; AJvYcCU7tI0HR2XFDsw0paOTNECimWT13UG8TI8+5gwu8gsGkSCfjatfFdJmBPx32uE8RsNjum9LvezJPI+N@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv9ttHyTSiPZSmjEVYQ4pbCBSh8el/Bw7c8GvDK52b1tMii3ov
	pVnZo28XLwK1b5dRtImCTii4vcmge3XadIvgZBP53Kpj9ahFtPB+
X-Gm-Gg: ASbGnctMAyHfLYCaaAqDnJpb9l117gUdEXG3G3So7/sejtnfEgbidRM32YUzk2bp/Ol
	32WQ2rtvGs0tXlzXoW3x8el3jJfqdWrTRSzN3YjDdmsRzbsrUHz29/sOoPBfwg2v1hWCyObamSM
	wlOnNon4Y0/4p0xKkFpCySOzFym9K3jRUhYqEGHvpfMIrmFiVcSJ2m+26L+wPQsFXcyMDwYMruS
	Nl0L2GS0WmZJkF3BQWKvvpUHYuwOvtCpET52M0HhjkjUkBzX0xfJsDsLY+IBwREH9WFhySpWM0V
	6yKJMVzWMIE7wt0RMNwkXhSAR9jh
X-Google-Smtp-Source: AGHT+IHBDwcw5Xs+bILjkSfD8+rtXz+yAOQWjKW4OdKB8dlh8ebuM1gV/rgcmvZDg9zfJqcclIe0vw==
X-Received: by 2002:a05:6000:1862:b0:38d:de34:32ed with SMTP id ffacd0b85a97d-38de41be586mr1051887f8f.34.1739225405394;
        Mon, 10 Feb 2025 14:10:05 -0800 (PST)
Received: from giga-mm.. ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dbde1dfaesm13443450f8f.90.2025.02.10.14.10.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:10:05 -0800 (PST)
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: soc@lists.linux.dev
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@outlook.com>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Haylen Chu <heylenay@outlook.com>,
	linux-arm-kernel@lists.infradead.org,
	Arnd Bergmann <arnd@arndb.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 3/7] arm64: dts: sophgo: Add initial SG2000 SoC device tree
Date: Mon, 10 Feb 2025 23:09:43 +0100
Message-ID: <20250210220951.1248533-4-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250210220951.1248533-1-alexander.sverdlin@gmail.com>
References: <20250210220951.1248533-1-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add initial device tree for the SG2000 SoC by SOPHGO (from ARM64 PoV).

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
Changelog:
v2:
- relocated "memory" node according to DT coding style;
- moved GIC node into "soc";
- referring "soc" by label;

 arch/arm64/boot/dts/sophgo/sg2000.dtsi | 75 ++++++++++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 arch/arm64/boot/dts/sophgo/sg2000.dtsi

diff --git a/arch/arm64/boot/dts/sophgo/sg2000.dtsi b/arch/arm64/boot/dts/sophgo/sg2000.dtsi
new file mode 100644
index 000000000000..98c8d300347c
--- /dev/null
+++ b/arch/arm64/boot/dts/sophgo/sg2000.dtsi
@@ -0,0 +1,75 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#define SOC_PERIPHERAL_IRQ(nr)		GIC_SPI (nr)
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <riscv/sophgo/cv18xx.dtsi>
+#include <riscv/sophgo/cv181x.dtsi>
+
+/ {
+	compatible = "sophgo,sg2000";
+	interrupt-parent = <&gic>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			compatible = "arm,cortex-a53";
+			device_type = "cpu";
+			reg = <0>;
+			i-cache-size = <32768>;
+			d-cache-size = <32768>;
+			next-level-cache = <&l2>;
+		};
+
+		l2: l2-cache {
+			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
+			cache-size = <0x20000>;
+		};
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x20000000>;	/* 512MiB */
+	};
+
+	pmu {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>;
+		always-on;
+		clock-frequency = <25000000>;
+	};
+};
+
+&soc {
+	gic: interrupt-controller@1f01000 {
+		compatible = "arm,cortex-a15-gic";
+		interrupt-controller;
+		#interrupt-cells = <3>;
+		reg = <0x01f01000 0x1000>,
+		      <0x01f02000 0x2000>;
+	};
+
+	pinctrl: pinctrl@3001000 {
+		compatible = "sophgo,sg2000-pinctrl";
+		reg = <0x03001000 0x1000>,
+		      <0x05027000 0x1000>;
+		reg-names = "sys", "rtc";
+	};
+};
+
+&clk {
+	compatible = "sophgo,sg2000-clk";
+};
-- 
2.48.1


