Return-Path: <devicetree+bounces-227325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8E8BE086A
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:48:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 924C03BA0D4
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70B443101A0;
	Wed, 15 Oct 2025 19:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PQ+dfe6i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5402A30FC28
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760557481; cv=none; b=gV4tE69KFK9AOGxN6BAt8WvD1QJvkTsiZDZrVejPmfNQDt9CjOqVm9dPHOBNw9Oix2RLH3hZKuEAk5/px8BqNaiV1Zf5cLjkMEYHQ3JT/EzEV1XXlbY4lulZL0j93nUiYLgAX3YLFF7lmsIhCMQ0tt8v/OxOhg52bsg+BQjJEKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760557481; c=relaxed/simple;
	bh=3i5hN70EkS+R2vT407APeWIAYo0I/+m93+hR8moAbAg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GkjSOyBA+Kt5NJSJAtD9wZfXpTiXPR/m1c6trjR4x5aMGHSogfwgvTMFOqJBp0RJF8MR6GFistbMYGGvF7Omw9m6Awi6YQNnUqlfHL4MWKHzQe1yHrtWxDlm5zh8BMvaLR1lMdcoNXhKItgkLwj3hKo6Jn/vyKsfssukUtAk9vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PQ+dfe6i; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4710653ac03so1261425e9.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760557477; x=1761162277; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yj2U7Ks4Aai4rP5FlRiq75b6DNk0shSZ9f9hco/FDQo=;
        b=PQ+dfe6i6c47AyMoa8WfUf9jRhKT7OYaVZVa8EmBzD09KToG4E3iEy0XnDgnLLnZbq
         ii0IUp3ZxtXpMBOivOG7Dl9xaja8qNV75/0LpLJKbOHkZftTSjXCizN+0cWM2tZkmIrw
         3fmTpGNG8FtFwIwPgNYv1pes3dtTb9g6PGrl3/0vga5pnVF6sQ/7Bz1xcOm3OyD32v2K
         ZawFk6uqAVqy1I9mhL9ey+90Tn5BHV3jPXSzCDO5B13uyQVW6EeXQx5jC1sB0GmlQlB7
         DVtgQwlR1woth6tckcWnqukIJS25XjOKtfABeADezYyKt6mF65Lt+uvnZB0EyQ6+tRHD
         AYng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760557477; x=1761162277;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yj2U7Ks4Aai4rP5FlRiq75b6DNk0shSZ9f9hco/FDQo=;
        b=cCMDl7b2hRbj1CJhmjP6ZhwsKl/aliidBwufCXVKDhndyrxl6V49Djnr2xuyUFYpEj
         6n7Xumi6WBraJPh3EUf7jR6oZRmkcnr423Zq60q7VKy/8mw1htoLqARJ5Fw5QCgLLbeJ
         16ILsOFhaf1idysbvOhPl60zgzODWxAYoBVVMWbnvGvlJ/eGdwqEsI/Om3kJB8UiQ9Bj
         yUZzOou16+fNDqOzhtFcNeUfa7VJVSHiai0GthfmVt+a80LcvVqbdcPEByFhNMjetnaH
         90FkxwS6z92dHjIboPWEUhE3GI6NxkUPBAtDvj9vfHnB7zzsVKmOAmtI82G/5s3uNceh
         7XXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfOZgJtjcVXn3NNEpSd5AU11angJc9YAGG9rdAZBKF5T+9on9MTH2gncy8JYs5rIVFoDz7abddctBC@vger.kernel.org
X-Gm-Message-State: AOJu0Yxus/kEeQixJ8DYlWJDPEHBWm7hvRV9svB1eU01jMwTOvHQHT9g
	Mzl7DYTMuXH49wJjFXeeHIXw4kUKdRDlUzE9BL4pMon/235YxYqX3ax3
X-Gm-Gg: ASbGncvObZHlpNUnes54bJ6GZskGBhvtPqiVvadmuIk1yiPCswSktjKNH5GbC1FhCAI
	mQa3GUN7aZdOlPnx2IxfARH+R+cMN2X77b6PksyLywXrv/cLEBfYof+9RPbKqA1Z8JnhqXyTM7g
	4s+KRBfEatAUcgUi/eLQgdZOykm5JFeR+/sl42IcswkHpNZ4qAjbqK6IGle4BKnXkpiXHeIRZp6
	2oSTmtJdcwphyoPP9oA5ze4iaAmxGZy2kDtmRdeNfmzckvCDTGGcLPNLbqprv49zZfmWSvOLtnS
	ypU5lVwIOlQWVdZCHuU1xFBLU7oiBunx5oI4h+Q/5JmDE2tGe6h8qz7BYnbPPk8D4ddl773+bag
	vTwnaBEgGOwHomH9lSCUuR9MvK0WUbeFqr7WY/2k2bgurLm8FCl4A/na1JF8RN4qKP/rv5xQLNO
	etQzJr6W7PDcYTnGB/ZB2w3hNJ
X-Google-Smtp-Source: AGHT+IG9nNYh1Tga30j2fYYBJBAKSBKjoyirMWGm3c9G6NcAqE/8JulL7YypdlXWl0e9Sv/xentthA==
X-Received: by 2002:a05:600c:548b:b0:46e:3c73:2f9d with SMTP id 5b1f17b1804b1-46fa9b06c1bmr123745385e9.6.1760557477488;
        Wed, 15 Oct 2025 12:44:37 -0700 (PDT)
Received: from d25728c254ff.v.cablecom.net (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5825aasm30291626f8f.14.2025.10.15.12.44.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 12:44:37 -0700 (PDT)
From: Lothar Rubusch <l.rubusch@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dinguyen@kernel.org,
	martin.petersen@oracle.com,
	pabeni@redhat.com,
	rostedt@goodmis.org,
	bhelgaas@google.com,
	l.rubusch@gmail.com
Cc: arnd@arndb.de,
	matthew.gerlach@altera.com,
	tien.fong.chee@altera.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>
Subject: [PATCH v6 09/11] ARM: dts: socfpga: removal of generic PE1 dts
Date: Wed, 15 Oct 2025 19:44:14 +0000
Message-Id: <20251015194416.33502-10-l.rubusch@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251015194416.33502-1-l.rubusch@gmail.com>
References: <20251015194416.33502-1-l.rubusch@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove the older socfpga_arria10_mercury_pe1.dts, since it is duplicate,
the hardware is covered by the combination of Enclustra's .dtsi files.

The older .dts was limited to only the case of having an Enclustra
Mercury+ AA1 on a Mercury+ PE1 base board, booting from sdmmc. This
functionality is provided also by the generic Enclustra dtsi and dts
files, in particular socfpga_arria10_mercury_aa1_pe1_sdmmc.dts. Since
both .dts files cover the same, the older one is to e replaced in
favor of the more modularized approach.

Signed-off-by: Lothar Rubusch <l.rubusch@gmail.com>
Acked-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boot/dts/intel/socfpga/Makefile      |  1 -
 .../socfpga/socfpga_arria10_mercury_pe1.dts   | 55 -------------------
 2 files changed, 56 deletions(-)
 delete mode 100644 arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_pe1.dts

diff --git a/arch/arm/boot/dts/intel/socfpga/Makefile b/arch/arm/boot/dts/intel/socfpga/Makefile
index 7f69a0355ea5..73a912ec6d95 100644
--- a/arch/arm/boot/dts/intel/socfpga/Makefile
+++ b/arch/arm/boot/dts/intel/socfpga/Makefile
@@ -2,7 +2,6 @@
 dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += \
 	socfpga_arria5_socdk.dtb \
 	socfpga_arria10_chameleonv3.dtb \
-	socfpga_arria10_mercury_pe1.dtb \
 	socfpga_arria10_socdk_nand.dtb \
 	socfpga_arria10_socdk_qspi.dtb \
 	socfpga_arria10_socdk_sdmmc.dtb \
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_pe1.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_pe1.dts
deleted file mode 100644
index cf533f76a9fd..000000000000
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_mercury_pe1.dts
+++ /dev/null
@@ -1,55 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * Copyright 2023 Steffen Trumtrar <kernel@pengutronix.de>
- */
-/dts-v1/;
-#include "socfpga_arria10_mercury_aa1.dtsi"
-
-/ {
-	model = "Enclustra Mercury+ PE1";
-	compatible = "enclustra,mercury-pe1", "enclustra,mercury-aa1",
-		     "altr,socfpga-arria10", "altr,socfpga";
-
-	aliases {
-		ethernet0 = &gmac0;
-		serial0 = &uart0;
-		serial1 = &uart1;
-	};
-};
-
-&gmac0 {
-	status = "okay";
-};
-
-&gpio0 {
-	status = "okay";
-};
-
-&gpio1 {
-	status = "okay";
-};
-
-&gpio2 {
-	status = "okay";
-};
-
-&i2c1 {
-	status = "okay";
-};
-
-&mmc {
-	status = "okay";
-};
-
-&uart0 {
-	status = "okay";
-};
-
-&uart1 {
-	status = "okay";
-};
-
-&usb0 {
-	status = "okay";
-	dr_mode = "host";
-};
-- 
2.39.5


