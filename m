Return-Path: <devicetree+bounces-240672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C5510C73F0C
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:19:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 822DF4E95A7
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 859BB3346A6;
	Thu, 20 Nov 2025 12:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="f/2vGwdt"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3FB332EA1;
	Thu, 20 Nov 2025 12:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763641107; cv=none; b=uuh4PEkY5/rbJY7z4KVuId0M/jYqhxHb34szpwc1g8/YX940JEJTLdDP6GJ9lqCJWifIkqxdWJiVnbElJe6zPDh5C4jWnPw+QgRvTkHWDB9bTH8mrvjER7FIhqJye5MpLtSqnI+yGlo/SFZSusUScCzP6e31v0rdgreGfdHc9SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763641107; c=relaxed/simple;
	bh=jhWhWVoA5Nx+NThyj5ek2Wb60/QYyeMKybFnMTAl75E=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MyjrY2j/qeqUu+BqhMizzBoR8uuWtb2kHmzCv0mA4ovcDpa6GqfjFeOVsuXMNTlYUsbVEetaGnH2fgk/oIJQ/qNJfGIP0KSCULM46QgLYMoSXQwYbae5jUrmT3VmFLO3KGwW9viwp3rEebAi+KomDZLwvey/Ryd+UlldipT7cGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=f/2vGwdt; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: fc9a7b70c60a11f08ac0a938fc7cd336-20251120
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=rsteaxwmn11dQnr7Va5x92id71POVjFtFsjVHcNIMtc=;
	b=f/2vGwdtPnxHL/y0tet5KwSBSErPEYL6ymkTfszH4iCt93R55YLaT8pHGIuteeJZpxz6sjerwop0NhxBxUt4ecehcov6BQ/qUBZkyMK4b8c2t0bYh7HPRO2iVBB6ny7Jz/VQ0vvrGDkD8HGz/GOC3vv0KIvXNGxJANgecVt/BWQ=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:f0d01e15-cc3e-4edb-adfd-c759c4728234,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:abdab1e0-f48b-4fea-bcf0-ae56d774aa1d,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|123|836|888|898,TC:-5,Cont
	ent:0|15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:
	0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: fc9a7b70c60a11f08ac0a938fc7cd336-20251120
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw01.mediatek.com
	(envelope-from <ot_shunxi.zhang@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1513773302; Thu, 20 Nov 2025 20:18:13 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 20 Nov 2025 20:18:12 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1748.26 via Frontend Transport; Thu, 20 Nov 2025 20:18:11 +0800
From: <ot_shunxi.zhang@mediatek.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Eddie Huang
	<eddie.huang@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, "Alexandre
 Belloni" <alexandre.belloni@bootlin.com>, Lee Jones <lee@kernel.org>, "Shunxi
 Zhang" <ot_shunxi.zhang@mediatek.com>, <Vince-WL.Liu@mediatek.com>,
	<sirius.wang@mediatek.com>, <Jh.Hsu@mediatek.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH v2 2/5] mfd: mt6397: Add bit definitions and struct members to support alarm status
Date: Thu, 20 Nov 2025 20:17:58 +0800
Message-ID: <20251120121805.6775-3-ot_shunxi.zhang@mediatek.com>
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

This patch adds new bit definitions for the RTC_BBPU register and one
members in the mt6397_rtc_data structure in the mt6397 RTC header file
to support alarm status functionality in the MT6397 RTC driver.

Signed-off-by: Shunxi Zhang <ot_shunxi.zhang@mediatek.com>
---
 include/linux/mfd/mt6397/rtc.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/mfd/mt6397/rtc.h b/include/linux/mfd/mt6397/rtc.h
index 6d0bb1ea151b..fb320719f676 100644
--- a/include/linux/mfd/mt6397/rtc.h
+++ b/include/linux/mfd/mt6397/rtc.h
@@ -15,6 +15,8 @@
 #include <linux/rtc.h>
 
 #define RTC_BBPU               0x0000
+#define RTC_BBPU_PWREN         BIT(0)
+#define RTC_BBPU_RESET_AL      BIT(3)
 #define RTC_BBPU_CBUSY         BIT(6)
 #define RTC_BBPU_KEY           (0x43 << 8)
 
@@ -76,6 +78,7 @@ struct mt6397_rtc {
 	int                     irq;
 	u32                     addr_base;
 	const struct mtk_rtc_data *data;
+	bool                    alarm_sta_supported;
 };
 
 #endif /* _LINUX_MFD_MT6397_RTC_H_ */
-- 
2.45.2


