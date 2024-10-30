Return-Path: <devicetree+bounces-117416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9129B627B
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 13:03:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 078C71C213FA
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 12:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE6B01E6DFF;
	Wed, 30 Oct 2024 12:03:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C851E3DF0
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 12:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730289802; cv=none; b=bwehg6K+3f/MAbzpS4NjnfrdXQK/g2Ku2m7HM8fKPbTcTeQtJHvKii+Xpj7z2Dx0xVXGbPq4eWoZ/n59rlwoZQ86fxqPj0UAhWTz+SoP2QhmngoYc+9xbtzhTo1UtEfNLi0uDLsjXrt2o1KbvjhyFOMkzM8o3qi5tK5JYChlSls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730289802; c=relaxed/simple;
	bh=oSJO2rPehksOu2QXxrRU0iqQIcmhcV2PZ72sqf3vETw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nHFixOZh/57I0FDIz875IpIKVFiIjhY+U/4HYzw1syekLUmJ0IxawEHOn62pBf1J9dahbYREvriJz0fy2+dRoWbqZ2sq8ydT4gLKT4//6/S//Dasz5Nd/RnRyC8c7hc7ofbD3gxLOQYCxb+ioE3+hBc1QRW4BXkyKLezHPO89U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1t67Pv-0005ni-EC; Wed, 30 Oct 2024 13:03:15 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 30 Oct 2024 13:03:00 +0100
Subject: [PATCH 2/2] clk: socfpga: Add clock driver for Agilex5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241030-v6-12-topic-socfpga-agilex5-clk-v1-2-e29e57980398@pengutronix.de>
References: <20241030-v6-12-topic-socfpga-agilex5-clk-v1-0-e29e57980398@pengutronix.de>
In-Reply-To: <20241030-v6-12-topic-socfpga-agilex5-clk-v1-0-e29e57980398@pengutronix.de>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, netdev@vger.kernel.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Teh Wen Ping <wen.ping.teh@intel.com>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: Teh Wen Ping <wen.ping.teh@intel.com>

Add clock manager driver for Intel SoCFPGA Agilex5 platform.

Signed-off-by: Teh Wen Ping <wen.ping.teh@intel.com>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/clk/socfpga/Kconfig         |   4 +-
 drivers/clk/socfpga/Makefile        |   2 +-
 drivers/clk/socfpga/clk-agilex5.c   | 847 ++++++++++++++++++++++++++++++++++++
 drivers/clk/socfpga/clk-pll-s10.c   |  48 ++
 drivers/clk/socfpga/stratix10-clk.h |   2 +
 5 files changed, 900 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/socfpga/Kconfig b/drivers/clk/socfpga/Kconfig
index 0cf16b894efb3a210cb0431c2ac89da22476281d..e82c0cda3245d08a914a3d9c8121413f0a35142d 100644
--- a/drivers/clk/socfpga/Kconfig
+++ b/drivers/clk/socfpga/Kconfig
@@ -4,7 +4,7 @@ config CLK_INTEL_SOCFPGA
 	default ARCH_INTEL_SOCFPGA
 	help
 	  Support for the clock controllers present on Intel SoCFPGA and eASIC
-	  devices like Aria, Cyclone, Stratix 10, Agilex and N5X eASIC.
+	  devices like Aria, Cyclone, Stratix 10, Agilex, N5X eASIC and Agilex5.
 
 if CLK_INTEL_SOCFPGA
 
@@ -13,7 +13,7 @@ config CLK_INTEL_SOCFPGA32
 	default ARM && ARCH_INTEL_SOCFPGA
 
 config CLK_INTEL_SOCFPGA64
-	bool "Intel Stratix / Agilex / N5X clock controller support" if COMPILE_TEST && (!ARM64 || !ARCH_INTEL_SOCFPGA)
+	bool "Intel Stratix / Agilex / N5X clock / Agilex5 controller support" if COMPILE_TEST && (!ARM64 || !ARCH_INTEL_SOCFPGA)
 	default ARM64 && ARCH_INTEL_SOCFPGA
 
 endif # CLK_INTEL_SOCFPGA
diff --git a/drivers/clk/socfpga/Makefile b/drivers/clk/socfpga/Makefile
index e8dfce339c915e4ddf5e31205bc813378649d8c6..a1ea2b988eaf4882d3610c5cbf253771c297e968 100644
--- a/drivers/clk/socfpga/Makefile
+++ b/drivers/clk/socfpga/Makefile
@@ -3,4 +3,4 @@ obj-$(CONFIG_CLK_INTEL_SOCFPGA32) += clk.o clk-gate.o clk-pll.o clk-periph.o \
 				     clk-pll-a10.o clk-periph-a10.o clk-gate-a10.o
 obj-$(CONFIG_CLK_INTEL_SOCFPGA64) += clk-s10.o \
 				     clk-pll-s10.o clk-periph-s10.o clk-gate-s10.o \
-				     clk-agilex.o
+				     clk-agilex.o clk-agilex5.o
diff --git a/drivers/clk/socfpga/clk-agilex5.c b/drivers/clk/socfpga/clk-agilex5.c
new file mode 100644
index 0000000000000000000000000000000000000000..cd01050db4be92ca7b3130636f3f48a0f91234de
--- /dev/null
+++ b/drivers/clk/socfpga/clk-agilex5.c
@@ -0,0 +1,847 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2022, Intel Corporation
+ */
+#include <linux/slab.h>
+#include <linux/clk-provider.h>
+#include <linux/of_device.h>
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+
+#include <dt-bindings/clock/agilex5-clock.h>
+
+#include "stratix10-clk.h"
+
+static const struct clk_parent_data pll_mux[] = {
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data boot_mux[] = {
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+};
+
+static const struct clk_parent_data core0_free_mux[] = {
+	{
+		.fw_name = "main_pll_c1",
+		.name = "main_pll_c1",
+	},
+	{
+		.fw_name = "peri_pll_c0",
+		.name = "peri_pll_c0",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data core1_free_mux[] = {
+	{
+		.fw_name = "main_pll_c1",
+		.name = "main_pll_c1",
+	},
+	{
+		.fw_name = "peri_pll_c0",
+		.name = "peri_pll_c0",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data core2_free_mux[] = {
+	{
+		.fw_name = "main_pll_c0",
+		.name = "main_pll_c0",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data core3_free_mux[] = {
+	{
+		.fw_name = "main_pll_c0",
+		.name = "main_pll_c0",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data dsu_free_mux[] = {
+	{
+		.fw_name = "main_pll_c2",
+		.name = "main_pll_c2",
+	},
+	{
+		.fw_name = "peri_pll_c0",
+		.name = "peri_pll_c0",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data noc_free_mux[] = {
+	{
+		.fw_name = "main_pll_c3",
+		.name = "main_pll_c3",
+	},
+	{
+		.fw_name = "peri_pll_c1",
+		.name = "peri_pll_c1",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data emaca_free_mux[] = {
+	{
+		.fw_name = "main_pll_c1",
+		.name = "main_pll_c1",
+	},
+	{
+		.fw_name = "peri_pll_c3",
+		.name = "peri_pll_c3",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data emacb_free_mux[] = {
+	{
+		.fw_name = "main_pll_c1",
+		.name = "main_pll_c1",
+	},
+	{
+		.fw_name = "peri_pll_c3",
+		.name = "peri_pll_c3",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data emac_ptp_free_mux[] = {
+	{
+		.fw_name = "main_pll_c3",
+		.name = "main_pll_c3",
+	},
+	{
+		.fw_name = "peri_pll_c3",
+		.name = "peri_pll_c3",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data gpio_db_free_mux[] = {
+	{
+		.fw_name = "main_pll_c3",
+		.name = "main_pll_c3",
+	},
+	{
+		.fw_name = "peri_pll_c1",
+		.name = "peri_pll_c1",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data psi_ref_free_mux[] = {
+	{
+		.fw_name = "main_pll_c1",
+		.name = "main_pll_c1",
+	},
+	{
+		.fw_name = "peri_pll_c3",
+		.name = "peri_pll_c3",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data usb31_free_mux[] = {
+	{
+		.fw_name = "main_pll_c3",
+		.name = "main_pll_c3",
+	},
+	{
+		.fw_name = "peri_pll_c2",
+		.name = "peri_pll_c2",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data s2f_usr0_free_mux[] = {
+	{
+		.fw_name = "main_pll_c1",
+		.name = "main_pll_c1",
+	},
+	{
+		.fw_name = "peri_pll_c3",
+		.name = "peri_pll_c3",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data s2f_usr1_free_mux[] = {
+	{
+		.fw_name = "main_pll_c1",
+		.name = "main_pll_c1",
+	},
+	{
+		.fw_name = "peri_pll_c3",
+		.name = "peri_pll_c3",
+	},
+	{
+		.fw_name = "osc1",
+		.name = "osc1",
+	},
+	{
+		.fw_name = "cb-intosc-hs-div2-clk",
+		.name = "cb-intosc-hs-div2-clk",
+	},
+	{
+		.fw_name = "f2s-free-clk",
+		.name = "f2s-free-clk",
+	},
+};
+
+static const struct clk_parent_data core0_mux[] = {
+	{
+		.fw_name = "core0_free_clk",
+		.name = "core0_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data core1_mux[] = {
+	{
+		.fw_name = "core1_free_clk",
+		.name = "core1_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data core2_mux[] = {
+	{
+		.fw_name = "core2_free_clk",
+		.name = "core2_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data core3_mux[] = {
+	{
+		.fw_name = "core3_free_clk",
+		.name = "core3_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data dsu_mux[] = {
+	{
+		.fw_name = "dsu_free_clk",
+		.name = "dsu_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data emac_mux[] = {
+	{
+		.fw_name = "emaca_free_clk",
+		.name = "emaca_free_clk",
+	},
+	{
+		.fw_name = "emacb_free_clk",
+		.name = "emacb_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data noc_mux[] = {
+	{
+		.fw_name = "noc_free_clk",
+		.name = "noc_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data s2f_user0_mux[] = {
+	{
+		.fw_name = "s2f_user0_free_clk",
+		.name = "s2f_user0_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data s2f_user1_mux[] = {
+	{
+		.fw_name = "s2f_user1_free_clk",
+		.name = "s2f_user1_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data psi_mux[] = {
+	{
+		.fw_name = "psi_ref_free_clk",
+		.name = "psi_ref_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data gpio_db_mux[] = {
+	{
+		.fw_name = "gpio_db_free_clk",
+		.name = "gpio_db_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data emac_ptp_mux[] = {
+	{
+		.fw_name = "emac_ptp_free_clk",
+		.name = "emac_ptp_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+static const struct clk_parent_data usb31_mux[] = {
+	{
+		.fw_name = "usb31_free_clk",
+		.name = "usb31_free_clk",
+	},
+	{
+		.fw_name = "boot_clk",
+		.name = "boot_clk",
+	},
+};
+
+/*
+ * TODO - Clocks in AO (always on) controller
+ * 2 main PLLs only
+ */
+static const struct stratix10_pll_clock agilex5_pll_clks[] = {
+	{ AGILEX5_BOOT_CLK, "boot_clk", boot_mux, ARRAY_SIZE(boot_mux), 0,
+	  0x0 },
+	{ AGILEX5_MAIN_PLL_CLK, "main_pll", pll_mux, ARRAY_SIZE(pll_mux), 0,
+	  0x48 },
+	{ AGILEX5_PERIPH_PLL_CLK, "periph_pll", pll_mux, ARRAY_SIZE(pll_mux), 0,
+	  0x9C },
+};
+
+static const struct stratix10_perip_c_clock agilex5_main_perip_c_clks[] = {
+	{ AGILEX5_MAIN_PLL_C0_CLK, "main_pll_c0", "main_pll", NULL, 1, 0,
+	  0x5C },
+	{ AGILEX5_MAIN_PLL_C1_CLK, "main_pll_c1", "main_pll", NULL, 1, 0,
+	  0x60 },
+	{ AGILEX5_MAIN_PLL_C2_CLK, "main_pll_c2", "main_pll", NULL, 1, 0,
+	  0x64 },
+	{ AGILEX5_MAIN_PLL_C3_CLK, "main_pll_c3", "main_pll", NULL, 1, 0,
+	  0x68 },
+	{ AGILEX5_PERIPH_PLL_C0_CLK, "peri_pll_c0", "periph_pll", NULL, 1, 0,
+	  0xB0 },
+	{ AGILEX5_PERIPH_PLL_C1_CLK, "peri_pll_c1", "periph_pll", NULL, 1, 0,
+	  0xB4 },
+	{ AGILEX5_PERIPH_PLL_C2_CLK, "peri_pll_c2", "periph_pll", NULL, 1, 0,
+	  0xB8 },
+	{ AGILEX5_PERIPH_PLL_C3_CLK, "peri_pll_c3", "periph_pll", NULL, 1, 0,
+	  0xBC },
+};
+
+/* Non-SW clock-gated enabled clocks */
+static const struct stratix10_perip_cnt_clock agilex5_main_perip_cnt_clks[] = {
+	{ AGILEX5_CORE0_FREE_CLK, "core0_free_clk", NULL, core0_free_mux,
+	ARRAY_SIZE(core0_free_mux), 0, 0x0104, 0, 0, 0},
+	{ AGILEX5_CORE1_FREE_CLK, "core1_free_clk", NULL, core1_free_mux,
+	ARRAY_SIZE(core1_free_mux), 0, 0x0104, 0, 0, 0},
+	{ AGILEX5_CORE2_FREE_CLK, "core2_free_clk", NULL, core2_free_mux,
+	ARRAY_SIZE(core2_free_mux), 0, 0x010C, 0, 0, 0},
+	{ AGILEX5_CORE3_FREE_CLK, "core3_free_clk", NULL, core3_free_mux,
+	ARRAY_SIZE(core3_free_mux), 0, 0x0110, 0, 0, 0},
+	{ AGILEX5_DSU_FREE_CLK, "dsu_free_clk", NULL, dsu_free_mux,
+	ARRAY_SIZE(dsu_free_mux), 0, 0x0100, 0, 0, 0},
+	{ AGILEX5_NOC_FREE_CLK, "noc_free_clk", NULL, noc_free_mux,
+	  ARRAY_SIZE(noc_free_mux), 0, 0x40, 0, 0, 0 },
+	{ AGILEX5_EMAC_A_FREE_CLK, "emaca_free_clk", NULL, emaca_free_mux,
+	  ARRAY_SIZE(emaca_free_mux), 0, 0xD4, 0, 0x88, 0 },
+	{ AGILEX5_EMAC_B_FREE_CLK, "emacb_free_clk", NULL, emacb_free_mux,
+	  ARRAY_SIZE(emacb_free_mux), 0, 0xD8, 0, 0x88, 1 },
+	{ AGILEX5_EMAC_PTP_FREE_CLK, "emac_ptp_free_clk", NULL,
+	  emac_ptp_free_mux, ARRAY_SIZE(emac_ptp_free_mux), 0, 0xDC, 0, 0x88,
+	  2 },
+	{ AGILEX5_GPIO_DB_FREE_CLK, "gpio_db_free_clk", NULL, gpio_db_free_mux,
+	  ARRAY_SIZE(gpio_db_free_mux), 0, 0xE0, 0, 0x88, 3 },
+	{ AGILEX5_S2F_USER0_FREE_CLK, "s2f_user0_free_clk", NULL,
+	  s2f_usr0_free_mux, ARRAY_SIZE(s2f_usr0_free_mux), 0, 0xE8, 0, 0x30,
+	  2 },
+	{ AGILEX5_S2F_USER1_FREE_CLK, "s2f_user1_free_clk", NULL,
+	  s2f_usr1_free_mux, ARRAY_SIZE(s2f_usr1_free_mux), 0, 0xEC, 0, 0x88,
+	  5 },
+	{ AGILEX5_PSI_REF_FREE_CLK, "psi_ref_free_clk", NULL, psi_ref_free_mux,
+	  ARRAY_SIZE(psi_ref_free_mux), 0, 0xF0, 0, 0x88, 6 },
+	{ AGILEX5_USB31_FREE_CLK, "usb31_free_clk", NULL, usb31_free_mux,
+	  ARRAY_SIZE(usb31_free_mux), 0, 0xF8, 0, 0x88, 7},
+};
+
+/* SW Clock gate enabled clocks */
+static const struct stratix10_gate_clock agilex5_gate_clks[] = {
+
+	/* TODO HW Managed Clocks list */
+
+	/* TODO SW Managed Clocks list */
+
+	/* Main PLL0 Begin */
+	/* MPU clocks */
+	{ AGILEX5_CORE0_CLK, "core0_clk", NULL, core0_mux,
+	  ARRAY_SIZE(core0_mux), 0, 0x24, 8, 0, 0, 0, 0x30, 5, 0 },
+	{ AGILEX5_CORE1_CLK, "core1_clk", NULL, core1_mux,
+	  ARRAY_SIZE(core1_mux), 0, 0x24, 9, 0, 0, 0, 0x30, 5, 0 },
+	{ AGILEX5_CORE2_CLK, "core2_clk", NULL, core2_mux,
+	  ARRAY_SIZE(core2_mux), 0, 0x24, 10, 0, 0, 0, 0x30, 6, 0 },
+	{ AGILEX5_CORE3_CLK, "core3_clk", NULL, core3_mux,
+	  ARRAY_SIZE(core3_mux), 0, 0x24, 11, 0, 0, 0, 0x30, 7, 0 },
+	{ AGILEX5_MPU_CLK, "dsu_clk", NULL, dsu_mux, ARRAY_SIZE(dsu_mux), 0, 0,
+	  0, 0, 0, 0, 0x34, 4, 0 },
+	{ AGILEX5_MPU_PERIPH_CLK, "mpu_periph_clk", NULL, dsu_mux,
+	  ARRAY_SIZE(dsu_mux), 0, 0, 0, 0x44, 20, 2, 0x34, 4, 0 },
+	{ AGILEX5_MPU_CCU_CLK, "mpu_ccu_clk", NULL, dsu_mux,
+	  ARRAY_SIZE(dsu_mux), 0, 0, 0, 0x44, 18, 2, 0x34, 4, 0 },
+
+	/* ANGTS TODO l4 main clk has no divider now. To check. */
+	{ AGILEX5_L4_MAIN_CLK, "l4_main_clk", NULL, noc_mux,
+	  ARRAY_SIZE(noc_mux), 0, 0x24, 1, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_L4_MP_CLK, "l4_mp_clk", NULL, noc_mux, ARRAY_SIZE(noc_mux), 0,
+	  0x24, 2, 0x44, 4, 2, 0x30, 1, 0 },
+	{ AGILEX5_L4_SYS_FREE_CLK, "l4_sys_free_clk", NULL, noc_mux,
+	  ARRAY_SIZE(noc_mux), 0, 0, 0, 0x44, 2, 2, 0x30, 1, 0 },
+	{ AGILEX5_L4_SP_CLK, "l4_sp_clk", NULL, noc_mux, ARRAY_SIZE(noc_mux),
+	  CLK_IS_CRITICAL, 0x24, 3, 0x44, 6, 2, 0x30, 1, 0 },
+
+	/* Core sight clocks*/
+	{ AGILEX5_CS_AT_CLK, "cs_at_clk", NULL, noc_mux, ARRAY_SIZE(noc_mux), 0,
+	  0x24, 4, 0x44, 24, 2, 0x30, 1, 0 },
+	{ AGILEX5_CS_TRACE_CLK, "cs_trace_clk", NULL, noc_mux,
+	  ARRAY_SIZE(noc_mux), 0, 0x24, 4, 0x44, 26, 2, 0x30, 1, 0 },
+	{ AGILEX5_CS_PDBG_CLK, "cs_pdbg_clk", "cs_at_clk", NULL, 1, 0, 0x24, 4,
+	  0x44, 28, 1, 0, 0, 0 },
+	/* Main PLL0 End */
+
+	/* Main Peripheral PLL1 Begin */
+	{ AGILEX5_EMAC0_CLK, "emac0_clk", NULL, emac_mux, ARRAY_SIZE(emac_mux),
+	  0, 0x7C, 0, 0, 0, 0, 0x94, 26, 0 },
+	{ AGILEX5_EMAC1_CLK, "emac1_clk", NULL, emac_mux, ARRAY_SIZE(emac_mux),
+	  0, 0x7C, 1, 0, 0, 0, 0x94, 27, 0 },
+	{ AGILEX5_EMAC2_CLK, "emac2_clk", NULL, emac_mux, ARRAY_SIZE(emac_mux),
+	  0, 0x7C, 2, 0, 0, 0, 0x94, 28, 0 },
+	{ AGILEX5_EMAC_PTP_CLK, "emac_ptp_clk", NULL, emac_ptp_mux,
+	  ARRAY_SIZE(emac_ptp_mux), 0, 0x7C, 3, 0, 0, 0, 0x88, 2, 0 },
+	{ AGILEX5_GPIO_DB_CLK, "gpio_db_clk", NULL, gpio_db_mux,
+	  ARRAY_SIZE(gpio_db_mux), 0, 0x7C, 4, 0x98, 0, 16, 0x88, 3, 1 },
+	  /* Main Peripheral PLL1 End */
+
+	  /* Peripheral clocks  */
+	{ AGILEX5_S2F_USER0_CLK, "s2f_user0_clk", NULL, s2f_user0_mux,
+	  ARRAY_SIZE(s2f_user0_mux), 0, 0x24, 6, 0, 0, 0, 0x30, 2, 0 },
+	{ AGILEX5_S2F_USER1_CLK, "s2f_user1_clk", NULL, s2f_user1_mux,
+	  ARRAY_SIZE(s2f_user1_mux), 0, 0x7C, 6, 0, 0, 0, 0x88, 5, 0 },
+	{ AGILEX5_PSI_REF_CLK, "psi_ref_clk", NULL, psi_mux,
+	  ARRAY_SIZE(psi_mux), 0, 0x7C, 7, 0, 0, 0, 0x88, 6, 0 },
+	{ AGILEX5_USB31_SUSPEND_CLK, "usb31_suspend_clk", NULL, usb31_mux,
+	  ARRAY_SIZE(usb31_mux), 0, 0x7C, 25, 0, 0, 0, 0x88, 7, 0 },
+	{ AGILEX5_USB31_BUS_CLK_EARLY, "usb31_bus_clk_early", "l4_main_clk",
+	  NULL, 1, 0, 0x7C, 25, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_USB2OTG_HCLK, "usb2otg_hclk", "l4_mp_clk", NULL, 1, 0, 0x7C,
+	  8, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPIM_0_CLK, "spim_0_clk", "l4_mp_clk", NULL, 1, 0, 0x7C, 9,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPIM_1_CLK, "spim_1_clk", "l4_mp_clk", NULL, 1, 0, 0x7C, 11,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPIS_0_CLK, "spis_0_clk", "l4_sp_clk", NULL, 1, 0, 0x7C, 12,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPIS_1_CLK, "spis_1_clk", "l4_sp_clk", NULL, 1, 0, 0x7C, 13,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_DMA_CORE_CLK, "dma_core_clk", "l4_mp_clk", NULL, 1, 0, 0x7C,
+	  14, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_DMA_HS_CLK, "dma_hs_clk", "l4_mp_clk", NULL, 1, 0, 0x7C, 14,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I3C_0_CORE_CLK, "i3c_0_core_clk", "l4_mp_clk", NULL, 1, 0,
+	  0x7C, 18, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I3C_1_CORE_CLK, "i3c_1_core_clk", "l4_mp_clk", NULL, 1, 0,
+	  0x7C, 19, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I2C_0_PCLK, "i2c_0_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 15,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I2C_1_PCLK, "i2c_1_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 16,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I2C_EMAC0_PCLK, "i2c_emac0_pclk", "l4_sp_clk", NULL, 1, 0,
+	  0x7C, 17, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I2C_EMAC1_PCLK, "i2c_emac1_pclk", "l4_sp_clk", NULL, 1, 0,
+	  0x7C, 22, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_I2C_EMAC2_PCLK, "i2c_emac2_pclk", "l4_sp_clk", NULL, 1, 0,
+	  0x7C, 27, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_UART_0_PCLK, "uart_0_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 20,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_UART_1_PCLK, "uart_1_pclk", "l4_sp_clk", NULL, 1, 0, 0x7C, 21,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPTIMER_0_PCLK, "sptimer_0_pclk", "l4_sp_clk", NULL, 1, 0,
+	  0x7C, 23, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SPTIMER_1_PCLK, "sptimer_1_pclk", "l4_sp_clk", NULL, 1, 0,
+	  0x7C, 24, 0, 0, 0, 0, 0, 0 },
+
+	/*NAND, SD/MMC and SoftPHY overall clocking*/
+	{ AGILEX5_DFI_CLK, "dfi_clk", "l4_mp_clk", NULL, 1, 0, 0, 0, 0x44, 16,
+	  2, 0, 0, 0 },
+	{ AGILEX5_NAND_NF_CLK, "nand_nf_clk", "dfi_clk", NULL, 1, 0, 0x7C, 10,
+	  0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_NAND_BCH_CLK, "nand_bch_clk", "l4_mp_clk", NULL, 1, 0, 0x7C,
+	  10, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SDMMC_SDPHY_REG_CLK, "sdmmc_sdphy_reg_clk", "l4_mp_clk", NULL,
+	  1, 0, 0x7C, 5, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SDMCLK, "sdmclk", "dfi_clk", NULL, 1, 0, 0x7C, 5, 0, 0, 0, 0,
+	  0, 0 },
+	{ AGILEX5_SOFTPHY_REG_PCLK, "softphy_reg_pclk", "l4_mp_clk", NULL, 1, 0,
+	  0x7C, 26, 0, 0, 0, 0, 0, 0 },
+	{ AGILEX5_SOFTPHY_PHY_CLK, "softphy_phy_clk", "l4_mp_clk", NULL, 1, 0,
+	  0x7C, 26, 0x44, 16, 2, 0, 0, 0 },
+	{ AGILEX5_SOFTPHY_CTRL_CLK, "softphy_ctrl_clk", "dfi_clk", NULL, 1, 0,
+	  0x7C, 26, 0, 0, 0, 0, 0, 0 },
+};
+
+static int
+agilex5_clk_register_c_perip(const struct stratix10_perip_c_clock *clks,
+			     int nums, struct stratix10_clock_data *data)
+{
+	struct clk_hw *hw_clk;
+	void __iomem *base = data->base;
+	int i;
+
+	for (i = 0; i < nums; i++) {
+		hw_clk = s10_register_periph(&clks[i], base);
+		if (IS_ERR(hw_clk)) {
+			pr_err("%s: failed to register clock %s\n", __func__,
+			       clks[i].name);
+			continue;
+		}
+		data->clk_data.hws[clks[i].id] = hw_clk;
+	}
+	return 0;
+}
+
+static int
+agilex5_clk_register_cnt_perip(const struct stratix10_perip_cnt_clock *clks,
+			       int nums, struct stratix10_clock_data *data)
+{
+	struct clk_hw *hw_clk;
+	void __iomem *base = data->base;
+	int i;
+
+	for (i = 0; i < nums; i++) {
+		hw_clk = s10_register_cnt_periph(&clks[i], base);
+		if (IS_ERR(hw_clk)) {
+			pr_err("%s: failed to register clock %s\n", __func__,
+			       clks[i].name);
+			continue;
+		}
+		data->clk_data.hws[clks[i].id] = hw_clk;
+	}
+
+	return 0;
+}
+
+static int agilex5_clk_register_gate(const struct stratix10_gate_clock *clks,
+				     int nums,
+				     struct stratix10_clock_data *data)
+{
+	struct clk_hw *hw_clk;
+	void __iomem *base = data->base;
+	int i;
+
+	for (i = 0; i < nums; i++) {
+		hw_clk = agilex_register_gate(&clks[i], base);
+		if (IS_ERR(hw_clk)) {
+			pr_err("%s: failed to register clock %s\n", __func__,
+			       clks[i].name);
+			continue;
+		}
+		data->clk_data.hws[clks[i].id] = hw_clk;
+	}
+
+	return 0;
+}
+
+static int agilex5_clk_register_pll(const struct stratix10_pll_clock *clks,
+				    int nums, struct stratix10_clock_data *data)
+{
+	struct clk_hw *hw_clk;
+	void __iomem *base = data->base;
+	int i;
+
+	for (i = 0; i < nums; i++) {
+		hw_clk = agilex5_register_pll(&clks[i], base);
+		if (IS_ERR(hw_clk)) {
+			pr_err("%s: failed to register clock %s\n", __func__,
+			       clks[i].name);
+			continue;
+		}
+		data->clk_data.hws[clks[i].id] = hw_clk;
+	}
+
+	return 0;
+}
+
+static int agilex5_clkmgr_init(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	struct device *dev = &pdev->dev;
+	struct stratix10_clock_data *clk_data;
+	struct resource *res;
+	void __iomem *base;
+	int i, num_clks;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	num_clks = AGILEX5_NUM_CLKS;
+
+	clk_data = devm_kzalloc(
+		dev, struct_size(clk_data, clk_data.hws, num_clks), GFP_KERNEL);
+	if (!clk_data)
+		return -ENOMEM;
+
+	for (i = 0; i < num_clks; i++)
+		clk_data->clk_data.hws[i] = ERR_PTR(-ENOENT);
+
+	clk_data->base = base;
+	clk_data->clk_data.num = num_clks;
+
+	agilex5_clk_register_pll(agilex5_pll_clks, ARRAY_SIZE(agilex5_pll_clks),
+				 clk_data);
+
+	agilex5_clk_register_c_perip(agilex5_main_perip_c_clks,
+				     ARRAY_SIZE(agilex5_main_perip_c_clks),
+				     clk_data);
+
+	agilex5_clk_register_cnt_perip(agilex5_main_perip_cnt_clks,
+				       ARRAY_SIZE(agilex5_main_perip_cnt_clks),
+				       clk_data);
+
+	agilex5_clk_register_gate(agilex5_gate_clks,
+				  ARRAY_SIZE(agilex5_gate_clks), clk_data);
+
+	of_clk_add_hw_provider(np, of_clk_hw_onecell_get, &clk_data->clk_data);
+	return 0;
+}
+
+static int agilex5_clkmgr_probe(struct platform_device *pdev)
+{
+	int (*probe_func)(struct platform_device *init_func);
+
+	probe_func = of_device_get_match_data(&pdev->dev);
+	if (!probe_func)
+		return -ENODEV;
+	return probe_func(pdev);
+}
+
+static const struct of_device_id agilex5_clkmgr_match_table[] = {
+	{ .compatible = "intel,agilex5-clkmgr", .data = agilex5_clkmgr_init },
+	{}
+};
+
+static struct platform_driver agilex5_clkmgr_driver = {
+	.probe		= agilex5_clkmgr_probe,
+	.driver		= {
+		.name	= "agilex5-clkmgr",
+		.suppress_bind_attrs = true,
+		.of_match_table = agilex5_clkmgr_match_table,
+	},
+};
+
+static int __init agilex5_clk_init(void)
+{
+	return platform_driver_register(&agilex5_clkmgr_driver);
+}
+core_initcall(agilex5_clk_init);
diff --git a/drivers/clk/socfpga/clk-pll-s10.c b/drivers/clk/socfpga/clk-pll-s10.c
index 1d82737befd33932eb0f9f8551fca73147d6a6da..26f61430fb523aaf19ab48a7a0cb28550216bd71 100644
--- a/drivers/clk/socfpga/clk-pll-s10.c
+++ b/drivers/clk/socfpga/clk-pll-s10.c
@@ -175,6 +175,14 @@ static const struct clk_ops agilex_clk_pll_ops = {
 	.prepare = clk_pll_prepare,
 };
 
+/* TODO need to fix, Agilex5 SM requires change */
+static const struct clk_ops agilex5_clk_pll_ops = {
+	/* TODO This may require a custom Agilex5 implementation */
+	.recalc_rate = agilex_clk_pll_recalc_rate,
+	.get_parent = clk_pll_get_parent,
+	.prepare = clk_pll_prepare,
+};
+
 static const struct clk_ops clk_pll_ops = {
 	.recalc_rate = clk_pll_recalc_rate,
 	.get_parent = clk_pll_get_parent,
@@ -304,3 +312,43 @@ struct clk_hw *n5x_register_pll(const struct stratix10_pll_clock *clks,
 	}
 	return hw_clk;
 }
+
+struct clk_hw *agilex5_register_pll(const struct stratix10_pll_clock *clks,
+				void __iomem *reg)
+{
+	struct clk_hw *hw_clk;
+	struct socfpga_pll *pll_clk;
+	struct clk_init_data init;
+	const char *name = clks->name;
+	int ret;
+
+	pll_clk = kzalloc(sizeof(*pll_clk), GFP_KERNEL);
+	if (WARN_ON(!pll_clk))
+		return NULL;
+
+	pll_clk->hw.reg = reg + clks->offset;
+
+	if (streq(name, SOCFPGA_BOOT_CLK))
+		init.ops = &clk_boot_ops;
+	else
+		init.ops = &agilex5_clk_pll_ops;
+
+	init.name = name;
+	init.flags = clks->flags;
+
+	init.num_parents = clks->num_parents;
+	init.parent_names = NULL;
+	init.parent_data = clks->parent_data;
+	pll_clk->hw.hw.init = &init;
+
+	pll_clk->hw.bit_idx = SOCFPGA_PLL_POWER;
+	hw_clk = &pll_clk->hw.hw;
+
+	ret = clk_hw_register(NULL, hw_clk);
+	if (ret) {
+		kfree(pll_clk);
+		return ERR_PTR(ret);
+	}
+	return hw_clk;
+}
+
diff --git a/drivers/clk/socfpga/stratix10-clk.h b/drivers/clk/socfpga/stratix10-clk.h
index 83fe4eb3133cbeefb489515762aeccca144e5a4d..beb018515c090ed0dd2b67da079c9dae2899d916 100644
--- a/drivers/clk/socfpga/stratix10-clk.h
+++ b/drivers/clk/socfpga/stratix10-clk.h
@@ -79,6 +79,8 @@ struct clk_hw *agilex_register_pll(const struct stratix10_pll_clock *clks,
 				void __iomem *reg);
 struct clk_hw *n5x_register_pll(const struct stratix10_pll_clock *clks,
 			     void __iomem *reg);
+struct clk_hw *agilex5_register_pll(const struct stratix10_pll_clock *clks,
+				void __iomem *reg);
 struct clk_hw *s10_register_periph(const struct stratix10_perip_c_clock *clks,
 				void __iomem *reg);
 struct clk_hw *n5x_register_periph(const struct n5x_perip_c_clock *clks,

-- 
2.46.0


