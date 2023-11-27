Return-Path: <devicetree+bounces-19370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9444A7FA9E0
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 20:09:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40780281799
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 19:09:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 106073DBA5;
	Mon, 27 Nov 2023 19:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="Ein+VdWg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com [67.231.148.174])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEC30D5F;
	Mon, 27 Nov 2023 11:09:22 -0800 (PST)
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
	by mx0a-0016f401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AR9KWDN019847;
	Mon, 27 Nov 2023 11:09:10 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=pfpt0220;
 bh=NmexDYy/87mRqAdrvFUriqB4FUa8GiDHl/pDUel0z40=;
 b=Ein+VdWg6vmqHkDCR2ZS1sNVBali71wCcCeq9KLKwCLwJn0H0Ck4vEeUhkZm2dE69o7b
 UTwUOBR1iGKpixOIctu+0bdTSgD/PjBdCCkUNQ63xdOP+9biyvnibxwfzOYWeuK8FhE9
 PWwWqQDXkp/PREYMUQY/3XXYGiyxv8ty0zTYa4YPiVLSxgYSJttaPwRW9xesG4ps6TZ3
 bIBqo6h4NtljOB0WSL0skq7kao7u2zOFHfJxPa3piO5PUZDtD1zswJMoavCsTqDlA2w0
 61Aqgoldh7Q+biI/uPGFvV11WZgExwRqqD5ZIYduOlmbDEKPBjVJ+jqD4MsOuVCA7Pia BA== 
Received: from dc5-exch01.marvell.com ([199.233.59.181])
	by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 3umrcua4h2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Mon, 27 Nov 2023 11:09:10 -0800
Received: from DC5-EXCH01.marvell.com (10.69.176.38) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Mon, 27 Nov
 2023 11:09:08 -0800
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server id 15.0.1497.48 via Frontend
 Transport; Mon, 27 Nov 2023 11:09:08 -0800
Received: from dc3lp-swdev041.marvell.com (dc3lp-swdev041.marvell.com [10.6.60.191])
	by maili.marvell.com (Postfix) with ESMTP id 31AC83F7061;
	Mon, 27 Nov 2023 11:09:04 -0800 (PST)
From: Elad Nachman <enachman@marvell.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
        <sebastian.hesselbarth@gmail.com>, <pali@kernel.org>,
        <mrkiko.rs@gmail.com>, <chris.packham@alliedtelesis.co.nz>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <enachman@marvell.com>, <cyuval@marvell.com>
Subject: [PATCH v6 1/3] MAINTAINERS: add ac5 to list of maintained Marvell dts files
Date: Mon, 27 Nov 2023 21:08:55 +0200
Message-ID: <20231127190857.1977974-2-enachman@marvell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231127190857.1977974-1-enachman@marvell.com>
References: <20231127190857.1977974-1-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: EAUUFmDRpg-Yb-rC_3tFWyJKs67EXdmG
X-Proofpoint-ORIG-GUID: EAUUFmDRpg-Yb-rC_3tFWyJKs67EXdmG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-27_17,2023-11-27_01,2023-05-22_02

From: Elad Nachman <enachman@marvell.com>

Add ac5 dts files to the list of maintained Marvell Armada dts files

Signed-off-by: Elad Nachman <enachman@marvell.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b81da7a36a36..6f863a0c3248 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2339,6 +2339,7 @@ F:	arch/arm/boot/dts/marvell/armada*
 F:	arch/arm/boot/dts/marvell/kirkwood*
 F:	arch/arm/configs/mvebu_*_defconfig
 F:	arch/arm/mach-mvebu/
+F:	arch/arm64/boot/dts/marvell/ac5*
 F:	arch/arm64/boot/dts/marvell/armada*
 F:	arch/arm64/boot/dts/marvell/cn913*
 F:	drivers/clk/mvebu/
-- 
2.25.1


