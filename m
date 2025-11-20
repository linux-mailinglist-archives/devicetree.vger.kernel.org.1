Return-Path: <devicetree+bounces-240670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BD2C73F00
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:19:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 26D764E7D99
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:18:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9827333436;
	Thu, 20 Nov 2025 12:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="tTRTnU+f"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3565824A3;
	Thu, 20 Nov 2025 12:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763641105; cv=none; b=JtrLFn/BCjchpQksU1/aG9fwawfYYuyA2qsC451eRHbIhPHnJaBCHxI2QG5Xa+aWC3/MKDpyDtdASToZqyIlgys03nvJLb16NYjvsftAHXzghClYbfJ1zUzAYdP4iZ4cbA0RVG13bTGurVt10OxT/+ADLYKrS/2Dr7OpZ7FeDOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763641105; c=relaxed/simple;
	bh=i3uFgoWp5gPv85aeGBNAZtlsGgimFsKiwaH3D4TtTEw=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=azjV/yBqj2Dk0N4qyx3ZCy+DmnNgJvj3b9k3GBl0adZcRoBIEe3WsmRwx/C4dHhK8KceSlx1wGCHk2Rmlasl0TPb/er8SQgX0rWwjjxozxWMzHQ8l9yoJWn4cPXxCY37nyXLZfO5QHV60P561gqn8jJGbOIQMcvmiHEiK2G5JgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=tTRTnU+f; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: f9b8d1b8c60a11f0b33aeb1e7f16c2b6-20251120
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=5O3QSTjG/GYo1v2aEYGeurT8OjIk96rTbcs+GIL+0MQ=;
	b=tTRTnU+fTdPzygTjmujJJcaroT1gjqb01wJfCGiNU8sC2STNDUS34XzS0hmbBvK28nLn6D11C1dTuPTN3cYiLAqv30uTIaMlAacYUuNK8Mx6cNrtrBDhOGThJi30v2N63HAjXTLNLN2oyYGqYxsS4Pjnwuz0a56cuFlYXanikhI=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:8d9efc55-9d3a-4504-934e-74e3b3032e96,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:90dab1e0-f48b-4fea-bcf0-ae56d774aa1d,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102|123|836|888|898,TC:-5,Content:0|
	15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:
	0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: f9b8d1b8c60a11f0b33aeb1e7f16c2b6-20251120
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw02.mediatek.com
	(envelope-from <ot_shunxi.zhang@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1862464299; Thu, 20 Nov 2025 20:18:09 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 20 Nov 2025 20:18:07 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1748.26 via Frontend Transport; Thu, 20 Nov 2025 20:18:06 +0800
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
Subject: [PATCH v2 0/5] rtc: Enhance RTC driver with BBPU bit definitions and shutdown handling
Date: Thu, 20 Nov 2025 20:17:56 +0800
Message-ID: <20251120121805.6775-1-ot_shunxi.zhang@mediatek.com>
X-Mailer: git-send-email 2.46.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Shunxi Zhang <ot_shunxi.zhang@mediatek.com>

(1) Add new bits definitions for RTC_BBPU register.
(2) Add new functions to reset the BBPU alarm status in mt6397 RTC driver
(3) Add mtk_rtc_shutdown function to handle RTC shutdown events.
(4) For the V1 version comments, the following modifications are made: 
(4.1)the formatting changes are separated into a distinct patch. 
(4.2)Since the rtc-mt6397.c file is a fusion of multiple RTC drivers 
for the mt6358, mt6359, and mt6357 RTCs, the definitions of certain bits 
in the RTC_BBPU register differ among these RTCs. The mt6359 supports 
the alarm status bit, while both mt6358 and mt6357 do not. Therefore, 
the alarm-sta-supported property is added in the mt6359.dtsi file to 
differentiate between the different RTCs. 
(4.3)Additionally, the operation to disable IRQ in the shutdown function 
is removed.

Shunxi Zhang (5):
  mfd: mt6397: Fix formatting of RTC_BBPU_KEY definition
  mfd: mt6397: Add bit definitions and struct members to support alarm
    status
  rtc: mt6397: Fix formatting of platform driver structure
  rtc: mt6397: Add BBPU alarm status reset and shutdown handling
  arm64: dts: mediatek: mt6359: Add alarm-sta-supported property to RTC
    node

 arch/arm64/boot/dts/mediatek/mt6359.dtsi |  1 +
 drivers/rtc/rtc-mt6397.c                 | 32 +++++++++++++++++++++++-
 include/linux/mfd/mt6397/rtc.h           |  5 +++-
 3 files changed, 36 insertions(+), 2 deletions(-)

-- 
2.45.2


