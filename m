Return-Path: <devicetree+bounces-254630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 842E8D1A2DE
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:20:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E8D1230CDDB9
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:15:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57D9B27602C;
	Tue, 13 Jan 2026 16:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CUaveW4v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECFD221F13
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768320934; cv=none; b=jr5N57BqQezciLBvtJVUzp4JJFnsA1X7VwPGOR1FF6BEgXwQvK5oUjZBKdbOpB2IwXJKp7yXcD0ZSUEuMx9taie6/VNHU2fqlK/DpSNehNwdGi0muC9z3TuQCNDqkqxqsFsoDM5zHwRqNTTYt2UHtQgFGNRtRLara2iSMs+EZ9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768320934; c=relaxed/simple;
	bh=s41epkAbLG9smlbYYXWvYNaWVozGaFQ8TXpu/2hzAWw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DSJTwNhXND68PP6Xgj0uweeLRo6aE+gdUv+ekItYeapV29fsWkf62AyN/2Cx60iffsQw9CgkNJretvM8pefCTYKVcjRwtrlEURaEDQ7CJHUm8BahlhMSH1/lPj+SxmimFx3hhXvI295+bKQd3cRz7+zEhz5wMUHI/H8oQdpsDWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CUaveW4v; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47d182a8c6cso45654745e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768320931; x=1768925731; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3u+3JeZcHRgFBFE83J1Rhnm4t9otRBPxkyt04fpaFbg=;
        b=CUaveW4vjBWPZTsKNsUL4+nytLX093sNsOcwq1Ah0PaDdfmQ02F39GQ38D5mUlyYmZ
         cbrSiB7kcJnXm2WSfE845xTC+x3ZOxw7hkj7JUxyQs73ql699jvHoM7GanCmyVodZlqj
         3/V0NfDdpGx7vfvPc7AaHvJ+r3YwxkX6O8Cc4gnCigd/Jvmh6YarJlFhXB5JNAecvUbt
         BViCrP/5IvewpOi6wxOWwhznHVT3gq4HVN3wJptKBJKcTL1FR9hOedweHDjKvdWi6M18
         ZiFFXX7vW15LY9lzrIzpe4IcvwT0XdaSf3xq9qkkPE/hnwPNTgTFGZRhgu2GHMYLO5gI
         2mdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768320931; x=1768925731;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3u+3JeZcHRgFBFE83J1Rhnm4t9otRBPxkyt04fpaFbg=;
        b=Tsl+AvZal+sCCeIC0ghlKozca6t6gUhYdjFWn4FGO+n4w/C0+O9kjvEkKwPKB/my1r
         6XT/2c0M+ZRvnk77L9RuVt/mE9HQNSuxMtPeN31fNwNM5c9vYXLEXU1J5ILrCmWeUGwa
         dqGyT8xmrRXigaHLk3sT+nQmeNtLX+o+4Z6hest/gkebUSDHzY2Qvan8UaA3+foA0qYU
         M/sD8PlM5oGr8GIOa22l0uRI43uYh/7Py51JWXsOSIPfQKqtVLAKg/vdruHciec+/lAo
         w/Vm42AMBH9Q6iL/5ZzGUOTttMs8v8LnusFwl93bgPC1iYH9l9id2RVDwY35w+EaMLxy
         PN7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWVlB8g+TpDgIqjdOXsY+skpx4P9+7qtCwzWRMLKA+z+VimpQiUPD4YCJj5Dxszvpjer3jw6LWnX2jl@vger.kernel.org
X-Gm-Message-State: AOJu0Yzlybgo65gsRcUZsdUS33m+gxAGfuWAaVMYwRjm4Be9aKHYfTaa
	AjD0YyNCId+kdTlQJkRoa14Lv/NgH4RfK7yxVq2LEgpU5XH9jCScguhy
X-Gm-Gg: AY/fxX53KgyYlOTJcyGmV9ZHXAZfHbu9r6/Zekbw+ZHgoWwjEikQE1i4fKmx+X0pP2f
	mY5ufPPcJpzifMx7FwGPKckrGt9TF0aEHU6dc1eNFJIk3e6AjvQJE/lJhVvolNd1/iOlw4YNamU
	DXHpJogyPbuD81gnAF/cpXZ49iNzzFfSUreW+BNakHH+zWmKFUB1nScO6XlsXYoBdTt1kT+OIwK
	4XWlDGt+MmXl0y76St2Fys7TaFQTbKoI7zpc6J/IuqHTs3S400hFjV5M3A477yeI1W6qv/osxd8
	wTvaiSctW1jxfsyeOBz8oJvVCRJohQz+9wMGb0SSj9lmA7Qs0x8ISZZmIvo9wsJ0H98ywghvDXS
	rGaHMo/vlS1eCVHrSzAgL+NtrluoG30mjx6lCLbV52RK+2715JwF3bphUm/FAA5NISUHVWdM4ME
	Yc1OPIpMlluRzPo3sX/6GBb/JNfZeO34047hBP2Ie5alu/ZMcIMXZmmR8+8qghKMSQ
X-Google-Smtp-Source: AGHT+IGhLvJfxVLRGqghrhgN1dMGCIANA0QJw3+JAhwPNyMjUoAIPGjWB7rlYfend9xQbfhK4N/+2w==
X-Received: by 2002:a05:600c:4fd0:b0:477:7925:f7fb with SMTP id 5b1f17b1804b1-47d84b200d1mr257784645e9.10.1768320930358;
        Tue, 13 Jan 2026 08:15:30 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee27cf06bsm1066485e9.4.2026.01.13.08.15.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 08:15:27 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Jonas Bonn <jonas@southpole.se>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v4 5/6] openrisc: dts: Split simple smp dts to dts and dtsi
Date: Tue, 13 Jan 2026 16:11:38 +0000
Message-ID: <20260113161152.3688309-6-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260113161152.3688309-1-shorne@gmail.com>
References: <20260113161152.3688309-1-shorne@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Split out the common memory, CPU and PIC definitions of the simple SMP
system to a DTSI file which we will later use for our De0 Nano multicore
board device tree.  We also take this opportunity to swich underscores
to dashes as that seems to be the more common convention for DTS files.

Signed-off-by: Stafford Horne <shorne@gmail.com>
---
Since v3:
 - No changes.
Since v2:
 - Sort blocks alphabetically.

 arch/openrisc/boot/dts/simple-smp.dts         | 25 +++++++++++++++++++
 .../dts/{simple_smp.dts => simple-smp.dtsi}   | 11 ++++----
 arch/openrisc/configs/simple_smp_defconfig    |  2 +-
 3 files changed, 31 insertions(+), 7 deletions(-)
 create mode 100644 arch/openrisc/boot/dts/simple-smp.dts
 rename arch/openrisc/boot/dts/{simple_smp.dts => simple-smp.dtsi} (90%)

diff --git a/arch/openrisc/boot/dts/simple-smp.dts b/arch/openrisc/boot/dts/simple-smp.dts
new file mode 100644
index 000000000000..01cf219e6aac
--- /dev/null
+++ b/arch/openrisc/boot/dts/simple-smp.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/dts-v1/;
+
+#include "simple-smp.dtsi"
+
+/ {
+	model = "Simple SMP Board";
+};
+
+&cpu0 {
+	clock-frequency = <20000000>;
+};
+
+&cpu1 {
+	clock-frequency = <20000000>;
+};
+
+&enet0 {
+	status = "okay";
+};
+
+&serial0 {
+	clock-frequency = <20000000>;
+};
diff --git a/arch/openrisc/boot/dts/simple_smp.dts b/arch/openrisc/boot/dts/simple-smp.dtsi
similarity index 90%
rename from arch/openrisc/boot/dts/simple_smp.dts
rename to arch/openrisc/boot/dts/simple-smp.dtsi
index 71af0e117bfe..42d6eda33b71 100644
--- a/arch/openrisc/boot/dts/simple_smp.dts
+++ b/arch/openrisc/boot/dts/simple-smp.dtsi
@@ -1,4 +1,3 @@
-/dts-v1/;
 / {
 	compatible = "opencores,or1ksim";
 	#address-cells = <1>;
@@ -22,15 +21,15 @@ memory@0 {
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
-		cpu@0 {
+
+		cpu0: cpu@0 {
 			compatible = "opencores,or1200-rtlsvn481";
 			reg = <0>;
-			clock-frequency = <20000000>;
 		};
-		cpu@1 {
+
+		cpu1: cpu@1 {
 			compatible = "opencores,or1200-rtlsvn481";
 			reg = <1>;
-			clock-frequency = <20000000>;
 		};
 	};
 
@@ -57,7 +56,6 @@ serial0: serial@90000000 {
 		compatible = "opencores,uart16550-rtlsvn105", "ns16550a";
 		reg = <0x90000000 0x100>;
 		interrupts = <2>;
-		clock-frequency = <20000000>;
 	};
 
 	enet0: ethoc@92000000 {
@@ -65,5 +63,6 @@ enet0: ethoc@92000000 {
 		reg = <0x92000000 0x800>;
 		interrupts = <4>;
 		big-endian;
+		status = "disabled";
 	};
 };
diff --git a/arch/openrisc/configs/simple_smp_defconfig b/arch/openrisc/configs/simple_smp_defconfig
index 6008e824d31c..db77c795225e 100644
--- a/arch/openrisc/configs/simple_smp_defconfig
+++ b/arch/openrisc/configs/simple_smp_defconfig
@@ -20,7 +20,7 @@ CONFIG_SLUB=y
 CONFIG_SLUB_TINY=y
 CONFIG_MODULES=y
 # CONFIG_BLOCK is not set
-CONFIG_BUILTIN_DTB_NAME="simple_smp"
+CONFIG_BUILTIN_DTB_NAME="simple-smp"
 CONFIG_SMP=y
 CONFIG_HZ_100=y
 CONFIG_OPENRISC_HAVE_SHADOW_GPRS=y
-- 
2.51.0


