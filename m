Return-Path: <devicetree+bounces-255653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C1CD25350
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:13:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3D25F309D400
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 15:11:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45E833ACEFB;
	Thu, 15 Jan 2026 15:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ANeuTuKf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F173ACA76
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768489861; cv=none; b=I+nfT42uqamrTszu+vDjbwKR+I/brSjOAQ1S/Xf9CDDOwBcjobiL9CpD2MjFxOLh8RobJFazrHeH5UsJzbauHDCDgzOIP/Idww5V/IjW2sVbBwpaqkESWhW96LGqu/i9+sPAdleLK64lwRD+E7/HrOEE3DljGmqm6KHpOIDVcL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768489861; c=relaxed/simple;
	bh=s41epkAbLG9smlbYYXWvYNaWVozGaFQ8TXpu/2hzAWw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HrURN8hY9jDDkEf88+5SwURscOCQEEo3tRJdIseojmqxFk+sk5YaC5qXUMMvWG9wmnNLW/tCsmhNGVXVEc942zW8C/Z9TcQuVpwL2V8M5gc4qCCQKHMbBDlzt84xGBYafn+PvYOIx9svPnKH9McgBw17lrWnbmQpleRsgGSLWsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ANeuTuKf; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42fb4eeb482so595950f8f.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768489839; x=1769094639; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3u+3JeZcHRgFBFE83J1Rhnm4t9otRBPxkyt04fpaFbg=;
        b=ANeuTuKfwCK1Hh/exWlDcTd2kPghVqp/TlqH98fOHzF7tYNALZVGGHEc/egO8YQUXx
         Ot3ekhdSUDy0gJQUb6npBHh4/qu1eICOCZrNfUJU4r4Swsi5ZrUtHZxcTQpsg/gRmX4C
         +PTNIl01/ExZm7EdFwT5GMdC+W9GPpKRKgm4Pu3iV+xJXMG2ImB023eHrZGHmdgKWnb5
         zpjdKV0vw57VPso4ZABmMlpFd2KyMPkb4iLtWA18HvLTarHe3VZoOZjSLm9ogNwGFKus
         x4SeUxLfy6a3AiU9QetaoPggD5Hp0Yy/d+/qidgqJHxdOgxT6KEzQmgCnDbBqLOaojtf
         X1gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768489839; x=1769094639;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3u+3JeZcHRgFBFE83J1Rhnm4t9otRBPxkyt04fpaFbg=;
        b=HrUj8YkQlGZJsEENVEhkIX7vECCEuS6VtH9PXeVUdYNYK0Z52KPfxQz59MNv2Ziuox
         WVusvXnu4dCNWyquZmdm8XS2ZMVKp/JdIzKzQ9vGST/3sywxbuLURC0FHGXmfDO8BaGz
         xpFnoxQJA86eEUVMZtNyHEbw0fAoJGihGlkcv9JWvBm5AIChwmiWAUQHKyd44QDWweIh
         BfQ47UuHE/rtwBHY1cTucvcn32QcLiycSHxujKoitRTyvTzB518RlAf/5J5bIGi+pl9z
         faBfE5UcmFKSD+oMkH5MmMV8Xfq+4VMRm4cJeUi2Me4WnT9Vnu4/0O0c60K4lUajG2sa
         Fd7g==
X-Forwarded-Encrypted: i=1; AJvYcCVBlF1BYhwxbI6FQdcERn9xWekqAqw9hz0p06zcmccJkyoBR2YELsI/13D7bTHjX6vuAFzMk+puQ7ME@vger.kernel.org
X-Gm-Message-State: AOJu0YyQGOwBPF2LXr6k39CYUkihNyfyCQnB+RNvPxuWEBVqKJVhbcsU
	5dP/cI7LOxXbcKpmX16z7eBj85iqMCN28RcO0TRY9JrdXRhSXwKkpY5k
X-Gm-Gg: AY/fxX4w1n6HKC7B2vxnLawNjB7Iaug3g3le5P9gcnJEnIQPcu9Ad3boUXen33s2/kK
	jXjXSlukYNZzPSFjlt4J5ZKwYG0X8poDpP4smPtKS9HmqODqPM0A//zUhzD/eqbhnXOMgZyzWvJ
	8wrLdU1/We1MjtVifNZPX8U4P9lhbot4oyfvup9EWvYpDdzU0bbzYJF8DtyX8iIuFXi3ARhKuVv
	FXnQEp/gKdlw5KNvI5EYX9qrRRNKSf666feERq4YmKQJd5hyQFi+/XwcFm0yBYT4LxRqwHd6d3b
	4MiDRPLhXjkT4/HveJn54KOzn5LhhKK6kajDUdUrvTR1hs/By1FDDis00ZAG956AIhQWRBgo1ji
	Z/u/Gib1QpQKXaR7e/XyMLOm/NjY8tGSaOSUvdtKxUwVkDfF5lkHiH2Bf0iKdVWaoU742T2g1OJ
	BqfgkuwAhV35YRH88nhQHQoTX0R3oY9+3ufj9qIE0vQZ6tNOsOdQnYIk4kuc7+Cq6H
X-Received: by 2002:a5d:5f90:0:b0:431:752:6737 with SMTP id ffacd0b85a97d-4342c549c0bmr7370444f8f.30.1768489839397;
        Thu, 15 Jan 2026 07:10:39 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af6b2a61sm6598948f8f.20.2026.01.15.07.10.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 07:10:38 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Jonas Bonn <jonas@southpole.se>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
Subject: [PATCH v6 5/6] openrisc: dts: Split simple smp dts to dts and dtsi
Date: Thu, 15 Jan 2026 15:10:01 +0000
Message-ID: <20260115151014.3956805-6-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260115151014.3956805-1-shorne@gmail.com>
References: <20260115151014.3956805-1-shorne@gmail.com>
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


