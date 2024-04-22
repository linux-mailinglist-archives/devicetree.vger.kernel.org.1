Return-Path: <devicetree+bounces-61326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F538AC4E2
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 09:13:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B8611C20D45
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 07:13:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18E654DA0E;
	Mon, 22 Apr 2024 07:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=fritzc.com header.i=@fritzc.com header.b="nWhB1ad4"
X-Original-To: devicetree@vger.kernel.org
Received: from fritzc.com (mail.fritzc.com [213.160.72.247])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C880F4B5A6;
	Mon, 22 Apr 2024 07:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.160.72.247
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713769923; cv=none; b=INn40+dbkCq01cvKvCsGx/KWR9A4sxiHENHcRlJGsKoafzQpIdUNg8mGQ5lUuyHpSIeBP2e57+TWNysq/hh7CS78An4H08IV1RiAOh/onCy8cgZIdUQApIqSuyzSaAHX/ZkIn2W5JNM81LJkqot4LuR6Ndxv0G4KuQ5ivi2QKJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713769923; c=relaxed/simple;
	bh=GriCBJ/ErBDNP7+GC43SnkXtBQT7xS7d4yPt/HQJ94E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cNndgoiOG3rMGtz14nkWatV7fbG2t8ys67BdGlnh5mQjWYfnyqCT2KZWqQmAjaS+VSo0BaoGE1UIS0Poa8QnjIDdNp4SYBCVLQWEumuFjeR2mukfXhK5b3+R+IDHvoB1O8qd6/fUbF/3d+L5P5sJ6NKOGujsboiFH+7sEBcTZV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hexdev.de; spf=pass smtp.mailfrom=hexdev.de; dkim=pass (1024-bit key) header.d=fritzc.com header.i=@fritzc.com header.b=nWhB1ad4; arc=none smtp.client-ip=213.160.72.247
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hexdev.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hexdev.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fritzc.com;
	s=dkim; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=S7QVDSRo64/n5yDBH1lgH7wuuaz9amJibEm7XhWnCPg=; b=nWhB1ad4YCwFPZRT4zhLrrsb2c
	UTEgfWfkszmJRXWno3V8r2Lg4yyieyFC7a35BQbv13xFcpFew6/5VSiwHTVV8Cjr3HQHgBeg4cG/v
	ari5MLCR4haAOn/cGT73bKm19ewD9+uSKqamnrVqsmn6TLm+HXLoUmvZHFp3S5SuChhc=;
Received: from 127.0.0.1
	by fritzc.com with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim latest)
	(envelope-from <christoph.fritz@hexdev.de>)
	id 1rynWh-001JRH-1J;
	Mon, 22 Apr 2024 08:51:44 +0200
From: Christoph Fritz <christoph.fritz@hexdev.de>
To: Oliver Hartkopp <socketcan@hartkopp.net>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jiri Kosina <jikos@kernel.org>,
	Benjamin Tissoires <bentiss@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>
Cc: Andreas Lauser <andreas.lauser@mercedes-benz.com>,
	Jonathan Corbet <corbet@lwn.net>,
	linux-can@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: [PATCH 02/11] HID: hexLIN: Add support for USB LIN bus adapter
Date: Mon, 22 Apr 2024 08:51:05 +0200
Message-Id: <20240422065114.3185505-3-christoph.fritz@hexdev.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240422065114.3185505-1-christoph.fritz@hexdev.de>
References: <20240422065114.3185505-1-christoph.fritz@hexdev.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch introduces driver support for the hexLIN USB LIN Bus Adapter,
enabling LIN communication over USB for both controller and responder
modes. The driver interfaces with the CAN_LIN framework for userland
connectivity.

For more details on the adapter, visit: https://hexdev.de/hexlin/

Tested-by: Andreas Lauser <andreas.lauser@mercedes-benz.com>
Signed-off-by: Christoph Fritz <christoph.fritz@hexdev.de>
---
 drivers/hid/Kconfig      |  19 ++
 drivers/hid/Makefile     |   1 +
 drivers/hid/hid-hexlin.c | 583 +++++++++++++++++++++++++++++++++++++++
 drivers/hid/hid-ids.h    |   1 +
 drivers/hid/hid-quirks.c |   3 +
 5 files changed, 607 insertions(+)
 create mode 100644 drivers/hid/hid-hexlin.c

diff --git a/drivers/hid/Kconfig b/drivers/hid/Kconfig
index 08446c89eff6e..844c3565b397f 100644
--- a/drivers/hid/Kconfig
+++ b/drivers/hid/Kconfig
@@ -496,6 +496,25 @@ config HID_GYRATION
 	help
 	Support for Gyration remote control.
 
+config HID_HEXLIN
+	tristate "hexLIN LIN Bus adapter"
+	depends on HID
+	select CAN_LIN
+	help
+	  Support for hexLIN USB LIN-BUS Adapter.
+
+	  Local Interconnect Network (LIN) to USB adapter for controller and
+	  responder usage.
+	  This device driver is using CAN_LIN for a userland connection on
+	  one side and USB HID for the actual hardware adapter on the other
+	  side.
+
+	  If you have such an adapter, say Y here and see
+	  <https://hexdev.de/hexlin>.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called hid-hexlin.
+
 config HID_ICADE
 	tristate "ION iCade arcade controller"
 	help
diff --git a/drivers/hid/Makefile b/drivers/hid/Makefile
index ce71b53ea6c54..4a7e0a388c4c9 100644
--- a/drivers/hid/Makefile
+++ b/drivers/hid/Makefile
@@ -59,6 +59,7 @@ obj-$(CONFIG_HID_GOOGLE_STADIA_FF)	+= hid-google-stadiaff.o
 obj-$(CONFIG_HID_VIVALDI)	+= hid-vivaldi.o
 obj-$(CONFIG_HID_GT683R)	+= hid-gt683r.o
 obj-$(CONFIG_HID_GYRATION)	+= hid-gyration.o
+obj-$(CONFIG_HID_HEXLIN)	+= hid-hexlin.o
 obj-$(CONFIG_HID_HOLTEK)	+= hid-holtek-kbd.o
 obj-$(CONFIG_HID_HOLTEK)	+= hid-holtek-mouse.o
 obj-$(CONFIG_HID_HOLTEK)	+= hid-holtekff.o
diff --git a/drivers/hid/hid-hexlin.c b/drivers/hid/hid-hexlin.c
new file mode 100644
index 0000000000000..e1a16d79e3259
--- /dev/null
+++ b/drivers/hid/hid-hexlin.c
@@ -0,0 +1,583 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * LIN bus USB adapter driver https://hexdev.de/hexlin
+ *
+ * Copyright (C) 2024 hexDEV GmbH
+ */
+
+#include <linux/module.h>
+#include <linux/wait.h>
+#include <linux/completion.h>
+#include <linux/hid.h>
+#include <net/lin.h>
+#include "hid-ids.h"
+
+enum {
+	/* answers */
+	HEXLIN_SUCCESS = 0x01,
+	HEXLIN_FRAME = 0x02,
+	HEXLIN_ERROR = 0x03,
+	HEXLIN_FAIL = 0x0F,
+
+	/* lin-responder */
+	HEXLIN_SET_MODE_RESPONDER = 0x10,
+	HEXLIN_SET_RESPONDER_ANSWER_ID = 0x11,
+	HEXLIN_GET_RESPONDER_ANSWER_ID = 0x12,
+
+	/* lin-controller */
+	HEXLIN_SET_MODE_CONTROLLER = 0x20,
+	HEXLIN_SEND_BREAK = 0x21,
+	HEXLIN_SEND_UNCONDITIONAL_FRAME = 0x22,
+
+	/* lin-div */
+	HEXLIN_SET_BAUDRATE = 0x34,
+	HEXLIN_GET_BAUDRATE = 0x35,
+
+	/* div */
+	HEXLIN_RESET = 0xF0,
+	HEXLIN_GET_VERSION = 0xF1,
+};
+
+struct hexlin_val8_req {
+	u8 cmd;
+	u8 v;
+} __packed;
+
+struct hexlin_baudrate_req {
+	u8 cmd;
+	u16 baudrate;
+} __packed;
+
+struct hexlin_frame {
+	u32 flags;
+	u8 len;
+	u8 lin_id;
+	u8 data[LIN_MAX_DLEN];
+	u8 checksum;
+	u8 checksum_mode;
+} __packed;
+
+struct hexlin_unconditional_req {
+	u8 cmd;
+	struct hexlin_frame frm;
+} __packed;
+
+struct hexlin_responder_answer {
+	u8 is_active;
+	u8 is_event_frame;
+	u8 event_associated_id;
+	struct hexlin_frame frm;
+} __packed;
+
+struct hexlin_responder_answer_req {
+	u8 cmd;
+	struct hexlin_responder_answer answ;
+} __packed;
+
+struct hexlin_priv_data {
+	struct hid_device *hid_dev;
+	struct lin_device *ldev;
+	u16 baudrate;
+	struct completion wait_in_report;
+	bool is_error;
+	struct mutex tx_lock;  /* protects hexlin_tx_report() */
+	struct hexlin_responder_answer_req rar;
+	u8 fw_version;
+};
+
+static int hexlin_tx_report(struct hexlin_priv_data *priv,
+			    const void *out_report, size_t len)
+{
+	u8 *buf;
+	int ret;
+
+	buf = kmemdup(out_report, len, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	ret = hid_hw_output_report(priv->hid_dev, buf, len);
+	kfree(buf);
+
+	if (ret < 0)
+		return ret;
+	if (ret != len)
+		return -EIO;
+
+	return 0;
+}
+
+static int hexlin_tx_req_status(struct hexlin_priv_data *priv,
+				const void *out_report, int len)
+{
+	int ret;
+	unsigned long t;
+
+	mutex_lock(&priv->tx_lock);
+
+	reinit_completion(&priv->wait_in_report);
+
+	ret = hexlin_tx_report(priv, out_report, len);
+	if (ret)
+		goto tx_exit;
+
+	t = wait_for_completion_killable_timeout(&priv->wait_in_report,
+						 msecs_to_jiffies(1000));
+	if (!t)
+		ret = -ETIMEDOUT;
+
+	if (priv->is_error)
+		ret = -EINVAL;
+
+tx_exit:
+	mutex_unlock(&priv->tx_lock);
+
+	return ret;
+}
+
+#define HEXLIN_GET_CMD(name, enum_cmd)					\
+	static int hexlin_##name(struct hexlin_priv_data *priv)		\
+	{								\
+		u8 cmd = enum_cmd;					\
+		int ret;						\
+									\
+		ret = hexlin_tx_req_status(priv, &cmd, sizeof(u8));	\
+		if (ret)						\
+			hid_err(priv->hid_dev, "%s failed with %d\n",	\
+				__func__, ret);				\
+									\
+		return ret;						\
+	}
+
+HEXLIN_GET_CMD(get_version, HEXLIN_GET_VERSION)
+HEXLIN_GET_CMD(reset_dev, HEXLIN_RESET)
+HEXLIN_GET_CMD(get_baudrate, HEXLIN_GET_BAUDRATE)
+
+#define HEXLIN_VAL_CMD(name, enum_cmd, struct_type, vtype)		\
+	static int hexlin_##name(struct hexlin_priv_data *p, vtype val)	\
+	{								\
+		struct struct_type req;					\
+		int ret;						\
+									\
+		req.cmd = enum_cmd;					\
+		req.v = val;						\
+									\
+		ret = hexlin_tx_req_status(p, &req,			\
+					   sizeof(struct struct_type));	\
+		if (ret)						\
+			hid_err(p->hid_dev, "%s failed with %d\n",	\
+				__func__, ret);				\
+									\
+		return ret;						\
+	}
+
+HEXLIN_VAL_CMD(send_break, HEXLIN_SEND_BREAK, hexlin_val8_req, u8)
+
+static int hexlin_queue_frames_insert(struct hexlin_priv_data *priv,
+				      const u8 *raw_data, int sz)
+{
+	struct hexlin_frame hxf;
+	struct lin_frame lf;
+
+	if (sz != sizeof(struct hexlin_frame))
+		return -EREMOTEIO;
+
+	memcpy(&hxf, raw_data, sz);
+	le32_to_cpus(hxf.flags);
+
+	lf.len = hxf.len;
+	lf.lin_id = hxf.lin_id;
+	memcpy(lf.data, hxf.data, LIN_MAX_DLEN);
+	lf.checksum = hxf.checksum;
+	lf.checksum_mode = hxf.checksum_mode;
+
+	lin_rx(priv->ldev, &lf);
+
+	return 0;
+}
+
+static int hexlin_send_unconditional(struct hexlin_priv_data *priv,
+			      const struct hexlin_frame *hxf)
+{
+	struct hexlin_unconditional_req req;
+	int ret;
+
+	if (hxf->lin_id > LIN_ID_MASK)
+		return -EINVAL;
+
+	req.cmd = HEXLIN_SEND_UNCONDITIONAL_FRAME;
+	memcpy(&req.frm, hxf, sizeof(struct hexlin_frame));
+
+	ret = hexlin_tx_req_status(priv, &req,
+				   sizeof(struct hexlin_unconditional_req));
+
+	if (ret)
+		hid_err(priv->hid_dev, "%s failed with %d\n", __func__, ret);
+
+	return ret;
+}
+
+static int hexlin_set_baudrate(struct hexlin_priv_data *priv, u16 baudrate)
+{
+	struct hexlin_baudrate_req req;
+	int ret;
+
+	if (baudrate < LIN_MIN_BAUDRATE || baudrate > LIN_MAX_BAUDRATE)
+		return -EINVAL;
+
+	req.cmd = HEXLIN_SET_BAUDRATE;
+	req.baudrate = cpu_to_le16(baudrate);
+
+	ret = hexlin_tx_req_status(priv, &req,
+				   sizeof(struct hexlin_baudrate_req));
+	if (ret)
+		hid_err(priv->hid_dev, "%s failed with %d\n", __func__, ret);
+
+	return ret;
+}
+
+static int hexlin_get_responder_answer_id(struct hexlin_priv_data *priv, u8 id,
+					  struct hexlin_responder_answer_req *rar)
+{
+	u8 req[2] = { HEXLIN_GET_RESPONDER_ANSWER_ID, id };
+	int ret;
+
+	if (id > LIN_ID_MASK)
+		return -EINVAL;
+
+	ret = hexlin_tx_req_status(priv, &req, sizeof(req));
+	if (ret) {
+		hid_err(priv->hid_dev, "%s failed with %d\n", __func__, ret);
+		return ret;
+	}
+
+	memcpy(rar, &priv->rar, sizeof(struct hexlin_responder_answer_req));
+
+	return 0;
+}
+
+static int hexlin_set_responder_answer_id(struct hexlin_priv_data *priv,
+					  const struct lin_responder_answer *answ)
+{
+	struct hexlin_responder_answer_req rar;
+	int ret;
+
+	if (answ->lf.lin_id > LIN_ID_MASK ||
+	    answ->event_associated_id > LIN_ID_MASK)
+		return -EINVAL;
+
+	rar.cmd = HEXLIN_SET_RESPONDER_ANSWER_ID;
+	rar.answ.is_active = answ->is_active;
+	rar.answ.is_event_frame = answ->is_event_frame;
+	rar.answ.event_associated_id = answ->event_associated_id;
+	rar.answ.frm.len = answ->lf.len;
+	rar.answ.frm.lin_id = answ->lf.lin_id;
+	memcpy(rar.answ.frm.data, answ->lf.data, LIN_MAX_DLEN);
+	rar.answ.frm.checksum = answ->lf.checksum;
+	rar.answ.frm.checksum_mode = answ->lf.checksum_mode;
+
+	ret = hexlin_tx_req_status(priv, &rar,
+				   sizeof(struct hexlin_responder_answer_req));
+	if (ret)
+		hid_err(priv->hid_dev, "%s failed with %d\n", __func__, ret);
+
+	return ret;
+}
+
+static int hexlin_ldo_tx(struct lin_device *ldev,
+			 const struct lin_frame *lf)
+{
+	struct hid_device *hdev = to_hid_device(ldev->dev);
+	struct hexlin_priv_data *priv = hid_get_drvdata(hdev);
+	int ret = -EINVAL;
+
+	hid_dbg(hdev, "id:%02x, len:%u, data:%*ph, checksum:%02x (%s)\n",
+		   lf->lin_id, lf->len, lf->len, lf->data, lf->checksum,
+		   lf->checksum_mode ? "enhanced" : "classic");
+
+	if (lf->lin_id && lf->len == 0) {
+		ret = hexlin_send_break(priv, lf->lin_id);
+	} else if (lf->len <= LIN_MAX_DLEN) {
+		struct hexlin_frame hxf;
+
+		hxf.len = lf->len;
+		hxf.lin_id = lf->lin_id;
+		memcpy(&hxf.data, lf->data, LIN_MAX_DLEN);
+		hxf.checksum = lf->checksum;
+		hxf.checksum_mode = lf->checksum_mode;
+		ret = hexlin_send_unconditional(priv, &hxf);
+	} else {
+		hid_err(hdev, "unknown format\n");
+	}
+
+	return ret;
+}
+
+static int hexlin_update_bitrate(struct lin_device *ldev, u16 bitrate)
+{
+	struct hid_device *hdev = to_hid_device(ldev->dev);
+	struct hexlin_priv_data *priv = hid_get_drvdata(hdev);
+	int ret;
+
+	hid_dbg(hdev, "update bitrate to: %u\n", bitrate);
+
+	ret = hexlin_set_baudrate(priv, bitrate);
+	if (ret)
+		return ret;
+
+	ret = hexlin_get_baudrate(priv);
+	if (ret)
+		return ret;
+
+	if (priv->baudrate != bitrate) {
+		hid_err(hdev, "update bitrate failed\n");
+		return -EINVAL;
+	}
+
+	return ret;
+}
+
+static int hexlin_get_responder_answer(struct lin_device *ldev, u8 id,
+				       struct lin_responder_answer *answ)
+{
+	struct hid_device *hdev = to_hid_device(ldev->dev);
+	struct hexlin_priv_data *priv = hid_get_drvdata(hdev);
+	struct hexlin_responder_answer_req rar;
+	int ret;
+
+	if (answ == NULL)
+		return -EINVAL;
+
+	ret = hexlin_get_responder_answer_id(priv, id, &rar);
+	if (ret)
+		return ret;
+
+	answ->is_active = rar.answ.is_active;
+	answ->is_event_frame = rar.answ.is_event_frame;
+	answ->event_associated_id = rar.answ.event_associated_id;
+	answ->lf.len = rar.answ.frm.len;
+	answ->lf.lin_id = rar.answ.frm.lin_id;
+	memcpy(answ->lf.data, rar.answ.frm.data, LIN_MAX_DLEN);
+	answ->lf.checksum = rar.answ.frm.checksum;
+	answ->lf.checksum_mode = rar.answ.frm.checksum_mode;
+
+	return 0;
+}
+
+static int hexlin_update_resp_answer(struct lin_device *ldev,
+				     const struct lin_responder_answer *answ)
+{
+	struct hid_device *hdev = to_hid_device(ldev->dev);
+	struct hexlin_priv_data *priv = hid_get_drvdata(hdev);
+
+	if (answ == NULL)
+		return -EINVAL;
+
+	return hexlin_set_responder_answer_id(priv, answ);
+}
+
+static const struct lin_device_ops hexlin_ldo = {
+	.ldo_tx = hexlin_ldo_tx,
+	.update_bitrate = hexlin_update_bitrate,
+	.get_responder_answer = hexlin_get_responder_answer,
+	.update_responder_answer = hexlin_update_resp_answer,
+};
+
+#define HEXLIN_PKGLEN_MAX	64
+
+static int hexlin_raw_event(struct hid_device *hdev,
+			    struct hid_report *report, u8 *data, int sz)
+{
+	struct hexlin_priv_data *priv;
+	int ret;
+
+	if (sz < 1 || sz > HEXLIN_PKGLEN_MAX)
+		return -EREMOTEIO;
+
+	priv = hid_get_drvdata(hdev);
+
+	hid_dbg(hdev, "%s, size:%i, data[0]: 0x%02x\n", __func__, sz, data[0]);
+
+	priv->is_error = false;
+
+	switch (data[0]) {
+	case HEXLIN_SUCCESS:
+		if (sz != 1)
+			return -EREMOTEIO;
+		hid_dbg(hdev, "HEXLIN_SUCCESS: 0x%02x\n", data[0]);
+		complete(&priv->wait_in_report);
+		break;
+	case HEXLIN_FAIL:
+		if (sz != 1)
+			return -EREMOTEIO;
+		hid_err(hdev, "HEXLIN_FAIL: 0x%02x\n", data[0]);
+		priv->is_error = true;
+		complete(&priv->wait_in_report);
+		break;
+	case HEXLIN_GET_VERSION:
+		if (sz != 2)
+			return -EREMOTEIO;
+		priv->fw_version = data[1];
+		complete(&priv->wait_in_report);
+		break;
+	case HEXLIN_GET_RESPONDER_ANSWER_ID:
+		if (sz != 20)
+			return -EREMOTEIO;
+		BUILD_BUG_ON(sizeof(priv->rar) != 20);
+		memcpy(&priv->rar, data, sizeof(priv->rar));
+		complete(&priv->wait_in_report);
+		break;
+	case HEXLIN_GET_BAUDRATE:
+		if (sz != 3)
+			return -EREMOTEIO;
+		BUILD_BUG_ON(sizeof(priv->baudrate) != 2);
+		memcpy(&priv->baudrate, &data[1], sizeof(priv->baudrate));
+		le16_to_cpus(priv->baudrate);
+		complete(&priv->wait_in_report);
+		break;
+	/* following cases not initiated by us, so no complete() */
+	case HEXLIN_FRAME:
+		if (sz != 17) {
+			hid_err_once(hdev, "frame size mismatch: %i\n", sz);
+			return -EREMOTEIO;
+		}
+		ret = hexlin_queue_frames_insert(priv, &data[1], sz-1);
+		if (ret) {
+			hid_err(hdev, "failed to add frame: %i\n", ret);
+			return ret;
+		}
+		break;
+	case HEXLIN_ERROR:
+		hid_err(hdev, "error from adapter\n");
+		break;
+	default:
+		hid_err(hdev, "unknown event: 0x%02x\n", data[0]);
+	}
+
+	return 0;
+}
+
+static int init_hw(struct hexlin_priv_data *priv)
+{
+	int ret;
+
+	ret = hexlin_reset_dev(priv);
+	if (ret)
+		return ret;
+
+	ret = hexlin_get_version(priv);
+	if (ret)
+		return ret;
+
+	priv->baudrate = LIN_DEFAULT_BAUDRATE;
+	ret = hexlin_set_baudrate(priv, priv->baudrate);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int hexlin_probe(struct hid_device *hdev,
+			const struct hid_device_id *id)
+{
+	struct hexlin_priv_data *priv;
+	int ret;
+
+	priv = devm_kzalloc(&hdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->hid_dev = hdev;
+	hid_set_drvdata(hdev, priv);
+
+	mutex_init(&priv->tx_lock);
+
+	ret = hid_parse(hdev);
+	if (ret) {
+		hid_err(hdev, "hid parse failed with %d\n", ret);
+		goto fail_and_free;
+	}
+
+	ret = hid_hw_start(hdev, HID_CONNECT_HIDRAW);
+	if (ret) {
+		hid_err(hdev, "hid hw start failed with %d\n", ret);
+		goto fail_and_stop;
+	}
+
+	ret = hid_hw_open(hdev);
+	if (ret) {
+		hid_err(hdev, "hid hw open failed with %d\n", ret);
+		goto fail_and_close;
+	}
+
+	init_completion(&priv->wait_in_report);
+
+	hid_device_io_start(hdev);
+
+	ret = init_hw(priv);
+	if (ret)
+		goto fail_and_close;
+
+	priv->ldev = register_lin(&hdev->dev, &hexlin_ldo);
+	if (IS_ERR_OR_NULL(priv->ldev)) {
+		ret = PTR_ERR(priv->ldev);
+		goto fail_and_close;
+	}
+
+	hid_info(hdev, "hexLIN (fw-version: %u) probed\n", priv->fw_version);
+
+	return 0;
+
+fail_and_close:
+	hid_hw_close(hdev);
+fail_and_stop:
+	hid_hw_stop(hdev);
+fail_and_free:
+	mutex_destroy(&priv->tx_lock);
+	return ret;
+}
+
+static void hexlin_remove(struct hid_device *hdev)
+{
+	struct hexlin_priv_data *priv = hid_get_drvdata(hdev);
+
+	complete(&priv->wait_in_report);
+	unregister_lin(priv->ldev);
+	hid_hw_close(hdev);
+	hid_hw_stop(hdev);
+	mutex_destroy(&priv->tx_lock);
+}
+
+static const struct hid_device_id hexlin_table[] = {
+	{ HID_USB_DEVICE(USB_VENDOR_ID_MCS, USB_DEVICE_ID_MCS_HEXLIN) },
+	{ }
+};
+
+MODULE_DEVICE_TABLE(hid, hexlin_table);
+
+static struct hid_driver hexlin_driver = {
+	.name = "hexLIN",
+	.id_table = hexlin_table,
+	.probe = hexlin_probe,
+	.remove = hexlin_remove,
+	.raw_event = hexlin_raw_event,
+};
+
+static int __init hexlin_init(void)
+{
+	return hid_register_driver(&hexlin_driver);
+}
+
+static void __exit hexlin_exit(void)
+{
+	hid_unregister_driver(&hexlin_driver);
+}
+
+/*
+ * When compiled into the kernel, initialize after the hid bus.
+ */
+late_initcall(hexlin_init);
+module_exit(hexlin_exit);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Christoph Fritz <christoph.fritz@hexdev.de>");
+MODULE_DESCRIPTION("LIN bus driver for hexLIN USB adapter");
diff --git a/drivers/hid/hid-ids.h b/drivers/hid/hid-ids.h
index 8376fb5e2d0b4..157d234e1d400 100644
--- a/drivers/hid/hid-ids.h
+++ b/drivers/hid/hid-ids.h
@@ -903,6 +903,7 @@
 #define USB_DEVICE_ID_MCC_PMD1208LS	0x007a
 
 #define USB_VENDOR_ID_MCS		0x16d0
+#define USB_DEVICE_ID_MCS_HEXLIN	0x0648
 #define USB_DEVICE_ID_MCS_GAMEPADBLOCK	0x0bcc
 
 #define USB_VENDOR_MEGAWORLD		0x07b5
diff --git a/drivers/hid/hid-quirks.c b/drivers/hid/hid-quirks.c
index e0bbf0c6345d6..328fcc61303f3 100644
--- a/drivers/hid/hid-quirks.c
+++ b/drivers/hid/hid-quirks.c
@@ -436,6 +436,9 @@ static const struct hid_device_id hid_have_special_driver[] = {
 	{ HID_USB_DEVICE(USB_VENDOR_ID_GYRATION, USB_DEVICE_ID_GYRATION_REMOTE_2) },
 	{ HID_USB_DEVICE(USB_VENDOR_ID_GYRATION, USB_DEVICE_ID_GYRATION_REMOTE_3) },
 #endif
+#if IS_ENABLED(CONFIG_HID_HEXLIN)
+	{ HID_USB_DEVICE(USB_VENDOR_ID_MCS, USB_DEVICE_ID_MCS_HEXLIN) },
+#endif
 #if IS_ENABLED(CONFIG_HID_HOLTEK)
 	{ HID_USB_DEVICE(USB_VENDOR_ID_HOLTEK, USB_DEVICE_ID_HOLTEK_ON_LINE_GRIP) },
 	{ HID_USB_DEVICE(USB_VENDOR_ID_HOLTEK_ALT, USB_DEVICE_ID_HOLTEK_ALT_KEYBOARD) },
-- 
2.39.2


