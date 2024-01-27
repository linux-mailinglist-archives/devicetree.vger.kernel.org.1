Return-Path: <devicetree+bounces-35808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7CC83EDF7
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:30:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 661DD1F2263F
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 15:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF12A2D048;
	Sat, 27 Jan 2024 15:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="hWbf0GPv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE362C6B2
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 15:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706369345; cv=none; b=vAg3UzqJ3CKvgU6jD3RUnbMlBshiBuM3SFtmA2KeBX7QE7/YY/IpwUfSfLemMNjwlyUV1D4FggxYkwGIM9IG2uiMdteHuYRg+mbzbHCT5eOksDd4ApCozKekC6CqPZ4CGA09LjPEqhS2oDmbnlB7qeC0PbkyaZFmXI8vQtnSbqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706369345; c=relaxed/simple;
	bh=6/Y7z9KwYjfa4Sd9CyzInb+l3G4aYLUZmzfjXeJF/s8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lKnd6wBF7ns06ZFcGUeHGg84g9Ub2UMDYli6c8yKVAg171Zu5vq1X3fRYeWpIZKwe1cyoWZNhqKHfwQczjlFTntrY8j6psDbvRC4nXSVup66lHriEqXrtmIcQ3bJW4udXuadOTIoHW6Noo49FW2G1QWZ26lO4U1op4MIc3sLrUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=hWbf0GPv; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-33ae3154cf8so531509f8f.3
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 07:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1706369342; x=1706974142; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jr5hMNUd1x8YCEgCqvY7QTv9IEyl6KU3Ejyn2wYPqRg=;
        b=hWbf0GPvfRKC34na3dFWVRAJxTMzNUvrzde4rIqx5eGK1pm1u4ixm4uUngthBJ3qPJ
         /0kDZcsHlEVVwRM0V8wW8bf3WGRFiQw0jwdGrlBD022+dDQGpm8xfbgHoZ+U1g/rZE0c
         fgvA8kFwtV9bv8w0+4Xn/y26QJ/B2b7N8oDas=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706369342; x=1706974142;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jr5hMNUd1x8YCEgCqvY7QTv9IEyl6KU3Ejyn2wYPqRg=;
        b=JPytZylptAg9nGq1dHPlSneCtM266nzUsL1jGNr74caYXo3aKMZ/Fqh7hmDhIKL5GW
         ClCs2H3gqkjPnE5yejWT1wryUoMMW3zxYMmy70eMDjaCdJqbA5bkWs5JkdUlRJ3fUvtk
         g6ujBOedRHU2ObURx4iDj4MdRKct8MN7JtYDshSbImJUOMSI/A+8oWDRbFQ+qUL1Q/K2
         8zFZyuvKT+d5ymtFG0t3rS/I66E/PxK5PSb3w8BnbLMbxv8kl6/O8cYfJqX3+bKTbtH/
         xehFgK4Brpi8EQJbHT0ey2InAV0beVOiRv+Q4lRS46THQK7hFk9SwKWlK7DGq+3ReIFZ
         jj/w==
X-Gm-Message-State: AOJu0YwTxrVdBqL5Hmc8ZCvGMGaNSogTQWiUplh0zo7/sgDUuZRGRctq
	X1rQyMXt6FJqPPHSLqZWAvkJK1BaZcjsxkGfDrSPhhnio1MZxx4YCJujymGUwp4=
X-Google-Smtp-Source: AGHT+IFOp9OP4FcMBTo00Ve4mfOu7PZh6QSfp8vwCqTlsNUh8pHjMhtyqQLLFLD21GtKlIfVpbbfgg==
X-Received: by 2002:adf:ef0f:0:b0:339:38c2:14c8 with SMTP id e15-20020adfef0f000000b0033938c214c8mr1378646wro.81.1706369342516;
        Sat, 27 Jan 2024 07:29:02 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-21-103-141.retail.telecomitalia.it. [79.21.103.141])
        by smtp.gmail.com with ESMTPSA id l5-20020a056402344500b0055974a2a2d4sm1745220edc.39.2024.01.27.07.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 07:29:02 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
	Lee Jones <lee@kernel.org>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sean Nyekjaer <sean@geanix.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v10 5/5] ARM: dts: add stm32f769-disco-mb1166-reva09
Date: Sat, 27 Jan 2024 16:28:49 +0100
Message-ID: <20240127152853.65937-6-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240127152853.65937-1-dario.binacchi@amarulasolutions.com>
References: <20240127152853.65937-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As reported in the section 8.3 (i. e. Board revision history) of document
UM2033 (i. e. Discovery kit with STM32F769NI MCU) these are the changes
related to the board revision addressed by the patch:
- Board MB1166 revision A-09:
  - LCD FRIDA FRD397B25009-D-CTK replaced by FRIDA FRD400B25025-A-CTK

The patch adds the DTS support for the new display which belongs to the
the Novatek NT35510-based panel family.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>

---

Changes in v10:
- Drop backlight references

Changes in v9:
- Change commit message
- Rename stm32f769-disco-mb1225-revb03-mb1166-reva09 to
  stm32f769-disco-mb1166-reva09

Changes in v8:
- Add Reviewed-by tag of Linus Walleij
- Add Reviewed-by tag of Raphael Gallais-Pou

Changes in v7:
- Replace .dts with .dtb in the Makefile

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

 arch/arm/boot/dts/st/Makefile                       |  1 +
 .../boot/dts/st/stm32f769-disco-mb1166-reva09.dts   | 13 +++++++++++++
 2 files changed, 14 insertions(+)
 create mode 100644 arch/arm/boot/dts/st/stm32f769-disco-mb1166-reva09.dts

diff --git a/arch/arm/boot/dts/st/Makefile b/arch/arm/boot/dts/st/Makefile
index 7892ad69b441..9fedd6776208 100644
--- a/arch/arm/boot/dts/st/Makefile
+++ b/arch/arm/boot/dts/st/Makefile
@@ -23,6 +23,7 @@ dtb-$(CONFIG_ARCH_STM32) += \
 	stm32f469-disco.dtb \
 	stm32f746-disco.dtb \
 	stm32f769-disco.dtb \
+	stm32f769-disco-mb1166-reva09.dtb \
 	stm32429i-eval.dtb \
 	stm32746g-eval.dtb \
 	stm32h743i-eval.dtb \
diff --git a/arch/arm/boot/dts/st/stm32f769-disco-mb1166-reva09.dts b/arch/arm/boot/dts/st/stm32f769-disco-mb1166-reva09.dts
new file mode 100644
index 000000000000..ff7ff32371d0
--- /dev/null
+++ b/arch/arm/boot/dts/st/stm32f769-disco-mb1166-reva09.dts
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023 Dario Binacchi <dario.binacchi@amarulasolutions.com>
+ */
+
+#include "stm32f769-disco.dts"
+
+&panel0 {
+	compatible = "frida,frd400b25025", "novatek,nt35510";
+	vddi-supply = <&vcc_3v3>;
+	vdd-supply = <&vcc_3v3>;
+	/delete-property/power-supply;
+};
-- 
2.43.0


