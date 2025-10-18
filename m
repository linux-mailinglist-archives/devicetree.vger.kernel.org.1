Return-Path: <devicetree+bounces-228377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC740BECF3C
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 14:13:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 57A1919C5A91
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 12:13:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 082132FC886;
	Sat, 18 Oct 2025 12:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X1JkyaYD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396A32FB989
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 12:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760789533; cv=none; b=KwGclhjzPToceShUv1ywqTNDfhO1YuR+yPMgaN2bIW50lo1a7VAtXQwxnZzFmXfHKt+wRrRE7SSpBnvJi+vI0r2mH+EL592wW6gpSD8mJ6Wu+ogtPT0tJo45FugEswUCJ7fycvCtreA/vxRA4qxliKMPL69jED8jUfA328firzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760789533; c=relaxed/simple;
	bh=3i5hN70EkS+R2vT407APeWIAYo0I/+m93+hR8moAbAg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=j79cUOlNeuiEH1jwdWH3P1Swho9iIAtfeNi8ygipyoQGYCB3+1IEbUqU5UqqYNBmB+V5qx0VU/e437c1N0esJW84QNNAiuXq/11DlCJVvL/IQ2mtJzc+u5AbQn/NIPGcgxgIqZuO5vCXjIkINFSZSzyeb+ThSM/yjjYfPcO/sCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X1JkyaYD; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-426ff579fbeso322019f8f.0
        for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 05:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760789530; x=1761394330; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yj2U7Ks4Aai4rP5FlRiq75b6DNk0shSZ9f9hco/FDQo=;
        b=X1JkyaYDVQu6ShFZGoHAiHQF2ZYFHMyZ45VDNxgmq28xPHHUcIKNDsTVwmkxtjuTwU
         He/7BPEJV25YUifJMaHY3DqGZmSLbiIQwEodx2qlBIt380FBIA4czrIzcdJad+WkAkM6
         UhbxVXd6BC2/7kdOZ7pbjRvykPFqYzWmkuy4hywMjWVUwfQRbISB11wg0cwDk4GFgsz/
         Ld70ARbakhoA72ph7dYhf5z8jsaTWJE0Cs2HaUkx8Eg+eBVkPozbSQq1c2KsYe0DnOxO
         +GIN2NeC7JRC6VUj3qBuaD1cNUwqQf7EZEsSQcxsAocTbIttG2xBU0WyC/DoR5kn0wwz
         tZgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760789530; x=1761394330;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yj2U7Ks4Aai4rP5FlRiq75b6DNk0shSZ9f9hco/FDQo=;
        b=cMRCF2Mckq4DwjRde4nPSLwuNSl3pdg4CPOwqHfQy3MOmSUR6yzq8dX6di4/Ui9zdu
         uoUV6C3qp45sYBWM4xQHKXQ/UKfqNVmqSzrizdik1VE1+00V5ffp3TopJ0PqhTr/G9rz
         e1Jpqy9DPNN3aMwFSs2ZXVfRCG5p6ZeWZwC4sSQNlg0aI3tQkngIarUOi6jVTt0DPHRh
         ABFG+C5PXCOdVSzFCYD4h1qOrkYuDErG7a7ow4lmT+tyQQIbtlvZjsYvbLc7jBG/ijxS
         CNp+VN1hBW2Dn4+Zxr8D9Cib4K6lvknc7uO6THeEav3ERq/u9cyB5aX8tgdazMQzUiTk
         fnZA==
X-Forwarded-Encrypted: i=1; AJvYcCVtE/jXisBzdeUMRgHouxmCSPw/Cte+3DcK/LgAIth2Dy52D/83qIrfNrUays0JI0DR+hku4bhPZqTt@vger.kernel.org
X-Gm-Message-State: AOJu0Yxaoa9Ac0qyEY8A99UD8EZ8w63iaMw7GjNIZ2b3KpuquStaUKCO
	/AGB6k92w1WFBW3jrGx8gzR74XWkgXVaZIVo14eNDDsZFw/Uyq3geYjV
X-Gm-Gg: ASbGncsXcpq09kpIcQKZxSE40CHkj1vHHDYW6R8CfzXhS3gMndvaaOvnSZnHHj7Qc9Q
	wAjnxtOFcJDobmNz1SIizk5RdrcMRTLmqCnNJoeqgfycKMyGOKs/VKdjjq2i76HJHqzaw3NiEMT
	55CiTecoxFIfWEGfeMWYOSgvezHUkH0ZnQTF9cid22KQRHRiRKg9aBhuGjHz9bmOo8DXr7Zwi3k
	6MpysG1DHxf/F46Ohus3Q0jKzzWKpR3EdlgKeU7Wlz2z5z2gCottharjfbXnD//Ui66cNvnkf/y
	6J+PJQIET4UiTVSU0vJhC9fZDucLuA2UviuhRwUTbfW+iRa0QWwlD/Gk926X/4ujRYpKGJbjQDN
	Azcqo3jYITB35441EDFDxcG4Vb9r4oWiIEJU5aveYy0QQpSMqeIiM62N6/4ipUL3NdegS8vDexL
	Nc+3U5KzC6i64zAJjY8krr59TH3gsSE5VSLXnjTZtGwocnbZtZW0M=
X-Google-Smtp-Source: AGHT+IEBdyKtF2N2KL9lmNfwqEGlADXNFa9DsShem0CkpLr8AuBNYJQxf6N3vylc+U/0FgLDa4AAyg==
X-Received: by 2002:a05:600c:3149:b0:471:161b:4244 with SMTP id 5b1f17b1804b1-4711792a696mr28075605e9.5.1760789530237;
        Sat, 18 Oct 2025 05:12:10 -0700 (PDT)
Received: from localhost.localdomain (84-74-0-139.dclient.hispeed.ch. [84.74.0.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5a0f19sm4763812f8f.9.2025.10.18.05.12.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Oct 2025 05:12:09 -0700 (PDT)
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
Subject: [PATCH v7 09/11] ARM: dts: socfpga: removal of generic PE1 dts
Date: Sat, 18 Oct 2025 12:11:53 +0000
Message-Id: <20251018121155.7743-10-l.rubusch@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251018121155.7743-1-l.rubusch@gmail.com>
References: <20251018121155.7743-1-l.rubusch@gmail.com>
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


