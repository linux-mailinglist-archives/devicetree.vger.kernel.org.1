Return-Path: <devicetree+bounces-142129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1BFA2444B
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 22:03:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EBD63A1F99
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 21:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBFC61F2388;
	Fri, 31 Jan 2025 21:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="O7Or3HPz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D44158535
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738357376; cv=none; b=m+lmgk6s765HLZ+csJDD85ALFrV8t8QSoMWX+XP4DDkaTlh7Ph0la1U+s/rsDcHz7RzJ9+DNCTFPWWWN9fJ6UXhloLvvq7Kr+Qapnu9J+0FegXilBR/9y0U1Ue2+6eHpkNkcRx0XnmegLtb3VcguXbCiUdu4+4HXCQGqIYLA5wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738357376; c=relaxed/simple;
	bh=8nKp6J5xseYQV42rvrUCmiUuZj15G1S/+oKj3HmY0KU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GPpYyuyMFLap2aDt98NGHzna0oPCzHbV3iAsKj6dvomaUumLTHDMp0KmnT4qFmI/kPUY2frgU0BnOSLmRDSFXWJ+i/MdsjPMNccnXsUKABKOy0UeZI5VeuBze5lc6Y0k5aCjHEMGRqyKfQqhIFa9hJiUPZzG6QWKHeTbD6BliXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=O7Or3HPz; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=MBWs5oIhnhuwantlcNVJJR9qYtNyEsREGT8NBj46Yjk=; b=O7Or3H
	PzGKOvd43xjIrcfCQHziVWd3yh4RspNAEh6GJS8/MSx5NSM5Gi6R3dowoK3tiEMf
	el3uf5lkhaQB7qcrP/MWl5z+xpeyHHp3WUewlLZlm5XiCKKlz7Cp12sPXMB+c+SB
	12OPlkShT0ILEVL89FRx74VmsdfFj2vDq1Bmm3bT7VxHPubpiLmgtURwZ6SfdUbs
	MW9vpLA4YPx+otjkTDfEHmaW6+kZpNLLdzGACjOrUMIP0zyg9L6SVazuzNnwfoB1
	uVL/Eg9hi8d8jYbszpne3hcoaompb1wzfoPTai7uRXTxiQiNHTVFdF0PQYva+Lvv
	BYexg2uqMVvhzWyw==
Received: (qmail 1802054 invoked from network); 31 Jan 2025 22:02:51 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 31 Jan 2025 22:02:51 +0100
X-UD-Smtp-Session: l3s3148p1@C1yb3QYtrAjUph5e
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/4] ARM: dts: at91: use correct vendor name for Calao boards
Date: Fri, 31 Jan 2025 22:02:37 +0100
Message-ID: <20250131210236.36212-8-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250131210236.36212-6-wsa+renesas@sang-engineering.com>
References: <20250131210236.36212-6-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The company was named "Calao", not "Caloa".

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/microchip/tny_a9260.dts         | 2 +-
 arch/arm/boot/dts/microchip/tny_a9260_common.dtsi | 2 +-
 arch/arm/boot/dts/microchip/tny_a9263.dts         | 2 +-
 arch/arm/boot/dts/microchip/tny_a9g20.dts         | 2 +-
 arch/arm/boot/dts/microchip/usb_a9260.dts         | 2 +-
 arch/arm/boot/dts/microchip/usb_a9260_common.dtsi | 2 +-
 arch/arm/boot/dts/microchip/usb_a9263.dts         | 2 +-
 arch/arm/boot/dts/microchip/usb_a9g20.dts         | 2 +-
 arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi | 2 +-
 arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts     | 2 +-
 10 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/microchip/tny_a9260.dts b/arch/arm/boot/dts/microchip/tny_a9260.dts
index ef6d586ce887..f0f2a787d669 100644
--- a/arch/arm/boot/dts/microchip/tny_a9260.dts
+++ b/arch/arm/boot/dts/microchip/tny_a9260.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * tny_a9260.dts - Device Tree file for Caloa TNY A9260 board
+ * tny_a9260.dts - Device Tree file for Calao TNY A9260 board
  *
  * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  */
diff --git a/arch/arm/boot/dts/microchip/tny_a9260_common.dtsi b/arch/arm/boot/dts/microchip/tny_a9260_common.dtsi
index 70e5635c78ed..4d4377f51bec 100644
--- a/arch/arm/boot/dts/microchip/tny_a9260_common.dtsi
+++ b/arch/arm/boot/dts/microchip/tny_a9260_common.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * tny_a9260_common.dtsi - Device Tree file for Caloa TNY A926x board
+ * tny_a9260_common.dtsi - Device Tree file for Calao TNY A926x board
  *
  * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  */
diff --git a/arch/arm/boot/dts/microchip/tny_a9263.dts b/arch/arm/boot/dts/microchip/tny_a9263.dts
index 62b7d9f9a926..3dd48b3e06da 100644
--- a/arch/arm/boot/dts/microchip/tny_a9263.dts
+++ b/arch/arm/boot/dts/microchip/tny_a9263.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * usb_a9263.dts - Device Tree file for Caloa USB A9293 board
+ * usb_a9263.dts - Device Tree file for Calao USB A9293 board
  *
  *  Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  */
diff --git a/arch/arm/boot/dts/microchip/tny_a9g20.dts b/arch/arm/boot/dts/microchip/tny_a9g20.dts
index 118d766a1265..cebd5696a2c1 100644
--- a/arch/arm/boot/dts/microchip/tny_a9g20.dts
+++ b/arch/arm/boot/dts/microchip/tny_a9g20.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * tny_a9g20.dts - Device Tree file for Caloa TNY A9G20 board
+ * tny_a9g20.dts - Device Tree file for Calao TNY A9G20 board
  *
  * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  */
diff --git a/arch/arm/boot/dts/microchip/usb_a9260.dts b/arch/arm/boot/dts/microchip/usb_a9260.dts
index 66f8da89007d..e7f7b259ccf3 100644
--- a/arch/arm/boot/dts/microchip/usb_a9260.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9260.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
- * usb_a9260.dts - Device Tree file for Caloa USB A9260 board
+ * usb_a9260.dts - Device Tree file for Calao USB A9260 board
  *
  *  Copyright (C) 2011-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  */
diff --git a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
index 9672a5626cae..19084ba75883 100644
--- a/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
+++ b/arch/arm/boot/dts/microchip/usb_a9260_common.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
- * usb_a926x.dts - Device Tree file for Caloa USB A926x board
+ * usb_a926x.dts - Device Tree file for Calao USB A926x board
  *
  *  Copyright (C) 2011-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  */
diff --git a/arch/arm/boot/dts/microchip/usb_a9263.dts b/arch/arm/boot/dts/microchip/usb_a9263.dts
index 23240f2c8a16..e1f6dd7ed2d4 100644
--- a/arch/arm/boot/dts/microchip/usb_a9263.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9263.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * usb_a9263.dts - Device Tree file for Caloa USB A9293 board
+ * usb_a9263.dts - Device Tree file for Calao USB A9293 board
  *
  *  Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  */
diff --git a/arch/arm/boot/dts/microchip/usb_a9g20.dts b/arch/arm/boot/dts/microchip/usb_a9g20.dts
index 2f667b083e81..a2f748141d4b 100644
--- a/arch/arm/boot/dts/microchip/usb_a9g20.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9g20.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
- * usb_a9g20.dts - Device Tree file for Caloa USB A9G20 board
+ * usb_a9g20.dts - Device Tree file for Calao USB A9G20 board
  *
  *  Copyright (C) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  */
diff --git a/arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi b/arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi
index 7d10b36db1ee..f1946e0996b7 100644
--- a/arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi
+++ b/arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
- * usb_a9g20.dts - Device Tree file for Caloa USB A9G20 board
+ * usb_a9g20.dts - Device Tree file for Calao USB A9G20 board
  *
  *  Copyright (C) 2011 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  */
diff --git a/arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts b/arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts
index f65712015d40..19e377020d56 100644
--- a/arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts
+++ b/arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
- * usb_a9g20_lpw.dts - Device Tree file for Caloa USB A9G20 Low Power board
+ * usb_a9g20_lpw.dts - Device Tree file for Calao USB A9G20 Low Power board
  *
  *  Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  */
-- 
2.45.2


