Return-Path: <devicetree+bounces-82487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD2A924870
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 21:36:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1688EB2195D
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 19:36:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C0691CE081;
	Tue,  2 Jul 2024 19:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kFmjHdOa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE9E1CD5AE
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 19:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719949005; cv=none; b=Bbitdw/d4Bi52Km24fMrNIUP185X7s05GJdU7uPnIznKx8cFqChd9IlFrCyMU4FO/KNgalF7qXBj3c+2f9m8KUdOEuZX8CelpetvbMIXqVft3f95RIrIOW7TkiGfc9EtQ7+LXPPKkSc04DLllN6f+A54rUgiaVSMOD1nuHTnYsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719949005; c=relaxed/simple;
	bh=iQfsNDwxQuKmM1LvRmrJ5KrF/yqZ29FfGhovA+NFxD4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=imD2JsYqjHIHTDhMqWn+W9Dw3AiHczMdAWMk01VvVbKTn5nUMJgLeZOifvVzHRPnKhrI2nYGvZH/RGjPvBj7ORW91kDxIFPc3D/lSgzv8OAloVpYJh6LYKVCOpaOLLOLkiVw4wact5CUoxRnYkt/eD5jcCLdUNldHZ2RKxM6bZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kFmjHdOa; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3d562b35fb6so2735576b6e.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 12:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719949001; x=1720553801; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iIkm02pH4tYGv9UK3P4L+KwMHHNwtAihXpO73Co81yw=;
        b=kFmjHdOapqViZ8OuHqYPtYknZMBYzh+dhmwDJ6iLHT40flgXmZuyeDIYjRxf+EYpp4
         t0SUwOfbC85X2PfKeyHwRhotAZTRk1ExZO+fTj48dVsUzvxDcPsTsPjzwNaVR4X/Ta0/
         jF9tKt3tYALsVR0LJM9F4M0iAQmsKR28cyl5Fzgqiid+KXCPw2RVdPTxUU8IGmIwjuCl
         kM5wUsfyV5RvQk63I1lYuYcXTyncvQuKIWhG4LyAde4E8OURhguHBAqLpYxbtzd30MAB
         bKDBMmVDi7LC1PtJ3b9imQZXmAowYuuA1xkF7DtNecvGYUdD15e2S0mFpEfj5Hxb1DN1
         3KHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719949001; x=1720553801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iIkm02pH4tYGv9UK3P4L+KwMHHNwtAihXpO73Co81yw=;
        b=dprW9UXIUF+y0diJyPRW9ukGui2TXO48R3vqvc22P4Ygx/qthXVk+pkd4R1PiPw7/T
         PXOXMZBz4h9R7zGkjCOOjAnDW1jG+Rh5TPuRmiHNwFW52739oRbiJtgJ2cc50mkabShz
         1iRULqam0hdqBLstFBavQKPbtu74Wo3JJJYfpwbID4PSvSu8o38PGfWm4vHd7uJt4WKt
         KwnO9gpYud9aiEqDQc7WGTsdlwFzVNxrG8gZl0s8fl/Dw1LFiCqYSdwpIJB4tXKw0R/2
         Jd/eY5kj6MNrepo49w4mQ/ERawvd/VqAGQZUbpnVzZWH4WqZSPBzthnpC25beGMPLU0O
         K5xQ==
X-Gm-Message-State: AOJu0YxhoCFYWGlN2Y6s+KFxyRfp2XQo2bg/oAH6fXZtb2z08pltX1mB
	TynPK0HwzXqHf1Kh8UAMMbIna6L/JVODijTHlDf+75RImZ6NXmBp
X-Google-Smtp-Source: AGHT+IHMNkVy2icivHQQ3ufaLkkXzGxFxtxYottOBg7ZAoK4buq0b1eW1wEk9z0uK0gO4r+1REzYhA==
X-Received: by 2002:a05:6808:159c:b0:3c7:3106:e2e1 with SMTP id 5614622812f47-3d6b2b24231mr14046094b6e.8.1719949000751;
        Tue, 02 Jul 2024 12:36:40 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d62f83c92dsm1831335b6e.0.2024.07.02.12.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 12:36:40 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	ryan@testtoast.com,
	andre.przywara@arm.com,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 4/4] arm64: dts: allwinner: h700: Add Anbernic RG35XX-SP
Date: Tue,  2 Jul 2024 14:34:14 -0500
Message-Id: <20240702193414.57461-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240702193414.57461-1-macroalpha82@gmail.com>
References: <20240702193414.57461-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Anbernic RG35XXSP is almost identical to the RG35XX-Plus, but in a
clamshell form-factor. The key differences between the SP and the Plus
is a lid switch and an RTC on the same i2c bus as the PMIC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/allwinner/Makefile        |  3 +-
 .../sun50i-h700-anbernic-rg35xx-sp.dts        | 34 +++++++++++++++++++
 2 files changed, 36 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts

diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index 0db7b60b49a1..00bed412ee31 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -49,5 +49,6 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero2w.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-2024.dtb
-dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-plus.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-h.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-plus.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-sp.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts
new file mode 100644
index 000000000000..0cf16dc903cd
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-sp.dts
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Copyright (C) 2024 Ryan Walklin <ryan@testtoast.com>.
+ * Copyright (C) 2024 Chris Morgan <macroalpha82@gmail.com>.
+ */
+
+#include <dt-bindings/input/gpio-keys.h>
+#include "sun50i-h700-anbernic-rg35xx-plus.dts"
+
+/ {
+	model = "Anbernic RG35XX SP";
+	compatible = "anbernic,rg35xx-sp", "allwinner,sun50i-h700";
+
+	gpio-keys-lid {
+		compatible = "gpio-keys";
+
+		lid-switch {
+			label = "Lid Switch";
+			gpios = <&pio 4 7 GPIO_ACTIVE_LOW>; /* PE7 */
+			linux,can-disable;
+			linux,code = <SW_LID>;
+			linux,input-type = <EV_SW>;
+			wakeup-event-action = <EV_ACT_DEASSERTED>;
+			wakeup-source;
+		};
+	};
+};
+
+&r_i2c {
+	rtc_ext: rtc@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+};
-- 
2.34.1


