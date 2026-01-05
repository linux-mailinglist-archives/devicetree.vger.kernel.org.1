Return-Path: <devicetree+bounces-251483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 475A0CF3745
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 13:14:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 38881303C113
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 12:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38573337681;
	Mon,  5 Jan 2026 12:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="qPgHer/+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894A03375D5;
	Mon,  5 Jan 2026 12:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767614659; cv=none; b=bbHWZkRk6aBtjwSPRxwhOwAAMhKpXphb0RddYxDMq9Jhp/bDe31wxZazFqCacriYU5ryvCIH5LuB9YlPbXZPpjyWwrICuqV9ETKT5p0agyRgXbsELTaiX+jzxQTftP7Tm8wHpZePA4leFc0aQDXHD0e9D2GQYq6sg1zIo0OLx2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767614659; c=relaxed/simple;
	bh=3ALxm70PAVEUD9Hnk2zmnRcTi9oEs/ddNCJhE1MFW8Q=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mAygBBLg/um2hDw/lCLUCGtVK34GUrbZ55JDlRJuSwkNULFoWwcr0m6/LK+i6isGbDitdDDlR0qrsIBih8Lxe9yJMvTWIDu6ztZ4Ux33Cc/V/9AQtH+ofO8FPQol4mPj/hlWLY1q3KtOuStICd0hnsoLVIivfiBU+BHKDzV+tZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=qPgHer/+; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605AEMpa2218208;
	Mon, 5 Jan 2026 07:04:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=7eDxv
	E1TsUjwNsmOqJwDT+rwLi3+nrADBNZTyY2SoaE=; b=qPgHer/+UCU+ZI/XzI0iG
	5ACx5Oz4yQQ0jROYbHW01p7Ndw4siG1418RyBqUhjP9qcdxdQpbX8yEGMH7zfnfT
	CbutK5kYBhm9oODcX+hZjKb7TTILQGO0UgKSUZkKv/300fOBi1DrPY0J7j8Onlym
	k8kpegFR1/b3UvFhX4hGbYnnzTPe4roS7asB1aWPDblt8V2hTs3a9wi6Ew0aiAOJ
	gbSXPlozbUfqn3cUdXj0g7UgaPK2Lq56RwHQbogY6rDQpxnk2p6Ob15FjN50Pbe5
	HpuLONISq4SRZzCydThm5dkpcp7CCCOk2ZxIK6fN04bBinzes9a7ZctTaXNLzN1e
	w==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4bgbcegb7c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 05 Jan 2026 07:04:08 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 605C47gc038604
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 5 Jan 2026 07:04:07 -0500
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Mon, 5 Jan 2026 07:04:07 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.37; Mon, 5 Jan 2026 07:04:06 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Mon, 5 Jan 2026 07:04:06 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com ([10.32.13.98])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 605C3Sja015791;
	Mon, 5 Jan 2026 07:03:59 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Antoniu
 Miclaus" <antoniu.miclaus@analog.com>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/2] mux: adg2404: add driver support
Date: Mon, 5 Jan 2026 14:00:31 +0200
Message-ID: <20260105120117.57607-3-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260105120117.57607-1-antoniu.miclaus@analog.com>
References: <20260105120117.57607-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Authority-Analysis: v=2.4 cv=b4C/I9Gx c=1 sm=1 tr=0 ts=695ba8b8 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gAnH3GRIAAAA:8
 a=o4IEqcIzuIU0VZSRl5oA:9
X-Proofpoint-GUID: AvLNWCWROnp7E7e5B4FykpW_9wMRERHs
X-Proofpoint-ORIG-GUID: AvLNWCWROnp7E7e5B4FykpW_9wMRERHs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDEwNSBTYWx0ZWRfX0vGOz21U6R3P
 YyMfDlKeXsOSh3Nhd4k+02S9MHpbxLMDrmBW7fn3Usg6kpcy4tFery5x/nsaUK6Rlfqjvq//20g
 ObE6AYm/U8mlO++y8t15dN0U1bU2jovATBu+ZzIASReHmTeR4UkyUmufcQtAyXztxYJQ7xyiASB
 ONzoICP9eZzNiJf7EBe0w8xn1/FTfY0jLSYOapXNJ1f7av1Uj38vjTf1OFe7vxcrNF8zxses2+N
 U7VzEtdJV2y9MvnRT79sp3ZsNEy3kcj5cMqAzPSTKy9wH0nRt2AR4WIFGO8QVye8G3mEcQaW3ut
 T2JILl8GfceaCvGlWg/5GXRGhQ8rhwhb4ijCX7qIXoORpCAitkJ7veBDvsuddDIAle+3h/cFfRG
 aPjvybTaFmZip16K8WmnL5pJn1O86CNfiVmDlYRHbadvzlJAagk6seZ5LmqTeT/NT0eTtHA4VtC
 XaVGOKMT5L+pvhdBr9Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 phishscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050105

Add support for ADG2404, a 4:1 analog multiplexer.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
changes in v2:
 * rename addr_gpios to mux_gpios
 * rename en_gpio to enable_gpio
 * update GPIO names: "addr" to "mux", "en" to "enable"
 * remove dev_info message
---
 drivers/mux/Kconfig   |  12 ++++
 drivers/mux/Makefile  |   2 +
 drivers/mux/adg2404.c | 130 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 144 insertions(+)
 create mode 100644 drivers/mux/adg2404.c

diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
index c68132e38138..5aba66e6e210 100644
--- a/drivers/mux/Kconfig
+++ b/drivers/mux/Kconfig
@@ -9,6 +9,18 @@ config MULTIPLEXER
 menu "Multiplexer drivers"
 	depends on MULTIPLEXER
 
+config MUX_ADG2404
+	tristate "Analog Devices ADG2404 Multiplexer"
+	depends on GPIOLIB || COMPILE_TEST
+	help
+	  ADG2404 4:1 single-ended analog multiplexer controlled by GPIO.
+
+	  The multiplexer state is controlled by 3 GPIO pins: A0, A1
+	  (address selection) and EN (enable).
+
+	  To compile the driver as a module, choose M here: the module will
+	  be called mux-adg2404.
+
 config MUX_ADG792A
 	tristate "Analog Devices ADG792A/ADG792G Multiplexers"
 	depends on I2C
diff --git a/drivers/mux/Makefile b/drivers/mux/Makefile
index 6e9fa47daf56..d3df403f8978 100644
--- a/drivers/mux/Makefile
+++ b/drivers/mux/Makefile
@@ -4,12 +4,14 @@
 #
 
 mux-core-objs			:= core.o
+mux-adg2404-objs		:= adg2404.o
 mux-adg792a-objs		:= adg792a.o
 mux-adgs1408-objs		:= adgs1408.o
 mux-gpio-objs			:= gpio.o
 mux-mmio-objs			:= mmio.o
 
 obj-$(CONFIG_MULTIPLEXER)	+= mux-core.o
+obj-$(CONFIG_MUX_ADG2404)	+= mux-adg2404.o
 obj-$(CONFIG_MUX_ADG792A)	+= mux-adg792a.o
 obj-$(CONFIG_MUX_ADGS1408)	+= mux-adgs1408.o
 obj-$(CONFIG_MUX_GPIO)		+= mux-gpio.o
diff --git a/drivers/mux/adg2404.c b/drivers/mux/adg2404.c
new file mode 100644
index 000000000000..11c3b81ff481
--- /dev/null
+++ b/drivers/mux/adg2404.c
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Analog Devices ADG2404 4:1 multiplexer driver
+ *
+ * Copyright 2025 Analog Devices Inc.
+ *
+ * Author: Antoniu Miclaus <antoniu.miclaus@analog.com>
+ */
+
+#include <linux/bitmap.h>
+#include <linux/err.h>
+#include <linux/gpio/consumer.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/mux/driver.h>
+#include <linux/platform_device.h>
+#include <linux/property.h>
+
+#define ADG2404_CHANNELS	4
+
+struct adg2404_mux {
+	struct gpio_descs *mux_gpios;
+	struct gpio_desc *enable_gpio;
+};
+
+static int adg2404_set(struct mux_control *mux, int state)
+{
+	struct adg2404_mux *adg2404 = mux_chip_priv(mux->chip);
+	DECLARE_BITMAP(values, BITS_PER_TYPE(state));
+	u32 value = state;
+
+	if (state == MUX_IDLE_DISCONNECT) {
+		gpiod_set_value_cansleep(adg2404->enable_gpio, 0);
+		return 0;
+	}
+
+	/*
+	 * Disable the mux before changing address lines to prevent
+	 * glitches. Changing address while enabled could briefly activate
+	 * an unintended channel during the transition.
+	 */
+	gpiod_set_value_cansleep(adg2404->enable_gpio, 0);
+
+	bitmap_from_arr32(values, &value, BITS_PER_TYPE(value));
+	gpiod_set_array_value_cansleep(adg2404->mux_gpios->ndescs,
+				       adg2404->mux_gpios->desc,
+				       adg2404->mux_gpios->info,
+				       values);
+
+	/* Enable the mux with the new address */
+	gpiod_set_value_cansleep(adg2404->enable_gpio, 1);
+
+	return 0;
+}
+
+static const struct mux_control_ops adg2404_ops = {
+	.set = adg2404_set,
+};
+
+static int adg2404_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mux_chip *mux_chip;
+	struct adg2404_mux *adg2404;
+	s32 idle_state;
+	int ret;
+
+	mux_chip = devm_mux_chip_alloc(dev, 1, sizeof(*adg2404));
+	if (IS_ERR(mux_chip))
+		return PTR_ERR(mux_chip);
+
+	adg2404 = mux_chip_priv(mux_chip);
+	mux_chip->ops = &adg2404_ops;
+
+	adg2404->mux_gpios = devm_gpiod_get_array(dev, "mux", GPIOD_OUT_LOW);
+	if (IS_ERR(adg2404->mux_gpios))
+		return dev_err_probe(dev, PTR_ERR(adg2404->mux_gpios),
+				     "failed to get mux gpios\n");
+
+	if (adg2404->mux_gpios->ndescs != 2)
+		return dev_err_probe(dev, -EINVAL,
+				     "mux-gpios must have exactly 2 GPIOs\n");
+
+	adg2404->enable_gpio = devm_gpiod_get(dev, "enable", GPIOD_OUT_LOW);
+	if (IS_ERR(adg2404->enable_gpio))
+		return dev_err_probe(dev, PTR_ERR(adg2404->enable_gpio),
+				     "failed to get enable gpio\n");
+
+	mux_chip->mux->states = ADG2404_CHANNELS;
+
+	ret = device_property_read_u32(dev, "idle-state", (u32 *)&idle_state);
+	if (ret < 0)
+		idle_state = MUX_IDLE_AS_IS;
+
+	switch (idle_state) {
+	case MUX_IDLE_DISCONNECT:
+	case MUX_IDLE_AS_IS:
+	case 0 ... ADG2404_CHANNELS - 1:
+		mux_chip->mux->idle_state = idle_state;
+		break;
+	default:
+		dev_err(dev, "invalid idle-state %d\n", idle_state);
+		return -EINVAL;
+	}
+
+	ret = devm_mux_chip_register(dev, mux_chip);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static const struct of_device_id adg2404_dt_ids[] = {
+	{ .compatible = "adi,adg2404", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, adg2404_dt_ids);
+
+static struct platform_driver adg2404_driver = {
+	.driver = {
+		.name = "adg2404",
+		.of_match_table	= adg2404_dt_ids,
+	},
+	.probe = adg2404_probe,
+};
+module_platform_driver(adg2404_driver);
+
+MODULE_DESCRIPTION("Analog Devices ADG2404 multiplexer driver");
+MODULE_AUTHOR("Antoniu Miclaus <antoniu.miclaus@analog.com>");
+MODULE_LICENSE("GPL");
-- 
2.43.0


