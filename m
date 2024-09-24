Return-Path: <devicetree+bounces-104727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C59983FEE
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 10:07:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D7FA81F23DFE
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 08:07:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4592014A609;
	Tue, 24 Sep 2024 08:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b="StysXZtU"
X-Original-To: devicetree@vger.kernel.org
Received: from va-2-53.ptr.blmpb.com (va-2-53.ptr.blmpb.com [209.127.231.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137FD14883F
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 08:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.127.231.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727165262; cv=none; b=FLvKH+XZOge/FtiqzkAIJVloYxQvqv17bDQ/BtwH9fRPts9mseZayIZV6nV65X720uIfeicKBCbBk2sCOaiFivaE49tqMVlSmwwEHXnQ7BnLMQQP0BxwP8UQcM4nlvSIlFx9KUITyXkUIz/I8+D1dk+R/OTAlu/dww9G7U+cXF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727165262; c=relaxed/simple;
	bh=EkxnC5ePKUobjZG/1i6iA+tvsa76wmot8Wh5PB42XME=;
	h=To:Mime-Version:Cc:Date:Message-Id:Content-Type:From:Subject; b=dwFK0NamRcdjlw+RQVDjtme84P3527myTZmURVskTtAnnftBI6Yvzjv7m24Peax2jPv4u6tMIKsEKyxLOGRm6URoFDoEQhLhipDzsQu0fW+7rLLJhDQ7WW7wVNdQyjJcNJpwavUjmAmCK6c9GU+nW5FLsuvrAzHQmz7/lmpfEZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io; spf=pass smtp.mailfrom=deepcomputing.io; dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b=StysXZtU; arc=none smtp.client-ip=209.127.231.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=deepcomputing.io
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=deepcomputing-io.20200927.dkim.feishu.cn; t=1727165249;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=fzkxprVY0lk6xx/1RY0VC7ls/cvJeG6XaU2AqRX8C3A=;
 b=StysXZtUGeWXIFxFcA71ZhQdQVvChJmXX+WuGWgtzG+RaR/VOQMNoC97HSpweEi54Lpbr0
 Uxfw5RIJNRlOz0vOaZv7wRKHV2Su0MGEvVNs44WcLyhYRPcRpuHuWcXi4cy3qHAvObhqi4
 2oxLmMWlRUxz8JwUz5tw9OJUtMFcNrCdeMPxHmNXvm8IY+pWYQmWenZxRNre8k8F8YM+ii
 zYMBpP4byLXWvjk2DeAPCPJ6L/4PtqHrPtrJzive9MPFimkMfroQTos4UnfMuX7238Ka/I
 tPApxEpZ/qyB1HkcW1b4qBfJpNzkCvq+8jIb2yitq/PfxdSWmHIy/YC/bmMPkg==
Received: from roma-MacBookPro.. ([61.141.249.39]) by smtp.feishu.cn with ESMTPS; Tue, 24 Sep 2024 16:07:27 +0800
X-Original-From: Sandie Cao <sandie.cao@deepcomputing.io>
To: "Conor Dooley" <conor@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.1
X-Lms-Return-Path: <lba+266f27340+727076+vger.kernel.org+sandie.cao@deepcomputing.io>
Cc: "Emil Renner Berthing" <kernel@esmil.dk>, 
	"Rob Herring" <robh@kernel.org>, 
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>, 
	"Paul Walmsley" <paul.walmsley@sifive.com>, 
	"Palmer Dabbelt" <palmer@dabbelt.com>, 
	"Albert Ou" <aou@eecs.berkeley.edu>, 
	"Heiko Stuebner" <heiko.stuebner@cherry.de>, 
	"Neil Armstrong" <neil.armstrong@linaro.org>, <rafal@milecki.pl>, 
	"Linus Walleij" <linus.walleij@linaro.org>, 
	"Michael Zhu" <michael.zhu@starfivetech.com>, 
	"Drew Fustini" <drew@beagleboard.org>, <linux-riscv@lists.infradead.org>, 
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, 
	<dhs@frame.work>, <ams@frame.work>, <gregkh@linuxfoundation.org>, 
	<yuning.liang@deepcomputing.io>, <huiming.qiu@deepcomputing.io>, 
	"Sandie Cao" <sandie.cao@deepcomputing.io>
Date: Tue, 24 Sep 2024 16:06:50 +0800
Message-Id: <20240924080650.1345485-4-sandie.cao@deepcomputing.io>
Content-Type: text/plain; charset=UTF-8
From: "Sandie Cao" <sandie.cao@deepcomputing.io>
Subject: [patch v2 3/3] riscv: dts: starfive: add framework dts
Content-Transfer-Encoding: 7bit

Add framework dts to support RISC-V Framework Laptop 13 Mainboard.

Signed-off-by: Sandie Cao <sandie.cao@deepcomputing.io>
---
 arch/riscv/boot/dts/starfive/Makefile         |  1 +
 .../boot/dts/starfive/jh7110-framework.dts    | 34 +++++++++++++++++++
 2 files changed, 35 insertions(+)
 create mode 100644 arch/riscv/boot/dts/starfive/jh7110-framework.dts

diff --git a/arch/riscv/boot/dts/starfive/Makefile b/arch/riscv/boot/dts/starfive/Makefile
index 7a163a7d6ba3..3746f7122834 100644
--- a/arch/riscv/boot/dts/starfive/Makefile
+++ b/arch/riscv/boot/dts/starfive/Makefile
@@ -8,6 +8,7 @@ DTC_FLAGS_jh7110-starfive-visionfive-2-v1.3b := -@
 dtb-$(CONFIG_ARCH_STARFIVE) += jh7100-beaglev-starlight.dtb
 dtb-$(CONFIG_ARCH_STARFIVE) += jh7100-starfive-visionfive-v1.dtb
 
+dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-framework.dtb
 dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-milkv-mars.dtb
 dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-pine64-star64.dtb
 dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-starfive-visionfive-2-v1.2a.dtb
diff --git a/arch/riscv/boot/dts/starfive/jh7110-framework.dts b/arch/riscv/boot/dts/starfive/jh7110-framework.dts
new file mode 100644
index 000000000000..ff12c24ebab3
--- /dev/null
+++ b/arch/riscv/boot/dts/starfive/jh7110-framework.dts
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/*
+ * Copyright (C) 2022 StarFive Technology Co., Ltd.
+ * Copyright (C) 2022 Emil Renner Berthing <kernel@esmil.dk>
+ */
+
+/dts-v1/;
+#include "jh7110-common.dtsi"
+
+/ {
+	model = "Framework FRANME0000";
+	compatible = "deepcomputing,fm7110", "starfive,jh7110";
+};
+
+&gmac0 {
+	status = "disabled";
+};
+
+&gmac1 {
+	status = "disabled";
+};
+
+&usb0 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&pwmdac {
+	status = "disabled";
+};
+
+&pcie0 {
+	status = "disabled";
+};
-- 
2.34.1

