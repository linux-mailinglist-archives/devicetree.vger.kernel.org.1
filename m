Return-Path: <devicetree+bounces-50362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1182887B4B9
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 23:58:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF34D2877F8
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 22:58:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92DBE5D8F0;
	Wed, 13 Mar 2024 22:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=savoirfairelinux.com header.i=@savoirfairelinux.com header.b="NDwWlu09"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428E95CDF3;
	Wed, 13 Mar 2024 22:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=208.88.110.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710370694; cv=none; b=vFKa8Aj759J7YAsW5IIgG8epqjDXhNJbIkjgDt39nWwFuHsegUCEihaJ/8sWrRqfWvDGfrQ/eoK/TIZ3mpmQ+T4fX5V6klgeKTRnAwgxg3RL8mN0kGvf32xhLFCl1fchHO+TJZ3ZguxqjFEpY8TeOKjQwINBJX957GkQU1Kabu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710370694; c=relaxed/simple;
	bh=vK6OC1NOAdYGHrmArZ2wWf7aQgHPzHDVWg61+r6dHMs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Oq5GweeLoVMMpluoLO1dO5NvzLihJQ7pVi7/hPrOIRu6/TM8hxcCqSxi1wtwwOjb+sCRw/nFg7b5fD6jPdtHopYZNSpscRPi4OQyXqK4JWWyMuXg7uDnFStqpRjfqqJfusluY7Ymk12CFX+KpI+L6ZzCkWmWAl6UODyPSI7ab4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=savoirfairelinux.com; spf=pass smtp.mailfrom=savoirfairelinux.com; dkim=pass (2048-bit key) header.d=savoirfairelinux.com header.i=@savoirfairelinux.com header.b=NDwWlu09; arc=none smtp.client-ip=208.88.110.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=savoirfairelinux.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=savoirfairelinux.com
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 03F4B9C540C;
	Wed, 13 Mar 2024 18:58:10 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id ENVZNywCXDln; Wed, 13 Mar 2024 18:58:07 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id E396E9C5409;
	Wed, 13 Mar 2024 18:58:06 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com E396E9C5409
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1710370686; bh=JrK2X0QfL4S+jYn8ZLi7qugu1dNqglZahm6lwT8MipY=;
	h=From:To:Date:Message-ID:MIME-Version;
	b=NDwWlu09bBybRApaaREOu8lVK9LD15/qTySjKdlFDUH81mA5ZY7oQTkA6Fh2w8MiU
	 6QVMxdDXxyEcFwT03WugftwXPRQGwL7koynT7GTlG0FfO7dEuXNxhzNjkOLl3Z0blB
	 YK9STqliCsr0LbN5lgE5tuTbzaH8YtrImdwDtaAgG+KqMNTswOdft/GsJErfeCpugb
	 r4nzCtQ2qNGCKm6ci3ypRWBYgjSxv9FMSDnaHhpwTIOcAukd20wmoGwr2HAUzQhQUR
	 8HUpp6k8/m8uh1dK0Sn1za8yyhLnV4733LMa3yoDTAd2cj2tNNwY3QyoQgg0SAsSUG
	 LQMdp6ELtA7ug==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id FoKEW6SLrBGx; Wed, 13 Mar 2024 18:58:06 -0400 (EDT)
Received: from pcperry.mtl.sfl (unknown [192.168.51.254])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id BD8559C5408;
	Wed, 13 Mar 2024 18:58:06 -0400 (EDT)
From: Charles Perry <charles.perry@savoirfairelinux.com>
To: mdf@kernel.org
Cc: avandiver@markem-imaje.com,
	bcody@markem-imaje.com,
	Charles Perry <charles.perry@savoirfairelinux.com>,
	Wu Hao <hao.wu@intel.com>,
	Xu Yilun <yilun.xu@intel.com>,
	Tom Rix <trix@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	linux-fpga@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 1/3] fpga: xilinx-spi: extract a common driver core
Date: Wed, 13 Mar 2024 18:57:35 -0400
Message-ID: <20240313225746.489253-2-charles.perry@savoirfairelinux.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240313225746.489253-1-charles.perry@savoirfairelinux.com>
References: <20240313225746.489253-1-charles.perry@savoirfairelinux.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Factor out the gpio handshaking (using PROGRAM_B, INIT_B and DONE)
protocol in xilinx-core so that it can be reused for another driver.
This commit does not change anything functionally to xilinx-spi.

xilinx-core expects drivers to provide a write(const char* buf,
size_t count) function that performs the actual write to the device,
as well as a struct device* for resource management.

Signed-off-by: Charles Perry <charles.perry@savoirfairelinux.com>
---
Changes since v4: (from Yilun review)
 * xilinx-core: use sizeof() instead of hardcoded immediate
 * xilinx-core: fix module compilation (EXPORT_SYMBOL_GPL, MODULE_LICENSE=
,
   MODULE_AUTHOR, MODULE_DESCRIPTION)
 * xilinx-core: add private/public qualifiers for struct xilinx_fpga_core
 * xilinx-spi: remove struct xilinx_spi_conf. This struct isn't needed as
   the struct spi_device* can be retrieved from the struct device*.

 drivers/fpga/Kconfig       |   4 +
 drivers/fpga/Makefile      |   1 +
 drivers/fpga/xilinx-core.c | 213 +++++++++++++++++++++++++++++++++++
 drivers/fpga/xilinx-core.h |  30 +++++
 drivers/fpga/xilinx-spi.c  | 220 +++----------------------------------
 5 files changed, 261 insertions(+), 207 deletions(-)
 create mode 100644 drivers/fpga/xilinx-core.c
 create mode 100644 drivers/fpga/xilinx-core.h

diff --git a/drivers/fpga/Kconfig b/drivers/fpga/Kconfig
index 2f689ac4ba3a3..d27a1ebf40838 100644
--- a/drivers/fpga/Kconfig
+++ b/drivers/fpga/Kconfig
@@ -64,9 +64,13 @@ config FPGA_MGR_STRATIX10_SOC
 	help
 	  FPGA manager driver support for the Intel Stratix10 SoC.

+config FPGA_MGR_XILINX_CORE
+	tristate
+
 config FPGA_MGR_XILINX_SPI
 	tristate "Xilinx Configuration over Slave Serial (SPI)"
 	depends on SPI
+	select FPGA_MGR_XILINX_CORE
 	help
 	  FPGA manager driver support for Xilinx FPGA configuration
 	  over slave serial interface.
diff --git a/drivers/fpga/Makefile b/drivers/fpga/Makefile
index 352a2612623e0..7ec795b6a5a70 100644
--- a/drivers/fpga/Makefile
+++ b/drivers/fpga/Makefile
@@ -15,6 +15,7 @@ obj-$(CONFIG_FPGA_MGR_SOCFPGA)		+=3D socfpga.o
 obj-$(CONFIG_FPGA_MGR_SOCFPGA_A10)	+=3D socfpga-a10.o
 obj-$(CONFIG_FPGA_MGR_STRATIX10_SOC)	+=3D stratix10-soc.o
 obj-$(CONFIG_FPGA_MGR_TS73XX)		+=3D ts73xx-fpga.o
+obj-$(CONFIG_FPGA_MGR_XILINX_CORE)	+=3D xilinx-core.o
 obj-$(CONFIG_FPGA_MGR_XILINX_SPI)	+=3D xilinx-spi.o
 obj-$(CONFIG_FPGA_MGR_ZYNQ_FPGA)	+=3D zynq-fpga.o
 obj-$(CONFIG_FPGA_MGR_ZYNQMP_FPGA)	+=3D zynqmp-fpga.o
diff --git a/drivers/fpga/xilinx-core.c b/drivers/fpga/xilinx-core.c
new file mode 100644
index 0000000000000..a35c43382dd5f
--- /dev/null
+++ b/drivers/fpga/xilinx-core.c
@@ -0,0 +1,213 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Common parts of the Xilinx Spartan6 and 7 Series FPGA manager drivers=
.
+ *
+ * Copyright (C) 2017 DENX Software Engineering
+ *
+ * Anatolij Gustschin <agust@denx.de>
+ */
+
+#include "xilinx-core.h"
+
+#include <linux/delay.h>
+#include <linux/fpga/fpga-mgr.h>
+#include <linux/gpio/consumer.h>
+#include <linux/of.h>
+
+static int get_done_gpio(struct fpga_manager *mgr)
+{
+	struct xilinx_fpga_core *core =3D mgr->priv;
+	int ret;
+
+	ret =3D gpiod_get_value(core->done);
+	if (ret < 0)
+		dev_err(&mgr->dev, "Error reading DONE (%d)\n", ret);
+
+	return ret;
+}
+
+static enum fpga_mgr_states xilinx_core_state(struct fpga_manager *mgr)
+{
+	if (!get_done_gpio(mgr))
+		return FPGA_MGR_STATE_RESET;
+
+	return FPGA_MGR_STATE_UNKNOWN;
+}
+
+/**
+ * wait_for_init_b - wait for the INIT_B pin to have a given state, or w=
ait
+ * a given delay if the pin is unavailable
+ *
+ * @mgr:        The FPGA manager object
+ * @value:      Value INIT_B to wait for (1 =3D asserted =3D low)
+ * @alt_udelay: Delay to wait if the INIT_B GPIO is not available
+ *
+ * Returns 0 when the INIT_B GPIO reached the given state or -ETIMEDOUT =
if
+ * too much time passed waiting for that. If no INIT_B GPIO is available
+ * then always return 0.
+ */
+static int wait_for_init_b(struct fpga_manager *mgr, int value,
+			   unsigned long alt_udelay)
+{
+	struct xilinx_fpga_core *core =3D mgr->priv;
+	unsigned long timeout =3D jiffies + msecs_to_jiffies(1000);
+
+	if (core->init_b) {
+		while (time_before(jiffies, timeout)) {
+			int ret =3D gpiod_get_value(core->init_b);
+
+			if (ret =3D=3D value)
+				return 0;
+
+			if (ret < 0) {
+				dev_err(&mgr->dev,
+					"Error reading INIT_B (%d)\n", ret);
+				return ret;
+			}
+
+			usleep_range(100, 400);
+		}
+
+		dev_err(&mgr->dev, "Timeout waiting for INIT_B to %s\n",
+			value ? "assert" : "deassert");
+		return -ETIMEDOUT;
+	}
+
+	udelay(alt_udelay);
+
+	return 0;
+}
+
+static int xilinx_core_write_init(struct fpga_manager *mgr,
+				  struct fpga_image_info *info, const char *buf,
+				  size_t count)
+{
+	struct xilinx_fpga_core *core =3D mgr->priv;
+	int err;
+
+	if (info->flags & FPGA_MGR_PARTIAL_RECONFIG) {
+		dev_err(&mgr->dev, "Partial reconfiguration not supported\n");
+		return -EINVAL;
+	}
+
+	gpiod_set_value(core->prog_b, 1);
+
+	err =3D wait_for_init_b(mgr, 1, 1); /* min is 500 ns */
+	if (err) {
+		gpiod_set_value(core->prog_b, 0);
+		return err;
+	}
+
+	gpiod_set_value(core->prog_b, 0);
+
+	err =3D wait_for_init_b(mgr, 0, 0);
+	if (err)
+		return err;
+
+	if (get_done_gpio(mgr)) {
+		dev_err(&mgr->dev, "Unexpected DONE pin state...\n");
+		return -EIO;
+	}
+
+	/* program latency */
+	usleep_range(7500, 7600);
+	return 0;
+}
+
+static int xilinx_core_write(struct fpga_manager *mgr, const char *buf,
+			     size_t count)
+{
+	struct xilinx_fpga_core *core =3D mgr->priv;
+
+	return core->write(core, buf, count);
+}
+
+static int xilinx_core_write_complete(struct fpga_manager *mgr,
+				      struct fpga_image_info *info)
+{
+	struct xilinx_fpga_core *core =3D mgr->priv;
+	unsigned long timeout =3D
+		jiffies + usecs_to_jiffies(info->config_complete_timeout_us);
+	bool expired =3D false;
+	int done;
+	int ret;
+	const char padding[1] =3D { 0xff };
+
+	/*
+	 * This loop is carefully written such that if the driver is
+	 * scheduled out for more than 'timeout', we still check for DONE
+	 * before giving up and we apply 8 extra CCLK cycles in all cases.
+	 */
+	while (!expired) {
+		expired =3D time_after(jiffies, timeout);
+
+		done =3D get_done_gpio(mgr);
+		if (done < 0)
+			return done;
+
+		ret =3D core->write(core, padding, sizeof(padding));
+		if (ret)
+			return ret;
+
+		if (done)
+			return 0;
+	}
+
+	if (core->init_b) {
+		ret =3D gpiod_get_value(core->init_b);
+
+		if (ret < 0) {
+			dev_err(&mgr->dev, "Error reading INIT_B (%d)\n", ret);
+			return ret;
+		}
+
+		dev_err(&mgr->dev,
+			ret ? "CRC error or invalid device\n" :
+			      "Missing sync word or incomplete bitstream\n");
+	} else {
+		dev_err(&mgr->dev, "Timeout after config data transfer\n");
+	}
+
+	return -ETIMEDOUT;
+}
+
+static const struct fpga_manager_ops xilinx_core_ops =3D {
+	.state =3D xilinx_core_state,
+	.write_init =3D xilinx_core_write_init,
+	.write =3D xilinx_core_write,
+	.write_complete =3D xilinx_core_write_complete,
+};
+
+int xilinx_core_probe(struct xilinx_fpga_core *core)
+{
+	struct fpga_manager *mgr;
+
+	if (!core || !core->dev || !core->write)
+		return -EINVAL;
+
+	/* PROGRAM_B is active low */
+	core->prog_b =3D devm_gpiod_get(core->dev, "prog_b", GPIOD_OUT_LOW);
+	if (IS_ERR(core->prog_b))
+		return dev_err_probe(core->dev, PTR_ERR(core->prog_b),
+				     "Failed to get PROGRAM_B gpio\n");
+
+	core->init_b =3D devm_gpiod_get_optional(core->dev, "init-b", GPIOD_IN)=
;
+	if (IS_ERR(core->init_b))
+		return dev_err_probe(core->dev, PTR_ERR(core->init_b),
+				     "Failed to get INIT_B gpio\n");
+
+	core->done =3D devm_gpiod_get(core->dev, "done", GPIOD_IN);
+	if (IS_ERR(core->done))
+		return dev_err_probe(core->dev, PTR_ERR(core->done),
+				     "Failed to get DONE gpio\n");
+
+	mgr =3D devm_fpga_mgr_register(core->dev,
+				     "Xilinx Slave Serial FPGA Manager",
+				     &xilinx_core_ops, core);
+	return PTR_ERR_OR_ZERO(mgr);
+}
+EXPORT_SYMBOL_GPL(xilinx_core_probe);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Anatolij Gustschin <agust@denx.de>");
+MODULE_DESCRIPTION("Xilinx 7 Series FPGA manager core");
diff --git a/drivers/fpga/xilinx-core.h b/drivers/fpga/xilinx-core.h
new file mode 100644
index 0000000000000..2fef95b341be0
--- /dev/null
+++ b/drivers/fpga/xilinx-core.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __XILINX_CORE_H
+#define __XILINX_CORE_H
+
+#include <linux/device.h>
+
+/**
+ * struct xilinx_fpga_core - interface between the driver and the core m=
anager
+ *                           of Xilinx 7 Series FPGA manager
+ * @dev:       device node
+ * @write:     write callback of the driver
+ * @prog_b:    PROGRAM_B gpio descriptor
+ * @init_b:    INIT_B gpio descriptor
+ * @done:      DONE gpio descriptor
+ */
+struct xilinx_fpga_core {
+/* public: */
+	struct device *dev;
+	int (*write)(struct xilinx_fpga_core *core, const char *buf,
+		     size_t count);
+/* private: handled by xilinx-core */
+	struct gpio_desc *prog_b;
+	struct gpio_desc *init_b;
+	struct gpio_desc *done;
+};
+
+int xilinx_core_probe(struct xilinx_fpga_core *core);
+
+#endif /* __XILINX_CORE_H */
diff --git a/drivers/fpga/xilinx-spi.c b/drivers/fpga/xilinx-spi.c
index e1a227e7ff2ae..ebf339cf0fd81 100644
--- a/drivers/fpga/xilinx-spi.c
+++ b/drivers/fpga/xilinx-spi.c
@@ -10,127 +10,17 @@
  * the slave serial configuration interface.
  */

-#include <linux/delay.h>
-#include <linux/device.h>
-#include <linux/fpga/fpga-mgr.h>
-#include <linux/gpio/consumer.h>
+#include "xilinx-core.h"
+
 #include <linux/module.h>
 #include <linux/mod_devicetable.h>
 #include <linux/of.h>
 #include <linux/spi/spi.h>
-#include <linux/sizes.h>
-
-struct xilinx_spi_conf {
-	struct spi_device *spi;
-	struct gpio_desc *prog_b;
-	struct gpio_desc *init_b;
-	struct gpio_desc *done;
-};
-
-static int get_done_gpio(struct fpga_manager *mgr)
-{
-	struct xilinx_spi_conf *conf =3D mgr->priv;
-	int ret;
-
-	ret =3D gpiod_get_value(conf->done);
-
-	if (ret < 0)
-		dev_err(&mgr->dev, "Error reading DONE (%d)\n", ret);
-
-	return ret;
-}
-
-static enum fpga_mgr_states xilinx_spi_state(struct fpga_manager *mgr)
-{
-	if (!get_done_gpio(mgr))
-		return FPGA_MGR_STATE_RESET;
-
-	return FPGA_MGR_STATE_UNKNOWN;
-}
-
-/**
- * wait_for_init_b - wait for the INIT_B pin to have a given state, or w=
ait
- * a given delay if the pin is unavailable
- *
- * @mgr:        The FPGA manager object
- * @value:      Value INIT_B to wait for (1 =3D asserted =3D low)
- * @alt_udelay: Delay to wait if the INIT_B GPIO is not available
- *
- * Returns 0 when the INIT_B GPIO reached the given state or -ETIMEDOUT =
if
- * too much time passed waiting for that. If no INIT_B GPIO is available
- * then always return 0.
- */
-static int wait_for_init_b(struct fpga_manager *mgr, int value,
-			   unsigned long alt_udelay)
-{
-	struct xilinx_spi_conf *conf =3D mgr->priv;
-	unsigned long timeout =3D jiffies + msecs_to_jiffies(1000);
-
-	if (conf->init_b) {
-		while (time_before(jiffies, timeout)) {
-			int ret =3D gpiod_get_value(conf->init_b);
-
-			if (ret =3D=3D value)
-				return 0;
-
-			if (ret < 0) {
-				dev_err(&mgr->dev, "Error reading INIT_B (%d)\n", ret);
-				return ret;
-			}
-
-			usleep_range(100, 400);
-		}
-
-		dev_err(&mgr->dev, "Timeout waiting for INIT_B to %s\n",
-			value ? "assert" : "deassert");
-		return -ETIMEDOUT;
-	}
-
-	udelay(alt_udelay);
-
-	return 0;
-}
-
-static int xilinx_spi_write_init(struct fpga_manager *mgr,
-				 struct fpga_image_info *info,
-				 const char *buf, size_t count)
-{
-	struct xilinx_spi_conf *conf =3D mgr->priv;
-	int err;
-
-	if (info->flags & FPGA_MGR_PARTIAL_RECONFIG) {
-		dev_err(&mgr->dev, "Partial reconfiguration not supported\n");
-		return -EINVAL;
-	}
-
-	gpiod_set_value(conf->prog_b, 1);
-
-	err =3D wait_for_init_b(mgr, 1, 1); /* min is 500 ns */
-	if (err) {
-		gpiod_set_value(conf->prog_b, 0);
-		return err;
-	}
-
-	gpiod_set_value(conf->prog_b, 0);
-
-	err =3D wait_for_init_b(mgr, 0, 0);
-	if (err)
-		return err;
-
-	if (get_done_gpio(mgr)) {
-		dev_err(&mgr->dev, "Unexpected DONE pin state...\n");
-		return -EIO;
-	}

-	/* program latency */
-	usleep_range(7500, 7600);
-	return 0;
-}
-
-static int xilinx_spi_write(struct fpga_manager *mgr, const char *buf,
+static int xilinx_spi_write(struct xilinx_fpga_core *core, const char *b=
uf,
 			    size_t count)
 {
-	struct xilinx_spi_conf *conf =3D mgr->priv;
+	struct spi_device *spi =3D to_spi_device(core->dev);
 	const char *fw_data =3D buf;
 	const char *fw_data_end =3D fw_data + count;

@@ -141,9 +31,9 @@ static int xilinx_spi_write(struct fpga_manager *mgr, =
const char *buf,
 		remaining =3D fw_data_end - fw_data;
 		stride =3D min_t(size_t, remaining, SZ_4K);

-		ret =3D spi_write(conf->spi, fw_data, stride);
+		ret =3D spi_write(spi, fw_data, stride);
 		if (ret) {
-			dev_err(&mgr->dev, "SPI error in firmware write: %d\n",
+			dev_err(core->dev, "SPI error in firmware write: %d\n",
 				ret);
 			return ret;
 		}
@@ -153,109 +43,25 @@ static int xilinx_spi_write(struct fpga_manager *mg=
r, const char *buf,
 	return 0;
 }

-static int xilinx_spi_apply_cclk_cycles(struct xilinx_spi_conf *conf)
-{
-	struct spi_device *spi =3D conf->spi;
-	const u8 din_data[1] =3D { 0xff };
-	int ret;
-
-	ret =3D spi_write(conf->spi, din_data, sizeof(din_data));
-	if (ret)
-		dev_err(&spi->dev, "applying CCLK cycles failed: %d\n", ret);
-
-	return ret;
-}
-
-static int xilinx_spi_write_complete(struct fpga_manager *mgr,
-				     struct fpga_image_info *info)
-{
-	struct xilinx_spi_conf *conf =3D mgr->priv;
-	unsigned long timeout =3D jiffies + usecs_to_jiffies(info->config_compl=
ete_timeout_us);
-	bool expired =3D false;
-	int done;
-	int ret;
-
-	/*
-	 * This loop is carefully written such that if the driver is
-	 * scheduled out for more than 'timeout', we still check for DONE
-	 * before giving up and we apply 8 extra CCLK cycles in all cases.
-	 */
-	while (!expired) {
-		expired =3D time_after(jiffies, timeout);
-
-		done =3D get_done_gpio(mgr);
-		if (done < 0)
-			return done;
-
-		ret =3D xilinx_spi_apply_cclk_cycles(conf);
-		if (ret)
-			return ret;
-
-		if (done)
-			return 0;
-	}
-
-	if (conf->init_b) {
-		ret =3D gpiod_get_value(conf->init_b);
-
-		if (ret < 0) {
-			dev_err(&mgr->dev, "Error reading INIT_B (%d)\n", ret);
-			return ret;
-		}
-
-		dev_err(&mgr->dev,
-			ret ? "CRC error or invalid device\n"
-			: "Missing sync word or incomplete bitstream\n");
-	} else {
-		dev_err(&mgr->dev, "Timeout after config data transfer\n");
-	}
-
-	return -ETIMEDOUT;
-}
-
-static const struct fpga_manager_ops xilinx_spi_ops =3D {
-	.state =3D xilinx_spi_state,
-	.write_init =3D xilinx_spi_write_init,
-	.write =3D xilinx_spi_write,
-	.write_complete =3D xilinx_spi_write_complete,
-};
-
 static int xilinx_spi_probe(struct spi_device *spi)
 {
-	struct xilinx_spi_conf *conf;
-	struct fpga_manager *mgr;
+	struct xilinx_fpga_core *conf;

 	conf =3D devm_kzalloc(&spi->dev, sizeof(*conf), GFP_KERNEL);
 	if (!conf)
 		return -ENOMEM;

-	conf->spi =3D spi;
+	conf->dev =3D &spi->dev;
+	conf->write =3D xilinx_spi_write;

-	/* PROGRAM_B is active low */
-	conf->prog_b =3D devm_gpiod_get(&spi->dev, "prog_b", GPIOD_OUT_LOW);
-	if (IS_ERR(conf->prog_b))
-		return dev_err_probe(&spi->dev, PTR_ERR(conf->prog_b),
-				     "Failed to get PROGRAM_B gpio\n");
-
-	conf->init_b =3D devm_gpiod_get_optional(&spi->dev, "init-b", GPIOD_IN)=
;
-	if (IS_ERR(conf->init_b))
-		return dev_err_probe(&spi->dev, PTR_ERR(conf->init_b),
-				     "Failed to get INIT_B gpio\n");
-
-	conf->done =3D devm_gpiod_get(&spi->dev, "done", GPIOD_IN);
-	if (IS_ERR(conf->done))
-		return dev_err_probe(&spi->dev, PTR_ERR(conf->done),
-				     "Failed to get DONE gpio\n");
-
-	mgr =3D devm_fpga_mgr_register(&spi->dev,
-				     "Xilinx Slave Serial FPGA Manager",
-				     &xilinx_spi_ops, conf);
-	return PTR_ERR_OR_ZERO(mgr);
+	return xilinx_core_probe(conf);
 }

 #ifdef CONFIG_OF
 static const struct of_device_id xlnx_spi_of_match[] =3D {
-	{ .compatible =3D "xlnx,fpga-slave-serial", },
+	{
+		.compatible =3D "xlnx,fpga-slave-serial",
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, xlnx_spi_of_match);
--
2.43.0

