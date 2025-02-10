Return-Path: <devicetree+bounces-144962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B5CA2FCAB
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 23:10:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B95F61887071
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 22:10:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41F452505AE;
	Mon, 10 Feb 2025 22:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nq04Lx5V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6434324E4CC
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 22:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739225410; cv=none; b=HZYovwVAW7PWhbZD6J36uVK3innAf+mZO6HeOLb/ZQKiouHujX8stCluOFygtW/Gg8UhjqhPqeenLLiI0wwgBnf3rLxjUUPrdGJ42chXvuE90sn1GHNCfxiJiE1dW/p0+UclrItsi/FCe48KWOCSmJAJE1AtANE4I8IgngRMYLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739225410; c=relaxed/simple;
	bh=jfa77/ONY496cJ8PEp5dYqJfCUfCX415nJ3UHlfDQpg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E9YFZ2rh4aHMfV7j+RAnqhqqJFFBjtQoa+zSxmTZ3jur54dcuJl+D7BQMd3xS+FZVLytjV6adHRxVdn72DLSfILU/KodeBqekl49uOBof0xSDt9it99MGVvjhtbliW6WAqTO9wMMPpa+RH2X+cDED+5rXEn7C1jblP6tHavkcCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nq04Lx5V; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43624b2d453so57199085e9.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 14:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739225407; x=1739830207; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lqTQGOfqcr22lakzrEU9GmH3j3SEvT+upsozoFTBBWQ=;
        b=Nq04Lx5VyZ8hRXzH97VXR1izQQk4bVeyjp4Huo6mLHjV6op9PNtuwhr3PNYjEyjjdO
         Qiac/iDnSapeXAM1AX6I0Q6sP/sAXRF8i8u9i6HF8Vx0apArIGDZpr51Bh02jjlPYV2b
         BEMHpWDfBF2U6B1k8GvwQNFA980DpGVzRqlHrjXHSBy+ucwtohyw2qDw68UQ4G1HLYDh
         VTBSdVnGC7s8VqvGEr312uup+qJFs1sXyOVJOKBE2t8NzCs9B2OQ31r/Zt+QP9sQ763E
         yitysV/6ewygCBMWjeLoBXucz6W3n65paw9MW/7TfxZHlFVzKV3HySM4Mba5cOOeIHv7
         zQRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739225407; x=1739830207;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lqTQGOfqcr22lakzrEU9GmH3j3SEvT+upsozoFTBBWQ=;
        b=jAZai09vZ+RqcKxgzQYC4Qk2i4qy9TfiD1pbJRFCtqzYFI4Os0VtC660qCOYze7b7n
         rC3wXD+WCLdwxvr1RUWqEVVVDr14jRXBqnqqIzybpGSAOMwXUaVdW35FHgJOPp15POg1
         297cruAd5kGupm0T6RHbKLkA9yROXEO7HJqf3VNFu+PtvZkN+8VlEBLDyPEYKp+0tkPr
         6gOeJoY6sQWvemuVSXmrsuHeYgN45e4GGGMCu/hrXgdWNWEPM7lQet5ytxMwHE01319D
         vkT0Tl60pv4H1qeKc9EmlXx+1uR114aCFxcUspFs6K08lTD6Uf6dfXjilIHxjAk8AdMr
         7gCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyIyPJn+X8iZ4xMvf8Os0MKgzitQ0rGl9VAv7u3l17FwotXYJl7iOzqEw2tFHtJy/pc+/lM6nk4CaY@vger.kernel.org
X-Gm-Message-State: AOJu0YxeONo+XpYpCV02dFNPm+iHS/3cJ0rtF+TQulsEfKgE3AGMwqP1
	L/iF55oFfXOf0KmJZ1udA4DtPNtJE42GdVP11/TrDVFXdUSesjRy/2oHi/P4
X-Gm-Gg: ASbGncs5PzoNVpBS7aNEPEqFya4ENrAbU8Uko0DXPFO8obfWmgqQyRs2BlRKF3ux8gx
	RODn2KOWyrIpN9hkuI+cv5TR3SQrvtgk/QT6hOmRdUsuxCCV7NJ/y5Hsf6XfJWE4iSDlHhGcO0l
	leH3zLYXl+T/HFrMWqRYlQfl0t3QCLH90cI+UhzG8B5tyyRJlwDfS3s7qu5LN9sxY+o8ohutGpp
	LPVSfaBJQHeqlqI+Vb+9rugNS24+agXuTyim8jn/MPQqILY/HfrO9g3DUTWqOIlnKdYAzlPP2hj
	evQ+Z9VUbgOCogFCxflAB8tUB6ga
X-Google-Smtp-Source: AGHT+IE8Rd+D6a5FfE4GhUBDXVPl11ELRUcMh1iUYQiQapnXPgx0wFseAaugMpCFZrWcX8Q9xU91dw==
X-Received: by 2002:a05:6000:1542:b0:38d:d0ca:fbaf with SMTP id ffacd0b85a97d-38dd0cb6ab6mr9753836f8f.18.1739225406495;
        Mon, 10 Feb 2025 14:10:06 -0800 (PST)
Received: from giga-mm.. ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dbde1dfaesm13443450f8f.90.2025.02.10.14.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:10:06 -0800 (PST)
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
Subject: [PATCH v2 4/7] arm64: dts: sophgo: Add Duo Module 01
Date: Mon, 10 Feb 2025 23:09:44 +0100
Message-ID: <20250210220951.1248533-5-alexander.sverdlin@gmail.com>
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

The Duo Module 01 is a compact module with integrated SG2000,
WI-FI6/BTDM5.4, and eMMC.
Add only support for UART and SDHCI.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
Changelog:
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


