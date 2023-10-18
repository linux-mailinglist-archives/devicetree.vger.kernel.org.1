Return-Path: <devicetree+bounces-9817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F98C7CE9C2
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 23:08:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D38FB21015
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 21:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D5FF42928;
	Wed, 18 Oct 2023 21:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="LaC81BLF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 783EC4290A
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 21:08:16 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [IPv6:2001:df5:b000:5::4])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5C381A1
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 14:08:13 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 165192C027A;
	Thu, 19 Oct 2023 10:08:10 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1697663290;
	bh=gqjjlKTu73EKTbIjc+Nes5NFC/xjbovCV1p0fBg4XUQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LaC81BLFbzLPwF2FE5Iw5P808xj561SjJ+odwE9ZXjlJpFNLGEXO2NOF/5vRve0sf
	 2fsbkxGlWP3hZNfEVVjZBDpCtVn9pa0vMES5Xtl/WBozwryyl55+Bst28gk2MtpRCO
	 wCj6mUasup5vBtstzR9mfEbQVUIzklIsvykaLA3H7cetGspRj0lObiJQZqdyTsNdoF
	 E3VHQ4SOlYSf8hiSWcrNWO60zCpbm3ALN06x2BYeJG1VYJZfhAY3I8nJcptKeHRXqG
	 O+zYke7J3TZH5PdpV71rOlauzJHbZwAmhC/eLpXRB4rllp8Z0ZG8jn08gbzMPSTdu+
	 2luiEBnDSWSQA==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B653049390002>; Thu, 19 Oct 2023 10:08:09 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 5BB9213EE85;
	Thu, 19 Oct 2023 10:08:09 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 5A95C280450; Thu, 19 Oct 2023 10:08:09 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: gregory.clement@bootlin.com,
	andi.shyti@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v3 2/2] i2c: mv64xxx: add an optional reset-gpios property
Date: Thu, 19 Oct 2023 10:08:05 +1300
Message-ID: <20231018210805.1569987-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231018210805.1569987-1-chris.packham@alliedtelesis.co.nz>
References: <20231018210805.1569987-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.3 cv=L6ZjvNb8 c=1 sm=1 tr=0 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=bhdUkHdE2iEA:10 a=VsZq4EHS3crWG1I_hwYA:9
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Some hardware designs have a GPIO used to control the reset of all the
devices on and I2C bus. It's not possible for every child node to
declare a reset-gpios property as only the first device probed would be
able to successfully request it (the others will get -EBUSY). Represent
this kind of hardware design by associating the reset-gpios with the
parent I2C bus. The reset line will be released prior to the child I2C
devices being probed.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v3:
    - Rename reset-delay to reset-duration
    - Use reset-duration-us property to control the reset pulse rather th=
an
      delaying after the reset
    Changes in v2:
    - Add a property to cover the length of delay after releasing the res=
et
      GPIO
    - Use dev_err_probe() when requesing the GPIO fails

 drivers/i2c/busses/i2c-mv64xxx.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv=
64xxx.c
index efd28bbecf61..28f11d2e800b 100644
--- a/drivers/i2c/busses/i2c-mv64xxx.c
+++ b/drivers/i2c/busses/i2c-mv64xxx.c
@@ -160,6 +160,7 @@ struct mv64xxx_i2c_data {
 	bool			clk_n_base_0;
 	struct i2c_bus_recovery_info	rinfo;
 	bool			atomic;
+	struct gpio_desc	*reset_gpio;
 };
=20
 static struct mv64xxx_i2c_regs mv64xxx_i2c_regs_mv64xxx =3D {
@@ -1036,6 +1037,7 @@ mv64xxx_i2c_probe(struct platform_device *pd)
 	struct mv64xxx_i2c_data		*drv_data;
 	struct mv64xxx_i2c_pdata	*pdata =3D dev_get_platdata(&pd->dev);
 	struct resource *res;
+	u32	reset_duration;
 	int	rc;
=20
 	if ((!pdata && !pd->dev.of_node))
@@ -1083,6 +1085,14 @@ mv64xxx_i2c_probe(struct platform_device *pd)
 	if (drv_data->irq < 0)
 		return drv_data->irq;
=20
+	drv_data->reset_gpio =3D devm_gpiod_get_optional(&pd->dev, "reset", GPI=
OD_OUT_HIGH);
+	if (IS_ERR(drv_data->reset_gpio))
+		return dev_err_probe(&pd->dev, PTR_ERR(drv_data->reset_gpio),
+				     "Cannot get reset gpio\n");
+	rc =3D device_property_read_u32(&pd->dev, "reset-duration-us", &reset_d=
uration);
+	if (rc)
+		reset_duration =3D 1;
+
 	if (pdata) {
 		drv_data->freq_m =3D pdata->freq_m;
 		drv_data->freq_n =3D pdata->freq_n;
@@ -1121,6 +1131,11 @@ mv64xxx_i2c_probe(struct platform_device *pd)
 			goto exit_disable_pm;
 	}
=20
+	if (drv_data->reset_gpio) {
+		usleep_range(reset_duration, reset_duration + 10);
+		gpiod_set_value_cansleep(drv_data->reset_gpio, 0);
+	}
+
 	rc =3D request_irq(drv_data->irq, mv64xxx_i2c_intr, 0,
 			 MV64XXX_I2C_CTLR_NAME, drv_data);
 	if (rc) {
--=20
2.42.0


