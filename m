Return-Path: <devicetree+bounces-134648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 530D59FE24C
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 04:46:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EFB767A1054
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 03:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C75C14F9FA;
	Mon, 30 Dec 2024 03:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="DmABF2KU"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262562EAF7;
	Mon, 30 Dec 2024 03:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735530401; cv=none; b=Qsm0Ujyy4S4csE+jlnT5TVN4U6QuKXK44JwlknPM46iDrDSpZPJ9kv+S9Do8mchzAMkiXrG/4UlfoOoY+YZFzlr0tRbnJxzowl09+ukRLC8RY/NXQSy8Ik5x2SABrBki2UkfzNCfHMq48Pg4L4pQEHAQzcpAI5jXDiuMifyRi80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735530401; c=relaxed/simple;
	bh=+C8nzuiV69MsabwMkYqGAB7ikyzxccaMRVFXoCr8w7M=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=caqsfC38GgwOhiR5Ltst+oRAjk6BddmIiajgiHdEw9WAYsvKgzY75LXWbQFUlRbZv7IfCaHvdC9m5nmSsODUZnmLB8qfH1jBjRxsvUwspHumsqbDGRZ/wDsVPc4BQEymMFUcI9Va9uREqoRF6nXtqthSxBY6PoVIgiBEK/6hakY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=DmABF2KU; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: aaa7b7c4c66011ef99858b75a2457dd9-20241230
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=mUZspnxInoGy784xhYR1q47914Jrd+G34f1ewTVp/qQ=;
	b=DmABF2KUtJ8rni4TaFPSxDogW4sg+oVv7fdSLNCzYkRrFJaX085BcnS4kEQoe8AtthL1GjNJ16tAZaRd3w0kmDowiHKnDod79VJx/BC5HRA1Sww+ak/c6ayt6r0OBOc56ZZKPu70fIxUFa4egPx/kohIllpMG1pi8jcvjscHAVY=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:ffd3e093-88fd-4332-a90d-ed51b232c5f8,IP:0,U
	RL:0,TC:0,Content:33,EDM:-25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTI
	ON:release,TS:8
X-CID-META: VersionHash:60aa074,CLOUDID:917a0e19-ec44-4348-86ee-ebcff634972b,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:3|50,EDM:1,
	IP:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: aaa7b7c4c66011ef99858b75a2457dd9-20241230
Received: from mtkmbs09n1.mediatek.inc [(172.21.101.35)] by mailgw01.mediatek.com
	(envelope-from <karl.li@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 719383982; Mon, 30 Dec 2024 11:46:35 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 30 Dec 2024 11:46:33 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 30 Dec 2024 11:46:33 +0800
From: Karl.Li <karl.li@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Karl Li <Karl.Li@mediatek.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	Chungying Lu <chungying.lu@mediatek.com>, Chien-Chih Tseng
	<Chien-Chih.Tseng@mediatek.com>, Andy Teng <Andy.Teng@mediatek.com>, "Chen-Yu
 Tsai" <wenst@chromium.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Karl Li
	<karl.li@mediatek.com>
Subject: [PATCH v2 2/3] mailbox: add support for bottom half received data
Date: Mon, 30 Dec 2024 11:43:36 +0800
Message-ID: <20241230034446.1195728-3-karl.li@mediatek.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241230034446.1195728-1-karl.li@mediatek.com>
References: <20241230034446.1195728-1-karl.li@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Karl Li <karl.li@mediatek.com>

Within the MediaTek APU subsystem, a message passing mechanism
is constructed on top of the mailbox system.

The mailbox only has limited space for each message. The MTK APU firmware
expects the message header from the mailbox, while the message body
is passed through some fixed shared memory.

The mailbox interrupt also serves as a mutex for the shared memory.
Thus the interrupt may only be cleared after the message is handled.

To be specific, the MTK APU firmware fills the message body into a
fixed shared memory, while passing the message header via a mailbox.

 ---------------        ---------------        ---------
| Kernel Buffer |  <-  | Shared Memory |  <-  | MTK APU |
 ---------------        ---------------        ---------

The top-half handler first copies the data from the shared memory to the
kernel buffer. Subsequently, the bottom-half handler uses the data
in the kernel buffer for specific processing tasks.

However, it is possible for the MTK APU to send a new message while
the kernel is still processing the previous one. In such cases,
the top-half handler may overwrite the kernel buffer while the data is
still needed, leading to a race condition.

Additionally, due to performance considerations, we cannot allocate a new
kernel buffer for each message.

To prevent this, we need a mechanism to protect the kernel buffer from
such race conditions. Since we cannot use locks to protect the kernel
buffer in an atomic context, we use the mailbox interrupt as a mutex for
the shared memory to further protect our kernel buffer. Therefore,
we clear the interrupt only after the message is handled.

Since the bottom half callback might need to go to sleep, we require a
sleepable callback for mailbox clients.

This patch adds a new sleepable RX callback for mailbox clients for cases
where handling the incoming message requires sleeping.

Signed-off-by: Karl Li <karl.li@mediatek.com>
---
 drivers/mailbox/mailbox.c          | 16 ++++++++++++++++
 include/linux/mailbox_client.h     |  2 ++
 include/linux/mailbox_controller.h |  1 +
 3 files changed, 19 insertions(+)

diff --git a/drivers/mailbox/mailbox.c b/drivers/mailbox/mailbox.c
index d3d26a2c9895..d58a77fcf804 100644
--- a/drivers/mailbox/mailbox.c
+++ b/drivers/mailbox/mailbox.c
@@ -164,6 +164,22 @@ void mbox_chan_received_data(struct mbox_chan *chan, void *mssg)
 }
 EXPORT_SYMBOL_GPL(mbox_chan_received_data);
 
+/**
+ * mbox_chan_received_data_bh - A way for controller driver to push data
+ *				received from remote to the upper layer.
+ * @chan: Pointer to the mailbox channel on which RX happened.
+ * @mssg: Client specific message typecasted as void *
+ *
+ * For the operations which is not atomic can be called from
+ * mbox_chan_received_data_bh().
+ */
+void mbox_chan_received_data_bh(struct mbox_chan *chan, void *mssg)
+{
+	if (chan->cl->rx_callback_bh)
+		chan->cl->rx_callback_bh(chan->cl, mssg);
+}
+EXPORT_SYMBOL_GPL(mbox_chan_received_data_bh);
+
 /**
  * mbox_chan_txdone - A way for controller driver to notify the
  *			framework that the last TX has completed.
diff --git a/include/linux/mailbox_client.h b/include/linux/mailbox_client.h
index 734694912ef7..2cc6fa4e1bf9 100644
--- a/include/linux/mailbox_client.h
+++ b/include/linux/mailbox_client.h
@@ -22,6 +22,7 @@ struct mbox_chan;
  *			if the client receives some ACK packet for transmission.
  *			Unused if the controller already has TX_Done/RTR IRQ.
  * @rx_callback:	Atomic callback to provide client the data received
+ * @rx_callback_bh:	Non-atomic callback to provide client the data received
  * @tx_prepare: 	Atomic callback to ask client to prepare the payload
  *			before initiating the transmission if required.
  * @tx_done:		Atomic callback to tell client of data transmission
@@ -33,6 +34,7 @@ struct mbox_client {
 	bool knows_txdone;
 
 	void (*rx_callback)(struct mbox_client *cl, void *mssg);
+	void (*rx_callback_bh)(struct mbox_client *cl, void *mssg);
 	void (*tx_prepare)(struct mbox_client *cl, void *mssg);
 	void (*tx_done)(struct mbox_client *cl, void *mssg, int r);
 };
diff --git a/include/linux/mailbox_controller.h b/include/linux/mailbox_controller.h
index 6fee33cb52f5..74c6a31cd313 100644
--- a/include/linux/mailbox_controller.h
+++ b/include/linux/mailbox_controller.h
@@ -130,6 +130,7 @@ struct mbox_chan {
 int mbox_controller_register(struct mbox_controller *mbox); /* can sleep */
 void mbox_controller_unregister(struct mbox_controller *mbox); /* can sleep */
 void mbox_chan_received_data(struct mbox_chan *chan, void *data); /* atomic */
+void mbox_chan_received_data_bh(struct mbox_chan *chan, void *data); /* can sleep */
 void mbox_chan_txdone(struct mbox_chan *chan, int r); /* atomic */
 
 int devm_mbox_controller_register(struct device *dev,
-- 
2.18.0


