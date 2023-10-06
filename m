Return-Path: <devicetree+bounces-6331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E6E7BAF9E
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 02:33:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 38812282130
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 00:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED45E629;
	Fri,  6 Oct 2023 00:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="fLDG8mdv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35CB636
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 00:33:34 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [IPv6:2001:df5:b000:5::4])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E329DEB
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 17:33:31 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id A5FD32C07F0;
	Fri,  6 Oct 2023 13:33:28 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1696552408;
	bh=lHHeZ3xMn0xmJJCVd5cBfeh7/yXUVz2SulVsbcP+n2E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fLDG8mdvA0AvziNsAnaRIycCAJFWxZ6PvdCWqKy8SLFGliVRCbpN5NagUuogace29
	 ynNlIaKNk+EEwz7b/ljssCrHxMIys+ALvTUJxkmlv4cLc2Y2eHQp06b1+LK66nhi71
	 AOtJpSE7Qt9KV4mhf//JnmXNjlUuh30ERWHwu5EKRzr8j8Fbh6pj0dW3z7xkUI+KDe
	 HeH19QGvM586/cSRPpVUwDwuTb2v50pxIl7vfB6v7vo/ZanHI924+JKUgdZUMv5lCj
	 jecaU6bf+EIoY9hOPOTXc4CNWYPOWWdq95Rdb4CvQQSCAvNXR6y2iszDdD47j+iA2c
	 Y8Y8SXEQ9Fzwg==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B651f55d80003>; Fri, 06 Oct 2023 13:33:28 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 5DDDE13EEA1;
	Fri,  6 Oct 2023 13:33:28 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 5CD46280790; Fri,  6 Oct 2023 13:33:28 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: gregory.clement@bootlin.com,
	andi.shyti@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	pierre.gondois@arm.com
Cc: linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v2 3/3] i2c: mv64xxx: add support for FSM based recovery
Date: Fri,  6 Oct 2023 13:33:21 +1300
Message-ID: <20231006003321.2100016-4-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231006003321.2100016-1-chris.packham@alliedtelesis.co.nz>
References: <20231006003321.2100016-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.3 cv=Vf2Jw2h9 c=1 sm=1 tr=0 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=bhdUkHdE2iEA:10 a=B8jpvDMl2VDXHxTB5w4A:9
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Some newer Marvell SoCs (AC5 and CN9130, possibly more) support a I2C
unstuck function. This provides a recovery function as part of the FSM
as an alternative to changing pinctrl modes and using the generic GPIO
based recovery. Allow for using this by adding an optional resource to
the platform data which contains the address of the I2C unstuck register
for the I2C controller.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v2:
    - shorted delay and timeout used with read_poll_timeout_atomic()
    - make use dev_dbg() for added messages
    - remove reference to "marvell,armada-8k-i2c"
    - I've elected to keep the behaviour that failing to ioremap the unst=
uck
      register (if supplied) is an error

 drivers/i2c/busses/i2c-mv64xxx.c | 68 ++++++++++++++++++++++++++++++--
 1 file changed, 65 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv=
64xxx.c
index fd8403b07fa6..efd28bbecf61 100644
--- a/drivers/i2c/busses/i2c-mv64xxx.c
+++ b/drivers/i2c/busses/i2c-mv64xxx.c
@@ -21,6 +21,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
@@ -82,6 +83,13 @@
 /* Bridge Status values */
 #define	MV64XXX_I2C_BRIDGE_STATUS_ERROR			BIT(0)
=20
+/* Unstuck Register values */
+#define MV64XXX_I2C_UNSTUCK_TRIGGER			BIT(0)
+#define MV64XXX_I2C_UNSTUCK_ON_GOING			BIT(1)
+#define MV64XXX_I2C_UNSTUCK_ERROR			BIT(2)
+#define MV64XXX_I2C_UNSTUCK_COUNT(val)			((val & 0xf0) >> 4)
+#define MV64XXX_I2C_UNSTUCK_INPROGRESS (MV64XXX_I2C_UNSTUCK_TRIGGER|MV64=
XXX_I2C_UNSTUCK_ON_GOING)
+
 /* Driver states */
 enum {
 	MV64XXX_I2C_STATE_INVALID,
@@ -126,6 +134,7 @@ struct mv64xxx_i2c_data {
 	u32			aborting;
 	u32			cntl_bits;
 	void __iomem		*reg_base;
+	void __iomem		*unstuck_reg;
 	struct mv64xxx_i2c_regs	reg_offsets;
 	u32			addr1;
 	u32			addr2;
@@ -735,6 +744,33 @@ mv64xxx_i2c_can_offload(struct mv64xxx_i2c_data *drv=
_data)
 	return false;
 }
=20
+static int
+mv64xxx_i2c_recover_bus(struct i2c_adapter *adap)
+{
+	struct mv64xxx_i2c_data *drv_data =3D i2c_get_adapdata(adap);
+	int ret;
+	u32 val;
+
+	dev_dbg(&adap->dev, "Trying i2c bus recovery\n");
+	writel(MV64XXX_I2C_UNSTUCK_TRIGGER, drv_data->unstuck_reg);
+	ret =3D readl_poll_timeout_atomic(drv_data->unstuck_reg, val,
+					!(val & MV64XXX_I2C_UNSTUCK_INPROGRESS),
+					10, 1000);
+	if (ret) {
+		dev_err(&adap->dev, "recovery timeout\n");
+		return ret;
+	}
+
+	if (val & MV64XXX_I2C_UNSTUCK_ERROR) {
+		dev_err(&adap->dev, "recovery failed\n");
+		return -EBUSY;
+	}
+
+	dev_dbg(&adap->dev, "recovery complete after %d pulses\n", MV64XXX_I2C_=
UNSTUCK_COUNT(val));
+
+	return 0;
+}
+
 /*
  ***********************************************************************=
******
  *
@@ -936,8 +972,21 @@ mv64xxx_of_config(struct mv64xxx_i2c_data *drv_data,
 }
 #endif /* CONFIG_OF */
=20
-static int mv64xxx_i2c_init_recovery_info(struct mv64xxx_i2c_data *drv_d=
ata,
-					  struct device *dev)
+static int mv64xxx_i2c_init_fsm_recovery_info(struct mv64xxx_i2c_data *d=
rv_data,
+					      struct device *dev)
+{
+	struct i2c_bus_recovery_info *rinfo =3D &drv_data->rinfo;
+
+	dev_dbg(dev, "using FSM for recovery\n");
+	rinfo->recover_bus =3D mv64xxx_i2c_recover_bus;
+	drv_data->adapter.bus_recovery_info =3D rinfo;
+
+	return 0;
+
+}
+
+static int mv64xxx_i2c_init_gpio_recovery_info(struct mv64xxx_i2c_data *=
drv_data,
+					       struct device *dev)
 {
 	struct i2c_bus_recovery_info *rinfo =3D &drv_data->rinfo;
=20
@@ -986,6 +1035,7 @@ mv64xxx_i2c_probe(struct platform_device *pd)
 {
 	struct mv64xxx_i2c_data		*drv_data;
 	struct mv64xxx_i2c_pdata	*pdata =3D dev_get_platdata(&pd->dev);
+	struct resource *res;
 	int	rc;
=20
 	if ((!pdata && !pd->dev.of_node))
@@ -1000,6 +1050,14 @@ mv64xxx_i2c_probe(struct platform_device *pd)
 	if (IS_ERR(drv_data->reg_base))
 		return PTR_ERR(drv_data->reg_base);
=20
+	/* optional unstuck support */
+	res =3D platform_get_resource(pd, IORESOURCE_MEM, 1);
+	if (res) {
+		drv_data->unstuck_reg =3D devm_ioremap_resource(&pd->dev, res);
+		if (IS_ERR(drv_data->unstuck_reg))
+			return PTR_ERR(drv_data->unstuck_reg);
+	}
+
 	strscpy(drv_data->adapter.name, MV64XXX_I2C_CTLR_NAME " adapter",
 		sizeof(drv_data->adapter.name));
=20
@@ -1037,7 +1095,11 @@ mv64xxx_i2c_probe(struct platform_device *pd)
 			return rc;
 	}
=20
-	rc =3D mv64xxx_i2c_init_recovery_info(drv_data, &pd->dev);
+	if (drv_data->unstuck_reg)
+		rc =3D mv64xxx_i2c_init_fsm_recovery_info(drv_data, &pd->dev);
+	else
+		rc =3D mv64xxx_i2c_init_gpio_recovery_info(drv_data, &pd->dev);
+
 	if (rc =3D=3D -EPROBE_DEFER)
 		return rc;
=20
--=20
2.42.0


