Return-Path: <devicetree+bounces-134647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C08F9FE24B
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 04:46:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 696FC160ECE
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 03:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B11E142624;
	Mon, 30 Dec 2024 03:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="s/9mem8u"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2621210E4;
	Mon, 30 Dec 2024 03:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735530401; cv=none; b=oPNV6TEinZfuF7UhvtpeD8hMW4squPBGWasekVbb4QJFZNlxPSH1G+nGZAi7zMgmwOxud7YfKJbOjkgi4I5wMVV1KrDlCNCw/jYwTjO9eUlvWleN8x1qo/JK8EzA7lmVIlvvHJsTwM1f6z45B1nq4prvWlt7jA9JIQc16fv1DIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735530401; c=relaxed/simple;
	bh=TiDkg6AiYPkdZWrAmzK+VU8EjtgTH1UQrBNXlOjfIXY=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Sa69I1CiwK3Ighpq8hEHpP/cPUdihW17SQB1KbDFiJLGfRSR/Mn2N2XXH+DGRP0WpNAWk8etB0ErH06FLlYOP5vFGjMyFWYCHaNqaJrH9Jy+hb8ci9wiX749sBc0QN1MtcOCj56ICjn1RTgpWvkPjqDd4Gt6ROI9Uqc6MKjqp5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=s/9mem8u; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: a67ee6a4c66011ef99858b75a2457dd9-20241230
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=qsNIN8cQf/8LrBXZhXmWKQYMiuKK9ftCpSHglr/VApQ=;
	b=s/9mem8us8DYNxC6tIle+W0hzqYLMNMf/fLwEDlq1Wvcj3iJRRdkLuHOy+zapK/cz7feXdt0OJRK4+e9nLbzsvxnmjjOKqsHYu8A9J3bwg6PrTGGfJYOrF9/rjML+BIG46mQkZ/7x/6/j3uLdPmTvptbgu9ftPGy+eJNvrVU70s=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:f8e4f335-ccf1-4af7-9243-f59b45e58ac2,IP:0,U
	RL:0,TC:0,Content:100,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:100
X-CID-META: VersionHash:60aa074,CLOUDID:ebf16125-8650-4337-bf57-045b64170f0c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102|801,TC:nil,Content:3|50,EDM:-3,I
	P:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,A
	V:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: a67ee6a4c66011ef99858b75a2457dd9-20241230
Received: from mtkmbs09n2.mediatek.inc [(172.21.101.94)] by mailgw01.mediatek.com
	(envelope-from <karl.li@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1554501497; Mon, 30 Dec 2024 11:46:28 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 30 Dec 2024 11:46:26 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 30 Dec 2024 11:46:26 +0800
From: Karl.Li <karl.li@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Karl Li <Karl.Li@mediatek.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	Chungying Lu <chungying.lu@mediatek.com>, Chien-Chih Tseng
	<Chien-Chih.Tseng@mediatek.com>, Andy Teng <Andy.Teng@mediatek.com>, Chen-Yu
 Tsai <wenst@chromium.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Karl Li
	<karl.li@mediatek.com>
Subject: [PATCH v2 0/3] Add MediaTek APU Mailbox Support For MT8196
Date: Mon, 30 Dec 2024 11:43:34 +0800
Message-ID: <20241230034446.1195728-1-karl.li@mediatek.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Karl Li <karl.li@mediatek.com>

Based on tag: next-20241220, linux-next/master

Hello,

This patch series introduces support for the MediaTek APU (AI Processing Unit) mailbox, a crucial component for facilitating communication between the APU and other system processors within MediaTek platforms. The APU subsystem relies on a message-passing mechanism built atop the mailbox infrastructure, necessitating enhancements to the existing mailbox framework to accommodate the APU's communication requirements.

The series begins by adding the necessary device tree bindings for the APU mailbox, followed by an enhancement to the mailbox framework allowing for bottom-half processing of received data. This is particularly important for the APU's operation, as it relies on a combination of mailbox messages and shared memory for data exchange. Finally, we introduce the MediaTek APU mailbox driver itself, which implements the communication protocol and exposes additional hardware features for broader system integration.

Patch Summary:
1. dt-bindings: mailbox: mediatek: Add apu-mailbox document
   - Introduces the device tree bindings necessary for describing the APU mailbox in device tree sources, enabling the kernel to correctly configure and utilize this component.

2. mailbox: add support for bottom half received data
   - Enhances the mailbox framework to support sleepable contexts in the processing of received messages. This is critical for APU communication, where message handling may require operations that cannot be performed in atomic contexts.

3. mailbox: mediatek: Add mtk-apu-mailbox driver
   - Adds the driver for the MediaTek APU mailbox, facilitating communication with the APU microprocessor and providing interfaces for other system components to interact with the APU through spare registers.

This work is a step towards fully integrating MediaTek's APU capabilities with the Linux kernel, enhancing support for AI features on MediaTek platforms.

Please review and provide feedback.

Best regards

---

Changes in v2
- [1/3]
	- Add APU description in commit message and dt-bindings description.
	- Remove mt8188 in dt-bindings to make this patch focus on mt8196.
	- Drop "apu_mailbox" label since no one reference to it.
	- Modify the rule of compatible property.
	- Add cells number to resolve dt_binding_check error.
- [2/3]
	- Add more description in commit message to describe why we need sleepable callback function.
- [3/3]
	- Use regmap provide spare register operation.
	- Remove global variable `g_mbox`.
	- Add `MTK_APU_MBOX` prefix for each macro define.
	- Only keep mt8196 compatible to make this patch focus on mt8196.
	- Rename mbox_controller to `mbox`.
	- Use mtk_apu_mbox_msg to define msgs in mtk_apu_mailbox.
	- Rename top-half and bottom-half function.
	- Change to pass mbox.chans to isr.
	- Move platform_get_irq before register controller.
	- Remove `remove` callback function.
	- Rename send_cnt to data_cnt, and using u8 instead of int.
	- Use platform data to support the available slots for different platforms.
	- Use memory copy to sync mailbox data.
	- Use outbox irq bits to indicate the received slots number.

---

Karl Li (3):
  dt-bindings: mailbox: mediatek: Add apu-mailbox dt-bindings
  mailbox: add support for bottom half received data
  mailbox: mediatek: Add mtk-apu-mailbox driver

 .../mailbox/mediatek,apu-mailbox.yaml         |  60 ++++++
 drivers/mailbox/Kconfig                       |   9 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/mailbox.c                     |  16 ++
 drivers/mailbox/mtk-apu-mailbox.c             | 202 ++++++++++++++++++
 include/linux/mailbox/mtk-apu-mailbox.h       |  15 ++
 include/linux/mailbox_client.h                |   2 +
 include/linux/mailbox_controller.h            |   1 +
 8 files changed, 307 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/mediatek,apu-mailbox.yaml
 create mode 100644 drivers/mailbox/mtk-apu-mailbox.c
 create mode 100644 include/linux/mailbox/mtk-apu-mailbox.h

-- 
2.18.0


