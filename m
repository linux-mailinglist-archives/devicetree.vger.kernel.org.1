Return-Path: <devicetree+bounces-240671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DF7C73F21
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:21:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 30F4C35260E
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:18:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 860773346B2;
	Thu, 20 Nov 2025 12:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="hro9HM45"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC993314C5;
	Thu, 20 Nov 2025 12:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763641107; cv=none; b=J8ccE3MnyMyonoqHXJS8xTE4zctq6TSMQ0tvIavxKUtVB+z+3vpCppAtZR7CzF6iUbiPGXeCUwLPf6SvMReE3i66Sp9vXcAK6XPaecUYTIMDnrtMHM1M1aYjANU8nWkjK1ld6Rj8LVR3irgXh1K6pwwlNMELhvxv6lWF7cVOHfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763641107; c=relaxed/simple;
	bh=Vxav7XyDqCbVQnUGsLagYTNwyeirTjuz6rEWixVHDF4=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jI4HOROHrH/TMjBJjNVfw/uWdsN2aBt6nwZidGZBpNwufcMCe/CHvN7Ja/6AUvhWYOmapOxwLVj4J8AcvOEj3EGvv/9k8KfMLHsSm42FBgUtr6u9ya3AdeA47KSP00gPXstgRQaJ1hv9l7a7aPggm35zYgLK4fyagghJZjaBeC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=hro9HM45; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: ff7ecfa8c60a11f08ac0a938fc7cd336-20251120
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=3oJiCAFnSSqs+1N9A+csqjVeGPs0gjhYFNbYsa4KcUk=;
	b=hro9HM45egRCiqNPb1aaGP/9VmY++bU9EtV8CCcB4YEWOrqfXRH1119hYaHKq95TMnzb++ITZ31Kj3v4KzEv82Y/OLOGtEE7wmpmBiMTA5bKnmIHQwXd+zlbgUNgnJOqsp5SjPuUkpL2XlMJr0/uqy+7Nu02o82Sw9ChGpRhg2Y=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:12ac9481-adc7-4114-8e66-bd4adcf5a12b,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:007304bb-0c02-41a0-92a3-94dc7dc7eeca,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|123|836|888|898,TC:-5,Cont
	ent:0|15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:
	0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: ff7ecfa8c60a11f08ac0a938fc7cd336-20251120
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw01.mediatek.com
	(envelope-from <ot_shunxi.zhang@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 150345237; Thu, 20 Nov 2025 20:18:18 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 20 Nov 2025 20:18:17 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1748.26 via Frontend Transport; Thu, 20 Nov 2025 20:18:16 +0800
From: <ot_shunxi.zhang@mediatek.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Eddie Huang
	<eddie.huang@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, Alexandre
 Belloni <alexandre.belloni@bootlin.com>, Lee Jones <lee@kernel.org>, Shunxi
 Zhang <ot_shunxi.zhang@mediatek.com>, <Vince-WL.Liu@mediatek.com>,
	<sirius.wang@mediatek.com>, <Jh.Hsu@mediatek.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH v2 4/5] rtc: mt6397: Add BBPU alarm status reset and shutdown handling
Date: Thu, 20 Nov 2025 20:18:00 +0800
Message-ID: <20251120121805.6775-5-ot_shunxi.zhang@mediatek.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20251120121805.6775-1-ot_shunxi.zhang@mediatek.com>
References: <20251120121805.6775-1-ot_shunxi.zhang@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Shunxi Zhang <ot_shunxi.zhang@mediatek.com>

Function "mtk_rtc_reset_bbpu_alarm_status" is added to address the
issue that the RTC BBPU alarm state remains after the RTC alarm
has occurred.

Additionally, function "mtk_rtc_shutdown" is added to address the
issue of the platform being powered on again after shutdown because
the RTC_BBPU alarm state was not cleared.

Signed-off-by: Shunxi Zhang <ot_shunxi.zhang@mediatek.com>
---
 drivers/rtc/rtc-mt6397.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index b8f44a00de5d..8bf7e0822ef0 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -37,6 +37,21 @@ static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
 	return ret;
 }
 
+static void mtk_rtc_reset_bbpu_alarm_status(struct mt6397_rtc *rtc)
+{
+	u32 bbpu = RTC_BBPU_KEY | RTC_BBPU_PWREN | RTC_BBPU_RESET_AL;
+	int ret;
+
+	ret = regmap_write(rtc->regmap, rtc->addr_base + RTC_BBPU, bbpu);
+	if (ret < 0) {
+		dev_err(rtc->rtc_dev->dev.parent, "%s: write rtc bbpu error\n",
+			__func__);
+		return;
+	}
+
+	mtk_rtc_write_trigger(rtc);
+}
+
 static irqreturn_t mtk_rtc_irq_handler_thread(int irq, void *data)
 {
 	struct mt6397_rtc *rtc = data;
@@ -51,6 +66,9 @@ static irqreturn_t mtk_rtc_irq_handler_thread(int irq, void *data)
 		if (regmap_write(rtc->regmap, rtc->addr_base + RTC_IRQ_EN,
 				 irqen) == 0)
 			mtk_rtc_write_trigger(rtc);
+
+		if (rtc->alarm_sta_supported)
+			mtk_rtc_reset_bbpu_alarm_status(rtc);
 		mutex_unlock(&rtc->lock);
 
 		return IRQ_HANDLED;
@@ -249,6 +267,7 @@ static int mtk_rtc_probe(struct platform_device *pdev)
 	struct resource *res;
 	struct mt6397_chip *mt6397_chip = dev_get_drvdata(pdev->dev.parent);
 	struct mt6397_rtc *rtc;
+	struct device_node *np = pdev->dev.of_node;
 	int ret;
 
 	rtc = devm_kzalloc(&pdev->dev, sizeof(struct mt6397_rtc), GFP_KERNEL);
@@ -275,6 +294,8 @@ static int mtk_rtc_probe(struct platform_device *pdev)
 	if (IS_ERR(rtc->rtc_dev))
 		return PTR_ERR(rtc->rtc_dev);
 
+	rtc->alarm_sta_supported = of_property_read_bool(np, "mediatek,alarm-sta-supported");
+
 	ret = devm_request_threaded_irq(&pdev->dev, rtc->irq, NULL,
 					mtk_rtc_irq_handler_thread,
 					IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
@@ -297,6 +318,14 @@ static int mtk_rtc_probe(struct platform_device *pdev)
 	return devm_rtc_register_device(rtc->rtc_dev);
 }
 
+static void mtk_rtc_shutdown(struct platform_device *pdev)
+{
+	struct mt6397_rtc *rtc = platform_get_drvdata(pdev);
+
+	if (rtc->alarm_sta_supported)
+		mtk_rtc_reset_bbpu_alarm_status(rtc);
+}
+
 #ifdef CONFIG_PM_SLEEP
 static int mt6397_rtc_suspend(struct device *dev)
 {
@@ -346,6 +375,7 @@ static struct platform_driver mtk_rtc_driver = {
 		.pm = &mt6397_pm_ops,
 	},
 	.probe = mtk_rtc_probe,
+	.shutdown = mtk_rtc_shutdown,
 };
 
 module_platform_driver(mtk_rtc_driver);
-- 
2.45.2


