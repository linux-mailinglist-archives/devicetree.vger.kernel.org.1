Return-Path: <devicetree+bounces-16893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 811167F056A
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 11:27:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37EC41F21E8C
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 10:27:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 944306FA0;
	Sun, 19 Nov 2023 10:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="XvZypBo1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com [67.231.148.174])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B605BE5;
	Sun, 19 Nov 2023 02:27:02 -0800 (PST)
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
	by mx0a-0016f401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AJ9wI39000595;
	Sun, 19 Nov 2023 02:26:53 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=pfpt0220;
 bh=pFGkq7jzQoCk1fQf37EMBb2nYBIQguHxXZ3byog3clA=;
 b=XvZypBo1W/N1Z9IePoP0rRNFh3/w54fNTBdCnj05bsjAHsM5Q3hLzU0Z6laKBIgoSKI0
 JLn+DMmv7h7q4pLLBEQGHVZzI4PuwW5njqKSCm3NcNdWr2H50L/Qy8nRpqKfD6BkrA4/
 M6FtwVaiOiNsL54PH2Dw1Ng+1UDaBga4xrbOv3Qgmd39LEg0NoMrSTP7Y1UDhBj3+2j3
 88npoEAhHUFozx/GiXsx7Vq4lrVXdPLTi0tqK2nHvEmUW9OaBQJbU7WM53h6a6ihOEy3
 TLkV+uSM82WHNo0p0Vb2xVUHRuIDhiLSvgaFkmBvvPSWfIpX58G6JFQ7FFoXU+nDFLNj XA== 
Received: from dc5-exch02.marvell.com ([199.233.59.182])
	by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 3ueugusvbj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Sun, 19 Nov 2023 02:26:52 -0800
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Sun, 19 Nov
 2023 02:26:51 -0800
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server id 15.0.1497.48 via Frontend
 Transport; Sun, 19 Nov 2023 02:26:51 -0800
Received: from dc3lp-swdev041.marvell.com (dc3lp-swdev041.marvell.com [10.6.60.191])
	by maili.marvell.com (Postfix) with ESMTP id 57F7D3F704F;
	Sun, 19 Nov 2023 02:26:48 -0800 (PST)
From: Elad Nachman <enachman@marvell.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
        <sebastian.hesselbarth@gmail.com>, <pali@kernel.org>,
        <mrkiko.rs@gmail.com>, <chris.packham@alliedtelesis.co.nz>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <enachman@marvell.com>, <cyuval@marvell.com>
Subject: [PATCH v5 2/3] dt-bindings: arm64: add Marvell COM Express boards
Date: Sun, 19 Nov 2023 12:26:37 +0200
Message-ID: <20231119102638.1041978-3-enachman@marvell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231119102638.1041978-1-enachman@marvell.com>
References: <20231119102638.1041978-1-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: DCAp9yTDdTmU447uyvtwFsUbvLKxqqiy
X-Proofpoint-ORIG-GUID: DCAp9yTDdTmU447uyvtwFsUbvLKxqqiy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-19_09,2023-11-17_01,2023-05-22_02

From: Elad Nachman <enachman@marvell.com>

Add dt bindings for:
CN9130 COM Express CPU module
CN9131 COM Express CPU module
AC5X RD COM Express Type 7 carrier board.
AC5X RD COM Express board with a CN9131 COM Express Type 7 CPU module.

Signed-off-by: Elad Nachman <enachman@marvell.com>
---
 .../bindings/arm/marvell/armada-7k-8k.yaml           | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
index 52d78521e412..6b19f23bcf63 100644
--- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
+++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
@@ -60,4 +60,16 @@ properties:
           - const: marvell,armada-ap807-quad
           - const: marvell,armada-ap807
 
+      - description:
+            Alleycat5X (98DX35xx) Reference Design as COM Express Carrier plus
+            Armada CN9131 COM Express CPU module
+        items:
+          - enum:
+              - marvell,ac5x-car-with-cn9131
+          - const: marvell,rd-ac5x-carrier
+          - const: marvell,cn9131-cpu-module
+          - const: marvell,cn9131
+          - const: marvell,armada-ap807-quad
+          - const: marvell,armada-ap807
+
 additionalProperties: true
-- 
2.25.1


