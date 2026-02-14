Return-Path: <devicetree+bounces-265492-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 3EuPDHXDj2naTQEAu9opvQ
	(envelope-from <devicetree+bounces-265492-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 01:36:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4844313A28E
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 01:36:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A73783037E43
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 00:36:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3DB313DBA0;
	Sat, 14 Feb 2026 00:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ROOPtLdg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f47.google.com (mail-dl1-f47.google.com [74.125.82.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577451EA84
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 00:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771029361; cv=none; b=drhGREkTRTGmHY6hrrWAZ+m4Veaob3gyEroqrMi1PzhUkuKVFSgcawd6/+PpdpOALMLLr/8VDQaPiJiUe7bQsGkQnF9mpIRk1XCrvB3hUkv502plJGIRm2gMfiUXs5Xsq/D6Pw5gOFIm0tB6evibr8JsRW0Pu68IQkGPrkGE8c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771029361; c=relaxed/simple;
	bh=4p7hBFXDdXswu7G3yFQn/WaKSEw2ehr5AYJm0du4iFg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=rv8tZOgyp4zL22+XAZm6DBDisFNT5yD/bQpW29UKuFzAuCWogReOHmgqmJtgNyZVWTR/tWKXW34ZkhVCcIlXAuVks51GI/svjNQa7ZchKReCK1dCQa+QavIclcLmIXsrn/hpj0HnfrHVg2tri8tCvFYtAfZr8Ro/IGTPoUrLJXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ROOPtLdg; arc=none smtp.client-ip=74.125.82.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f47.google.com with SMTP id a92af1059eb24-124afd03fd1so2436835c88.0
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 16:36:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771029359; x=1771634159; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gcsnYHnaR+mbYSPKQbdhDU9Bq2aFrrJLZtDn7VH/fJc=;
        b=ROOPtLdgtQJ+IRK+KTkrCp+mNYDeWZTS7OBWUF/3dSW3r7U8mHCyb39pVoJ1m9ToS3
         natrZ2oICz76E70y8mTjxastciSKosnAT4z21b1ct/gNEVW3gTbtWWgVCVwyz04IW5qX
         kYX91l/dSjtrb7Mhmuc0LH6T9YqiALiRoBvwUJtgWWvzeh6qXHExzU+PKoxvNLbrqaRa
         eLIXoepxsfd1kkSD6MNDnyRjmAl1UGMnOfVjK2pqu4Rv3SbqsK8/8bYBuQOWKEMnMxZm
         A6TmtoAWQUTViY1c2XrynpvT/SFDUgUadlHVR/QmuIVjVjgCoOoAaM+0gQpFn9PxoWcq
         kp0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771029359; x=1771634159;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gcsnYHnaR+mbYSPKQbdhDU9Bq2aFrrJLZtDn7VH/fJc=;
        b=EBpJg4LW5VDynTRyq5ZLC85Eu6xEo8FuPy9nUeQAjqFvI03q9eGRZbUPMpw7rfisM0
         V2fmpqfE58vHD8k6WLwkEEf562R6OD3R5VPdAsNSUDtk2QlPPLeHzLlgKqCWbmZyV5Hp
         kpfbNfSAzIkTDbVCg9WzVPOMFrLN6jvnk/L6gXI8l4jy+eFYCl8SXsPFwiZIazrKSYj1
         25+97LpDnCZa2k2Qd/aZpJGEZdET7xREb1ri8X5bLLCouLzoCIw80uOrjrSR2us9agy0
         dZki4CglO8v4kDvUu2Ocarb8bBWmc/uewB20w71QAGjJw38ncEhe8hPX9ncwNSQJVlW8
         3LgA==
X-Forwarded-Encrypted: i=1; AJvYcCXPzF+weAnlUw6k/sQN97ut0iztBYjeobafQYWlg3RRKNb9D/0Ut5rFlEgI/Wa9blG2+oL9hMt0xEcJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwInkUzs3jUaef3iN2UJ7QB8joReI3cIXL42syL77Ph1XaS0bRX
	JVRqXcxinXu1Jse5ouuN/acFlESoPBx9NfoOrELm26aVHVaTTLAs/kvC
X-Gm-Gg: AZuq6aJ73KvjfKumGm9XjjBoF45AcViKZdtcuFRihWGsb0dRkhdvToLT4rLhNzWpAhX
	AI0YPxNC7TyEi4Y59zzHm7TjGh7CNkHRm1HQ+eGSN3GMePukWZaw/fZPm5ACQelkCOXGTrmLTzf
	FIFUpjPWvmTaCToBlST5HgbxkrKKu425KkBNF3hcdR7ZB0cJwYJgnWZ40CiioVmXoEKAWGgmYP6
	I2tWiKaXPr2hEFi2qfQcclFYylfJF0TnvnTResKLOYVZYnpUOPgh1BYzFsDi3xeAsYNJuWhKZ5+
	obPplPcb9dBTbiarLXB0YZj5LWmV7z0O9p5nDZqvgh6dIXFc1m29TV5UGcxoqn6Q0oBf/WC2uhW
	YX1l378zHlY2YBHrYOcTuqwCVYuSuveFVGLFbCuaQx6Lw9FvKN8/W8oe9Tvj2nVS8cHukTz54Dg
	u/eBXaRs1FNVL9uSjzH6QIwijITalA9SI/tSjH3oNwqwcxHb9Dh+jBw+HCW6hYChUv
X-Received: by 2002:a05:7022:b81:b0:11b:d6f2:a6d6 with SMTP id a92af1059eb24-12741bc706cmr630038c88.34.1771029359310;
        Fri, 13 Feb 2026 16:35:59 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:b713:5e7b:5963:d2ad])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12742c6ce01sm371859c88.7.2026.02.13.16.35.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 16:35:58 -0800 (PST)
Date: Fri, 13 Feb 2026 16:35:56 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: tegra: paz00: configure WiFi rfkill switch through
 device tree
Message-ID: <aY_BpRQmLdqOOW2K@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-265492-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,gmx.de:email]
X-Rspamd-Queue-Id: 4844313A28E
X-Rspamd-Action: no action

As of d64c732dfc9e ("net: rfkill: gpio: add DT support") rfkill-gpio
device can be instantiated via device tree.

Add the declaration there and drop board-paz00.c file and relevant
Makefile fragments.

Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---

This is not tested on real hardware, compile tested only...

 arch/arm/boot/dts/nvidia/tegra20-paz00.dts |  8 ++++
 arch/arm/mach-tegra/Makefile               |  2 -
 arch/arm/mach-tegra/board-paz00.c          | 56 ----------------------
 arch/arm/mach-tegra/board.h                |  2 -
 arch/arm/mach-tegra/tegra.c                |  4 --
 5 files changed, 8 insertions(+), 64 deletions(-)

diff --git a/arch/arm/boot/dts/nvidia/tegra20-paz00.dts b/arch/arm/boot/dts/nvidia/tegra20-paz00.dts
index 1408e1e00759..d1093ad569e6 100644
--- a/arch/arm/boot/dts/nvidia/tegra20-paz00.dts
+++ b/arch/arm/boot/dts/nvidia/tegra20-paz00.dts
@@ -706,6 +706,14 @@ vdd_pnl_reg: regulator-3v0 {
 		enable-active-high;
 	};
 
+	rfkill {
+		compatible = "rfkill-gpio";
+		label = "wifi_rfkill";
+		radio-type = "wlan";
+		reset-gpios = <&gpio TEGRA_GPIO(D, 1) GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio TEGRA_GPIO(K, 5) GPIO_ACTIVE_HIGH>;
+	};
+
 	sound {
 		compatible = "nvidia,tegra-audio-alc5632-paz00",
 			"nvidia,tegra-audio-alc5632";
diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index a2bb55bc0081..9e3abb14fbc1 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -15,5 +15,3 @@ obj-$(CONFIG_HOTPLUG_CPU)               += hotplug.o
 
 obj-$(CONFIG_ARCH_TEGRA_114_SOC)	+= pm-tegra30.o
 obj-$(CONFIG_ARCH_TEGRA_124_SOC)	+= pm-tegra30.o
-
-obj-$(CONFIG_ARCH_TEGRA_2x_SOC)		+= board-paz00.o
diff --git a/arch/arm/mach-tegra/board-paz00.c b/arch/arm/mach-tegra/board-paz00.c
deleted file mode 100644
index 3ec810b6f1a7..000000000000
--- a/arch/arm/mach-tegra/board-paz00.c
+++ /dev/null
@@ -1,56 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * arch/arm/mach-tegra/board-paz00.c
- *
- * Copyright (C) 2011 Marc Dietrich <marvin24@gmx.de>
- *
- * Based on board-harmony.c
- * Copyright (C) 2010 Google, Inc.
- */
-
-#include <linux/err.h>
-#include <linux/gpio/machine.h>
-#include <linux/gpio/property.h>
-#include <linux/platform_device.h>
-#include <linux/printk.h>
-#include <linux/property.h>
-
-#include "board.h"
-
-static const struct software_node tegra_gpiochip_node = {
-	.name	= "tegra-gpio",
-};
-
-static const struct property_entry wifi_rfkill_prop[] __initconst = {
-	PROPERTY_ENTRY_STRING("name", "wifi_rfkill"),
-	PROPERTY_ENTRY_STRING("type", "wlan"),
-	PROPERTY_ENTRY_GPIO("reset-gpios",
-			    &tegra_gpiochip_node, 25, GPIO_ACTIVE_HIGH),
-	PROPERTY_ENTRY_GPIO("shutdown-gpios",
-			    &tegra_gpiochip_node, 85, GPIO_ACTIVE_HIGH),
-	{ }
-};
-
-static const struct platform_device_info wifi_rfkill_info __initconst = {
-	.name		= "rfkill_gpio",
-	.id		= PLATFORM_DEVID_NONE,
-	.properties	= wifi_rfkill_prop,
-};
-
-void __init tegra_paz00_wifikill_init(void)
-{
-	struct platform_device *pd;
-	int err;
-
-	err = software_node_register(&tegra_gpiochip_node);
-	if (err) {
-		pr_err("failed to register %s node: %d\n",
-		       tegra_gpiochip_node.name, err);
-		return;
-	}
-
-	pd = platform_device_register_full(&wifi_rfkill_info);
-	err = PTR_ERR_OR_ZERO(pd);
-	if (err)
-		pr_err("failed to register WiFi rfkill device: %d\n", err);
-}
diff --git a/arch/arm/mach-tegra/board.h b/arch/arm/mach-tegra/board.h
index 7b3ef0dc9be1..86c3ea0d6b30 100644
--- a/arch/arm/mach-tegra/board.h
+++ b/arch/arm/mach-tegra/board.h
@@ -19,6 +19,4 @@
 void __init tegra_map_common_io(void);
 void __init tegra_init_irq(void);
 
-void __init tegra_paz00_wifikill_init(void);
-
 #endif
diff --git a/arch/arm/mach-tegra/tegra.c b/arch/arm/mach-tegra/tegra.c
index 9ef1dfa7b926..f324a7e491d8 100644
--- a/arch/arm/mach-tegra/tegra.c
+++ b/arch/arm/mach-tegra/tegra.c
@@ -83,10 +83,6 @@ static void __init tegra_dt_init(void)
 
 static void __init tegra_dt_init_late(void)
 {
-	if (IS_ENABLED(CONFIG_ARCH_TEGRA_2x_SOC) &&
-	    of_machine_is_compatible("compal,paz00"))
-		tegra_paz00_wifikill_init();
-
 	if (IS_ENABLED(CONFIG_ARCH_TEGRA_2x_SOC) &&
 	    of_machine_is_compatible("nvidia,tegra20"))
 		platform_device_register_simple("tegra20-cpufreq", -1, NULL, 0);
-- 
2.53.0.310.g728cabbaf7-goog


-- 
Dmitry

