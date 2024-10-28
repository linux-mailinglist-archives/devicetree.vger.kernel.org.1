Return-Path: <devicetree+bounces-116357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 978739B2A46
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 09:30:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EA2B4B220FB
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 08:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A904E1922F9;
	Mon, 28 Oct 2024 08:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="swYBhHss"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D6211922E9
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 08:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730104136; cv=none; b=K43AvC1In0ZHtyHD4A9hOVPtbEk7drnqq16SKuoNp3o66D/mIZ4p4EpwRUYvwaKYZiPtFajFxFQ2Ruf/WpNaPoQBPtlolwEKz87jNN7bUzNUteP3rIHMsFi85kS/tSIgQiNNcc1UZVH3RfyUdrkWQprgbs0zgGecm3vu7+0wdmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730104136; c=relaxed/simple;
	bh=SQnLaF4q1USYVoZzpcCE9snAMbhHNJAtBW2upIp0pGA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IPMEy28uWkSpAPy5ReWocckhAJJElL2CTYG07HlpTHdtwFepUMGTNSvlCe9cbrhttsQp5fUUPqmYo4Ci6WJ2ArquOw0Ga9Rel/6wvuYXUJGEyyeovg/ypVZyNjh4ptHyi7FW9/m9rqUNLRwQWgftHkD/6EykC4rty5SwCIUD2+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=swYBhHss; arc=none smtp.client-ip=209.85.160.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-28896d9d9deso1868434fac.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 01:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1730104133; x=1730708933; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XPIoC8cm6uQmcS2LwQbVyPpi1k+6eJrUrv1pvZL63WU=;
        b=swYBhHsshuhD8AxcfQ+hY5/xIY84550m1ipfFMl/9KhsIsoSezzJyFNeaWxpIgUBHB
         d25mK//ao0fIAe9zk1q+EzMYlM0+DhgFRuRcx6K/bl8JEE4fdd3rBqXGkxQby7ksiLgY
         aA47ma1WHDtjtJ9rh902GylEUtH/1jcgb3OVvI9D/HM3CynyXHWky8d2BuGkhJYboHjM
         AkmDHPyQmm4gGJiGrXiZKkASm28lBMvTTSxlXSv0CKH2LdNa5Rop8IjbWMowYFQa0wse
         6hXvyO0Eygu7oc/SO9UmewArOy34R/KY5khVU2ILJDtXIEZmPWCssb8iHFst5qMAFIw0
         FGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730104133; x=1730708933;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XPIoC8cm6uQmcS2LwQbVyPpi1k+6eJrUrv1pvZL63WU=;
        b=JbHH7Y3qym8uXvN+uQ5522SdHIZ4cXY3DEPEgHLHroAvTcwivm0vcFIUNz98l1jmYk
         T0d5LVmVcFT+VQFMK2wv9q0PTAeFLnatpHxOqrACSYq3dOCEs7u5iXasHUJaR2riGi+9
         xd1MgUAX1DC0LXJvzyB6JvnIJiI0+V1fdRdtk4QAv6pwD3LEayq6gKWsvOWQtcBYtsyh
         Lss4EkaHjKNxzq3bSO6TjnKhPMkyWPjAlIL6ZZn3z/GpZtVQRwBGV2R0vSy7IXRsTg3b
         z7mWczEWYspQbiSvW2CecpnWubUgei7ulWRQt+xO8fOYlR1Jy7pP6TTXYgfS/6n8zS98
         DGaA==
X-Forwarded-Encrypted: i=1; AJvYcCV53Fe5ys6tDGCi9ByJ+x1KoIjXzTjIxOWrr+kfJmV6ZTkctQ9f88WEPZsxbmT0A3RsFJg+7/mvda5I@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv5Tt8vGdzfHeug36tRV/uMSdn2y9jSU6GGdCupyoyCM+CxXPC
	gZVNUhSE+f9z29ihJ04tLny/lnLu9yfwMfxz1UL9+tE64nziPw+ynk7rNE/1dHM=
X-Google-Smtp-Source: AGHT+IFglaKlZzp2+ZqUwtxvszDFbByiWZoddmsO7mJ9JCqUIjf+BiPq4PQzRQTscfdjRCxE1I0szQ==
X-Received: by 2002:a05:6870:169b:b0:284:ff51:58ad with SMTP id 586e51a60fabf-29051c03edbmr5720685fac.27.1730104133502;
        Mon, 28 Oct 2024 01:28:53 -0700 (PDT)
Received: from localhost.localdomain ([2a11:3:200::401b])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7205791e451sm5195419b3a.24.2024.10.28.01.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 01:28:53 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	rafal@milecki.pl,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Michael Zhu <michael.zhu@starfivetech.com>,
	Drew Fustini <drew@beagleboard.org>,
	Alexandru Stan <ams@frame.work>,
	Daniel Schaefer <dhs@frame.work>,
	Sandie Cao <sandie.cao@deepcomputing.io>,
	Yuning Liang <yuning.liang@deepcomputing.io>,
	Huiming Qiu <huiming.qiu@deepcomputing.io>,
	Alex Elder <elder@riscstar.com>,
	linux@frame.work,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Guodong Xu <guodong@riscstar.com>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Subject: [PATCH v7 5/5] riscv: dts: starfive: add DeepComputing FML13V01 board device tree
Date: Mon, 28 Oct 2024 16:25:53 +0800
Message-Id: <20241028082553.1989797-6-guodong@riscstar.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241028082553.1989797-1-guodong@riscstar.com>
References: <20241028082553.1989797-1-guodong@riscstar.com>
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

Create the DTS file for the DeepComputing FML13V01 board. Based on
'jh7110-common.dtsi', usb0 is enabled and is set to operate as a "host".

Signed-off-by: Sandie Cao <sandie.cao@deepcomputing.io>
[elder@riscstar.com: revised the description, updated some nodes]
Signed-off-by: Alex Elder <elder@riscstar.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
v7: Add Emil's Reviewed-by
v6: Dropped all node status disabled code
    Enabled usb0 and set its operation mode to "host"
v5: No change
v4: Changed model string to "DeepComputing FML13V01"
    Changed dts filename and Makefile accordingly to reflect the change
    Updated device nodes status, and verified functional
    Revised the commit message
v3: Updated the commit message
v2: Changed the model and copmatible strings
    Updated the commit message with board features

 arch/riscv/boot/dts/starfive/Makefile           |  1 +
 .../starfive/jh7110-deepcomputing-fml13v01.dts  | 17 +++++++++++++++++
 2 files changed, 18 insertions(+)
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
index 000000000000..30b0715196b6
--- /dev/null
+++ b/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
@@ -0,0 +1,17 @@
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
+&usb0 {
+	dr_mode = "host";
+	status = "okay";
+};
-- 
2.34.1


