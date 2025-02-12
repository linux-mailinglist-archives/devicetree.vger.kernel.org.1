Return-Path: <devicetree+bounces-146069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F2CA332D1
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 23:44:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5E9A1629C4
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 22:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55CBA21019E;
	Wed, 12 Feb 2025 22:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DVFIYFbW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89165205ABB
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739400242; cv=none; b=eoBSmTEvMy96XXwGHk4eAdVvFFgYlnngEG5EHZDRQUYlgvHaXgunt/LHA9CpchwXGADiP0pPsGyD4OaoA+g9FyI35xMYfwoG3SG/MKy5nHJA2iKbRhxeZ5Ofe5AePOY/ghXUa2/9nI8rBEd41FclmbPKCpsZtrt2G8pf2ux5rsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739400242; c=relaxed/simple;
	bh=GDq/EzG6efSIjuAxKcyOcaNWoQlvEShBDR0clYJNdxM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N0OOBsotOr3C15SMpF3GUCOKofY+VKw2zXZyU2ipbWdagtTSMjBCQ3capy5Wn5/Lq7w8Ms1zu/0s5QOwjpLTicBVlax9YTRGTb4WdD9bSttQOARqm9dXapGC2jtZTdsZuw9DEneUQtA7ugnaVH/R3j0oTBsljD7d4PUDFhhuScw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DVFIYFbW; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5debbced002so443275a12.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 14:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739400239; x=1740005039; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7cipA0zbozY6QT98Voya9/YK5DDhe2fsqlIMhAxSJu8=;
        b=DVFIYFbW2oQCpJ0ythnRj78cg/lNmzUta5X2GhVUlzj4neYg3JqHwdpIrB4wR7wt+7
         P3aBPtnRrCh0NUtgvMpV1y+1qQCnqU3f46L8J8faoX0PDL9phW5OMyWl6nReqPYDtJLS
         SVLA2fDFjudaouwJWx+FwrpOumZPWphRd7qg/n4JlfGJSLmFzcUXDXIwJWJOsj/YQc46
         /7VjxTjN1UYSatSami6GtpYsObIpIQX5XIeHdZg/fWLzBaDmKVQMZUSmTEATaq+MarPj
         p9A/Zzb9O74pGBoLlPxgSyiG9QCsbGVueh3f6tYd4vmQgE+nYsLx8Byw6k66S6HAAN83
         JsMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739400239; x=1740005039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7cipA0zbozY6QT98Voya9/YK5DDhe2fsqlIMhAxSJu8=;
        b=qWZwexcnWO2QvTk2+XvDzgyWvyN6SgbwF6S+kf2DYAoGPjALyzqA7FayVUktEDm624
         xZvw8zIPnWzaK/X7Va0xXZrgiXfrX/vSkF0sgO1fh0xqIn4HMmltEexpOf+VbEciqLVj
         EiswKi9153I8OoBoVAI0yuSGQ+1Fxtn7Uwc0Rm7jo5eEdqkbv6VGqimsS4MEpndfVgWa
         Oo76wnb8jl09xZXNS9CcCTIqebymo7iLevDz/XvhBzdiO4dzYbeR96yOn8Ye3d9jYgnm
         1tUaEiUqcU6qqMIoIHcrzwmTGmBWRtgaNRBQ2pz2vQPYcAxJdi6q+djhs6cPdbtJ29fG
         B9qA==
X-Forwarded-Encrypted: i=1; AJvYcCUSjR/FH7gfNCuAHEoi+pL+5vo1CwoVgOgKnsB9TOb1Y8jcdf/uCRAS0eTHxAdKrxAxUXdF9rB9d55y@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdr1hblUO5A1h+KJdMsfjlJpzYxxHLXLsgeKWfqasEcp3Kegdp
	Fg2MUmp7mEn5Plb+pMTm/oWi00OwnJW8wkOLzPCkdYLEXYjqbVZN
X-Gm-Gg: ASbGncvwLWom7QaW2v8wt1PNKEaxF+8swC12PkjhGe//ItEpd4uLCsLnmbKY6nQ6RGg
	32k+UT+41/+/dWJ7Gxw4hD28SP8kmOSo7E4WYpcF/gPdbhRf6PfKHd7BtMLcPQY2sIBSapacDx3
	M1QF5sC5OU19krV9fLNl+MxM4GcbVbCrEyis7kwJqsv+m3tXWWBNYh1XUmR9QaAbyZZPC7fswdT
	lK+oQKgPO/AfbAAaitpJtp77JChCyFfQeDhPbb9fPlBMjDE5I+oZLRUbEL3CD28rUe3QE9NvQf/
	GqlpRoNExE1hOEDA2119UXwEH/Ga
X-Google-Smtp-Source: AGHT+IFwthENllbmOrWic3eDqrN776nf1GeDspbhA+7bZKq2ojkemmpLX+XbKy5VdLrDB8EdIzbctw==
X-Received: by 2002:a05:6402:3806:b0:5dc:eb2:570d with SMTP id 4fb4d7f45d1cf-5decba35546mr666739a12.2.1739400238531;
        Wed, 12 Feb 2025 14:43:58 -0800 (PST)
Received: from giga-mm.. ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1b4e02sm119914a12.3.2025.02.12.14.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 14:43:58 -0800 (PST)
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
Subject: [PATCH v3 4/7] arm64: dts: sophgo: Add Duo Module 01
Date: Wed, 12 Feb 2025 23:43:36 +0100
Message-ID: <20250212224347.1767819-5-alexander.sverdlin@gmail.com>
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

The Duo Module 01 is a compact module with integrated SG2000,
WI-FI6/BTDM5.4, and eMMC.
Add only support for UART and SDHCI.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
Changelog:
v3:
v2:
- sorted all nodes according to DT coding style;
- added "compatible" property;
- renamed the new .dtsi not to use underscores;
- added status = "okay" instead of deleting it;

 .../sophgo/sg2000-milkv-duo-module-01.dtsi    | 85 +++++++++++++++++++
 1 file changed, 85 insertions(+)
 create mode 100644 arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-module-01.dtsi

diff --git a/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-module-01.dtsi b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-module-01.dtsi
new file mode 100644
index 000000000000..bb52cdad990a
--- /dev/null
+++ b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-module-01.dtsi
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#include <dt-bindings/pinctrl/pinctrl-sg2000.h>
+#include "sg2000.dtsi"
+
+/ {
+	model = "Milk-V Duo Module 01";
+	compatible = "milkv,duo-module-01", "sophgo,sg2000";
+
+	aliases {
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
+	};
+};
+
+&osc {
+	clock-frequency = <25000000>;
+};
+
+&pinctrl {
+	sdhci0_cfg: sdhci0-cfg {
+		sdhci0-cd-pins {
+			pinmux = <PINMUX(PIN_SD0_CD, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <10800>;
+			power-source = <3300>;
+		};
+
+		sdhci0-clk-pins {
+			pinmux = <PINMUX(PIN_SD0_CLK, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <16100>;
+			power-source = <3300>;
+		};
+
+		sdhci0-cmd-pins {
+			pinmux = <PINMUX(PIN_SD0_CMD, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <10800>;
+			power-source = <3300>;
+		};
+
+		sdhci0-data-pins {
+			pinmux = <PINMUX(PIN_SD0_D0, 0)>,
+				 <PINMUX(PIN_SD0_D1, 0)>,
+				 <PINMUX(PIN_SD0_D2, 0)>,
+				 <PINMUX(PIN_SD0_D3, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <10800>;
+			power-source = <3300>;
+		};
+	};
+
+	uart0_cfg: uart0-cfg {
+		uart0-pins {
+			pinmux = <PINMUX(PIN_UART0_TX, 0)>,
+				 <PINMUX(PIN_UART0_RX, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <10800>;
+			power-source = <3300>;
+		};
+	};
+};
+
+&emmc {
+	bus-width = <4>;
+	no-1-8-v;
+	cap-mmc-hw-reset;
+	no-sd;
+	no-sdio;
+	non-removable;
+	status = "okay";
+};
+
+/* Wi-Fi */
+&sdhci1 {
+	bus-width = <4>;
+	cap-sdio-irq;
+	no-mmc;
+	no-sd;
+	non-removable;
+};
-- 
2.48.1


