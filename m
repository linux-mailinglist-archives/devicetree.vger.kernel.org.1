Return-Path: <devicetree+bounces-13400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FD87DDF4C
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 11:23:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 582DCB20DE1
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 10:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF4F7101FD;
	Wed,  1 Nov 2023 10:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailoo.org header.i=@mailoo.org header.b="R7Nb12ez"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581063D7B
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 10:23:49 +0000 (UTC)
Received: from mailo.com (msg-2.mailo.com [213.182.54.12])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8E63DE;
	Wed,  1 Nov 2023 03:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailoo.org; s=mailo;
	t=1698834192; bh=6VizajUNQEgnBxKKZlvp+xi15aQXeLOvCXt7ptXDwW8=;
	h=X-EA-Auth:From:To:Cc:Subject:Date:Message-ID:X-Mailer:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding;
	b=R7Nb12ezOSPaYNtNDBHayMH3P/uUJoS7up6sfWYlkNbyT8lcY318KIVSXkfa9Dfdw
	 Zj5zVOZ2hZDV76KKCKXLEBlTYyE/iL6hK6s2TAiyVD1j8Um+Wq0WkhBqVe/QcHy/07
	 3mieP/ljEdepleYSoSqBfST8lteV2zHVp0ZOWX0o=
Received: by b221-2.in.mailobj.net [192.168.90.22] with ESMTP
	via ip-22.mailoo.org [213.182.54.22]
	Wed,  1 Nov 2023 11:23:12 +0100 (CET)
X-EA-Auth: l+2Oq4EcCO1iMqaLAnm4sPaHK3LEdykeI2KD/pdjHX90Oat10Igsskk5x0gKY/imrrvjIYBEw3VV0rarcUQ9MNKeQwxsP2vTMAtCPde2AuA=
From: Vincent Knecht <vincent.knecht@mailoo.org>
To: Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Yassine Oudjana <y.oudjana@protonmail.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Vincent Knecht <vincent.knecht@mailoo.org>
Subject: [PATCH 3/3] media: i2c: ak7375: Add support for ak7345
Date: Wed,  1 Nov 2023 11:22:57 +0100
Message-ID: <20231101102257.1232179-3-vincent.knecht@mailoo.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231101102257.1232179-1-vincent.knecht@mailoo.org>
References: <20231101102257.1232179-1-vincent.knecht@mailoo.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for ak7345 VCM, which has 9 bits position values,
longer power-up delay, and no known standby register setting.
Might be compatible as-is with ak7348.

Tested on msm8916-alcatel-idol347 phone.

Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
---
 drivers/media/i2c/ak7375.c | 26 ++++++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/drivers/media/i2c/ak7375.c b/drivers/media/i2c/ak7375.c
index 3a14eff41531..9a2432cea3ff 100644
--- a/drivers/media/i2c/ak7375.c
+++ b/drivers/media/i2c/ak7375.c
@@ -16,6 +16,7 @@ struct ak73xx_chipdef {
 	u8 shift_pos;
 	u8 mode_active;
 	u8 mode_standby;
+	bool has_standby;	/* Some chips may not have standby mode */
 	u16 focus_pos_max;
 	/*
 	 * This sets the minimum granularity for the focus positions.
@@ -37,12 +38,26 @@ struct ak73xx_chipdef {
 	u16 power_delay_us;
 };
 
+static const struct ak73xx_chipdef ak7345_cdef = {
+	.reg_position	= 0x0,
+	.reg_cont	= 0x2,
+	.shift_pos	= 7,	/* 9 bits position values, need to << 7 */
+	.mode_active	= 0x0,
+	.has_standby	= false,
+	.focus_pos_max	= 511,
+	.focus_steps	= 1,
+	.ctrl_steps	= 16,
+	.ctrl_delay_us	= 1000,
+	.power_delay_us	= 20000,
+};
+
 static const struct ak73xx_chipdef ak7375_cdef = {
 	.reg_position	= 0x0,
 	.reg_cont	= 0x2,
 	.shift_pos	= 4,	/* 12 bits position values, need to << 4 */
 	.mode_active	= 0x0,
 	.mode_standby	= 0x40,
+	.has_standby	= true,
 	.focus_pos_max	= 4095,
 	.focus_steps	= 1,
 	.ctrl_steps	= 64,
@@ -249,10 +264,12 @@ static int __maybe_unused ak7375_vcm_suspend(struct device *dev)
 		usleep_range(cdef->ctrl_delay_us, cdef->ctrl_delay_us + 10);
 	}
 
-	ret = ak7375_i2c_write(ak7375_dev, cdef->reg_cont,
-			       cdef->mode_standby, 1);
-	if (ret)
-		dev_err(dev, "%s I2C failure: %d\n", __func__, ret);
+	if (cdef->has_standby) {
+		ret = ak7375_i2c_write(ak7375_dev, cdef->reg_cont,
+				       cdef->mode_standby, 1);
+		if (ret)
+			dev_err(dev, "%s I2C failure: %d\n", __func__, ret);
+	}
 
 	ret = regulator_bulk_disable(ARRAY_SIZE(ak7375_supply_names),
 				     ak7375_dev->supplies);
@@ -312,6 +329,7 @@ static int __maybe_unused ak7375_vcm_resume(struct device *dev)
 }
 
 static const struct of_device_id ak7375_of_table[] = {
+	{ .compatible = "asahi-kasei,ak7345", .data = &ak7345_cdef, },
 	{ .compatible = "asahi-kasei,ak7375", .data = &ak7375_cdef, },
 	{ /* sentinel */ }
 };
-- 
2.41.0




