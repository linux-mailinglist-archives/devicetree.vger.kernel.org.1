Return-Path: <devicetree+bounces-4199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BFE7B18C2
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 12:58:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id F03542820D1
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 10:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D57DC358A0;
	Thu, 28 Sep 2023 10:58:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C63A3588D
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 10:58:54 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C0E412A;
	Thu, 28 Sep 2023 03:58:41 -0700 (PDT)
X-UUID: f773252a5ded11ee8051498923ad61e6-20230928
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=/i9DeA8LdPwAdmE9HcBWTajPCE+8XABsIEkcwpo4eO4=;
	b=d49GEh2VrxaOlvBDj1+tZy2FbyAuL6iiWb5iSzv5wRjFQIM9ulIwoV/FCTd890kWTmsQqxrfZRyfYfbIVf0/Ibh0ufHNOv1JmboF5shhlYfbtpP9b+rijl33WnIMLjlWV5/tdswR2oKajbe0IjdYTWU84lABp6p7YS/chxqJfsU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:caab4f31-088a-4cca-9bda-85747e10d72a,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:686b61bf-14cc-44ca-b657-2d2783296e72,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: f773252a5ded11ee8051498923ad61e6-20230928
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw02.mediatek.com
	(envelope-from <jian.yang@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 933141708; Thu, 28 Sep 2023 18:58:33 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 28 Sep 2023 18:58:32 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 28 Sep 2023 18:58:31 +0800
From: Jian Yang <jian.yang@mediatek.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi
	<lpieralisi@kernel.org>, =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?=
	<kw@linux.com>, Matthias Brugger <matthias.bgg@gmail.com>, Jianjun Wang
	<jianjun.wang@mediatek.com>, Rob Herring <robh@kernel.org>
CC: <linux-pci@vger.kernel.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<Chuanjia.Liu@mediatek.com>, <Jieyy.Yang@mediatek.com>,
	<Qizhong.Cheng@mediatek.com>, <Jian.Yang@mediatek.com>, Jian Yang
	<jian.yang@mediatek.com>
Subject: [PATCH v3 0/2] PCI: mediatek-gen3: Support controlling power supplies
Date: Thu, 28 Sep 2023 18:58:18 +0800
Message-ID: <20230928105819.5161-1-jian.yang@mediatek.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_BLOCKED,RDNS_NONE,SPF_HELO_PASS,SPF_PASS,
	UNPARSEABLE_RELAY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

These series patches is based on linux-next, tag: next-20230921.
Add support for controlling power supplies and reset GPIO of a downstream
component in Mediatek's PCIe GEN3 controller driver.

Changes in v3:
1. Modify description of power supply properties in DT binding.
2. Remove unused header files.
3. Use 'device_wakeup_path' to determine whether the downstream component
needs to skip the reset process in system suspend scenarios.

jian.yang (2):
  dt-bindings: PCI: mediatek-gen3: Add support for controlling power and
    reset
  PCI: mediatek-gen3: Add power and reset control feature for downstream
    component

 .../bindings/pci/mediatek-pcie-gen3.yaml      | 25 +++++
 drivers/pci/controller/pcie-mediatek-gen3.c   | 93 ++++++++++++++++++-
 2 files changed, 117 insertions(+), 1 deletion(-)

-- 
2.18.0


