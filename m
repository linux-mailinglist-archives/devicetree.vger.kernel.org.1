Return-Path: <devicetree+bounces-28918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E2281FFD8
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 14:53:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 665CDB224F1
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 13:53:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C592C1171E;
	Fri, 29 Dec 2023 13:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="pUC7/h5h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFCD12B6A
	for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 13:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-555526a060aso2951104a12.1
        for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 05:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1703857946; x=1704462746; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G2Gi1EmHukIt0jQJzaSt07+yXVEQJCsMbb8bSZVal5c=;
        b=pUC7/h5hJvJ29NGXWiWLEqoZC5V5G6uEqN5ToPK4bGFQQzETAMwsfnKe1gQaRwvpWf
         4XhxYR/Uo+95z0kpvO5a6r+nlhz/2Y/CavnY2wyDEdQfZDxRoZfuECfiIxlefuYZqqfO
         wfdMNqtTKvp6DEb8/hNDUdSzu3Uwrt7buO4uw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703857946; x=1704462746;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G2Gi1EmHukIt0jQJzaSt07+yXVEQJCsMbb8bSZVal5c=;
        b=mAilnEYTeufjbhsMFqD6O5IOJrsVFIGOhbq2pQUc1CWV5VmacGuaaBH3JcuC40RX5J
         cX/YLnEwu9q3iHhVUOC63tV4uUDdykYEn6PCQ7G4lxhr1LqtM3/xGd849yMneZYNX7Lj
         9Xv2zUn6fX2q01ZGVs9Thegl01EG9mK0s6Ta3vRPbbkQbrJ2QQLhbu/ppVW4Bg41Xm8B
         4ALA+PqxYeFnTjj+AaRDCK3Go/UgWZnTmZ4gjk+PjXgPjxJSvS+3fCxiaatMO5HNOp2V
         YCdiYT5M+fq5SotfjaM8vzAfDifLfEI+5s/dd+nw2cB5kwamuE6+8rb9On4byfQTPl4l
         2SUg==
X-Gm-Message-State: AOJu0YyNm7g3leWiBF9kjLARFBANZR58+vTY8GFsGv3fvrkYeuk/bo0M
	tiFDKSkOhqXKX19VmgDcTWv+aZtpcN/FpQ==
X-Google-Smtp-Source: AGHT+IEctE0vxDNjGsPYtDGoNP/VOIJMMYfD87twpZ/CDwjvjob6YX2X37wqTrnYlHKSKBRUuJ7xkA==
X-Received: by 2002:a50:9313:0:b0:54b:25e8:c00b with SMTP id m19-20020a509313000000b0054b25e8c00bmr7540199eda.6.1703857946523;
        Fri, 29 Dec 2023 05:52:26 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-49-57-70.retail.telecomitalia.it. [79.49.57.70])
        by smtp.gmail.com with ESMTPSA id i16-20020aa7c710000000b00553b243b1a8sm11019160edq.92.2023.12.29.05.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 05:52:26 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Olivier Moysan <olivier.moysan@foss.st.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sean Nyekjaer <sean@geanix.com>,
	Tony Lindgren <tony@atomide.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 6/8] ARM: dts: add stm32f769-disco-mb1225-revb03-mb1166-reva09
Date: Fri, 29 Dec 2023 14:51:21 +0100
Message-ID: <20231229135154.675946-7-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231229135154.675946-1-dario.binacchi@amarulasolutions.com>
References: <20231229135154.675946-1-dario.binacchi@amarulasolutions.com>
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

 arch/arm/boot/dts/st/Makefile                       |  1 +
 .../stm32f769-disco-mb1225-revb03-mb1166-reva09.dts | 13 +++++++++++++
 2 files changed, 14 insertions(+)
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
index 000000000000..ff7ff32371d0
--- /dev/null
+++ b/arch/arm/boot/dts/st/stm32f769-disco-mb1225-revb03-mb1166-reva09.dts
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


