Return-Path: <devicetree+bounces-31314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F76182ACA1
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 11:56:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 459F21C20A56
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 10:56:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DE2C15495;
	Thu, 11 Jan 2024 10:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="gwjd/+nW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B1DF168C8
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 10:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-558ad44adceso210534a12.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 02:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1704970405; x=1705575205; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=07GZlbDEPiZyBFQar7cofI0kUTpkas/bOfqyP7AOZqE=;
        b=gwjd/+nWvfhtu2C0UXNhhmOlDQzFgpdy6rm7H9wnSXgjaCo2uO1laenOX5Gagw8Zzl
         /p2J4dqJqXqtnlTODTPqIrWsbi8pRigSaP0cw8wexbOQIsVOQnnTXOqiokndXx4qGCzW
         ATJH3KrBh8C3sppOIv56Rak8teBBXwYBQLwvk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704970405; x=1705575205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=07GZlbDEPiZyBFQar7cofI0kUTpkas/bOfqyP7AOZqE=;
        b=Ad9uzHyBU9rvdMrSWA8UI2xzEkpNKyWjKcynYpFUeuanoFtJGqxYF6emB191ibkG1q
         IVbHIyHgXM5Q5wA7LwV0PHieb+8POD8DPphSCjvscIFRMERKWOwoN3M673ZpVPzlGpYW
         yZcRG6k3ZAzt1Yqz2qYGDHZVcuYI/auizWmKT9w0Foyn58s/O0vLkQ2fBRdM9wrT6+p3
         DvLz4p1DzS4m+5OxqVvdwnogDWWi6S07UwOmnhlO2tVe1tL5zXCZvoeWlk7DqjagXDhI
         1kSz3YdkyyZbV8hWjJdat+zXMpa9xDPv3HY0xPcAgpAr3tIJHX83CQ4QR1koKhi9udry
         hPaQ==
X-Gm-Message-State: AOJu0Yx5x2pcyA5QDW5zea7IPBjyhInmd3Q9071WhphIItFh3ea2oIns
	LxagZJH1jt34kePRwoUp0Na4cM3+M1v6Zw==
X-Google-Smtp-Source: AGHT+IErKbNHU1lSm1I5j0Y/BKOFu7GR/fneD4zc9HUeecOhzjFHvKjF72ilRx9vZI4fmzvKq+Lmhw==
X-Received: by 2002:a05:6402:1d1a:b0:557:a3c:9d45 with SMTP id dg26-20020a0564021d1a00b005570a3c9d45mr488768edb.79.1704970405000;
        Thu, 11 Jan 2024 02:53:25 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it ([95.236.91.90])
        by smtp.gmail.com with ESMTPSA id eo9-20020a056402530900b00557b0f8d906sm459774edb.70.2024.01.11.02.53.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 02:53:24 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lee Jones <lee@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Michal Simek <michal.simek@amd.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sean Nyekjaer <sean@geanix.com>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND PATCH v6 5/5] ARM: dts: add stm32f769-disco-mb1225-revb03-mb1166-reva09
Date: Thu, 11 Jan 2024 11:53:11 +0100
Message-ID: <20240111105314.8186-6-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240111105314.8186-1-dario.binacchi@amarulasolutions.com>
References: <20240111105314.8186-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As reported in the section 8.3 (i. e. Board revision history) of document
UM2033 (i. e. Discovery kit with STM32F769NI MCU) these are the changes
related to the board revisions addressed by the patch:
- Board MB1225 revision B-03:
  - Memory MICRON MT48LC4M32B2B5-6A replaced by ISSI IS42S32400F-6BL
- Board MB1166 revision A-09:
  - LCD FRIDA FRD397B25009-D-CTK replaced by FRIDA FRD400B25025-A-CTK

The patch only adds the DTS support for the new display which belongs to
to the Novatek NT35510-based panel family.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v6:
- Drop patches
  - [5/8] dt-bindings: nt35510: add compatible for FRIDA FRD400B25025-A-CTK
  - [7/8] drm/panel: nt35510: move hardwired parameters to configuration
  - [8/8] drm/panel: nt35510: support FRIDA FRD400B25025-A-CTK
  because applied by the maintainer Linus Walleij

Changes in v5:
- Replace GPIOD_ASIS with GPIOD_OUT_HIGH in the call to devm_gpiod_get_optional().

Changes in v2:
- Change the status of panel_backlight node to "disabled"
- Delete backlight property from panel0 node.
- Re-write the patch [8/8] "drm/panel: nt35510: support FRIDA FRD400B25025-A-CTK"
  in the same style as the original driver.

 arch/arm/boot/dts/st/Makefile                  |  1 +
 ...2f769-disco-mb1225-revb03-mb1166-reva09.dts | 18 ++++++++++++++++++
 2 files changed, 19 insertions(+)
 create mode 100644 arch/arm/boot/dts/st/stm32f769-disco-mb1225-revb03-mb1166-reva09.dts

diff --git a/arch/arm/boot/dts/st/Makefile b/arch/arm/boot/dts/st/Makefile
index 7892ad69b441..390dbd300a57 100644
--- a/arch/arm/boot/dts/st/Makefile
+++ b/arch/arm/boot/dts/st/Makefile
@@ -23,6 +23,7 @@ dtb-$(CONFIG_ARCH_STM32) += \
 	stm32f469-disco.dtb \
 	stm32f746-disco.dtb \
 	stm32f769-disco.dtb \
+	stm32f769-disco-mb1225-revb03-mb1166-reva09.dts \
 	stm32429i-eval.dtb \
 	stm32746g-eval.dtb \
 	stm32h743i-eval.dtb \
diff --git a/arch/arm/boot/dts/st/stm32f769-disco-mb1225-revb03-mb1166-reva09.dts b/arch/arm/boot/dts/st/stm32f769-disco-mb1225-revb03-mb1166-reva09.dts
new file mode 100644
index 000000000000..014cac192375
--- /dev/null
+++ b/arch/arm/boot/dts/st/stm32f769-disco-mb1225-revb03-mb1166-reva09.dts
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023 Dario Binacchi <dario.binacchi@amarulasolutions.com>
+ */
+
+#include "stm32f769-disco.dts"
+
+&panel_backlight {
+	status = "disabled";
+};
+
+&panel0 {
+	compatible = "frida,frd400b25025", "novatek,nt35510";
+	vddi-supply = <&vcc_3v3>;
+	vdd-supply = <&vcc_3v3>;
+	/delete-property/backlight;
+	/delete-property/power-supply;
+};
-- 
2.43.0


