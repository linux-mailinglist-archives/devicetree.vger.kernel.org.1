Return-Path: <devicetree+bounces-144437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B557A2E114
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 23:07:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2E4C3A5976
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 22:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B98F22F39E;
	Sun,  9 Feb 2025 22:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bboqD6/Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3CB222571
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 22:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739138831; cv=none; b=T7s/jeDfykjY8dFNO7jabXQXkMQKoESgsdaUmT3E1R0euejDNIkImgtaraB++vOOhCUIxCLlzAn086gni4nNusDp57ATgG/eOEoL27IKQ6IJV1a8QIcmG4jY9xMNsAF6okpjuNxpA+CemSQ+UvEtMcdudVGo01KL27NmOFFZy40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739138831; c=relaxed/simple;
	bh=vO9SlIRdivY1Vbgt3sqdWWIyvjtvuLfx9tw6qxqkx94=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X5eoJE8Xu/PEgCr4yFN70VqqDelMMY2d2LlsqWdXz13NlZde7MSk5O678Fhdyzgmphc9B4WRwjbc2H6EDVr3J8/gDh7pAdq1+DlTER3uSmYKTFmL2Z43Cc6IuF6NXrjpAVKTWrRVWRgGaaZfp43fbCjSvXHIcg3i5lHhfJIMuP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bboqD6/Q; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-38dcc6bfbccso1205046f8f.0
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2025 14:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739138828; x=1739743628; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n14WLjNeVm3jyFICfo3nmxlNSDZ1JTTnxOPrJZHnJuI=;
        b=bboqD6/QeNfqbQMYBE+5/lhH2cbZuBA4AJMfhm4VYBHm/xdwUtqJAbjmblguGY3Z/g
         C8iYWENyMlsXSu1Mcz9Pw2pDSYprckfIDW/MpkdthRyIB+3iB4+gr2BmeTiR/UfHdWTs
         2MDdngV3nzx2UD+5sSmRxtfZK4b38ktGiklOBHosrKoph/BuFh/GWf3FGSiw52GT7jxe
         C2lujjbvoESrXhjAznMD2SxiowJRPL62E91Z4i3hd+yMZGCkClYo8IcETLw1Wu0qq8Wy
         yXVguo3OehEdJHzpUHqJlLWhMJdQ5boZoicwOfCF6znenT8Ggp3q7vM8vpksNgzPDFeu
         Eb5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739138828; x=1739743628;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n14WLjNeVm3jyFICfo3nmxlNSDZ1JTTnxOPrJZHnJuI=;
        b=WmKeN5/0TDB/vOAloYZguViGE5ja8wtkWMXH2HrZLdMvEhox8EJN59lrv4e1TBp8MQ
         2J45VZSWQI1GLBO2zq3F73ObODBiDVTHqEB6iw4sU6xQEBxBi0eFy/7ZN8dRnaXfZ912
         0aeHYyfE1uvDvlkiQPK4GICQo2rT9esEgkV5QAK7wtahJdULID7LawBhANuZdrV97U4y
         AOWoSz4qvlyQT+8YC8q0lWyCXh+HoAtKOuHjzT5hZIStX3AFmlXWwQGTPWXRmXQ02aoj
         psoqF01ePIG++GZACxDc49MaFz+jz6pdPf2PM2jmCWvtksAUAL8ytcrM9Ll13NaMSjH2
         pMeQ==
X-Forwarded-Encrypted: i=1; AJvYcCVu/roieOsitgJi2DjQoGmdnBnCGBm+M2NmF0oe39GgvsdyCX/k9eJgKde/sXT6Qig/LorgDQuTbhZ+@vger.kernel.org
X-Gm-Message-State: AOJu0YzdXaoE3Ny4anjGjZ2R+ncN+5xxuwaVdYDO2AH7fftHZKJIArR/
	5p/bQa/DU2dD1inHFdaAL1lw4rvmxcUp79xWNo3eJTATpLR//Xee
X-Gm-Gg: ASbGnctzXG43zcwmefnT5qKN0hPOXyHPEOvxqIpsWfz+hFcXgmXz/clsYVbZ/Dh0zi+
	VA4uAnINDveohSDtf8QdA8wzwiQCTOx0gIC2FHp5VJFobhh2sKebjOO3DJ/aebhZV5Wz+g5z4Sw
	k4JtV4v9sa8RcV5tdePN5mv/PgHEk2Xcf/fWK+czqVx8egca6HFnBOlSeA5oa45JgbHxlRP1kll
	fJUriMOeFNIAXWxwxwUYPSG0FSxBzLajkKPPkyQFLfN8kLUqY09E+xhvUMx8SxHzU6kQ1e1xRtk
	5fx3da8KE5uHvtx+ZpZbcgpoPShT
X-Google-Smtp-Source: AGHT+IFnnVaS6q04jBo0CqYl+rd5w1TnOLdiL3DvrdfmPcV54sx21PtnBEVHObPWcPkV67SwoWEUWQ==
X-Received: by 2002:a05:6000:2c2:b0:38a:88b8:97a9 with SMTP id ffacd0b85a97d-38dc8d91f1fmr8017485f8f.2.1739138828332;
        Sun, 09 Feb 2025 14:07:08 -0800 (PST)
Received: from giga-mm.. ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dbf2ed900sm10386544f8f.53.2025.02.09.14.07.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2025 14:07:07 -0800 (PST)
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: soc@lists.linux.dev
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
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
Subject: [PATCH 04/10] arm64: dts: sophgo: Add Duo Module 01
Date: Sun,  9 Feb 2025 23:06:29 +0100
Message-ID: <20250209220646.1090868-5-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250209220646.1090868-1-alexander.sverdlin@gmail.com>
References: <20250209220646.1090868-1-alexander.sverdlin@gmail.com>
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
 .../sophgo/sg2000_milkv_duo_module_01.dtsi    | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 arch/arm64/boot/dts/sophgo/sg2000_milkv_duo_module_01.dtsi

diff --git a/arch/arm64/boot/dts/sophgo/sg2000_milkv_duo_module_01.dtsi b/arch/arm64/boot/dts/sophgo/sg2000_milkv_duo_module_01.dtsi
new file mode 100644
index 000000000000..7edcc4d03cc4
--- /dev/null
+++ b/arch/arm64/boot/dts/sophgo/sg2000_milkv_duo_module_01.dtsi
@@ -0,0 +1,84 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#include <dt-bindings/pinctrl/pinctrl-sg2000.h>
+#include "sg2000.dtsi"
+
+/ {
+	model = "Milk-V Duo Module 01";
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
+&emmc {
+	/delete-property/ status;
+	bus-width = <4>;
+	no-1-8-v;
+	cap-mmc-hw-reset;
+	no-sd;
+	no-sdio;
+	non-removable;
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
+
+&pinctrl {
+	uart0_cfg: uart0-cfg {
+		uart0-pins {
+			pinmux = <PINMUX(PIN_UART0_TX, 0)>,
+				 <PINMUX(PIN_UART0_RX, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <10800>;
+			power-source = <3300>;
+		};
+	};
+
+	sdhci0_cfg: sdhci0-cfg {
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
+
+		sdhci0-cd-pins {
+			pinmux = <PINMUX(PIN_SD0_CD, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <10800>;
+			power-source = <3300>;
+		};
+	};
+};
-- 
2.48.1


