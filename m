Return-Path: <devicetree+bounces-102056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC89975553
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 16:29:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E318B1C230B5
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 14:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4198E1A2550;
	Wed, 11 Sep 2024 14:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="qt+D+nLo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com [209.85.216.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD8719F103
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 14:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726064915; cv=none; b=jI60IRNJeRC5yo24PAfPQBuIbjxRwJU9IF3Qcoq/mr10XBSFW3K0e/VFRJvBrm22/BROUJcnIjBVo5ttxdfa70MMpeGnnMbntjs+lR7OvEYX8twytWl505B4TM3cFlBl7x0XHwNVs7GZ+tebvILpRXBI107GexMicqbFzvAcmj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726064915; c=relaxed/simple;
	bh=IcBXeYkgbGJ84tFNH0R4kvTUzdaSViwAKRjIOvyTAgE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OHDrgGObmjNFl5G1ZErsUW40zarGDRi7KBC4Gm9XlDKmI/eWRZF3XFwKVW/0/M3WR6KlcsiAae1EuQ9DLfYf4h2lURNtBLoUW/9bpWIaQelEjHu/5yNAtAypkVXAmBI39vidZI73qeq6OdkA/0Fskp6pOQKl5LfeQXYKFqb4Hnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=qt+D+nLo; arc=none smtp.client-ip=209.85.216.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pj1-f67.google.com with SMTP id 98e67ed59e1d1-2d8b679d7f2so5384437a91.1
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1726064913; x=1726669713; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JlMR806TYOVdOaLq5xGwhlKGdGKzP0R1k8RJuGsmWvQ=;
        b=qt+D+nLoFkmadQRrN+VcsumEieD2u4hbLa+bgbvMDEhird84e1iXhd72EXVZXKHSTs
         VCLurdI72FJXsAYzuuZ/Y+YbO3aQy0571LkW1CZJEwQPU+ySr23MO5cWfi/IYoFSiact
         Ixe6psINDPMbDzSqQ1xguu46oVO8sMWwSfzy15zYiAwiAtDrcNAVK2vHhyp9HLBtRV/k
         E1mD4QP36aVmunI01tKe1ZLQm8fHS7qD8qMDiZ33v3mo98GCpgSuzJHW/EO4znyKdEkk
         Glmwex6vYgSR1gyH9trpVwrJjCKx8CoBSiao8iz5eeFm+WqO7dz2B2b1ESCwKPmK4P1F
         7I1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726064913; x=1726669713;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JlMR806TYOVdOaLq5xGwhlKGdGKzP0R1k8RJuGsmWvQ=;
        b=T4K/siNYS6MoJNgIdszOGQJT9uksiB1FHEcUJxV9h7f2WDWtbHg29Te0UbOdUB4jT1
         h8iubpqRVoE4yzzVVCEPAz7iCqjjv/Jc+K/P6GHAHkcynlrB1tNH/u6RqflIzy9ikNbn
         iVuNc+noEb6nIAJ48ZQiPyP+uBdfF6bmTtaOAxfvHXOv93/N9KMBAqBLZtBzT50IypFt
         ph3ngrDjLSVHPB+Yb2y8k5h4KkHxs9IPsGfapLXOISVrSbnkscWZsKJuwi4m1GuW4NoU
         FN63mbydc6gsIJ9ygYI87DVS23e40dxt01PO41xFOefcw+SBr9E0rxGWtfy4hZQs1L1/
         jZyg==
X-Forwarded-Encrypted: i=1; AJvYcCWgvZBnYoYa2qDNdnSM9kINKpa99AZZG8vHrjlev9BQlNroF9WsvK7svIrFt6L2IA698X1iCEWsIn5s@vger.kernel.org
X-Gm-Message-State: AOJu0YwyNV6im+mDxHeWBAkmhGRFu5SpNVILzteu03GpoHx43UJfYvQ8
	eYRl4oCjXok7X8BljwES1tv/6XxjlVCLzfWaWSL9S+UIcJDesCCR8gPoJEUTdA==
X-Google-Smtp-Source: AGHT+IHRrdqyQFRaRmsKjM6oktmwEYz8v7brNVgKFqMiIsYA0fFkZWGIxkp8KhBcAVk9BeIUsCTqIw==
X-Received: by 2002:a17:90a:8a15:b0:2d8:99c4:3cd9 with SMTP id 98e67ed59e1d1-2dad4de1392mr20249725a91.3.1726064913104;
        Wed, 11 Sep 2024 07:28:33 -0700 (PDT)
Received: from [172.16.118.100] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dadbfe46c9sm10639116a91.11.2024.09.11.07.28.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 07:28:32 -0700 (PDT)
From: Ayush Singh <ayush@beagleboard.org>
Date: Wed, 11 Sep 2024 19:57:22 +0530
Subject: [PATCH 5/8] dts: ti: beagleplay: Add mikrobus connector symbols
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240911-mikrobus-dt-v1-5-3ded4dc879e7@beagleboard.org>
References: <20240911-mikrobus-dt-v1-0-3ded4dc879e7@beagleboard.org>
In-Reply-To: <20240911-mikrobus-dt-v1-0-3ded4dc879e7@beagleboard.org>
To: fabien.parent@linaro.org, d-gole@ti.com, lorforlinux@beagleboard.org, 
 jkridner@beagleboard.org, robertcnelson@beagleboard.org, 
 Andrew Davis <afd@ti.com>, Miguel Ojeda <ojeda@kernel.org>, 
 Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
 Gary Guo <gary@garyguo.net>, 
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Benno Lossin <benno.lossin@proton.me>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>, 
 Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=3949; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=IcBXeYkgbGJ84tFNH0R4kvTUzdaSViwAKRjIOvyTAgE=;
 b=owEBbQKS/ZANAwAIAQXO9ceJ5Vp0AcsmYgBm4ajWghgpKd00BK2WrYHEfO2v34WYsJS/sPbi3
 Ri3U7ObHMGJAjMEAAEIAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCZuGo1gAKCRAFzvXHieVa
 dIdcD/4stLzHpCelSOc5jWiixqKiBrSIgY7aRw86NzyMO2AxyJUyY00HFjV8qPobGSydzuu24lW
 kUYGiYHiTLliPqp4yWG2+OrxVOA4NshkkMDZ3spo65xWAkzisKaD4PlGK/AsyFiBVF68VwKbCHt
 B9DukvzmiV5v5iGrZfrWgNLWuUFfexKp4m2PoBVxZLp2KTEF8xSbkyih/X5hNFkgHMritjVHpjo
 CDP12rRdn7Qu0JcRNRAxQtywDTQSbUU0TrHllh/C00M9Pxc8tCNRsHGpu7uTfwWkOYpAie/kQMX
 TqUVTk9Cbcp52BqzNGKZFZeU5l9FLTM3bf0PAqGtq6XzA/rnPbyGorUfUX92bagqz81TnilSLil
 zh8f04hJlO755Nm1H5OyJd5DEfVv+M5Y3hqDz7DzC27WD3GWHWd+JoPqOz8/fM6goS/b/GqLEV1
 euVT7nF5iQqmd8hc8fFxWTjfRCpwPOp3W6zaryE67FMESzrOBOTRMYMVWLMdD7rneobzFOcJ90I
 3v+Mk7cdxbDbfokJ5VEfiH/9HjL8cOSQgWDeBC1fdlKKPftFR2q4QWNPhMXLq5KkKJEJW4XC0q8
 G895xHNXsA3yI7mGnLAD7uesXYMrQJlA3KStcRO3KhTfFXXgSH5J6IskouY7ncg8mtPN30rxPzG
 AYsAQ2R/6InpZ7A==
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

- I2C, UART, PWM symbols
- MIKROBUS_GPIO defines a gpio-controller that defines the pins in the
  following order:
  0: PWM
  1: INT
  2: RX
  3: TX
  4: SCL
  5: SDA
  6: MOSI
  7: MISO
  8: SCK
  9: CS
  10: RST
  11: AN
- PWM should always use channel 0. Use nexus node for routing

Signed-off-by: Ayush Singh <ayush@beagleboard.org>
---
 MAINTAINERS                                        |  1 +
 arch/arm64/boot/dts/ti/Makefile                    |  1 +
 .../k3-am625-beagleplay-mikrobus-connector0.dtso   | 49 ++++++++++++++++++++++
 3 files changed, 51 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d0c18bd7b558..95f228c85a40 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15432,6 +15432,7 @@ F:	drivers/usb/image/microtek.*
 MIKROBUS CONNECTOR
 M:	Ayush Singh <ayush@beagleboard.org>
 S:	Maintained
+F:	arch/arm64/boot/dts/ti/k3-am625-beagleplay-mikrobus-connector0.dtso
 F:	Documentation/devicetree/bindings/connector/mikrobus-connector.yaml
 F:	drivers/misc/mikrobus.rs
 
diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index bcd392c3206e..c628954a357b 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -12,6 +12,7 @@
 dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay-csi2-ov5640.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay-csi2-tevi-ov5640.dtbo
+dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay-mikrobus-connector0.dtbo
 dtb-$(CONFIG_ARCH_K3) += k3-am625-phyboard-lyra-rdk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-sk.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-nonwifi-dahlia.dtb
diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay-mikrobus-connector0.dtso b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-mikrobus-connector0.dtso
new file mode 100644
index 000000000000..81d370249f64
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-mikrobus-connector0.dtso
@@ -0,0 +1,49 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/**
+ * MikroBUS Overlay for BeaglePlay MikroBUS Connector 0
+ *
+ * Copyright (C) 2024 Ayush Singh <ayush@beagleboard.org>
+ */
+
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	__symbols__ {
+		MIKROBUS_CONNECTOR = "/mikrobus-connector0";
+
+		/* GPIO controller for all pins */
+		MIKROBUS_ALL_GPIO = "/mikrobus-connector0";
+
+		/* MikroBUS connector 0 SCL Pin options */
+		MIKROBUS_SCL_MUX_I2C_SCL = "/bus@f0000/pinctrl@f4000/mikrobus-i2c-default-pins";
+		MIKROBUS_SCL_MUX_DIGITAL = "/bus@f0000/pinctrl@f4000/mikrobus-i2c-gpio-pins";
+
+		/* MikroBUS connector 0 SDA Pin options */
+		MIKROBUS_SDA_MUX_I2C_SDA = "/bus@f0000/pinctrl@f4000/mikrobus-i2c-default-pins";
+		MIKROBUS_SDA_MUX_DIGITAL = "/bus@f0000/pinctrl@f4000/mikrobus-i2c-gpio-pins";
+
+		/* MikroBUS connector 0 UART_TX Pin options */
+		MIKROBUS_TX_MUX_UART_TX = "/bus@f0000/pinctrl@f4000/mikrobus-uart-default-pins";
+		MIKROBUS_TX_MUX_DIGITAL = "/bus@f0000/pinctrl@f4000/mikrobus-uart-gpio-pins";
+
+		/* MikroBUS connector 0 UART_RX Pin options */
+		MIKROBUS_RX_MUX_UART_RX = "/bus@f0000/pinctrl@f4000/mikrobus-uart-default-pins";
+		MIKROBUS_RX_MUX_DIGITAL = "/bus@f0000/pinctrl@f4000/mikrobus-uart-gpio-pins";
+
+		/* MikroBUS connector 0 PWM Pin options */
+		MIKROBUS_PWM_MUX_PWM = "/bus@f0000/pinctrl@f4000/mikrobus-pwm-default-pins";
+		MIKROBUS_PWM_MUX_DIGITAL = "/bus@f0000/pinctrl@f4000/mikrobus-pwm-gpio-pins";
+
+		/* MikroBUS connector 0 uses main_i2c3 for I2C on BeaglePlay */
+		MIKROBUS_SCL_I2C = "/bus@f0000/i2c@20030000";
+		MIKROBUS_SDA_I2C = "/bus@f0000/i2c@20030000";
+
+		/* MikroBUS connector 0 uses main_uart5 for UART on BeaglePlay */
+		MIKROBUS_TX_UART = "/bus@f0000/serial@2850000";
+		MIKROBUS_RX_UART = "/bus@f0000/serial@2850000";
+
+		/* MikroBUS connector 0 uses ecap2 for PWM on BeaglePlay */
+		MIKROBUS_PWM_PWM = "/bus@f0000/pwm@23120000";
+	};
+};

-- 
2.46.0


