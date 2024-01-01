Return-Path: <devicetree+bounces-29069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E55B821469
	for <lists+devicetree@lfdr.de>; Mon,  1 Jan 2024 17:17:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17782281B3D
	for <lists+devicetree@lfdr.de>; Mon,  1 Jan 2024 16:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFEBF63C1;
	Mon,  1 Jan 2024 16:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ZG6FR763"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB6BCA4A
	for <devicetree@vger.kernel.org>; Mon,  1 Jan 2024 16:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5565b66e9c5so451187a12.3
        for <devicetree@vger.kernel.org>; Mon, 01 Jan 2024 08:16:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1704125774; x=1704730574; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gKarHTcTd/SOLcJ/jUKhVwYIwJ9sftrWCAJJN9sfLME=;
        b=ZG6FR763g5Ld2NHWzEz+mNgh2QMmWxmGsT3538dq362zbz8WU6kHFc0ZQ0RfC3qppS
         bvJUBDEG1z1NbyzC4ArAtn4J3w+sMHBrxrE7iHxzk4xHOdMA4yZjSj/oPRSYUSU7WmvK
         NrJxmfmw1LPDSj45Ev46sm4uei1IXrwwvJcz4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704125774; x=1704730574;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gKarHTcTd/SOLcJ/jUKhVwYIwJ9sftrWCAJJN9sfLME=;
        b=LEI4R+dy+iSZQwiv9NykL3xcT2fe22QcROvOCZskE/fnObnHbWb90CLB2BfK5lEdTP
         hpYd+GvdhtS/BntHTE4jhM+RM90x/kiKRmGv5mMFoKpMOBmMhhg9hK6u1jSPTxlZatLb
         Nu0bA+Nrt1A4gxo+Td+yd9lwIzqMgND/3T0yDqIkasVriN4YzipJscR9Bh/rRXwC6N+C
         243SJ0HZglIk0rQiABgLMsjg/ZvYvKAvZr67ER4iGMNbLfUywvJSy0lhFw5U7/mCVZ7O
         +PpAk58120+IwF2WBFuvlzutycnyOQ/2G4SqyLJwqcgRYBzCuiA3iJuEC3L4pRHt5Dda
         TH4w==
X-Gm-Message-State: AOJu0YyU2hcO+Z+FA6SVneOXgBRbh0oXXlM9+CwV9fg8A2uqnSop7K0O
	4pCkvAbtTLrbSsvpABptnX/KcBf3pD6LRg==
X-Google-Smtp-Source: AGHT+IF3KLyf/gsZvmJ5w9YLaxU7gVC5k3gI0fV4IPIatLF/3MGhfP8WpYWFm9twcl32cSPZVjzzLA==
X-Received: by 2002:a17:906:48:b0:a19:562d:5a20 with SMTP id 8-20020a170906004800b00a19562d5a20mr7580197ejg.28.1704125774750;
        Mon, 01 Jan 2024 08:16:14 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-48-44-179.retail.telecomitalia.it. [82.48.44.179])
        by smtp.gmail.com with ESMTPSA id ep16-20020a1709069b5000b00a27d5e9b3ebsm1897857ejc.105.2024.01.01.08.16.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jan 2024 08:16:14 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sean Nyekjaer <sean@geanix.com>,
	Tony Lindgren <tony@atomide.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2 6/8] ARM: dts: add stm32f769-disco-mb1225-revb03-mb1166-reva09
Date: Mon,  1 Jan 2024 17:15:49 +0100
Message-ID: <20240101161601.2232247-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240101161601.2232247-1-dario.binacchi@amarulasolutions.com>
References: <20240101161601.2232247-1-dario.binacchi@amarulasolutions.com>
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

Changes in v2:
- Change the status of panel_backlight node to "disabled"
- Delete backlight property from panel0 node.

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


