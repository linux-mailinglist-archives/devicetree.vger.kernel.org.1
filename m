Return-Path: <devicetree+bounces-66233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 508A98C22B9
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 13:05:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 824E01C20CC0
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 11:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 002C516D9A1;
	Fri, 10 May 2024 11:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="pvhpW5hj"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1221D16ABC3;
	Fri, 10 May 2024 11:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715339139; cv=none; b=WAjRISKWFF7fB7gjLhA3lgGS3M7mFkLJdFHi1W/kwnHG9E5WgfgpMipaZ6v/XeccFUJfhnLNHBOIZPBIePxIK4SsZjgV+NgcFBbnYtEC/TncF8Ztmtea0JwbN9e4ITf60fRdKrM14QyEv0aZS9MPtdZUqi8XPlau2DSyrY+TOGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715339139; c=relaxed/simple;
	bh=Hyy5BxHIgcuy/mWcHVUxtmJ6Ufl2y8saMP4OWvAQpdQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iXcQW0TWpBRfupogtjKJ/+vpnMnQQ3g6gG42ee4/laIIKrSNaGwBfeXNbso7yHvvGdEi2lx7RnE8M7753PJJ4fITiUuRQPjGcPMwSHvG8F9jrg/r0zjA+icEL7+Lr3bT/+obPZCf269B/S2jdkEaoL5bMxqKO2V1GRY43hMVHJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=pvhpW5hj; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 3858353c0ebd11ef8065b7b53f7091ad-20240510
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=kpRLxFp1HniKMgGxgeGEPO0SSPqHobCE+LsRmF4NMto=;
	b=pvhpW5hj2YNG0F4cXbOQvaxS1Kh8OHJ89wIUS55tbsOURE77hW3bpD8q0M3SRPeOMY4SBAVk8PdaPM1dBLePN8vH5hH9SMuUbpAMUd06ViL0vSyXO6MSm7Ji4wNBlXxa/WQJ8oebGbwsg2WxHgDt/n7lapHdOoWQNRF1f9c0z8Y=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38,REQID:c9705c32-425e-4ca0-b8c8-2e5db76f7ddf,IP:0,U
	RL:25,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:20
X-CID-META: VersionHash:82c5f88,CLOUDID:1bcb3287-8d4f-477b-89d2-1e3bdbef96d1,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES
	:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_ULN,TF_CID_SPAM_SNR
X-UUID: 3858353c0ebd11ef8065b7b53f7091ad-20240510
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw02.mediatek.com
	(envelope-from <liankun.yang@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1906352426; Fri, 10 May 2024 19:05:32 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 10 May 2024 19:05:31 +0800
Received: from mszsdhlt06.gcn.mediatek.inc (10.16.6.206) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 10 May 2024 19:05:30 +0800
From: Liankun Yang <liankun.yang@mediatek.com>
To: <chunkuang.hu@kernel.org>, <p.zabel@pengutronix.de>, <airlied@gmail.com>,
	<daniel@ffwll.ch>, <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<chunfeng.yun@mediatek.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
	<matthias.bgg@gmail.com>, <angelogioacchino.delregno@collabora.com>,
	<jitao.shi@mediatek.com>, <mac.shen@mediatek.com>,
	<liankun.yang@mediatek.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
CC: <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v2 2/2] Add dp PHY dt-bindings
Date: Fri, 10 May 2024 19:04:15 +0800
Message-ID: <20240510110523.12524-3-liankun.yang@mediatek.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240510110523.12524-1-liankun.yang@mediatek.com>
References: <20240510110523.12524-1-liankun.yang@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-MTK: N

Add dp PHY dt-bindings.

Changeds in v2:
- Add dp PHY dt-bindings.
https://patchwork.kernel.org/project/linux-mediatek/patch/
20240403040517.3279-1-liankun.yang@mediatek.com/

Signed-off-by: Liankun Yang <liankun.yang@mediatek.com>
---
 .../display/mediatek/mediatek.phy-dp.yaml     | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek.phy-dp.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek.phy-dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek.phy-dp.yaml
index 000000000000..476bc329363f
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek.phy-dp.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek/mediatek,phy-dp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek Display Port Controller
+
+maintainers:
+  - Mac shen <mac.shen@mediatek.com>
+  - Liankun yang <Liankun.yang@mediatek.com>
+
+description: |
+  Special settings need to be configured by MediaTek DP based on the actual
+  hardware situation. For example, when using a certain brand's docking
+  station for display projection, garbage may appear. Adjusting the specific
+  ssc value can resolve this issue.
+
+properties:
+  status: disabled
+    description: |
+      Since the DP driver has already registered the DP PHY device
+      through mtk_dp_register_phy(), so the status is disabled.
+
+  dp-ssc-setting:
+    - ssc-delta-hbr
+    description: Specific values are set based on the actual HW situation.
+
+required:
+  - status
+  - dp-ssc-setting
+
+examples:
+  - |
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        phy-dp@1c600000 {
+          status = "disabled";
+          dp-ssc-setting {
+            ssc-delta-hbr = <0x01fe>;
+          }
+        };
+    };
-- 
2.18.0


