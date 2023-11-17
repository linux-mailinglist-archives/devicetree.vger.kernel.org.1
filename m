Return-Path: <devicetree+bounces-16706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1988E7EF62C
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 17:28:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2DCED1C20952
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 16:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85DE93715D;
	Fri, 17 Nov 2023 16:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 777C5171A;
	Fri, 17 Nov 2023 08:28:27 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3AHGSFEu83225397, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36505.realtek.com.tw[172.21.6.25])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3AHGSFEu83225397
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 18 Nov 2023 00:28:15 +0800
Received: from RTEXMBS03.realtek.com.tw (172.21.6.96) by
 RTEXH36505.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.32; Sat, 18 Nov 2023 00:28:16 +0800
Received: from james-bs01.realtek.com.tw (172.21.190.247) by
 RTEXMBS03.realtek.com.tw (172.21.6.96) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Sat, 18 Nov 2023 00:28:15 +0800
From: James Tai <james.tai@realtek.com>
To: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
        "Rob
 Herring" <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, James Tai <james.tai@realtek.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: [PATCH v2 3/6] irqchip: Introduce RTD1319 support using the Realtek common interrupt controller driver
Date: Sat, 18 Nov 2023 00:27:06 +0800
Message-ID: <20231117162709.1096585-4-james.tai@realtek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231117162709.1096585-1-james.tai@realtek.com>
References: <20231117162709.1096585-1-james.tai@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [172.21.190.247]
X-ClientProxiedBy: RTEXH36505.realtek.com.tw (172.21.6.25) To
 RTEXMBS03.realtek.com.tw (172.21.6.96)
X-KSE-ServerInfo: RTEXMBS03.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-Antivirus-Interceptor-Info: fallback
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-ServerInfo: RTEXH36505.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-Antivirus-Interceptor-Info: fallback
X-KSE-AntiSpam-Interceptor-Info: fallback

Add support for the RTD1319 platform.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202311061208.hJmxGqym-lkp@intel.com/
CC: Thomas Gleixner <tglx@linutronix.de>
CC: Marc Zyngier <maz@kernel.org>
CC: linux-kernel@vger.kernel.org
Signed-off-by: James Tai <james.tai@realtek.com>
---
v1 to v2 change:
- Resolved kernel test robot build warnings
- Replaced magic number with macro
- Fixed code style issues

 drivers/irqchip/Kconfig               |   6 +
 drivers/irqchip/Makefile              |   1 +
 drivers/irqchip/irq-realtek-rtd1319.c | 218 ++++++++++++++++++++++++++
 3 files changed, 225 insertions(+)
 create mode 100644 drivers/irqchip/irq-realtek-rtd1319.c

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 267c3429b48d..05856ce885fa 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -222,6 +222,12 @@ config REALTEK_DHC_INTC
 	tristate
 	select IRQ_DOMAIN
 
+config REALTEK_RTD1319_INTC
+	tristate "Realtek RTD1319 interrupt controller"
+	select REALTEK_DHC_INTC
+	help
+	  Support for Realtek RTD1319 Interrupt Controller.
+
 config RENESAS_INTC_IRQPIN
 	bool "Renesas INTC External IRQ Pin Support" if COMPILE_TEST
 	select IRQ_DOMAIN
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index f6774af7fde2..6a2650b0a924 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -48,6 +48,7 @@ obj-$(CONFIG_IXP4XX_IRQ)		+= irq-ixp4xx.o
 obj-$(CONFIG_JCORE_AIC)			+= irq-jcore-aic.o
 obj-$(CONFIG_RDA_INTC)			+= irq-rda-intc.o
 obj-$(CONFIG_REALTEK_DHC_INTC)		+= irq-realtek-intc-common.o
+obj-$(CONFIG_REALTEK_RTD1319_INTC)	+= irq-realtek-rtd1319.o
 obj-$(CONFIG_RENESAS_INTC_IRQPIN)	+= irq-renesas-intc-irqpin.o
 obj-$(CONFIG_RENESAS_IRQC)		+= irq-renesas-irqc.o
 obj-$(CONFIG_RENESAS_RZA1_IRQC)		+= irq-renesas-rza1.o
diff --git a/drivers/irqchip/irq-realtek-rtd1319.c b/drivers/irqchip/irq-realtek-rtd1319.c
new file mode 100644
index 000000000000..23c13c218b04
--- /dev/null
+++ b/drivers/irqchip/irq-realtek-rtd1319.c
@@ -0,0 +1,218 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
+/*
+ * Realtek RTD1319 interrupt controller driver
+ *
+ * Copyright (c) 2023 Realtek Semiconductor Corporation
+ */
+
+#include <linux/init.h>
+#include <linux/io.h>
+#include <linux/irqchip.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+
+#include "irq-realtek-intc-common.h"
+
+#define ISO_NORMAL_MASK      0xffffcffe
+#define ISO_RTC_MASK         0x00003001
+#define MISC_NMI_WDT_MASK    0x00000004
+#define MISC_NORMAL_MASK     0xffffc0d2
+#define MISC_UART1_MASK      0x00000028
+#define MISC_UART2_MASK      0x00002100
+
+#define ISO_ISR_EN_OFFSET    0x40
+#define ISO_ISR_OFFSET       0
+#define ISO_ISR_UMSK_OFFSET  0x4
+#define MISC_ISR_EN_OFFSET   0x80
+#define MISC_ISR_OFFSET      0xc
+#define MISC_ISR_UMSK_OFFSET 0x8
+
+enum rtd1319_iso_isr_bits {
+	RTD1319_ISO_ISR_TC3_SHIFT	 = 1,
+	RTD1319_ISO_ISR_UR0_SHIFT	 = 2,
+	RTD1319_ISO_ISR_LSADC0_SHIFT	 = 3,
+	RTD1319_ISO_ISR_IRDA_SHIFT	 = 5,
+	RTD1319_ISO_ISR_SPI1_SHIFT	 = 6,
+	RTD1319_ISO_ISR_WDOG_NMI_SHIFT	 = 7,
+	RTD1319_ISO_ISR_I2C0_SHIFT	 = 8,
+	RTD1319_ISO_ISR_TC4_SHIFT	 = 9,
+	RTD1319_ISO_ISR_TC7_SHIFT	 = 10,
+	RTD1319_ISO_ISR_I2C1_SHIFT	 = 11,
+	RTD1319_ISO_ISR_RTC_HSEC_SHIFT	 = 12,
+	RTD1319_ISO_ISR_RTC_ALARM_SHIFT	 = 13,
+	RTD1319_ISO_ISR_GPIOA_SHIFT	 = 19,
+	RTD1319_ISO_ISR_GPIODA_SHIFT	 = 20,
+	RTD1319_ISO_ISR_ISO_MISC_SHIFT	 = 21,
+	RTD1319_ISO_ISR_CBUS_SHIFT	 = 22,
+	RTD1319_ISO_ISR_ETN_SHIFT	 = 23,
+	RTD1319_ISO_ISR_USB_HOST_SHIFT	 = 24,
+	RTD1319_ISO_ISR_USB_U3_DRD_SHIFT = 25,
+	RTD1319_ISO_ISR_USB_U2_DRD_SHIFT = 26,
+	RTD1319_ISO_ISR_PORB_HV_SHIFT	 = 28,
+	RTD1319_ISO_ISR_PORB_DV_SHIFT	 = 29,
+	RTD1319_ISO_ISR_PORB_AV_SHIFT	 = 30,
+	RTD1319_ISO_ISR_I2C1_REQ_SHIFT	 = 31,
+};
+
+static const u32 rtd1319_iso_isr_to_scpu_int_en_mask[32] = {
+	[RTD1319_ISO_ISR_SPI1_SHIFT]	  = BIT(1),
+	[RTD1319_ISO_ISR_UR0_SHIFT]	  = BIT(2),
+	[RTD1319_ISO_ISR_LSADC0_SHIFT]	  = BIT(3),
+	[RTD1319_ISO_ISR_IRDA_SHIFT]	  = BIT(5),
+	[RTD1319_ISO_ISR_I2C0_SHIFT]	  = BIT(8),
+	[RTD1319_ISO_ISR_I2C1_SHIFT]	  = BIT(11),
+	[RTD1319_ISO_ISR_RTC_HSEC_SHIFT]  = BIT(12),
+	[RTD1319_ISO_ISR_RTC_ALARM_SHIFT] = BIT(13),
+	[RTD1319_ISO_ISR_GPIOA_SHIFT]	  = BIT(19),
+	[RTD1319_ISO_ISR_GPIODA_SHIFT]	  = BIT(20),
+	[RTD1319_ISO_ISR_PORB_HV_SHIFT]	  = BIT(28),
+	[RTD1319_ISO_ISR_PORB_DV_SHIFT]	  = BIT(29),
+	[RTD1319_ISO_ISR_PORB_AV_SHIFT]	  = BIT(30),
+	[RTD1319_ISO_ISR_I2C1_REQ_SHIFT]  = BIT(31),
+};
+
+enum rtd1319_misc_isr_bits {
+	RTD1319_ISR_WDOG_NMI_SHIFT = 2,
+	RTD1319_ISR_UR1_SHIFT	   = 3,
+	RTD1319_ISR_TC5_SHIFT	   = 4,
+	RTD1319_ISR_UR1_TO_SHIFT   = 5,
+	RTD1319_ISR_TC0_SHIFT	   = 6,
+	RTD1319_ISR_TC1_SHIFT	   = 7,
+	RTD1319_ISR_UR2_SHIFT	   = 8,
+	RTD1319_ISR_RTC_HSEC_SHIFT = 9,
+	RTD1319_ISR_RTC_MIN_SHIFT  = 10,
+	RTD1319_ISR_RTC_HOUR_SHIFT = 11,
+	RTD1319_ISR_RTC_DATE_SHIFT = 12,
+	RTD1319_ISR_UR2_TO_SHIFT   = 13,
+	RTD1319_ISR_I2C5_SHIFT	   = 14,
+	RTD1319_ISR_I2C3_SHIFT	   = 23,
+	RTD1319_ISR_SC0_SHIFT	   = 24,
+	RTD1319_ISR_SC1_SHIFT	   = 25,
+	RTD1319_ISR_SPI_SHIFT	   = 27,
+	RTD1319_ISR_FAN_SHIFT	   = 29,
+};
+
+static const u32 rtd1319_misc_isr_to_scpu_int_en_mask[32] = {
+	[RTD1319_ISR_UR1_SHIFT]	     = BIT(3),
+	[RTD1319_ISR_UR1_TO_SHIFT]   = BIT(5),
+	[RTD1319_ISR_UR2_TO_SHIFT]   = BIT(6),
+	[RTD1319_ISR_UR2_SHIFT]	     = BIT(7),
+	[RTD1319_ISR_RTC_MIN_SHIFT]  = BIT(10),
+	[RTD1319_ISR_RTC_HOUR_SHIFT] = BIT(11),
+	[RTD1319_ISR_RTC_DATE_SHIFT] = BIT(12),
+	[RTD1319_ISR_I2C5_SHIFT]     = BIT(14),
+	[RTD1319_ISR_SC0_SHIFT]	     = BIT(24),
+	[RTD1319_ISR_SC1_SHIFT]	     = BIT(25),
+	[RTD1319_ISR_SPI_SHIFT]	     = BIT(27),
+	[RTD1319_ISR_I2C3_SHIFT]     = BIT(28),
+	[RTD1319_ISR_FAN_SHIFT]	     = BIT(29),
+	[RTD1319_ISR_WDOG_NMI_SHIFT] = IRQ_ALWAYS_ENABLED,
+};
+
+static struct realtek_intc_subset_cfg rtd1319_intc_iso_cfgs[] = {
+	{ ISO_NORMAL_MASK, },
+	{ ISO_RTC_MASK, },
+};
+
+static const struct realtek_intc_info rtd1319_intc_iso_info = {
+	.isr_offset		 = ISO_ISR_OFFSET,
+	.umsk_isr_offset	 = ISO_ISR_UMSK_OFFSET,
+	.scpu_int_en_offset	 = ISO_ISR_EN_OFFSET,
+	.isr_to_scpu_int_en_mask = rtd1319_iso_isr_to_scpu_int_en_mask,
+	.cfg			 = rtd1319_intc_iso_cfgs,
+	.cfg_num		 = ARRAY_SIZE(rtd1319_intc_iso_cfgs),
+};
+
+static struct realtek_intc_subset_cfg rtd1319_intc_misc_cfgs[] = {
+	{ MISC_NORMAL_MASK, },
+	{ MISC_NMI_WDT_MASK, },
+	{ MISC_UART1_MASK, },
+	{ MISC_UART2_MASK, },
+};
+
+static const struct realtek_intc_info rtd1319_intc_misc_info = {
+	.isr_offset		 = MISC_ISR_OFFSET,
+	.umsk_isr_offset	 = MISC_ISR_UMSK_OFFSET,
+	.scpu_int_en_offset	 = MISC_ISR_EN_OFFSET,
+	.isr_to_scpu_int_en_mask = rtd1319_misc_isr_to_scpu_int_en_mask,
+	.cfg			 = rtd1319_intc_misc_cfgs,
+	.cfg_num		 = ARRAY_SIZE(rtd1319_intc_misc_cfgs),
+};
+
+static const struct of_device_id realtek_intc_rtd1319_dt_matches[] = {
+	{
+		.compatible = "realtek,rtd1319-intc-iso",
+		.data = &rtd1319_intc_iso_info,
+	}, {
+		.compatible = "realtek,rtd1319-intc-misc",
+		.data = &rtd1319_intc_misc_info,
+	},
+	{ /* sentinel */ }
+};
+
+static int realtek_intc_rtd1319_suspend(struct device *dev)
+{
+	struct realtek_intc_data *data = dev_get_drvdata(dev);
+	const struct realtek_intc_info *info = data->info;
+
+	data->saved_en = readl(data->base + info->scpu_int_en_offset);
+
+	writel(DISABLE_INTC, data->base + info->scpu_int_en_offset);
+	writel(CLEAN_INTC_STATUS, data->base + info->umsk_isr_offset);
+	writel(CLEAN_INTC_STATUS, data->base + info->isr_offset);
+
+	return 0;
+}
+
+static int realtek_intc_rtd1319_resume(struct device *dev)
+{
+	struct realtek_intc_data *data = dev_get_drvdata(dev);
+	const struct realtek_intc_info *info = data->info;
+
+	writel(CLEAN_INTC_STATUS, data->base + info->umsk_isr_offset);
+	writel(CLEAN_INTC_STATUS, data->base + info->isr_offset);
+	writel(data->saved_en, data->base + info->scpu_int_en_offset);
+
+	return 0;
+}
+
+static const struct dev_pm_ops realtek_intc_rtd1319_pm_ops = {
+	.suspend_noirq = realtek_intc_rtd1319_suspend,
+	.resume_noirq  = realtek_intc_rtd1319_resume,
+};
+
+static int rtd1319_intc_probe(struct platform_device *pdev)
+{
+	const struct realtek_intc_info *info;
+
+	info = of_device_get_match_data(&pdev->dev);
+	if (!info)
+		return -EINVAL;
+
+	return realtek_intc_probe(pdev, info);
+}
+
+static struct platform_driver realtek_intc_rtd1319_driver = {
+	.probe = rtd1319_intc_probe,
+	.driver = {
+		.name = "realtek_intc_rtd1319",
+		.of_match_table = realtek_intc_rtd1319_dt_matches,
+		.suppress_bind_attrs = true,
+		.pm = &realtek_intc_rtd1319_pm_ops,
+	},
+};
+
+static int __init realtek_intc_rtd1319_init(void)
+{
+	return platform_driver_register(&realtek_intc_rtd1319_driver);
+}
+core_initcall(realtek_intc_rtd1319_init);
+
+static void __exit realtek_intc_rtd1319_exit(void)
+{
+	platform_driver_unregister(&realtek_intc_rtd1319_driver);
+}
+module_exit(realtek_intc_rtd1319_exit);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("Realtek RTD1319 Interrupt Controller Driver");
-- 
2.25.1


