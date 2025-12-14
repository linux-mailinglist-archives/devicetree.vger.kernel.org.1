Return-Path: <devicetree+bounces-246325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F73CBBE5C
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 19:02:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8CB73300F719
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 18:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4451A30B536;
	Sun, 14 Dec 2025 18:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FmAnn5qE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC3D30C63D
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 18:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765735351; cv=none; b=IupGihHK5xCBfOhWVpKkCkF7cnlWtqCA5sK9PjU46PFRWDCf/ABFioyqFTF9jy35tSIojDmxEWxt7vr3RfMXs4PBgO5itXCOkId7CeKUM5GkToqwJ1dzVelrXeJ1EXuVyxZmG9EV8uR/Mf08oVrDjrhyPV9elA/T/RY1PAwlldc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765735351; c=relaxed/simple;
	bh=A4zcjT/69SXZLgvAq0KrqL4ZadV95axUp6uaNe4dZv8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SYDriC9obu55HmUNC8IgmRHStLghf6vDLRsfmzYdYN8yb6lgDCF9JWeIjkcHvu0N59wDS07GXpT6pSAQ6x5NrZJCV5EQyYXrSqy71O/jygH39Na47oX5sEZWVZf5cmGPYSbY2yWjXJu05dKhySuUwuTIMIzWDSvm2t6vTmMFYW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FmAnn5qE; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4779cb0a33fso33848995e9.0
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 10:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765735347; x=1766340147; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hvPXudzNsmpvP56Jm8zeFiIl/NyHEyodz+isUDYVcAo=;
        b=FmAnn5qEm+hIm+4z+Sw+T3WkGqBugyp9kX7AkHAggmbiU+bcsDThfPD4IjH2ijrRq7
         /FAD0H7dvN/9T6UJN5AcO9Z1zZ/Fc49eJRzULmX5cMjq6bh2jP/z+tMP7b9jwBT6eDEK
         Hgg7pTGmbSC56ReCXo8fln1tsd8C7flkBqttHaETDfJ4/JDO4ykPkd48jUDJ6C/Sa23W
         xOe5LqotIjd7h6b39L6cGOLmkge8HfJKfeJOl0rvq1kiRtwxkcobWomR7UzO7sYs3WYo
         aJPMYwCL2zxpoC8LSkwDSlHE3xzMZRrC0ZxW6/pWZpMPILa2SN7v/dUeX0AZBBTWyMi4
         O3YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765735347; x=1766340147;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hvPXudzNsmpvP56Jm8zeFiIl/NyHEyodz+isUDYVcAo=;
        b=WmCMA/06xvgPHYO5Qh1Nzc+FjYBcFPe8Uv+FcWIdg1rJhqehHqw8lJOJhA0FgeDE9L
         0GBDD24YGQ2JSGK8TuyUxJNOSHBX04omtPWV/0FvMpktQG6BnfsVUkzGnBYnNcdxJUFj
         ZPXRXacoZ2yHZVulg8jqD/fdCyz4ITmIeEtksKmQKIBnCdrHyAzjy9MueiHxmb6EoOcD
         Y4MKccZb8u3OMMKsCqQLHadOvR2zYzyy1rESTEUXqi8qyTlJ1x2/DZyTpe1cXFHgLh4v
         tBYPDnC4x7aW+XkteJUhkcT54Jk+I7y9WOtMK1XAScGSQkohxRN3SsQvYnARPKv06ovu
         teOw==
X-Forwarded-Encrypted: i=1; AJvYcCXhlcyIkaBtj1pilpP/xQhj8JZ0ipfy11ckSNn7BPfmCWkXvpDk/CjfyOK5XlF63Yk3vgKF/K6W7wn5@vger.kernel.org
X-Gm-Message-State: AOJu0YwZJRxPi7lU2ecie29Rui0GPwaIm+J92BJPri1XFECItX44bNRI
	qOx8il15TBum/QxSOrHGKoz8xvXW3UBtlV8FDNZavtW6vHsngHJBCwCH
X-Gm-Gg: AY/fxX4OymbuhHKC+4/CDZVp724ZTu6J8X9aMO6EIpD9VPx+r1qpg04vtiOrAYGXbV5
	S+4U99K5fX1F2bTf59iMF8bJ5p5Xc4OQV4zYLwB002OYVXB9cdR66zPgD+F0nuD7pgbLOr5cKfK
	vP4QMEH976C1xrvGVuGRqVPMTrbbtK3c0ERPH6jrHYfe/nZF3TqbOK4r9HPcjX1aw1spwH8Q51g
	PwIbM+NuLoTr7hRZttZMctvFR2d62qOzcz7OcRthW3ZZt4/QMGmln9ih7I1vCdbGiggD0cRgiaq
	hqtFVxITCY0cbxnXoLRAt9sVAGIopKdfRzUKdN5+XqF3BlV39T+CfOQiKI1DN86hArh2oX628Hc
	VAWx6Vl0MBsoQwDWFlK00gaRL2BCa57ptY1qFl+R9NRAUY0isOvxpwRAhyO5P9p7vQIKzX9gzzQ
	F5m8pARofcdz8uuBWL16JqDvlGG2YmpuXnEdZ5+I4Kwjfj4tCEBjmQImW3XukUsgHcfsppwyqdL
	xQ=
X-Google-Smtp-Source: AGHT+IHD7Z1Wx2mmpuCU2m9nigrQCKEntlNqBa1j+8x1gG1zsfRaB/g3OQSxp3F4VMcIGOv660YCoA==
X-Received: by 2002:a05:600c:4e09:b0:477:9c73:267f with SMTP id 5b1f17b1804b1-47a8f914a25mr96578365e9.33.1765735346972;
        Sun, 14 Dec 2025 10:02:26 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f6e58c1sm140532455e9.12.2025.12.14.10.02.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 10:02:25 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Bonn <jonas@southpole.se>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
	Masahiro Yamada <masahiroy@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 4/5] openrisc: dts: Split simple smp dts to dts and dtsi
Date: Sun, 14 Dec 2025 18:01:44 +0000
Message-ID: <20251214180158.3955285-5-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251214180158.3955285-1-shorne@gmail.com>
References: <20251214180158.3955285-1-shorne@gmail.com>
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
 arch/openrisc/boot/dts/simple-smp.dts         | 25 +++++++++++++++++++
 .../dts/{simple_smp.dts => simple-smp.dtsi}   | 12 ++++-----
 arch/openrisc/configs/simple_smp_defconfig    |  2 +-
 3 files changed, 32 insertions(+), 7 deletions(-)
 create mode 100644 arch/openrisc/boot/dts/simple-smp.dts
 rename arch/openrisc/boot/dts/{simple_smp.dts => simple-smp.dtsi} (89%)

diff --git a/arch/openrisc/boot/dts/simple-smp.dts b/arch/openrisc/boot/dts/simple-smp.dts
new file mode 100644
index 000000000000..174c2613c419
--- /dev/null
+++ b/arch/openrisc/boot/dts/simple-smp.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/dts-v1/;
+
+#include "simple_smp.dtsi"
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
+&serial0 {
+	clock-frequency = <20000000>;
+};
+
+&enet0 {
+	status = "okay";
+};
diff --git a/arch/openrisc/boot/dts/simple_smp.dts b/arch/openrisc/boot/dts/simple-smp.dtsi
similarity index 89%
rename from arch/openrisc/boot/dts/simple_smp.dts
rename to arch/openrisc/boot/dts/simple-smp.dtsi
index 71af0e117bfe..92770bb6fcf7 100644
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
+		cpu0: cpu@0 {
 			compatible = "opencores,or1200-rtlsvn481";
 			reg = <0>;
-			clock-frequency = <20000000>;
+			clock-frequency = <0>;
 		};
-		cpu@1 {
+		cpu1: cpu@1 {
 			compatible = "opencores,or1200-rtlsvn481";
 			reg = <1>;
-			clock-frequency = <20000000>;
+			clock-frequency = <0>;
 		};
 	};
 
@@ -57,7 +56,7 @@ serial0: serial@90000000 {
 		compatible = "opencores,uart16550-rtlsvn105", "ns16550a";
 		reg = <0x90000000 0x100>;
 		interrupts = <2>;
-		clock-frequency = <20000000>;
+		clock-frequency = <0>;
 	};
 
 	enet0: ethoc@92000000 {
@@ -65,5 +64,6 @@ enet0: ethoc@92000000 {
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


