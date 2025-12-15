Return-Path: <devicetree+bounces-246446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18718CBCE36
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:00:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 10CD3300BDA3
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 08:00:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07E78329E6E;
	Mon, 15 Dec 2025 08:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="daqdv/HL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007D6329E6D
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765785603; cv=none; b=lgCqki9i8DtE/TyLXZswfvytFr1RCp5gcy9o/l5HxSjXcmmtYg0lixSX2gNnZyW5gLYZIiSK3Fo4Xr72qLb5d+pihHgRNTJ/2sdlFp3OEIFhiah0ExJCdHIDnZrc8eLCJy+8mMAF21n/H2CAzh0FoSDMxoQFM4FLrrt4YeWZ63Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765785603; c=relaxed/simple;
	bh=S+QajaHzhMvLS2JRipW3P7MVgnRieoXf1lQPjPIplP4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JOR/mPJw8+JzdKc+91a3d6oAPJKKRz3L6CveLoQJQFrRyKYEf/Vlhdws2uBcAdDA0AIGeCYwIR+7F04qXgh+p7ShE8F0VSSq9Cir0l81s34S9OQXHCrvHskJUdVmn78yMHw8HDsHsNlc1ledMMzUDT/aC6U9WoeN3lw1ogzvcHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=daqdv/HL; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a0a33d0585so11501355ad.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 00:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765785601; x=1766390401; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TVq5X5G8+PFfQeBURVXYlaXATVvipW+nlg+9mMKRKDI=;
        b=daqdv/HLak7WnGPVjzZR6Nf+fzRvhNxq0Eq/nDAKLJL95Zjr2l8DGeeW9zdF5opnJi
         Hsy8HDTiEb0o4idj4Fo/l7Da4DilITDIi89gtzPk/OJD4VK6EUrOjlAGIifERuy4QbjV
         54gppbVVs3XNUzxeQpNnekTz2yKZxZuZuLDkWMafguFOIW+8sodNCffQaGaSxELQk05S
         XDB463wk+yhJyGcBVwh4IoBpuPqrh3WGH6PNQFI1yW9XWiRyEn2+3/RFiEFobNdqHxUu
         GWWnY3RCbw8mQAtPOoxTfJnEQIdM6SMw1hzvpML8s4HdNMk0F/eh20/Rt4jQZQtcbMv6
         r2sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765785601; x=1766390401;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TVq5X5G8+PFfQeBURVXYlaXATVvipW+nlg+9mMKRKDI=;
        b=Cz+upz5I6yr6iiwnBZIT4nMcW5eNY7MnYenqlaN6QIo55aH5wbp5sfE9KPoIhpEhW1
         GnioHEd4XOttqo6kTPahaj3KxeTVIAQNaZ1PImYidIEYtOXF3LIot0VTCmM7NHwFV8Vx
         c2cNE8x2EhLS2y876uH3atsUP0HyzEMqAfQOov7q/qsRrajZmnGkOeUrRrrECq7xhwP9
         +6VzEaHLqU96JqgbMFJYh+/zT4XaaWHzoTWik3sSSTk119HpyuILCLv2qIdnBwgWxHDa
         IJWW5/CpLvVFrAa+9pfg2WcSQEAcofErOsr4D2KelDji0daaKerLww1xSYRCIzfoo7vX
         6RoQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpCTxuCjAy6rNdErvgo5C4G5rtzuCA8DWWkvxaiaQgP0YbutXxEG+SWG2lxARRaXlwOtVcpPACLKiU@vger.kernel.org
X-Gm-Message-State: AOJu0YwKe7cDL/+jravVkCE89iC8z9Z4Ic3UFclvw1DHAjfgmhqHY6m6
	/xl78BZ3Now08fdKT6PgyfixK/1xNEG/foLAUMeLiB+35IAwWHL4Z4n9
X-Gm-Gg: AY/fxX7ki/56//fmGT14l1U0dTgEQrACsdOphpjV+MBWJccBA1sXSdtM4Xzt4fDBGGn
	1c+M5EG98992/H96F8fHzUyhHG3V7AuuMl4rUUsUs0PpukPNJuwE/IoWEcHDMrFAPKKJgrVl229
	wr5l2a8Y08YEVvaSxvDzqst6mFgC915/+XhZeQxcdFo4A/m5iJs9UQrnfB9jVW8MPk7OZeDjupt
	VX78KSXLSQID0xLmGt8WmKViStjW51SgSPDDrv5PON9p13oK2jpY7a5dZEr1KnGsxjg384VDt/E
	YVHywP2zklZwNfzxyL2qrQvPdQ/i2rDWdJcToteDfAJAM8nbZ8TX0Yatreu8J5CPtYeLDvt6MPm
	84CwnALL8zu2F+1Kx3MJhQYTpN4TmzfuZE51z8Vnd57DlYuVuvWeFBKD38BRKQFViDzd8bqtkWH
	7JurdIOl3v3JY=
X-Google-Smtp-Source: AGHT+IH0Z8IA6f60bMQEwqioNDR+p6dck/IMqlctISvchHLxc7gnD0PN55794kLTN3d7b9unB3b+lw==
X-Received: by 2002:a05:7022:7f07:b0:119:e56b:91ec with SMTP id a92af1059eb24-11f34bf7bf5mr5063327c88.29.1765785601105;
        Mon, 15 Dec 2025 00:00:01 -0800 (PST)
Received: from fedora ([172.59.162.202])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e2ff624sm43637473c88.12.2025.12.14.23.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 00:00:00 -0800 (PST)
From: Alex Tran <alex.t.tran@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alex Tran <alex.t.tran@gmail.com>
Subject: [PATCH v2 1/4] media: i2c: et8ek8: et8ek8_driver: add support for crc configuration via device tree
Date: Sun, 14 Dec 2025 23:58:32 -0800
Message-ID: <fca7331649892206b92f1c63aedac6050a2d8d4a.1765782992.git.alex.t.tran@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1765782992.git.alex.t.tran@gmail.com>
References: <cover.1765782992.git.alex.t.tran@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Retrieve the configuration for CRC from the device tree instead
using the hard coded USE_CRC macro. If there is an issue
retrieving the endpoint node or the CRC property then the default
of 1 is used and the driver does not fail to maintain backward
compatibility.

Signed-off-by: Alex Tran <alex.t.tran@gmail.com>
---
 drivers/media/i2c/et8ek8/et8ek8_driver.c | 49 +++++++++++++++++++-----
 1 file changed, 39 insertions(+), 10 deletions(-)

diff --git a/drivers/media/i2c/et8ek8/et8ek8_driver.c b/drivers/media/i2c/et8ek8/et8ek8_driver.c
index 2cb7b7187..4ef92359c 100644
--- a/drivers/media/i2c/et8ek8/et8ek8_driver.c
+++ b/drivers/media/i2c/et8ek8/et8ek8_driver.c
@@ -29,6 +29,7 @@
 #include <media/media-entity.h>
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-device.h>
+#include <media/v4l2-fwnode.h>
 #include <media/v4l2-subdev.h>
 
 #include "et8ek8_reg.h"
@@ -45,6 +46,7 @@ struct et8ek8_sensor {
 	struct regulator *vana;
 	struct clk *ext_clk;
 	u32 xclk_freq;
+	u32 use_crc;
 
 	u16 version;
 
@@ -130,8 +132,6 @@ static struct et8ek8_gain {
 
 #define ET8EK8_I2C_DELAY	3	/* msec delay b/w accesses */
 
-#define USE_CRC			1
-
 /*
  * Register access helpers
  *
@@ -844,20 +844,16 @@ static int et8ek8_power_on(struct et8ek8_sensor *sensor)
 	if (rval)
 		goto out;
 
-#ifdef USE_CRC
 	rval = et8ek8_i2c_read_reg(client, ET8EK8_REG_8BIT, 0x1263, &val);
 	if (rval)
 		goto out;
-#if USE_CRC /* TODO get crc setting from DT */
-	val |= BIT(4);
-#else
-	val &= ~BIT(4);
-#endif
+	if (sensor->use_crc)
+		val |= BIT(4);
+	else
+		val &= ~BIT(4);
 	rval = et8ek8_i2c_write_reg(client, ET8EK8_REG_8BIT, 0x1263, val);
 	if (rval)
 		goto out;
-#endif
-
 out:
 	if (rval)
 		et8ek8_power_off(sensor);
@@ -1396,6 +1392,34 @@ static int __maybe_unused et8ek8_resume(struct device *dev)
 	return __et8ek8_set_power(sensor, true);
 }
 
+static int et8ek8_parse_fwnode(struct device *dev, struct et8ek8_sensor *sensor)
+{
+	struct v4l2_fwnode_endpoint bus_cfg = {
+		.bus_type = V4L2_MBUS_CCP2,
+	};
+	struct fwnode_handle *ep;
+	int ret;
+
+	ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(dev), 0, 0,
+					     FWNODE_GRAPH_ENDPOINT_NEXT);
+	if (!ep) {
+		dev_warn(dev, "could not get endpoint node\n");
+		return -EINVAL;
+	}
+
+	ret = v4l2_fwnode_endpoint_alloc_parse(ep, &bus_cfg);
+	if (ret) {
+		dev_warn(dev, "parsing endpoint node failed\n");
+		goto done;
+	}
+
+	fwnode_property_read_u32(ep, "crc", &sensor->use_crc);
+done:
+	v4l2_fwnode_endpoint_free(&bus_cfg);
+	fwnode_handle_put(ep);
+	return ret;
+}
+
 static int et8ek8_probe(struct i2c_client *client)
 {
 	struct et8ek8_sensor *sensor;
@@ -1406,6 +1430,11 @@ static int et8ek8_probe(struct i2c_client *client)
 	if (!sensor)
 		return -ENOMEM;
 
+	sensor->use_crc = 1;
+	ret = et8ek8_parse_fwnode(dev, sensor);
+	if (ret)
+		dev_warn(dev, "parsing endpoint failed\n");
+
 	sensor->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
 	if (IS_ERR(sensor->reset)) {
 		dev_dbg(&client->dev, "could not request reset gpio\n");
-- 
2.51.0


