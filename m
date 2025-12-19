Return-Path: <devicetree+bounces-248248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1052CCD0495
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 15:35:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A447A303D262
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 226F8337BB2;
	Fri, 19 Dec 2025 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="bmuWAXK/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9D2339B4F;
	Fri, 19 Dec 2025 14:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766154893; cv=none; b=JPuK/E1Tglrxi+oL4RSPD/EoI/181ypENhgyO73avG2wY3jGJiBmy9TNMMvhvphNXqvEHbEhdLcklZcNHZ14yvy9ID//mt88FnMzxIkmvD7DmuCoxPrv2hMTszqR0Wkx29VxXL7c5TiaZjsiB0wq8txNDeJGCMT5aHNrMy/iF3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766154893; c=relaxed/simple;
	bh=85N/uVm8oFQpFlS2DUn3XtcE/2fmVkR/OTOeQHU9Sp4=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=E0cECvO3sC2kmAqUG9G6NYHOd/JuhnwKEZSwhXEANYzrcg34XE+l2oTkUz+BZYst8f/ljRnAuYkfL6ttLZsyXTe+xcV9FaVMYd5txPk9znVtPffjUlwguRIEgNUsoo2wmSJ+67a+pAb3zTpn7NxUn02EnYYCYGQvroUFz+v7cVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=bmuWAXK/; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJEPkRo799637;
	Fri, 19 Dec 2025 09:34:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=VqTqm
	Je9XWj3TAcuV6VD0c35ViSW6MJhuvvbaq/jdn8=; b=bmuWAXK/ktlgppP4isZPK
	JoMIXNoCC3wCIjd6TMSRe9XnBHIGDXoH6FIibJH7YgvhUS/OgPWl2aJCj3dupH71
	q9pHX0cKd3Pu5qZuuLm8+7J2rt4ufZGyWUFkbGbfDvR8xYs6enaw5AEzNfXODDts
	Qjp+jC5ACjnRJoPVP5cVQS5jo8vH75lRW8JrBAaWoL3dUMfZp/vS4BYX/dqDwEmv
	Xzf9j1NTTjXS5qVCQQeJ8UQtiRzTeJD/OVJjQzuQPScTYYxb6cEoGheEe3qPlp/E
	JpAe+ufZBzSMr+/+Po2LxMX2opwSV2v2aMvVvaSjKsVFW3IIKQeO+NaghsxYWxkH
	A==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4b4r3tvbgg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Dec 2025 09:34:43 -0500 (EST)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 5BJEYgug045157
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 19 Dec 2025 09:34:42 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Fri, 19 Dec
 2025 09:34:42 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Fri, 19 Dec 2025 09:34:42 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com ([10.32.13.98])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 5BJEY0kK001327;
	Fri, 19 Dec 2025 09:34:35 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Antoniu
 Miclaus <antoniu.miclaus@analog.com>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/2] mux: adg2404: add driver support
Date: Fri, 19 Dec 2025 16:31:45 +0200
Message-ID: <20251219143244.21674-3-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251219143244.21674-1-antoniu.miclaus@analog.com>
References: <20251219143244.21674-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: XzE6OALW7TtU1gcFbfKrJ_G2aCHiandI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEyMiBTYWx0ZWRfX9mzuybkXMqzo
 pnYNC++0DS+9SRNp98s9e6qNZZKSSnsdgM3Dbspu4b9HggIn+PiLqfLRsrBSJvlJmBK8J1/3M7v
 oKD1uCyucbbg0xnCWH3YUTR8npbTYXWTXC1y4E9ob11eI7aNSPLa3We72CsACBrUc47qZxyb/gJ
 fWDrrQ+A/oslJqM6DTMLA/06F2kSM7cAGszAp/n9Cv1qV1ZtE9tT2Al+9lxdayUTXVFH5ON7s++
 rGMYaZKS0GfZLiaxakbiTWx7t3NRaVvqsrrFHYvSd9wY1zTLVI3+L6uPg+PUjSOZ/RTm6+SJVH9
 DC1PKIGWEDYswWh+NPtomlBMY89ATClf7RnPYCvnE4NbGD6UIEhaDemWSWzkF/cBuMFRJlS2QP8
 VenQr3zmK2voTw8MS+crpkWAcfnGg7mRLqqytnYw+m9fKGBadFO6aUGYBkysuI2LsSYRlQ3bw5d
 hrfjaG42y0u83YrleNQ==
X-Proofpoint-GUID: XzE6OALW7TtU1gcFbfKrJ_G2aCHiandI
X-Authority-Analysis: v=2.4 cv=Ba3VE7t2 c=1 sm=1 tr=0 ts=69456283 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=wP3pNCr1ah4A:10 a=VkNPw1HP01LnGYTKEx00:22 a=gAnH3GRIAAAA:8
 a=o4IEqcIzuIU0VZSRl5oA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_05,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 bulkscore=0 phishscore=0 adultscore=0
 clxscore=1011 lowpriorityscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190122

Add support for ADG2404, a 4:1 analog multiplexer.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
 drivers/mux/Kconfig   |  12 ++++
 drivers/mux/Makefile  |   2 +
 drivers/mux/adg2404.c | 133 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 147 insertions(+)
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
index 000000000000..5e7352ac7290
--- /dev/null
+++ b/drivers/mux/adg2404.c
@@ -0,0 +1,133 @@
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
+	struct gpio_descs *addr_gpios;
+	struct gpio_desc *en_gpio;
+};
+
+static int adg2404_set(struct mux_control *mux, int state)
+{
+	struct adg2404_mux *adg2404 = mux_chip_priv(mux->chip);
+	DECLARE_BITMAP(values, BITS_PER_TYPE(state));
+	u32 value = state;
+
+	if (state == MUX_IDLE_DISCONNECT) {
+		gpiod_set_value_cansleep(adg2404->en_gpio, 0);
+		return 0;
+	}
+
+	/*
+	 * Disable the mux before changing address lines to prevent
+	 * glitches. Changing address while enabled could briefly activate
+	 * an unintended channel during the transition.
+	 */
+	gpiod_set_value_cansleep(adg2404->en_gpio, 0);
+
+	bitmap_from_arr32(values, &value, BITS_PER_TYPE(value));
+	gpiod_set_array_value_cansleep(adg2404->addr_gpios->ndescs,
+				       adg2404->addr_gpios->desc,
+				       adg2404->addr_gpios->info,
+				       values);
+
+	/* Enable the mux with the new address */
+	gpiod_set_value_cansleep(adg2404->en_gpio, 1);
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
+	adg2404->addr_gpios = devm_gpiod_get_array(dev, "addr", GPIOD_OUT_LOW);
+	if (IS_ERR(adg2404->addr_gpios))
+		return dev_err_probe(dev, PTR_ERR(adg2404->addr_gpios),
+				     "failed to get addr gpios\n");
+
+	if (adg2404->addr_gpios->ndescs != 2)
+		return dev_err_probe(dev, -EINVAL,
+				     "addr-gpios must have exactly 2 GPIOs\n");
+
+	adg2404->en_gpio = devm_gpiod_get(dev, "en", GPIOD_OUT_LOW);
+	if (IS_ERR(adg2404->en_gpio))
+		return dev_err_probe(dev, PTR_ERR(adg2404->en_gpio),
+				     "failed to get en gpio\n");
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
+	dev_info(dev, "ADG2404 %u-way mux-controller registered\n",
+		 mux_chip->mux->states);
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


