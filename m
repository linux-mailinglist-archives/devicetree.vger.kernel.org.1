Return-Path: <devicetree+bounces-146426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C90A34D8A
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 19:23:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4CAD93A9B6E
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 18:22:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4563242918;
	Thu, 13 Feb 2025 18:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A3l/uZjk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A776E245027
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 18:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739470942; cv=none; b=JUNjJkc4NQYpUAmbeZ4toa+OxjtsmomeM5GYBiSe5qvBBYMcAQiVNF8O/UnQKf7IWruADZKw8i/hFxHchrEhGJ9c7MzzUmRErkIOYdktIbkgJi2QWpsURw1krPd0/tPRDPoI3Q6EOuETYRHNvE90KS+gyCXPCQkwP3nScea8USo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739470942; c=relaxed/simple;
	bh=7I3ZjUyk2PozcGFzAyFdx01nt7YHiigZMQdN0OcdeJI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EPDXrUaCJOtWr9yMzeFYrvD7Bl0NLG8Tqhvr34OH5dGbhj6iiJc0xnsABgemAIz42Nny1YSJIr0+LEtaDWAoRwSXcHDzUCQTNU+eGX6/25ZIXAvsCk9NYMxO8bK2qpaZ77IHYpiXvymBuAgdMr74luqvz+UQ7sd5gGuTUfRtGY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A3l/uZjk; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5de849a0b6cso2203417a12.2
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 10:22:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739470939; x=1740075739; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rQIZ1/JS/EZe8uaQG5MXz9aibtSuptWifTs0OB1seYI=;
        b=A3l/uZjkPXUU/TuYIg65LIVEToy72/ey0WqZca33NWWPgbuBrcsMSsAQ+4kZLBy2dX
         f9LBnNecWJfYtY4cb+KuKnuOIeCcD7dc3JxtXDrNXAqrVGYZRvf9b7dnCyijYkC/F+6o
         +E9Z86POfH9a8tAauFnaZgRMKxICJybyldSTuIVJGh8R18NVDOYX/JN8q1kudlVv9S8Y
         jNsyZX2OeXkPfPlF5HI39GEokjqTicBBBEClWo+b8yrkeE5l32yS+UK96s6PJcuVHpcu
         y4Rg0fIjeSUxDJxooprfJ7qIWe4Rj8OZOCkd6XclUe4QEaFfn9Irqbf0BAYu/S0dnOK1
         zUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739470939; x=1740075739;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rQIZ1/JS/EZe8uaQG5MXz9aibtSuptWifTs0OB1seYI=;
        b=tnVUUA+CzYNIoBNo/RPoLfdlgw7KqZod54pix3V5ECd4HqCZcnBpEJfDAZcQtJ14Pa
         kAbV3nFCX78vf7eLmjOdEFIsmTgYVq80pYJoqGU9vWB/pIqOcBiTvDPxTvxHaO7Js9SP
         XbjZWcsfQGWjhdCO6cQpbnlZBgCU7Tw/gE9Hbf2W3rFJin1kZD8lxbxPq7H2CkF8DToj
         YUUBqsp2oiSOGWL6O0wDAcv8fYcsq9JJJAKPnd0LSKI2VS4Kl1+ocEZwIQ+kaTdp4xVU
         p/vv/WudPGrM03AGx15QX8H/BHi1o/jcBn+fm6m1+DuDM/pli7GaH60GhvsyvQMyTULr
         GjWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXq1F+z2KHPAC2nv9J7n5N7z/Nv1DtdM/VGypZ718nCIwB6byowSoNDJYDPKdQ+9geWz7kxgFgYadiS@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7GwxCBo9GX5BtvPdsBKx3npaBkaIv65m3qnJcAlgxOq/cxCmx
	jhiGmTnGRdZ344dPpQkzcfud4Zs5VLXzwfmnZhCuwDjtzum/w7GZ
X-Gm-Gg: ASbGncsAd3/H4gJutKtbHgZcZ4NPT+Jf1eioXSNNpUt6t+UE9ipP6nMEOfJhduYFVgl
	rFV4xlroVZVlkC/3rRHzpfhfPXUgMk7bDXnS4adljDr47DYP159TwLyYjDK93aanFVG5ed2JNHB
	hbTiArhZJdxsrD0VY63GdytifamA9SzFHsl5PxSl36fa9NTnuPc4iiB2w1Njimfrfysk1Cm+je6
	0pZn/dmvsCo5qiHH6NLjw3e6+cznxD0RaI6HyLuq7gAdmbjueT7OtKmfa7u+WCltNJccNQBhWrE
	2hD1hsxe4sPUCde3Qt/bH+VKW7UT
X-Google-Smtp-Source: AGHT+IEK0PazKLsQo+heCo/hF/Iw69gOymEwNYP2zVHc0UNgs5uFW1IBvSpCogGh398D5LHBRlbScw==
X-Received: by 2002:a05:6402:4581:b0:5dc:7425:ea9c with SMTP id 4fb4d7f45d1cf-5dec9fabe09mr3983155a12.26.1739470938795;
        Thu, 13 Feb 2025 10:22:18 -0800 (PST)
Received: from giga-mm.. ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece270a66sm1559230a12.52.2025.02.13.10.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 10:22:18 -0800 (PST)
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
Subject: [PATCH v4 4/7] arm64: dts: sophgo: Add Duo Module 01
Date: Thu, 13 Feb 2025 19:22:05 +0100
Message-ID: <20250213182210.2098718-5-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250213182210.2098718-1-alexander.sverdlin@gmail.com>
References: <20250213182210.2098718-1-alexander.sverdlin@gmail.com>
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
v4:
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


