Return-Path: <devicetree+bounces-84816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F38C892DC8B
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 01:19:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 56729B24566
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 23:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 533F6153BDE;
	Wed, 10 Jul 2024 23:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Tm04uvcr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B8B154BE7
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 23:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720653587; cv=none; b=tsqfuqFP9NqIaE/o1cewWpVIaDpnEn9nQt4QHSmmZ4/M6aUek+2m94NPtR5968wqHLloBhfm8YTqCjDlyg16SXmvvmU2eqUsg6PKhycS3BCm93l9n1ju1JZyrdl6AQJj0RH50pLsJ2INiL2diGGNWPGE6EDn7kAObcE0j0dQeyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720653587; c=relaxed/simple;
	bh=iQfsNDwxQuKmM1LvRmrJ5KrF/yqZ29FfGhovA+NFxD4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YNmqA3SuiHVf8QLipaiaX+iMPBVeGv9Iu8tac+kJYr9GmchmyNS6IXUUou1qGOkU2kmRxp1LHmOCS4BVUJgBwWgudapf4SZK5KIoe7rX2/nTf1bsgCuYmLNRzH13kwFNLovdQQyCvenS4OwFxN0QrciK6bNhQ/HilbOwY0RXEN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Tm04uvcr; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-70361745053so150090a34.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 16:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720653585; x=1721258385; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iIkm02pH4tYGv9UK3P4L+KwMHHNwtAihXpO73Co81yw=;
        b=Tm04uvcrL8n/4Z/P92+6yktt1teR5SD7deXjisLbCIKqhBu/eDA/+1BozFY8zPBrIt
         fWmmGO9qVIbrlPC7mO7gUCZRJqBY8d0mqKm/gmW4rgcKC5BjRAFcsdmfLq7KAtz+9XEo
         O5Iob3lKINxo5uiXKrc8XKodvDBG/Vil3hxI/NnC6lYX6sFSaX1RZOXyBzAV2Gtq6fLo
         5KCXMpHm/NpLbCDYFSKGy9/7zM8CHHiEeiwpmRBCIlWoxjRmCabfqtCAFYXamsUCRaYH
         WtG1R76sgmulFroM9CO4oDfNLl/fRcgRRtiAiA2YvRIlv7NlUp6OFuPnuvchuNPGyCVG
         iL6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720653585; x=1721258385;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iIkm02pH4tYGv9UK3P4L+KwMHHNwtAihXpO73Co81yw=;
        b=c9Wasy/4bihAHxU+rLTrWbicCTACVD2nBZVEWJSbgvppaY58im5gWJnhs1HE80ezQi
         yKesa+mmXtslb2l9uYvxsqq+eII80PtoXDF8F87rzL3e3XkoqwyuSWucHsvBn4ODKN3C
         xje4y99uqoSq5KChiXpJsP3/WuFJkRJkEIA8bp0PxCFd/0rGwio3JOQrhz/zogISZtpw
         Qveoe1xI/gFRuu5NAJVGeYKTcvkQHtC+4MGokdaMriGzNluiNYp8/z7OvtEiLNqWSCBx
         cR7WFW8QvXZuz0Z3K2dAEURnDuYowUk/5f+sEseigzF3H87cA24zWYE0yLSqsn9kMOjc
         n6vQ==
X-Gm-Message-State: AOJu0Yx9uh5eG/eyNap0J+udNy4YRV7xlOp/D6ImVAxlT4JOVa3+nefz
	bvVtOiY/LmZX2qMZmPO2A5UYOjLSPuqctVUlrvXRUTrs7PoSfvVS
X-Google-Smtp-Source: AGHT+IF3x5wUTNgVSORkAmMogpfaZhEuPDMl15HKaYLsS+U9CvYuQLfK/vjMohNlgE9vsofi97w/zw==
X-Received: by 2002:a05:6830:1d4f:b0:704:1569:58be with SMTP id 46e09a7af769-7076d4d7fefmr432032a34.16.1720653584854;
        Wed, 10 Jul 2024 16:19:44 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70374fcbf30sm1040207a34.65.2024.07.10.16.19.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 16:19:44 -0700 (PDT)
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
Subject: [PATCH V3 4/4] arm64: dts: allwinner: h700: Add Anbernic RG35XX-SP
Date: Wed, 10 Jul 2024 18:17:18 -0500
Message-Id: <20240710231718.106894-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240710231718.106894-1-macroalpha82@gmail.com>
References: <20240710231718.106894-1-macroalpha82@gmail.com>
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


