Return-Path: <devicetree+bounces-113264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A63179A4FCE
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 18:28:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33E9C1F259D9
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 16:28:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0469618C333;
	Sat, 19 Oct 2024 16:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="N6M3KsM1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064FE18C937
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 16:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729355292; cv=none; b=MpGHOcvDoQz/IqwZ6FWomMAA1J3t8FGKB/3Wrqpjzu/+kB1kOfWz11XKKl6L8qwaoSuZjcWdaTa0rsAtw4X3pyjvvyh1BFS1uCD8b4ZxvzxThfhscfckUUMbrVm098MFWU56Or6+aBpIa5ANFNLjXZVKn2TeU5Q9omCYYZSmO+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729355292; c=relaxed/simple;
	bh=KVKR8rdAu1bTmM0Do0pe/BPyW1sGsETs56bfwx3gRAA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EmUbkuWqYr9VZx+10srrUDbAykMZkicTUvr7TkddMZY3YmaUvaULDHjaRQTcVmtdHZ4HNA5tmLJpE9FkR32nXbtjsskOUjrNKVUFFLgJ9790wGk2kaK7PJ1Szt0b6PBMf7neZY57vJDaei/fM2mJagXPG7riavYHc9L4djYfLMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=N6M3KsM1; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-20cf3e36a76so31868805ad.0
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 09:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1729355290; x=1729960090; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OsH0cNinQslXDyIRyfl/9O7pxc4UGpoe6shl8RLD0+8=;
        b=N6M3KsM1DQk4yWUToGPPlMSt3C8/EcBDPg9QXtc+T1MXZP8AOsIH5U6q53bWFCaW/7
         kTBeF/jwS6p/ZspxMNaW4E+JZg+myEQxCrK6ABvQuMm82GVjWaVKUTRx9oEyR3TUedAV
         txnSObjqzk6lGywomYXGRdsbMtumCpCjtBKTdIbJaFHmgNeSe3nfHjIAT5jbuL9Gv0VW
         QQ+UOgnOzxYLZq9DWcLa5ZgxPU2JN3h/FvFwT86awOttS0ChOw1/tDCuoYo0a86xgk0+
         t8ur5LwwBVxhjjotPH2/L5kAfWUEpcY30R+NzDfWooK0hnrqkccAILQLiCSDIkrqQkr8
         oV+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729355290; x=1729960090;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OsH0cNinQslXDyIRyfl/9O7pxc4UGpoe6shl8RLD0+8=;
        b=UPgJW/4me7NlyPdD8nPY5HLqT76ZYuTzY4B3AFSXrX+EsKSLLg8GNLoAKxK0obGXoj
         hMWfTi5wtqrTRwyzIajsdEkKz4BJ3YNpsFfbvFpyvTh+zJub8Wy3foURhjtrQ2VV6MHv
         oWeICRafjmnTa2+0anJca2+PuGDZAVATRkrmJ9EmaCmS/yVn0+KV7RVM0ewWLRcI/1i7
         RWfiOP5av3kHUwU8HxDwsVPdoKdKxacI0CzrS2yNF6YoPjQ0feVSt6+KBegjKZpLDKu6
         nRVWOxFOAOz4MLPYIP35hNY6uxwrGzICufTZ7L3eA7iApXGrsRxU4OjctQ0AIm+mgUdr
         juMw==
X-Forwarded-Encrypted: i=1; AJvYcCXk88HlN8Xjpb+xxHwcQuv8aEYX83VWKcvQk+gVP7SHteKXsizKCR0dEeqAehueXumPowOzUnEwS8oe@vger.kernel.org
X-Gm-Message-State: AOJu0YyAxWP+Od12eXIDsQ6bNVK+07e15qMch6WSgPnXB8zYbBOI7GFM
	P0RooorgdISwnqrBR1NGv99C7Z4mIBQlL4joXMOE2QXbP0vszlRnC+wTZHG1zGs=
X-Google-Smtp-Source: AGHT+IGYR5eUJwXGMxy7HdyPRDQKE3DHw/4XPlT1k5OHVZitlhHw/yWOFKmVSy270AIpQ0J0HATvDg==
X-Received: by 2002:a17:902:e892:b0:20b:bac2:88f3 with SMTP id d9443c01a7336-20e5a93ab46mr65799075ad.53.1729355290154;
        Sat, 19 Oct 2024 09:28:10 -0700 (PDT)
Received: from localhost.localdomain ([2a11:3:200::30df])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e5a8de4bdsm29567625ad.180.2024.10.19.09.27.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 09:28:09 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	rafal@milecki.pl
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Michael Zhu <michael.zhu@starfivetech.com>,
	Drew Fustini <drew@beagleboard.org>,
	Alexandru Stan <ams@frame.work>,
	Daniel Schaefer <dhs@frame.work>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sandie Cao <sandie.cao@deepcomputing.io>,
	Yuning Liang <yuning.liang@deepcomputing.io>,
	Huiming Qiu <huiming.qiu@deepcomputing.io>,
	Alex Elder <elder@riscstar.com>,
	linux@frame.work,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v4 3/3] riscv: dts: starfive: add DeepComputing FML13V01 board device tree
Date: Sun, 20 Oct 2024 00:26:05 +0800
Message-Id: <20241019162605.308475-4-guodong@riscstar.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241019162605.308475-1-guodong@riscstar.com>
References: <20241019162605.308475-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Sandie Cao <sandie.cao@deepcomputing.io>

The FML13V01 board from DeepComputing incorporates a StarFive JH7110 SoC.
It is a mainboard designed for the Framework Laptop 13 Chassis, which has
(Framework) SKU FRANHQ0001.

The FML13V01 board features:
- StarFive JH7110 SoC
- LPDDR4 8GB
- eMMC 32GB or 128GB
- QSPI Flash
- MicroSD Slot
- PCIe-based Wi-Fi
- 4 USB-C Ports
 - Port 1: PD 3.0 (60W Max), USB 3.2 Gen 1, DP 1.4 (4K@30Hz/2.5K@60Hz)
 - Port 2: PD 3.0 (60W Max), USB 3.2 Gen 1
 - Port 3 & 4: USB 3.2 Gen 1

Create the DTS file for the DeepComputing FML13V01 board. Seven device
nodes have been verified functional and remain enabled: i2c2, i2c5, i2c6
qspi, mmc0, mmc1 and usb0.  All others remain disabled, or are disabled
by nodes in "jh7110-deepcomputing-fml13v01.dts".

Signed-off-by: Sandie Cao <sandie.cao@deepcomputing.io>
[elder@riscstar.com: revised the description, updated some nodes]
Signed-off-by: Alex Elder <elder@riscstar.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v4: Changed model string to "DeepComputing FML13V01"
    Changed dts filename and Makefile accordingly to reflect the change
    Updated device nodes status, and verified functional
    Revised the commit message
v3: Updated the commit message
v2: Changed the model and copmatible strings
    Updated the commit message with board features

 arch/riscv/boot/dts/starfive/Makefile         |  1 +
 .../jh7110-deepcomputing-fml13v01.dts         | 44 +++++++++++++++++++
 2 files changed, 45 insertions(+)
 create mode 100644 arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts

diff --git a/arch/riscv/boot/dts/starfive/Makefile b/arch/riscv/boot/dts/starfive/Makefile
index 7a163a7d6ba3..b3bb12f78e7d 100644
--- a/arch/riscv/boot/dts/starfive/Makefile
+++ b/arch/riscv/boot/dts/starfive/Makefile
@@ -8,6 +8,7 @@ DTC_FLAGS_jh7110-starfive-visionfive-2-v1.3b := -@
 dtb-$(CONFIG_ARCH_STARFIVE) += jh7100-beaglev-starlight.dtb
 dtb-$(CONFIG_ARCH_STARFIVE) += jh7100-starfive-visionfive-v1.dtb
 
+dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-deepcomputing-fml13v01.dtb
 dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-milkv-mars.dtb
 dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-pine64-star64.dtb
 dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-starfive-visionfive-2-v1.2a.dtb
diff --git a/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts b/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
new file mode 100644
index 000000000000..b515b7d04c37
--- /dev/null
+++ b/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/*
+ * Copyright (C) 2024 DeepComputing (HK) Limited
+ */
+
+/dts-v1/;
+#include "jh7110-common.dtsi"
+
+/ {
+	model = "DeepComputing FML13V01";
+	compatible = "deepcomputing,fml13v01", "starfive,jh7110";
+};
+
+&camss {
+	status = "disabled";
+};
+
+&csi2rx {
+	status = "disabled";
+};
+
+&gmac0 {
+	status = "disabled";
+};
+
+&i2c0 {
+	status = "disabled";
+};
+
+&pwm {
+	status = "disabled";
+};
+
+&pwmdac {
+	status = "disabled";
+};
+
+&spi0 {
+	status = "disabled";
+};
+
+&usb0 {
+	dr_mode = "host";
+};
-- 
2.34.1


