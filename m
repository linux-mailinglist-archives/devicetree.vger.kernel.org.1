Return-Path: <devicetree+bounces-146068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D56A332D0
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 23:44:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D90C3162853
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 22:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64219207E1B;
	Wed, 12 Feb 2025 22:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BvmtUF2y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90D0020459C
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739400241; cv=none; b=SknxmDgxT//v71eSVIsQm9Wco9/cU9Qb2BAAu/DJqpRUW3snobcQwNVNvUo2c2u7ESpZrxz3e1lvITAFKJPcpupReDcmrs6HrJChwzeW3VipFFR/XQyFzXtdE5biUz9o4hNG7QG41UO/4Qid3cehVe0IyENYYN6MoA8ueDYtYtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739400241; c=relaxed/simple;
	bh=B/NZAXNMpuTU3z3Dt8D45KXiKfShFiznnsLHvMRI4qU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H9AlQeJp/XWWMkEyg8pEJcRDwdrUkeqNXg3WDdxfvr+eCC9k1qPJQpAjjgRIZ7sraOXUUBVXk0iX7QSBvyfh7d3wuncWa9oEGyJte3cHriRV9syXJhqJ6K4dYGNDsNVjN+KETn8Ltb0cH/4vY4wcddYwqZ9mxd1ZN5rU5eXs0Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BvmtUF2y; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5debbced002so443249a12.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 14:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739400238; x=1740005038; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+40mL3jZJ6m57RT2qXKG2PKW8kpulSlmUXjQH5BVdhU=;
        b=BvmtUF2ySMrtBCm2GTk9WJaRbsQllrbK8bEW6onVPy1U/S2t0wXuSjJgADmrkQCNq7
         5Jp1/LETkDhHTZicy02eiz92nFsLA6PopD0vtKqOa81QePA9CBDhUuyqumumI1t5Zyjs
         zYGAhHCxq3KzCj9K4rqacs35HsNAssS+Cd1uWPOaOHqIpAO4GIdhclnLtJZ9+tetHt1m
         IIk5JthxZCLAc56+j+M517S7mzVY0W+sc/BD2/g2MOuqGxakc1vopzAZ4kCE3DyQccqs
         eiaZRlYQOV+DMUcqjHt/684KUonI0tt5tuuEOdvp0dTZv17rFIvc7SBaYIXdSZ8Weg6B
         Iv3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739400238; x=1740005038;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+40mL3jZJ6m57RT2qXKG2PKW8kpulSlmUXjQH5BVdhU=;
        b=JlZQ+6wIfJ5Fw7KXwm3kYXc4qgLxjltqFcZzxQ/JyC+0c4D9KeDOlQZS7xMI3gQbaW
         Mm8nE7ZjTCuLPEua76/vV7IuIwlaXgsDhzlfN7UVPY08KWnMuvCdzEnQGfI9sgeB2nEJ
         6ArP9PUPwUfNA34YCTIF856QACeKmcSjKkR9mP0g4DiBiiuYbrQ8Ez6kXHB8Q5gHKONM
         ufJTkK4aecXbOR1mX45WrmaLpdqUL23F01HZopPIuZTyWNUaBQDXOmPpUjyzQPc187rd
         DfmsniJCvxisO50945sNwpmXGDBuxlUpDwbgZbMRIrCqLWtVi+3qcAOn8hGukZJWAuKR
         TQyA==
X-Forwarded-Encrypted: i=1; AJvYcCUD1wSEZxYj/R9rGxCHf0HExiGQBLHMPfyDqp1Srqu7KZAoDYoeffcd0E4qkbKSYrlOMLd3frFmvKTR@vger.kernel.org
X-Gm-Message-State: AOJu0YyzCtAz0kjAnQdgVu01RO3zaeJim4CqQmAPgRyQZxdFwYXDiFEn
	15COdgRVFYO9JOkeNQBRHVj9u3usRk0OaFMSrR98d4/Kt4DJ3p4N
X-Gm-Gg: ASbGncuXGjLynpOz0RB5G3Ff4rVAKyoUmpr7Lb7VJnOAq93+3Qr7dBEMZT7lJR0hKPP
	42Xm63st1wxp3tme9CEe/h5LICJeDdNld1ZLk1ktD3TEmDMaAJdYUZ2B+N5GcWjtRr0y/TgGhX6
	3dZDBcA2A0LbuSuDwcLpTuhu8SZEzOpB7yWJ3x0nqVhzlGXEEEaXRgGqE09+/Y51SpWhbtG3iPB
	rMyPXKZ0M/YNzHA09uybMmRgJGIymgISFWvGz8yZgBbw1BoF8JP5SBxFqPyJrbBCouM/ZczHKKL
	zl1PHgPPWoASkJGphXj57KMSiGua
X-Google-Smtp-Source: AGHT+IEv+/AzdknABejwMbnqDJnaCwlQfqvJh/OI5EUKfTNWF0GxuzkjTpxXDZ3NzmJ5AaWO5+exLw==
X-Received: by 2002:a05:6402:3495:b0:5de:5e08:babd with SMTP id 4fb4d7f45d1cf-5decb8d50f6mr651452a12.11.1739400237691;
        Wed, 12 Feb 2025 14:43:57 -0800 (PST)
Received: from giga-mm.. ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1b4e02sm119914a12.3.2025.02.12.14.43.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 14:43:57 -0800 (PST)
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
Subject: [PATCH v3 3/7] arm64: dts: sophgo: Add initial SG2000 SoC device tree
Date: Wed, 12 Feb 2025 23:43:35 +0100
Message-ID: <20250212224347.1767819-4-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250212224347.1767819-1-alexander.sverdlin@gmail.com>
References: <20250212224347.1767819-1-alexander.sverdlin@gmail.com>
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
v3:
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


