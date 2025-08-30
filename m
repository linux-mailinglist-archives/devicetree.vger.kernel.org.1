Return-Path: <devicetree+bounces-210737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 225FEB3CA76
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 13:15:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B389B4E1134
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 11:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9265279DCD;
	Sat, 30 Aug 2025 11:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="Uq8EluYW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9A11EA7D2
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 11:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756552526; cv=none; b=Z9OZBaIr7cX5/n19ADbn515An0/P+fnj6ZN/lPh8ITTx2UkjLga73pX9PLmAsNzAYpbAwcgkgUZYqHKUZ1WlJjvaIMdNxrZuNCwDYnzBW1MY8MhZwrq2bwQ1T0K6ms1r7PuikvnOmKGI9gNMgwgUbNnk2uTe2ddYgqA+8VNGRL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756552526; c=relaxed/simple;
	bh=HHmPum0PvEApNjgYAUOlDA8D8AEOdfimGezg2ryCHSc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Mhi6Wh2C9YWiFpUM0dGryysdyosdUzooVTMjqZe7SMlEBzM0v/bq2dST3G+eMDloN/bhxCCWYqTiEd4Lva/sy0FsIIk2l1p8sbU5wvLViyjqGx1MuC4bWZxRnt86Ut4gpTeFBr9CxwrZTRfsrNT9OeKccZG0Zs9MqTuORQFsOlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=Uq8EluYW; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45b7ebe667cso13628225e9.3
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 04:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1756552522; x=1757157322; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b4hLmrqBB55CYWs4MdA1e/l8rKfd2dtL/Ee5u7ARa7s=;
        b=Uq8EluYW5GUzparnXAxQyN9Co/bCWwKNOcKnH3TxHwRaReyqk+SUNDozUiOn/iBDIC
         HMzXCYoX0IlSazYSFzD2OJq4WM0Al02AkHi7Rl7gnCNEHTDmbedLiepK/CGbZCu3sGQh
         pje9JexmIj7C+p671ntPguFA7vFkk1KwAFEI/U6DEimJfSEr33J086Z7DLNbmnw/bjt6
         v064P5T41XBHPZplU7Er3thhK3JilY4cuP46yUPgW2v+WbJTumqU4eY+Ms2YAkzqcYFp
         2yEnnqIskqnyPXhpCu7xrfg3/5hmqaGhZcBbNAgcZt6L03+K8XtrPO7ZcnLq/YhDrWef
         C9iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756552522; x=1757157322;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b4hLmrqBB55CYWs4MdA1e/l8rKfd2dtL/Ee5u7ARa7s=;
        b=C23DTk1KA1O84carRLJOAW9Tpdf0G4+rb+g4B8XCPWz0TSL9PPt2XJlFuzbdfFv8Kh
         D31JsTJmLKZC3pFHSPkM34iiqlL1sbAOksWoQymMZ0sm0Krpq/zNaaeAropqMV66Nkly
         O0wSEc2w017FbOhDkfwgPQYmi9dtexwfUh3x9TA1xLZWUHaj8uM14DiqBITAAhvYC/UH
         ukyv3GHVgG2yWw/ZkcWY2IJwR/iNe3VwpTebYJxkhsK3woMGYa+j05qvzPtNcTr2kPjZ
         HCWXDcm+6CWD2sCA+Rb+APwUIcpsvYPKm5zvnCsG8VUccQeuKdaSXnaEEMrpLtyn+1VP
         yMlw==
X-Gm-Message-State: AOJu0Yz5fm533ZQgZIORcopVJUOMSB4c71QyTpnm9Kf4AgNJf8pHn8Aj
	GCzYc2ztelcg8rfccsFEZB2qtmkHcASQ88FpQVbpywcSVgYRAyVHQRXzUJUrzAujYko=
X-Gm-Gg: ASbGnct4XAAiH7geQAilGxouZBYyzbyxorNtWrFEJ9WS39fo2XvucFdavh6Jfi11HF1
	HrvicXi9obcTk29VWADZ94j1SdyBryY6swdyyEWLLhYdj0y/SuTIiBrL38xO1ukMcH/bJt9Juys
	YxeBJ//HMrUEgHc0Pf8Cwkst5D5WNBuCE+RwWe8LIjk6rlHMDqJjiCuAtWHxucg8kqk25xQJkyN
	HkbKGHmoilqm5s1bhRmhaC0syid22U672lbDVmthz+tRLjbT10UJI0iAR6Bn6mZHBKxGWuj0BM3
	r1asn/D0hLba2TZzi5CN5zzUnsCDdtgyODvvD+LhNSDs8ftkbggbDVuQxWDgvHUDxq2Jpd8rCCK
	tJvMbBToPEN8e7q5vrIfaNqtKjqS//aOvtsQzIRItVw==
X-Google-Smtp-Source: AGHT+IGfnl588iA3RO8BiL7bORR+bxwybLnU1txL4zYB5cZ2kAPZijLvkUpEoFnu5JQ/7lsRuwVWGA==
X-Received: by 2002:a05:600c:4692:b0:45b:5f3d:aa3d with SMTP id 5b1f17b1804b1-45b85570b4cmr11481555e9.21.1756552521568;
        Sat, 30 Aug 2025 04:15:21 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:8714:ec04:28d3:3897])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf33fba9c4sm6713630f8f.48.2025.08.30.04.15.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 04:15:21 -0700 (PDT)
From: Aliaksandr Smirnou <asmirnou@pinefeat.co.uk>
To: jacopo.mondi@ideasonboard.com,
	hverkuil@xs4all.nl,
	mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Aliaksandr Smirnou <asmirnou@pinefeat.co.uk>
Subject: [PATCH v4 2/2] media: i2c: Pinefeat cef168 lens control board driver
Date: Sat, 30 Aug 2025 12:15:00 +0100
Message-Id: <20250830111500.53169-3-asmirnou@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250830111500.53169-1-asmirnou@pinefeat.co.uk>
References: <20250830111500.53169-1-asmirnou@pinefeat.co.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the Pinefeat cef168 lens control board that provides
electronic focus and aperture control for Canon EF & EF-S lenses on
non-Canon camera bodies.

Signed-off-by: Aliaksandr Smirnou <asmirnou@pinefeat.co.uk>
---
 MAINTAINERS                        |   1 +
 drivers/media/i2c/Kconfig          |   9 +
 drivers/media/i2c/Makefile         |   1 +
 drivers/media/i2c/cef168.c         | 331 +++++++++++++++++++++++++++++
 include/uapi/linux/v4l2-controls.h |   6 +
 5 files changed, 348 insertions(+)
 create mode 100644 drivers/media/i2c/cef168.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 811c6a150029..a531fb05faa4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19990,6 +19990,7 @@ M:	Aliaksandr Smirnou <support@pinefeat.co.uk>
 L:	linux-media@vger.kernel.org
 S:	Supported
 F:	Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml
+F:	drivers/media/i2c/cef168.c
 
 PLANTOWER PMS7003 AIR POLLUTION SENSOR DRIVER
 M:	Tomasz Duszynski <tduszyns@gmail.com>
diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
index 6237fe804a5c..df2b33f03ab7 100644
--- a/drivers/media/i2c/Kconfig
+++ b/drivers/media/i2c/Kconfig
@@ -791,6 +791,15 @@ config VIDEO_AK7375
 	  capability. This is designed for linear control of
 	  voice coil motors, controlled via I2C serial interface.
 
+config VIDEO_CEF168
+	tristate "CEF168 lens control support"
+	select CRC8
+	help
+	  This is a driver for the CEF168 lens control board.
+	  The board provides an I2C interface for electronic focus
+	  and aperture control of EF and EF-S lenses. The driver
+	  integrates with the V4L2 sub-device API.
+
 config VIDEO_DW9714
 	tristate "DW9714 lens voice coil support"
 	depends on GPIOLIB
diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
index 5873d29433ee..75a95f850f18 100644
--- a/drivers/media/i2c/Makefile
+++ b/drivers/media/i2c/Makefile
@@ -25,6 +25,7 @@ obj-$(CONFIG_VIDEO_BT856) += bt856.o
 obj-$(CONFIG_VIDEO_BT866) += bt866.o
 obj-$(CONFIG_VIDEO_CCS) += ccs/
 obj-$(CONFIG_VIDEO_CCS_PLL) += ccs-pll.o
+obj-$(CONFIG_VIDEO_CEF168) += cef168.o
 obj-$(CONFIG_VIDEO_CS3308) += cs3308.o
 obj-$(CONFIG_VIDEO_CS5345) += cs5345.o
 obj-$(CONFIG_VIDEO_CS53L32A) += cs53l32a.o
diff --git a/drivers/media/i2c/cef168.c b/drivers/media/i2c/cef168.c
new file mode 100644
index 000000000000..cfcef476f09d
--- /dev/null
+++ b/drivers/media/i2c/cef168.c
@@ -0,0 +1,331 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2025 Pinefeat LLP
+
+#include <linux/crc8.h>
+#include <linux/delay.h>
+#include <linux/i2c.h>
+#include <linux/module.h>
+#include <linux/v4l2-controls.h>
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-device.h>
+#include <media/v4l2-event.h>
+
+#define CEF168_NAME "cef168"
+
+#define CEF168_V4L2_CID_CUSTOM(ctrl) \
+	(V4L2_CID_USER_CEF168_BASE + custom_##ctrl)
+
+enum { custom_lens_id, custom_data, custom_focus_range, custom_calibrate };
+
+#define INP_CALIBRATE 0x22
+#define INP_SET_FOCUS 0x80
+#define INP_SET_FOCUS_P 0x81
+#define INP_SET_FOCUS_N 0x82
+#define INP_SET_APERTURE 0x7A
+#define INP_SET_APERTURE_P 0x7B
+#define INP_SET_APERTURE_N 0x7C
+
+#define CEF_CRC8_POLYNOMIAL 168
+
+DECLARE_CRC8_TABLE(cef168_crc8_table);
+
+struct cef168_data {
+	__u8 lens_id;
+	__u8 moving : 1;
+	__u8 calibrating : 2;
+	__u16 moving_time;
+	__u16 focus_position_min;
+	__u16 focus_position_max;
+	__u16 focus_position_cur;
+	__u16 focus_distance_min;
+	__u16 focus_distance_max;
+	__u8 crc8;
+} __packed;
+
+struct cef168_device {
+	struct v4l2_ctrl_handler ctrls;
+	struct v4l2_subdev sd;
+};
+
+static inline struct cef168_device *to_cef168(struct v4l2_ctrl *ctrl)
+{
+	return container_of(ctrl->handler, struct cef168_device, ctrls);
+}
+
+static inline struct cef168_device *sd_to_cef168(struct v4l2_subdev *subdev)
+{
+	return container_of(subdev, struct cef168_device, sd);
+}
+
+static int cef168_i2c_write(struct cef168_device *cef168_dev, u8 cmd, u16 val)
+{
+	struct i2c_client *client = v4l2_get_subdevdata(&cef168_dev->sd);
+	int retry, ret;
+
+	__le16 le_data = cpu_to_le16(val);
+	char tx_data[4] = { cmd, ((u8 *)&le_data)[0], ((u8 *)&le_data)[1] };
+
+	tx_data[3] = crc8(cef168_crc8_table, tx_data, 3, CRC8_INIT_VALUE);
+
+	for (retry = 0; retry < 3; retry++) {
+		ret = i2c_master_send(client, tx_data, sizeof(tx_data));
+		if (ret == sizeof(tx_data))
+			return 0;
+		else if (ret != -EIO && ret != -EREMOTEIO)
+			break;
+	}
+
+	dev_err(&client->dev, "I2C write fail after %d retries, ret=%d\n",
+		retry, ret);
+	return -EIO;
+}
+
+static int cef168_i2c_read(struct cef168_device *cef168_dev,
+			   struct cef168_data *rx_data)
+{
+	struct i2c_client *client = v4l2_get_subdevdata(&cef168_dev->sd);
+
+	int ret = i2c_master_recv(client, (char *)rx_data,
+				  sizeof(struct cef168_data));
+	if (ret != sizeof(struct cef168_data)) {
+		dev_err(&client->dev, "I2C read fail, ret=%d\n", ret);
+		return -EIO;
+	}
+
+	u8 computed_crc = crc8(cef168_crc8_table, (const u8 *)rx_data,
+			       sizeof(struct cef168_data) - 1, CRC8_INIT_VALUE);
+	if (computed_crc != rx_data->crc8) {
+		dev_err(&client->dev,
+			"CRC mismatch calculated=0x%02X read=0x%02X\n",
+			computed_crc, rx_data->crc8);
+		return -EIO;
+	}
+
+	rx_data->moving_time = le16_to_cpup((__le16 *)&rx_data->moving_time);
+	rx_data->focus_position_min = le16_to_cpup((__le16 *)&rx_data->focus_position_min);
+	rx_data->focus_position_max = le16_to_cpup((__le16 *)&rx_data->focus_position_max);
+	rx_data->focus_position_cur = le16_to_cpup((__le16 *)&rx_data->focus_position_cur);
+	rx_data->focus_distance_min = le16_to_cpup((__le16 *)&rx_data->focus_distance_min);
+	rx_data->focus_distance_max = le16_to_cpup((__le16 *)&rx_data->focus_distance_max);
+
+	return 0;
+}
+
+static int cef168_set_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct cef168_device *dev = to_cef168(ctrl);
+	u8 cmd;
+
+	switch (ctrl->id) {
+	case V4L2_CID_FOCUS_ABSOLUTE:
+		return cef168_i2c_write(dev, INP_SET_FOCUS, ctrl->val);
+	case V4L2_CID_FOCUS_RELATIVE:
+		cmd = ctrl->val < 0 ? INP_SET_FOCUS_N : INP_SET_FOCUS_P;
+		return cef168_i2c_write(dev, cmd, abs(ctrl->val));
+	case V4L2_CID_IRIS_ABSOLUTE:
+		return cef168_i2c_write(dev, INP_SET_APERTURE, ctrl->val);
+	case V4L2_CID_IRIS_RELATIVE:
+		cmd = ctrl->val < 0 ? INP_SET_APERTURE_N : INP_SET_APERTURE_P;
+		return cef168_i2c_write(dev, cmd, abs(ctrl->val));
+	case CEF168_V4L2_CID_CUSTOM(calibrate):
+		return cef168_i2c_write(dev, INP_CALIBRATE, 0);
+	}
+
+	return -EINVAL;
+}
+
+static int cef168_get_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct cef168_data data;
+	struct cef168_device *dev = to_cef168(ctrl);
+	int rval;
+
+	rval = cef168_i2c_read(dev, &data);
+	if (rval < 0)
+		return rval;
+
+	switch (ctrl->id) {
+	case V4L2_CID_FOCUS_ABSOLUTE:
+		ctrl->val = data.focus_position_cur;
+		return 0;
+	case CEF168_V4L2_CID_CUSTOM(focus_range):
+		ctrl->p_new.p_u32[0] = ((u32)data.focus_position_min << 16) |
+				       (u32)data.focus_position_max;
+		return 0;
+	case CEF168_V4L2_CID_CUSTOM(lens_id):
+		ctrl->p_new.p_u8[0] = data.lens_id;
+		return 0;
+	case CEF168_V4L2_CID_CUSTOM(data):
+		memcpy(ctrl->p_new.p_u8, &data, sizeof(data));
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
+static const struct v4l2_ctrl_ops cef168_ctrl_ops = {
+	.g_volatile_ctrl = cef168_get_ctrl,
+	.s_ctrl = cef168_set_ctrl,
+};
+
+static const struct v4l2_ctrl_config cef168_lens_id_ctrl = {
+	.ops = &cef168_ctrl_ops,
+	.id = CEF168_V4L2_CID_CUSTOM(lens_id),
+	.type = V4L2_CTRL_TYPE_U8,
+	.name = "Lens ID",
+	.min = 0,
+	.max = U8_MAX,
+	.step = 1,
+	.def = 0,
+	.flags = V4L2_CTRL_FLAG_VOLATILE | V4L2_CTRL_FLAG_READ_ONLY,
+};
+
+static const struct v4l2_ctrl_config cef168_focus_range_ctrl = {
+	.ops = &cef168_ctrl_ops,
+	.id = CEF168_V4L2_CID_CUSTOM(focus_range),
+	.type = V4L2_CTRL_TYPE_U32,
+	.name = "Focus Range",
+	.min = 0,
+	.max = U32_MAX,
+	.step = 1,
+	.def = 0,
+	.flags = V4L2_CTRL_FLAG_VOLATILE | V4L2_CTRL_FLAG_READ_ONLY,
+};
+
+static const struct v4l2_ctrl_config cef168_data_ctrl = {
+	.ops = &cef168_ctrl_ops,
+	.id = CEF168_V4L2_CID_CUSTOM(data),
+	.type = V4L2_CTRL_TYPE_U8,
+	.name = "Data",
+	.min = 0,
+	.max = U8_MAX,
+	.step = 1,
+	.def = 0,
+	.dims = { sizeof(struct cef168_data) / sizeof(u8) },
+	.elem_size = sizeof(u8),
+	.flags = V4L2_CTRL_FLAG_VOLATILE | V4L2_CTRL_FLAG_READ_ONLY,
+};
+
+static const struct v4l2_ctrl_config cef168_calibrate_ctrl = {
+	.ops = &cef168_ctrl_ops,
+	.id = CEF168_V4L2_CID_CUSTOM(calibrate),
+	.type = V4L2_CTRL_TYPE_BUTTON,
+	.name = "Calibrate",
+};
+
+static const struct v4l2_subdev_core_ops cef168_core_ops = {
+	.log_status = v4l2_ctrl_subdev_log_status,
+	.subscribe_event = v4l2_ctrl_subdev_subscribe_event,
+	.unsubscribe_event = v4l2_event_subdev_unsubscribe,
+};
+
+static const struct v4l2_subdev_ops cef168_ops = {
+	.core = &cef168_core_ops,
+};
+
+static int cef168_init_controls(struct cef168_device *dev)
+{
+	struct v4l2_ctrl *ctrl;
+	struct v4l2_ctrl_handler *hdl = &dev->ctrls;
+	const struct v4l2_ctrl_ops *ops = &cef168_ctrl_ops;
+
+	v4l2_ctrl_handler_init(hdl, 8);
+
+	ctrl = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FOCUS_ABSOLUTE, 0, S16_MAX,
+				 1, 0);
+	if (ctrl)
+		ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE |
+			       V4L2_CTRL_FLAG_EXECUTE_ON_WRITE;
+	v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FOCUS_RELATIVE, S16_MIN, S16_MAX,
+			  1, 0);
+	ctrl = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_IRIS_ABSOLUTE, 0, S16_MAX,
+				 1, 0);
+	if (ctrl)
+		ctrl->flags |= V4L2_CTRL_FLAG_WRITE_ONLY |
+			       V4L2_CTRL_FLAG_EXECUTE_ON_WRITE;
+	v4l2_ctrl_new_std(hdl, ops, V4L2_CID_IRIS_RELATIVE, S16_MIN, S16_MAX, 1,
+			  0);
+	ctrl = v4l2_ctrl_new_custom(hdl, &cef168_calibrate_ctrl, NULL);
+	if (ctrl)
+		ctrl->flags |= V4L2_CTRL_FLAG_WRITE_ONLY |
+			       V4L2_CTRL_FLAG_EXECUTE_ON_WRITE;
+	v4l2_ctrl_new_custom(hdl, &cef168_focus_range_ctrl, NULL);
+	v4l2_ctrl_new_custom(hdl, &cef168_data_ctrl, NULL);
+	v4l2_ctrl_new_custom(hdl, &cef168_lens_id_ctrl, NULL);
+
+	if (hdl->error)
+		dev_err(dev->sd.dev, "%s fail error: 0x%x\n", __func__,
+			hdl->error);
+	dev->sd.ctrl_handler = hdl;
+	return hdl->error;
+}
+
+static int cef168_probe(struct i2c_client *client)
+{
+	struct cef168_device *cef168_dev;
+	int rval;
+
+	cef168_dev = devm_kzalloc(&client->dev, sizeof(*cef168_dev),
+				  GFP_KERNEL);
+	if (!cef168_dev)
+		return -ENOMEM;
+
+	v4l2_i2c_subdev_init(&cef168_dev->sd, client, &cef168_ops);
+	cef168_dev->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE |
+				V4L2_SUBDEV_FL_HAS_EVENTS;
+
+	rval = cef168_init_controls(cef168_dev);
+	if (rval)
+		goto err_cleanup;
+
+	rval = media_entity_pads_init(&cef168_dev->sd.entity, 0, NULL);
+	if (rval < 0)
+		goto err_cleanup;
+
+	cef168_dev->sd.entity.function = MEDIA_ENT_F_LENS;
+
+	rval = v4l2_async_register_subdev(&cef168_dev->sd);
+	if (rval < 0)
+		goto err_cleanup;
+
+	crc8_populate_msb(cef168_crc8_table, CEF_CRC8_POLYNOMIAL);
+
+	return 0;
+
+err_cleanup:
+	v4l2_ctrl_handler_free(&cef168_dev->ctrls);
+	media_entity_cleanup(&cef168_dev->sd.entity);
+
+	return rval;
+}
+
+static void cef168_remove(struct i2c_client *client)
+{
+	struct v4l2_subdev *sd = i2c_get_clientdata(client);
+	struct cef168_device *cef168_dev = sd_to_cef168(sd);
+
+	v4l2_async_unregister_subdev(&cef168_dev->sd);
+	v4l2_ctrl_handler_free(&cef168_dev->ctrls);
+	media_entity_cleanup(&cef168_dev->sd.entity);
+}
+
+static const struct of_device_id cef168_of_table[] = {
+	{ .compatible = "pinefeat,cef168" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, cef168_of_table);
+
+static struct i2c_driver cef168_i2c_driver = {
+	.driver = {
+		.name = CEF168_NAME,
+		.of_match_table = cef168_of_table,
+	},
+	.probe = cef168_probe,
+	.remove = cef168_remove,
+};
+
+module_i2c_driver(cef168_i2c_driver);
+
+MODULE_AUTHOR("support@pinefeat.co.uk>");
+MODULE_DESCRIPTION("CEF168 lens driver");
+MODULE_LICENSE("GPL");
diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index f836512e9deb..7d6d026ef2ea 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -228,6 +228,12 @@ enum v4l2_colorfx {
  */
 #define V4L2_CID_USER_RKISP1_BASE		(V4L2_CID_USER_BASE + 0x1220)
 
+/*
+ * The base for Pinefeat CEF168 driver controls.
+ * We reserve 16 controls for this driver.
+ */
+#define V4L2_CID_USER_CEF168_BASE		(V4L2_CID_USER_BASE + 0x1230)
+
 /* MPEG-class control IDs */
 /* The MPEG controls are applicable to all codec controls
  * and the 'MPEG' part of the define is historical */
-- 
2.34.1


