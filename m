Return-Path: <devicetree+bounces-64607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D938BA07C
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 20:30:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EBA48B2314C
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 18:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19475181CEB;
	Thu,  2 May 2024 18:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=fritzc.com header.i=@fritzc.com header.b="CpKe+W0x"
X-Original-To: devicetree@vger.kernel.org
Received: from fritzc.com (mail.fritzc.com [213.160.72.247])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B5417F385;
	Thu,  2 May 2024 18:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.160.72.247
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714674553; cv=none; b=refy3aRniYXYqibs2YhAN2KrFYtmw9057AcCjMrHVO1RGW+ZV8KLC8+dC5vEUVgdn+/7XsMeq3xQm7r9GGN4eGXjHBV/HgIMVwDb2nI5joOEj+I7ouqzD0bVyLrCKPn8kJw7fRNzocB3VSycYSB9nYLObSTGFhya8eHhGOl3+68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714674553; c=relaxed/simple;
	bh=aHMCRZ99dl1eAZJcTJA553pLQiLglquFOtmDQOlRtuk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uT2R1qtxE8cOyqIRB/sMcLCmbVl1IvuTQiksxoL4F3rbfMcnmdanCO1/rrn6bSHsVvFkDFlXObaHyHKfVwIBNP23M3eOdiF70r+ouZ/XXLXBkWS7IWPMEkqnvfYdQVrqyL4UBPhqvXVFu6gskvYUwgefOvVfiHeVbREpyMtxdgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hexdev.de; spf=pass smtp.mailfrom=hexdev.de; dkim=pass (1024-bit key) header.d=fritzc.com header.i=@fritzc.com header.b=CpKe+W0x; arc=none smtp.client-ip=213.160.72.247
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hexdev.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hexdev.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fritzc.com;
	s=dkim; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=rcTITR2dV/nnoUA0qZkhoJ7w09BeYTGVbQa6/tK/pbo=; b=CpKe+W0xdiyieoYOEk41zdIBlr
	JVNu/tjXUB3QPtUNUhGnCanjOSOGUvyAO2qT/vamFQ1BUUHPd0LYkkVxoBI/xeTROg68+ewjoMA5Y
	wgeavKlEBayobFD1Hcq3EmoIYORvpSfbTf9P6iWyIjOZkhFuKtJsmmfGpJk08xZHj8Vc=;
Received: from 127.0.0.1
	by fritzc.com with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim latest)
	(envelope-from <christoph.fritz@hexdev.de>)
	id 1s2bAy-001ZbZ-1j;
	Thu, 02 May 2024 20:29:01 +0200
From: Christoph Fritz <christoph.fritz@hexdev.de>
To: Jiri Slaby <jirislaby@kernel.org>,
	Oliver Hartkopp <socketcan@hartkopp.net>,
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
	Sebastian Reichel <sre@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>
Cc: Andreas Lauser <andreas.lauser@mercedes-benz.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Pavel Pisa <pisa@cmp.felk.cvut.cz>,
	linux-can@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: [PATCH v3 07/11] can: Add support for serdev LIN adapters
Date: Thu,  2 May 2024 20:28:00 +0200
Message-Id: <20240502182804.145926-8-christoph.fritz@hexdev.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240502182804.145926-1-christoph.fritz@hexdev.de>
References: <20240502182804.145926-1-christoph.fritz@hexdev.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This commit introduces LIN-Bus support for UART devices equipped with
LIN transceivers, utilizing the Serial Device Bus (serdev) interface.

For more details on an adapter, visit: https://hexdev.de/hexlin#tty

Signed-off-by: Christoph Fritz <christoph.fritz@hexdev.de>
---
 drivers/net/can/Kconfig      |  16 ++
 drivers/net/can/Makefile     |   1 +
 drivers/net/can/lin-serdev.c | 500 +++++++++++++++++++++++++++++++++++
 3 files changed, 517 insertions(+)
 create mode 100644 drivers/net/can/lin-serdev.c

diff --git a/drivers/net/can/Kconfig b/drivers/net/can/Kconfig
index 0934bbf8d03b2..91c6cdeefe440 100644
--- a/drivers/net/can/Kconfig
+++ b/drivers/net/can/Kconfig
@@ -181,6 +181,22 @@ config CAN_LIN
 
 	  Actual device drivers need to be enabled too.
 
+config CAN_LIN_SERDEV
+	tristate "Serial LIN Adaptors"
+	depends on CAN_LIN && SERIAL_DEV_BUS && OF
+	help
+	  LIN-Bus support for serial devices equipped with LIN transceievers.
+	  This device driver is using CAN_LIN for a userland connection on
+	  one side and the kernel its serial device bus (serdev) interface
+	  on the other side.
+
+	  If you have a hexlin tty adapter, say Y here and see
+	  <https://hexdev.de/hexlin#tty>.
+
+	  This driver can also be built as a module. If so, the module will be
+	  called lin-serdev.ko.
+
+
 config CAN_SLCAN
 	tristate "Serial / USB serial CAN Adaptors (slcan)"
 	depends on TTY
diff --git a/drivers/net/can/Makefile b/drivers/net/can/Makefile
index 0093ee9219ca8..21ca514a42439 100644
--- a/drivers/net/can/Makefile
+++ b/drivers/net/can/Makefile
@@ -26,6 +26,7 @@ obj-$(CONFIG_CAN_IFI_CANFD)	+= ifi_canfd/
 obj-$(CONFIG_CAN_JANZ_ICAN3)	+= janz-ican3.o
 obj-$(CONFIG_CAN_KVASER_PCIEFD)	+= kvaser_pciefd.o
 obj-$(CONFIG_CAN_LIN)		+= lin.o
+obj-$(CONFIG_CAN_LIN_SERDEV)	+= lin-serdev.o
 obj-$(CONFIG_CAN_MSCAN)		+= mscan/
 obj-$(CONFIG_CAN_M_CAN)		+= m_can/
 obj-$(CONFIG_CAN_PEAK_PCIEFD)	+= peak_canfd/
diff --git a/drivers/net/can/lin-serdev.c b/drivers/net/can/lin-serdev.c
new file mode 100644
index 0000000000000..13fd9a54c6c93
--- /dev/null
+++ b/drivers/net/can/lin-serdev.c
@@ -0,0 +1,500 @@
+// SPDX-License-Identifier: GPL-2.0+
+/* Copyright (C) 2024 hexDEV GmbH - https://hexdev.de */
+
+#include <linux/delay.h>
+#include <linux/init.h>
+#include <linux/kfifo.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/serdev.h>
+#include <linux/slab.h>
+#include <linux/tty.h>
+#include <net/lin.h>
+
+#define LINSER_SAMPLES_PER_CHAR		10
+#define LINSER_TX_BUFFER_SIZE		11
+#define LINSER_RX_FIFO_SIZE		256
+#define LINSER_PARSE_BUFFER		24
+
+struct linser_rx {
+	u8 data;
+	u8 flag;
+};
+
+enum linser_rx_status {
+	NEED_MORE = -1,
+	MODE_OK = 0,
+	NEED_FORCE,
+};
+
+struct linser_priv {
+	struct lin_device *lin_dev;
+	struct serdev_device *serdev;
+	DECLARE_KFIFO_PTR(rx_fifo, struct linser_rx);
+	struct delayed_work rx_work;
+	unsigned long break_usleep_min;
+	unsigned long break_usleep_max;
+	unsigned long post_break_usleep_min;
+	unsigned long post_break_usleep_max;
+	unsigned long force_timeout_jfs;
+	struct lin_responder_answer respond_answ[LIN_NUM_IDS];
+	struct mutex resp_lock; /* protects respond_answ */
+	bool is_stopped;
+};
+
+static int linser_open(struct lin_device *ldev)
+{
+	struct serdev_device *serdev = to_serdev_device(ldev->dev);
+	struct linser_priv *priv = serdev_device_get_drvdata(serdev);
+	int ret;
+
+	if (priv->is_stopped) {
+		ret = serdev_device_open(serdev);
+		if (ret) {
+			dev_err(&serdev->dev, "Unable to open device\n");
+			return ret;
+		}
+
+		serdev_device_set_flow_control(serdev, false);
+		serdev_device_set_break_detection(serdev, true);
+
+		priv->is_stopped = false;
+	}
+
+	return 0;
+}
+
+static int linser_stop(struct lin_device *ldev)
+{
+	struct serdev_device *serdev = to_serdev_device(ldev->dev);
+	struct linser_priv *priv = serdev_device_get_drvdata(serdev);
+
+	if (priv->is_stopped)
+		return 0;
+
+	serdev_device_close(serdev);
+	priv->is_stopped = true;
+
+	return 0;
+}
+
+static int linser_send_break(struct linser_priv *priv)
+{
+	struct serdev_device *serdev = priv->serdev;
+	int ret;
+
+	ret = serdev_device_break_ctl(serdev, -1);
+	if (ret)
+		return ret;
+
+	usleep_range(priv->break_usleep_min, priv->break_usleep_max);
+
+	ret = serdev_device_break_ctl(serdev, 0);
+	if (ret)
+		return ret;
+
+	usleep_range(priv->post_break_usleep_min, priv->post_break_usleep_max);
+
+	return 0;
+}
+
+static int linser_ldo_tx(struct lin_device *ldev, const struct lin_frame *lf)
+{
+	struct serdev_device *serdev = to_serdev_device(ldev->dev);
+	struct linser_priv *priv = serdev_device_get_drvdata(serdev);
+	u8 pid = LIN_FORM_PID(lf->lin_id);
+	u8 buf[LINSER_TX_BUFFER_SIZE];
+	ssize_t written_len, total_len;
+	u8 checksum;
+	int ret;
+
+	if (lf->len + 3 > LINSER_TX_BUFFER_SIZE) {
+		dev_err(&serdev->dev, "Frame length %u exceeds buffer size\n", lf->len);
+		return -EINVAL;
+	}
+
+	buf[0] = LIN_SYNC_BYTE;
+	buf[1] = pid;
+	total_len = 2;
+
+	if (lf->len) {
+		memcpy(&buf[2], lf->data, lf->len);
+		checksum = lin_get_checksum(pid, lf->len, lf->data,
+					    lf->checksum_mode);
+		buf[lf->len + 2] = checksum;
+		total_len += lf->len + 1;
+	}
+
+	ret = linser_send_break(priv);
+	if (ret)
+		return ret;
+
+	written_len = serdev_device_write(serdev, buf, total_len, 0);
+	if (written_len < total_len)
+		return written_len < 0 ? (int)written_len : -EIO;
+
+	dev_dbg(&serdev->dev, "sent out: %*ph\n", (int)total_len, buf);
+
+	serdev_device_wait_until_sent(serdev, 0);
+
+	return 0;
+}
+
+static void linser_derive_timings(struct linser_priv *priv, u16 bitrate)
+{
+	unsigned long break_baud = (bitrate * 2) / 3;
+	unsigned long timeout_us;
+
+	priv->break_usleep_min = (USEC_PER_SEC * LINSER_SAMPLES_PER_CHAR) /
+				 break_baud;
+	priv->break_usleep_max = priv->break_usleep_min + 50;
+	priv->post_break_usleep_min = (USEC_PER_SEC * 1 /* 1 bit */) / break_baud;
+	priv->post_break_usleep_max = priv->post_break_usleep_min + 30;
+
+	timeout_us = DIV_ROUND_CLOSEST(USEC_PER_SEC * 256 /* bit */, bitrate);
+	priv->force_timeout_jfs = usecs_to_jiffies(timeout_us);
+}
+
+static int linser_update_bitrate(struct lin_device *ldev, u16 bitrate)
+{
+	struct serdev_device *serdev = to_serdev_device(ldev->dev);
+	struct linser_priv *priv = serdev_device_get_drvdata(serdev);
+	unsigned int speed;
+	int ret;
+
+	ret = linser_open(ldev);
+	if (ret)
+		return ret;
+
+	speed = serdev_device_set_baudrate(serdev, bitrate);
+	if (!bitrate || speed != bitrate)
+		return -EINVAL;
+
+	linser_derive_timings(priv, bitrate);
+
+	return 0;
+}
+
+static int linser_get_responder_answer(struct lin_device *ldev, u8 id,
+				       struct lin_responder_answer *answ)
+{
+	struct serdev_device *serdev = to_serdev_device(ldev->dev);
+	struct linser_priv *priv = serdev_device_get_drvdata(serdev);
+	struct lin_responder_answer *r = &priv->respond_answ[id];
+
+	if (!answ)
+		return -EINVAL;
+
+	mutex_lock(&priv->resp_lock);
+	memcpy(answ, r, sizeof(struct lin_responder_answer));
+	mutex_unlock(&priv->resp_lock);
+
+	return 0;
+}
+
+static int linser_update_resp_answer(struct lin_device *ldev,
+				     const struct lin_responder_answer *answ)
+{
+	struct serdev_device *serdev = to_serdev_device(ldev->dev);
+	struct linser_priv *priv = serdev_device_get_drvdata(serdev);
+	struct lin_responder_answer *r = &priv->respond_answ[answ->lf.lin_id];
+
+	if (!answ)
+		return -EINVAL;
+
+	mutex_lock(&priv->resp_lock);
+	memcpy(r, answ, sizeof(struct lin_responder_answer));
+	r->lf.checksum = lin_get_checksum(LIN_FORM_PID(answ->lf.lin_id),
+					  answ->lf.len,
+					  answ->lf.data,
+					  answ->lf.checksum_mode);
+	mutex_unlock(&priv->resp_lock);
+
+	return 0;
+}
+
+static struct lin_device_ops linser_lindev_ops = {
+	.ldo_open = linser_open,
+	.ldo_stop = linser_stop,
+	.ldo_tx = linser_ldo_tx,
+	.update_bitrate = linser_update_bitrate,
+	.get_responder_answer = linser_get_responder_answer,
+	.update_responder_answer = linser_update_resp_answer,
+};
+
+static bool linser_tx_frame_as_responder(struct linser_priv *priv, u8 id)
+{
+	struct lin_responder_answer *answ = &priv->respond_answ[id];
+	struct serdev_device *serdev = priv->serdev;
+	u8 buf[LINSER_TX_BUFFER_SIZE];
+	u8 checksum, count, n;
+	ssize_t write_len;
+
+	mutex_lock(&priv->resp_lock);
+
+	if (!answ->is_active) {
+		mutex_unlock(&priv->resp_lock);
+		return false;
+	}
+
+	if (answ->is_event_frame) {
+		struct lin_responder_answer *e_answ;
+
+		e_answ = &priv->respond_answ[answ->event_associated_id];
+		n = min(e_answ->lf.len, LIN_MAX_DLEN);
+		if (memcmp(answ->lf.data, e_answ->lf.data, n) != 0) {
+			memcpy(answ->lf.data, e_answ->lf.data, n);
+			checksum = lin_get_checksum(LIN_FORM_PID(answ->lf.lin_id),
+						    n, e_answ->lf.data,
+						    answ->lf.checksum_mode);
+			answ = e_answ;
+		} else {
+			mutex_unlock(&priv->resp_lock);
+			return false;
+		}
+	} else {
+		checksum = answ->lf.checksum;
+	}
+
+	count = min(answ->lf.len, LIN_MAX_DLEN);
+	memcpy(&buf[0], answ->lf.data, count);
+	buf[count] = checksum;
+
+	mutex_unlock(&priv->resp_lock);
+
+	write_len = serdev_device_write(serdev, buf, count + 1, 0);
+	if (write_len < count + 1)
+		return false;
+
+	serdev_device_wait_until_sent(serdev, 0);
+
+	return true;
+}
+
+static void linser_pop_fifo(struct linser_priv *priv, size_t n)
+{
+	for (size_t i = 0; i < n; i++)
+		kfifo_skip(&priv->rx_fifo);
+}
+
+static int linser_fill_frame(struct linser_priv *priv, struct lin_frame *lf)
+{
+	struct serdev_device *serdev = priv->serdev;
+	struct linser_rx buf[LINSER_PARSE_BUFFER];
+	unsigned int count, i, brk = 0;
+
+	count = kfifo_out_peek(&priv->rx_fifo, buf, LINSER_PARSE_BUFFER);
+
+	memset(lf, 0, sizeof(struct lin_frame));
+
+	for (i = 0; i < count; i++) {
+		dev_dbg(&serdev->dev, "buf[%d]: data=%02x, flag=%02x\n",
+			i, buf[i].data, buf[i].flag);
+	}
+
+	if (count < 3)
+		return NEED_MORE;
+
+	if (buf[0].flag != TTY_BREAK || buf[1].data != LIN_SYNC_BYTE) {
+		linser_pop_fifo(priv, 1); /* pop incorrect start */
+		return NEED_MORE;
+	} else if (!LIN_CHECK_PID(buf[2].data)) {
+		linser_pop_fifo(priv, 3); /* pop incorrect header */
+		return NEED_MORE;
+	}
+
+	lf->lin_id = LIN_GET_ID(buf[2].data);
+
+	/* from here on we do have a correct LIN header */
+
+	if (count == 3)
+		return linser_tx_frame_as_responder(priv, lf->lin_id) ?
+		       NEED_MORE : NEED_FORCE;
+
+	for (i = 3; i < count && i < LINSER_PARSE_BUFFER && i < 12; i++) {
+		if (buf[i].flag == TTY_BREAK) {
+			brk = i;
+			break;
+		}
+		lf->len++;
+	}
+	if (lf->len)
+		lf->len -= 1; /* account for checksum */
+
+	if (brk == 3)
+		return MODE_OK;
+
+	if (brk == 4) {
+		/* suppress wrong answer data-byte in between PID and break
+		 * because checksum is missing
+		 */
+		return MODE_OK;
+	}
+
+	for (i = 0; i < lf->len; i++)
+		lf->data[i] = buf[3 + i].data;
+	lf->checksum = buf[2 + lf->len + 1].data;
+	mutex_lock(&priv->resp_lock);
+	lf->checksum_mode = priv->respond_answ[lf->lin_id].lf.checksum_mode;
+	mutex_unlock(&priv->resp_lock);
+
+	dev_dbg(&serdev->dev, "brk:%i, len:%u, data:%*ph, checksum:%x (%s)\n",
+		brk, lf->len, lf->len, lf->data, lf->checksum,
+		lf->checksum_mode ? "enhanced" : "classic");
+
+	if (brk > 4)
+		return MODE_OK;	/* frame in between two breaks: so complete */
+
+	if (lf->len == 8)
+		return MODE_OK;
+
+	return NEED_FORCE;
+}
+
+static int linser_process_frame(struct linser_priv *priv, bool force)
+{
+	struct serdev_device *serdev = priv->serdev;
+	struct lin_frame lf;
+	size_t bytes_to_pop;
+	int ret = NEED_MORE;
+
+	while (kfifo_len(&priv->rx_fifo) >= LIN_HEADER_SIZE) {
+		ret = linser_fill_frame(priv, &lf);
+
+		if (ret == MODE_OK || (ret == NEED_FORCE && force)) {
+			dev_dbg(&serdev->dev, "lin_rx: %s\n",
+				force ? "force" : "normal");
+			lin_rx(priv->lin_dev, &lf);
+			bytes_to_pop = LIN_HEADER_SIZE + lf.len +
+				       (lf.len ? 1 : 0);
+			linser_pop_fifo(priv, bytes_to_pop);
+			force = false;
+			ret = MODE_OK;
+		} else {
+			return ret;
+		}
+	}
+
+	return ret;
+}
+
+static void linser_process_delayed(struct work_struct *work)
+{
+	struct linser_priv *priv = container_of(work, struct linser_priv,
+						rx_work.work);
+
+	linser_process_frame(priv, true);
+}
+
+static ssize_t linser_receive_buf_fp(struct serdev_device *serdev,
+				     const u8 *data, const u8 *fp,
+				     size_t count)
+{
+	struct linser_priv *priv = serdev_device_get_drvdata(serdev);
+	enum linser_rx_status rx_status;
+	ssize_t n = 0;
+	int i;
+
+	cancel_delayed_work_sync(&priv->rx_work);
+
+	for (i = 0; i < count; i++) {
+		struct linser_rx rx;
+
+		rx.data = data[i];
+		rx.flag = (fp ? fp[i] : 0);
+		n += kfifo_in(&priv->rx_fifo, &rx, 1);
+		dev_dbg(&serdev->dev, "%s: n:%zd, flag:0x%02x, data:0x%02x\n",
+			__func__, n, rx.flag, data[i]);
+	}
+
+	rx_status = linser_process_frame(priv, false);
+
+	if (rx_status == NEED_FORCE)
+		schedule_delayed_work(&priv->rx_work, priv->force_timeout_jfs);
+
+	return n;
+}
+
+static const struct serdev_device_ops linser_ops = {
+	.receive_buf_fp = linser_receive_buf_fp,
+	.write_wakeup = serdev_device_write_wakeup,
+};
+
+static int linser_probe(struct serdev_device *serdev)
+{
+	struct linser_priv *priv;
+	int ret;
+
+	priv = devm_kzalloc(&serdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	ret = kfifo_alloc(&priv->rx_fifo, LINSER_RX_FIFO_SIZE, GFP_KERNEL);
+	if (ret)
+		return ret;
+
+	INIT_DELAYED_WORK(&priv->rx_work, linser_process_delayed);
+
+	priv->serdev = serdev;
+	serdev_device_set_drvdata(serdev, priv);
+	serdev_device_set_client_ops(serdev, &linser_ops);
+
+	ret = serdev_device_open(serdev);
+	if (ret) {
+		dev_err(&serdev->dev, "Unable to open device\n");
+		goto err_open;
+	}
+
+	serdev_device_set_flow_control(serdev, false);
+	serdev_device_set_break_detection(serdev, true);
+	linser_derive_timings(priv, LIN_DEFAULT_BAUDRATE);
+
+	mutex_init(&priv->resp_lock);
+
+	priv->lin_dev = register_lin(&serdev->dev, &linser_lindev_ops);
+	if (IS_ERR_OR_NULL(priv->lin_dev)) {
+		ret = PTR_ERR(priv->lin_dev);
+		goto err_register_lin;
+	}
+
+	serdev_device_close(serdev);
+	priv->is_stopped = true;
+
+	return 0;
+
+err_register_lin:
+	serdev_device_close(serdev);
+err_open:
+	kfifo_free(&priv->rx_fifo);
+	return ret;
+}
+
+static void linser_remove(struct serdev_device *serdev)
+{
+	struct linser_priv *priv = serdev_device_get_drvdata(serdev);
+
+	unregister_lin(priv->lin_dev);
+}
+
+static const struct of_device_id linser_of_match[] = {
+	{
+		.compatible = "hexdev,lin-serdev",
+	},
+	{}
+};
+MODULE_DEVICE_TABLE(of, linser_of_match);
+
+static struct serdev_device_driver linser_driver = {
+	.probe = linser_probe,
+	.remove = linser_remove,
+	.driver = {
+		.name = KBUILD_MODNAME,
+		.of_match_table = linser_of_match,
+	}
+};
+
+module_serdev_device_driver(linser_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Christoph Fritz <christoph.fritz@hexdev.de>");
+MODULE_DESCRIPTION("LIN-Bus serdev driver");
-- 
2.39.2


