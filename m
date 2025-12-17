Return-Path: <devicetree+bounces-247274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB45ACC6A2E
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:43:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1099D309E326
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 08:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBAE4342CAD;
	Wed, 17 Dec 2025 08:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fxhOIVX2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C6634253D
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765958955; cv=none; b=h0bxz1y0iMff5zn/05HPLuu+PxhtR3lK1iAeCEoiCjdFXqwDLwuUCCC++ri5G6XXWLKneDbgCVyCviuXIBaheF/uqa5RUFKChw66K11j58mSGC0ig75wkoIqM5R1nPZ/D1dWqgEm5ByXiq4m2V+5oq19XLsZDp/bbXN1OzZvE0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765958955; c=relaxed/simple;
	bh=xPcg96DcvhxTMAkfp4RAyJaORSxOAQYQ8H8AiXKiTVY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jZKev8HpFwO8XpzB444LoZIyz7lvYyvo/zCtSWDPt9KaDzG+sJAWbuwn8b8HataTFgJKbfhcaSiJ4q/Imz6+Va3PlUJC71NPc/Lws3iTsYZOOCeX88ERMz7gnDG7mw9eZBawUESTkUceinBqnvmNv7Pap1XIdOQkrmSyXlsulRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fxhOIVX2; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4777771ed1aso41307835e9.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 00:09:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765958952; x=1766563752; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0A0KKwP3NdhXeaIpiIMiycb1Ngs8zVhebvsR8yBVwL4=;
        b=fxhOIVX2NIsitPY2ERUx1jWYAeyq760mF2dMpK/eHS0Mj2qZGlDiz4MqDdNpr6Km77
         AyrOaI6COAU4FhjJUUvAsr1y64zUwbpUHUW8FI/I+zovFqigwwzimNGSvnDEQ4a03auQ
         YCzJ1iVtfVCLIFZXptx/kYjC6IEQZLRPDEpku8B/mAeLAnFtc+xZwim4nqanvqHePQnd
         mocyX66O+lMpba4ePXccsun1HLuWS4bhO429/fevn4rSwH4yUAIltBr/QnIc1XIKwUDR
         YfFCEztimcqpUw7Kq7qq96fZUQEHKdhlTVDPp9jnYqnwGBTqwyd8gGPEyZ7YsFo+Fnte
         G8aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765958952; x=1766563752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0A0KKwP3NdhXeaIpiIMiycb1Ngs8zVhebvsR8yBVwL4=;
        b=GFEmEBdmuoZj552q1rt+vPnmTD1VutiPw+1KuxmiouQU0Cyao7gujE1kascbq8ARsp
         9yh7MlpMbVbdPx6h9TvwxtAnRY19EXrloVa4H7Ems14PU1HfRkjmvYCUIR7JnNl/6JAa
         V98M1VLoYx9Gf4KUxUcKRrrV0ZImiyUTMYmSIalun87RaELrZ7NCkWoKJ5wow4u99jA6
         LhMln6gtwZM5zZ3TsIDALIizwhFiktOyr0Of2gzdc9wuKAtOFpBL+gcL57+vZfgJo4ol
         ILVqlHoWRi1cuQJP+G6RaQVqjwelXEQ5HQiwqCfdKzUdZHYvkGavhR2qLumnKiakQfvH
         EnCg==
X-Forwarded-Encrypted: i=1; AJvYcCXXWUmTnD70A8rhKT1MoAPQs9R3ocu1QNYJkxNQzv3JAuWJ6wfXEAowIZi3KzEvd1lUq/wlVgfRT6GC@vger.kernel.org
X-Gm-Message-State: AOJu0YwmaSY8aqBGvP9g7Gh3d0+oIqRYSnbIwXMF7V2g/BRE9mWBKCgN
	rMiv8zEZNG/K+WfiundacnCJqkFxWwgkGt7F+NoN9wxzAGOLlCLY70vW
X-Gm-Gg: AY/fxX66QL2Fm+jCDtPHOvuKkc4F3hbgWxAi2yR5PaKPVnXxj5FKRO2M9flMKD1isrb
	TbOADVA2b+3zjLHWjkDZxAaPSgwzABQUnEFXsP3yO9Dlx5E7NICsC+NCBEgtR13GipULkwiJ4sQ
	OrL6pNYXjmufPDA6M4tYD7RZfuTYsrO/5JEFK4uEju4/vKf3M5zkWMbJ3ZdFKAEhk6QMdoMbIsT
	+pKDZEI6E/biEKgqJbc0y4VFTkRHhTbgizlXfLBee3Ls2CCYjy+la8N6U2W001X2uyEbe4Z/f5F
	oHcYZVv+8JYsNS5dHP34S3cN6b4DNDuyMyWuIW9eEqNktKqgvKsA93X1l3A66xUk4uXdL/wvlZ9
	Y6rs1MWHEavksQAUwqEzAoB3eCrODxsm+GPa4q34ZDiQHItLyO7t6SvZBMmDceak6kGetfaMFoK
	GFXgwPKt5FofQsHRT2yNoZr3LMC4V4isMk8a7yeDnq3KTtjYXbqA75a+klQzO9UPHy
X-Google-Smtp-Source: AGHT+IFOqj0HGgW3GOvgzFqprTgC1+JPT38q8uGINy4v0xBZPx7Kjx5cWMJSdoLYa8rFvU8ni4vxNQ==
X-Received: by 2002:a05:600c:46cb:b0:47a:810f:1d06 with SMTP id 5b1f17b1804b1-47a8f89cb47mr183074525e9.4.1765958952428;
        Wed, 17 Dec 2025 00:09:12 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47bdc1de9cesm26318945e9.8.2025.12.17.00.09.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 00:09:10 -0800 (PST)
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
Subject: [PATCH v2 4/5] openrisc: dts: Split simple smp dts to dts and dtsi
Date: Wed, 17 Dec 2025 08:08:30 +0000
Message-ID: <20251217080843.70621-5-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251217080843.70621-1-shorne@gmail.com>
References: <20251217080843.70621-1-shorne@gmail.com>
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
Since v1:
  - Removed clock-frequency 0 in dtsi file.
  - Fix DTB name in defconfig file

 arch/openrisc/boot/dts/simple-smp.dts         | 25 +++++++++++++++++++
 .../dts/{simple_smp.dts => simple-smp.dtsi}   |  9 +++----
 arch/openrisc/configs/simple_smp_defconfig    |  2 +-
 3 files changed, 29 insertions(+), 7 deletions(-)
 create mode 100644 arch/openrisc/boot/dts/simple-smp.dts
 rename arch/openrisc/boot/dts/{simple_smp.dts => simple-smp.dtsi} (90%)

diff --git a/arch/openrisc/boot/dts/simple-smp.dts b/arch/openrisc/boot/dts/simple-smp.dts
new file mode 100644
index 000000000000..26f6a9236b30
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
+&serial0 {
+	clock-frequency = <20000000>;
+};
+
+&enet0 {
+	status = "okay";
+};
diff --git a/arch/openrisc/boot/dts/simple_smp.dts b/arch/openrisc/boot/dts/simple-smp.dtsi
similarity index 90%
rename from arch/openrisc/boot/dts/simple_smp.dts
rename to arch/openrisc/boot/dts/simple-smp.dtsi
index 71af0e117bfe..2013fd3e7a18 100644
--- a/arch/openrisc/boot/dts/simple_smp.dts
+++ b/arch/openrisc/boot/dts/simple-smp.dtsi
@@ -1,4 +1,3 @@
-/dts-v1/;
 / {
 	compatible = "opencores,or1ksim";
 	#address-cells = <1>;
@@ -22,15 +21,13 @@ memory@0 {
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
-		cpu@0 {
+		cpu0: cpu@0 {
 			compatible = "opencores,or1200-rtlsvn481";
 			reg = <0>;
-			clock-frequency = <20000000>;
 		};
-		cpu@1 {
+		cpu1: cpu@1 {
 			compatible = "opencores,or1200-rtlsvn481";
 			reg = <1>;
-			clock-frequency = <20000000>;
 		};
 	};
 
@@ -57,7 +54,6 @@ serial0: serial@90000000 {
 		compatible = "opencores,uart16550-rtlsvn105", "ns16550a";
 		reg = <0x90000000 0x100>;
 		interrupts = <2>;
-		clock-frequency = <20000000>;
 	};
 
 	enet0: ethoc@92000000 {
@@ -65,5 +61,6 @@ enet0: ethoc@92000000 {
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


