Return-Path: <devicetree+bounces-251476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB63CF364F
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 12:59:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 43201300293A
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 11:59:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08538330B07;
	Mon,  5 Jan 2026 11:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="pDJ07pyi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495BF32FA20;
	Mon,  5 Jan 2026 11:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767614381; cv=none; b=WmLeQU/XWglT5DoXyBdhRNRG7IeKQqD74C0ax7rg3p8TDvH2NSOyZDYClQJAWO6OBbIA8QVRa9wHCOlOi+dMUURSAM8VwuXHl3RUyXTDuMEsHPiBiekMszM/BxurixyS8AQaQsJ3vk92jPwcw5YQHK0zPzidkyVLzeYwdbJShYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767614381; c=relaxed/simple;
	bh=WDiHLsjUXG/gPjyDEf3wRceVTP7G7qiRAWp4qd+aB90=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=O7+S423nMQSnvFfegJVLpy5a7MyNs6dqz16UImhixSQBBxjsv0U8NGcAaw5pdB4SOgrgkEmo6yHlAkXw1UR1heOTsB8i5Umck3qXgtABgCRE/b5m/Fp7qpAJfxeH8biMj9FpImUOe6X9jrf88RgzxLgYdFYGXfm0ikyFnZKX9cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=pDJ07pyi; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605AERls2218350;
	Mon, 5 Jan 2026 06:59:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=vsqlG
	9uy6bEjkHMMO1fdJBeh7NEdxOdu0s8RQa+0ZwY=; b=pDJ07pyiqu7eKr4s5FS3E
	t/sYJ8CMBqaQMeApVysSZZmTwQMzUqvLVUMxjuNL00JDFFNkPDw5pre3CvfytZGg
	M9/i2ea7zzlfOEgYUTgmVWLfPOdWzh2QZ/n/VgXMt0QdNgUKpN8bYcIKPHWEDSZD
	CtEBbMVmNUx/QHLuZtOIrUep3KwB8hVSAzyUKe9/IqQc+AFQ0ThL97Fy6PDsCUtm
	iLPHOh+b1bmqcTF0aJxwsf5BIx4KzHQjUpygcjfuvEYTBMye1D6mMmZ2nrYp9iw3
	JQCBC3XZplh5R1P1EzpVxW/vbJHnBY5TLChFCSYqp1oD9lQ+DQ5EmP3lf9yK52i/
	Q==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4bgbcegama-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 05 Jan 2026 06:59:31 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 605BxUxQ037619
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 5 Jan 2026 06:59:30 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Mon, 5 Jan
 2026 06:59:30 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Mon, 5 Jan 2026 06:59:29 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com ([10.32.13.98])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 605BwsSu014872;
	Mon, 5 Jan 2026 06:59:23 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
        Antoniu Miclaus
	<antoniu.miclaus@analog.com>,
        Arnd Bergmann <arnd@arndb.de>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/2] mux: adg1736: add driver support
Date: Mon, 5 Jan 2026 13:57:57 +0200
Message-ID: <20260105115825.57032-3-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260105115825.57032-1-antoniu.miclaus@analog.com>
References: <20260105115825.57032-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Authority-Analysis: v=2.4 cv=b4C/I9Gx c=1 sm=1 tr=0 ts=695ba7a3 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gAnH3GRIAAAA:8
 a=BqQK6mSdUCODrsEznTYA:9
X-Proofpoint-GUID: OQAc_4LYdatOXO8QxpNMANoxaepVj6wJ
X-Proofpoint-ORIG-GUID: OQAc_4LYdatOXO8QxpNMANoxaepVj6wJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDEwNSBTYWx0ZWRfX6+S+nJeugPQx
 FSjzvGI33W76sr6TTJBj2/D6/GFeCgi770BwkAl9b8biW1WPBoA5CkY+UmxdkG/vRLuBhwSE9VB
 WTdS2ItwCS9Dc6mNfls3oSDNw4sF8iORYx9QRhmyShYKua7mYaBKfgcJogIofmBTEAvvxPy52kZ
 9ZXpYV/jI/LC8cAIq5txGyl5xso/lgdS9XMYSzoCRXQzSSdNvwvNu1XthMR6iCBegb6T0cc2w1t
 qSEQhPa2Khypf/VtPMkR8wgiUkHJD8WBOBsDxHBBrKYOugMnfXM1zeAZ0dxX8nXNkIZaG2w3juo
 fGRkjd79uFGfuV0X1z5mzDKaM6upk1fvI3go8rsgVCn/SReflES3CvWAixU70/suO+xqJjB7Q1d
 rGTrtipaYwejD2vhn77O+/iVNm9Hc9Nv+yqgM/XRFH3WTQOQ3Vx0apLttzKC0AcCJgth5cDdb7N
 StX8QzdUmgmKzb+s/MQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 phishscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050105

Add support for ADG1736, a dual SPDT (single-pole, double-throw)
switch. The device features two independent 2:1 analog multiplexers,
each controlled by a GPIO pin. Each switch connects its drain
terminal (D) to one of two source terminals (SA or SB) based on
the control input state.

The driver implements two independent mux controllers with a shared
enable GPIO that can disable all switches when set low. Each mux
controller supports idle-state configuration for disconnecting
when not in use.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
changes in v2:
 * rename ctrl_gpios to mux_gpios
 * rename en_gpio to enable_gpio
 * update GPIO names: "ctrl" to "mux", "en" to "enable"
 * remove dev_info message
---
 drivers/mux/Kconfig   |  12 ++++
 drivers/mux/Makefile  |   2 +
 drivers/mux/adg1736.c | 140 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 154 insertions(+)
 create mode 100644 drivers/mux/adg1736.c

diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
index c68132e38138..bdf16e0983cc 100644
--- a/drivers/mux/Kconfig
+++ b/drivers/mux/Kconfig
@@ -21,6 +21,18 @@ config MUX_ADG792A
 	  To compile the driver as a module, choose M here: the module will
 	  be called mux-adg792a.
 
+config MUX_ADG1736
+	tristate "Analog Devices ADG1736 Dual SPDT Switch Multiplexer"
+	depends on GPIOLIB || COMPILE_TEST
+	help
+	  ADG1736 Dual SPDT (single-pole, double-throw) Switch.
+
+	  The driver supports two independent 2:1 multiplexers, each
+	  controlled by a GPIO pin.
+
+	  To compile the driver as a module, choose M here: the module will
+	  be called mux-adg1736.
+
 config MUX_ADGS1408
 	tristate "Analog Devices ADGS1408/ADGS1409 Multiplexers"
 	depends on SPI
diff --git a/drivers/mux/Makefile b/drivers/mux/Makefile
index 6e9fa47daf56..f1497c319bcf 100644
--- a/drivers/mux/Makefile
+++ b/drivers/mux/Makefile
@@ -5,12 +5,14 @@
 
 mux-core-objs			:= core.o
 mux-adg792a-objs		:= adg792a.o
+mux-adg1736-objs		:= adg1736.o
 mux-adgs1408-objs		:= adgs1408.o
 mux-gpio-objs			:= gpio.o
 mux-mmio-objs			:= mmio.o
 
 obj-$(CONFIG_MULTIPLEXER)	+= mux-core.o
 obj-$(CONFIG_MUX_ADG792A)	+= mux-adg792a.o
+obj-$(CONFIG_MUX_ADG1736)	+= mux-adg1736.o
 obj-$(CONFIG_MUX_ADGS1408)	+= mux-adgs1408.o
 obj-$(CONFIG_MUX_GPIO)		+= mux-gpio.o
 obj-$(CONFIG_MUX_MMIO)		+= mux-mmio.o
diff --git a/drivers/mux/adg1736.c b/drivers/mux/adg1736.c
new file mode 100644
index 000000000000..90408d455a48
--- /dev/null
+++ b/drivers/mux/adg1736.c
@@ -0,0 +1,140 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Analog Devices ADG1736 Dual SPDT Switch Multiplexer driver
+ *
+ * Copyright 2025 Analog Devices Inc.
+ *
+ * Author: Antoniu Miclaus <antoniu.miclaus@analog.com>
+ */
+
+#include <linux/err.h>
+#include <linux/gpio/consumer.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/mux/driver.h>
+#include <linux/platform_device.h>
+#include <linux/property.h>
+
+#define ADG1736_MUX_CONTROLLERS	2
+#define ADG1736_MUX_STATES	2
+
+struct adg1736_mux {
+	struct gpio_desc *mux_gpios[ADG1736_MUX_CONTROLLERS];
+	struct gpio_desc *enable_gpio;
+};
+
+static int adg1736_set(struct mux_control *mux, int state)
+{
+	struct adg1736_mux *adg1736 = mux_chip_priv(mux->chip);
+	unsigned int controller = mux_control_get_index(mux);
+
+	if (controller >= ADG1736_MUX_CONTROLLERS)
+		return -EINVAL;
+
+	if (state == MUX_IDLE_DISCONNECT) {
+		/* When idle disconnect is requested, disable the EN pin */
+		if (controller == 0)
+			gpiod_set_value_cansleep(adg1736->enable_gpio, 0);
+		return 0;
+	}
+
+	/* Set the control GPIO for this mux controller */
+	gpiod_set_value_cansleep(adg1736->mux_gpios[controller], state);
+
+	/* Enable the mux if disabled */
+	gpiod_set_value_cansleep(adg1736->enable_gpio, 1);
+
+	return 0;
+}
+
+static const struct mux_control_ops adg1736_ops = {
+	.set = adg1736_set,
+};
+
+static int adg1736_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mux_chip *mux_chip;
+	struct adg1736_mux *adg1736;
+	s32 idle_state[ADG1736_MUX_CONTROLLERS];
+	char gpio_name[16];
+	int ret, i;
+
+	mux_chip = devm_mux_chip_alloc(dev, ADG1736_MUX_CONTROLLERS,
+				       sizeof(*adg1736));
+	if (IS_ERR(mux_chip))
+		return PTR_ERR(mux_chip);
+
+	adg1736 = mux_chip_priv(mux_chip);
+	mux_chip->ops = &adg1736_ops;
+
+	/* Get control GPIOs (IN1, IN2) */
+	for (i = 0; i < ADG1736_MUX_CONTROLLERS; i++) {
+		snprintf(gpio_name, sizeof(gpio_name), "mux%d", i);
+		adg1736->mux_gpios[i] = devm_gpiod_get_index(dev, "mux", i,
+							     GPIOD_OUT_LOW);
+		if (IS_ERR(adg1736->mux_gpios[i]))
+			return dev_err_probe(dev, PTR_ERR(adg1736->mux_gpios[i]),
+					     "failed to get mux%d gpio\n", i);
+	}
+
+	/* Get enable GPIO (EN) */
+	adg1736->enable_gpio = devm_gpiod_get(dev, "enable", GPIOD_OUT_LOW);
+	if (IS_ERR(adg1736->enable_gpio))
+		return dev_err_probe(dev, PTR_ERR(adg1736->enable_gpio),
+				     "failed to get enable gpio\n");
+
+	/* Read idle-state property */
+	ret = device_property_read_u32_array(dev, "idle-state",
+					     (u32 *)idle_state,
+					     ADG1736_MUX_CONTROLLERS);
+	if (ret < 0) {
+		/* Default to AS_IS if not specified */
+		idle_state[0] = MUX_IDLE_AS_IS;
+		idle_state[1] = MUX_IDLE_AS_IS;
+	}
+
+	/* Configure each mux controller */
+	for (i = 0; i < ADG1736_MUX_CONTROLLERS; i++) {
+		struct mux_control *mux = &mux_chip->mux[i];
+
+		mux->states = ADG1736_MUX_STATES;
+
+		switch (idle_state[i]) {
+		case MUX_IDLE_DISCONNECT:
+		case MUX_IDLE_AS_IS:
+		case 0 ... ADG1736_MUX_STATES - 1:
+			mux->idle_state = idle_state[i];
+			break;
+		default:
+			dev_err(dev, "invalid idle-state[%d] = %d\n",
+				i, idle_state[i]);
+			return -EINVAL;
+		}
+	}
+
+	ret = devm_mux_chip_register(dev, mux_chip);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static const struct of_device_id adg1736_dt_ids[] = {
+	{ .compatible = "adi,adg1736", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, adg1736_dt_ids);
+
+static struct platform_driver adg1736_driver = {
+	.driver = {
+		.name = "adg1736",
+		.of_match_table = adg1736_dt_ids,
+	},
+	.probe = adg1736_probe,
+};
+module_platform_driver(adg1736_driver);
+
+MODULE_DESCRIPTION("Analog Devices ADG1736 Dual SPDT Switch Multiplexer driver");
+MODULE_AUTHOR("Antoniu Miclaus <antoniu.miclaus@analog.com>");
+MODULE_LICENSE("GPL");
-- 
2.43.0


