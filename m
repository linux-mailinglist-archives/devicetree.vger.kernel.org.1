Return-Path: <devicetree+bounces-22764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FA1808AA7
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:33:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A6121C209E5
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 14:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 824A84436F;
	Thu,  7 Dec 2023 14:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="FKhKkVSF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com [67.231.156.173])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E351813D;
	Thu,  7 Dec 2023 06:33:21 -0800 (PST)
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
	by mx0b-0016f401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3B79PGsY032068;
	Thu, 7 Dec 2023 06:33:07 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=pfpt0220;
 bh=3zbcnEQcxB48AuO6HO6YOnh1+aoaLrPjEKMnJ3qjAW0=;
 b=FKhKkVSFz4JQJsQc6R0W+rgqjb+B+u+9FxqTtR8pjQiVxf0D2GP3/GmQPZNT34BTxR/S
 QQHG9ndhZy+5YyPYmV5uSrVgxEKJEJc9k1CA13rWPs7nMmoLsZShtayqFEN7kjsH+p1D
 uodzyoVIHSZh47VP461YAW3bwBK98wyd+77ZshyIlPu7NDF0HEQaNje+cT2fYX64PHFR
 fDnqzrtJmoUnYRGbCCucC3LwfDs+eurQwuTY2pQEbdfyR/O9TJUW4kvw2dEAZD2HYUz1
 aXlbAq8lgLRNkbRtLih4hwphgasfaZIy4yWRtogZQT5RwY/dzIbmx/lVnLy+MhNaIC46 xg== 
Received: from dc5-exch02.marvell.com ([199.233.59.182])
	by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 3uubdd8xyr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Thu, 07 Dec 2023 06:33:06 -0800
Received: from DC5-EXCH01.marvell.com (10.69.176.38) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Thu, 7 Dec
 2023 06:33:04 -0800
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server id 15.0.1497.48 via Frontend
 Transport; Thu, 7 Dec 2023 06:33:05 -0800
Received: from dc3lp-swdev041.marvell.com (dc3lp-swdev041.marvell.com [10.6.60.191])
	by maili.marvell.com (Postfix) with ESMTP id 8973A3F707E;
	Thu,  7 Dec 2023 06:33:01 -0800 (PST)
From: Elad Nachman <enachman@marvell.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
        <sebastian.hesselbarth@gmail.com>, <pali@kernel.org>,
        <mrkiko.rs@gmail.com>, <chris.packham@alliedtelesis.co.nz>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <enachman@marvell.com>, <cyuval@marvell.com>
Subject: [PATCH v7 2/3] dt-bindings: arm64: add Marvell COM Express boards
Date: Thu, 7 Dec 2023 16:32:47 +0200
Message-ID: <20231207143248.2439926-3-enachman@marvell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231207143248.2439926-1-enachman@marvell.com>
References: <20231207143248.2439926-1-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: S9od9Edy76_sme2Kg4K-K8NPy91UmDgM
X-Proofpoint-GUID: S9od9Edy76_sme2Kg4K-K8NPy91UmDgM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-07_12,2023-12-07_01,2023-05-22_02

From: Elad Nachman <enachman@marvell.com>

Add dt bindings for:
CN9130 COM Express CPU module
CN9131 COM Express CPU module
AC5X RD COM Express Type 7 carrier board.
AC5X RD COM Express board with a CN9131 COM Express Type 7 CPU module.

Signed-off-by: Elad Nachman <enachman@marvell.com>
---
 .../bindings/arm/marvell/armada-7k-8k.yaml    | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
index 52d78521e412..d00866aeaa8d 100644
--- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
+++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
@@ -60,4 +60,28 @@ properties:
           - const: marvell,armada-ap807-quad
           - const: marvell,armada-ap807
 
+      - description:
+          Alleycat5X (98DX35xx) Reference Design as COM Express Carrier plus
+          Armada CN9130 COM Express CPU module
+        items:
+          - enum:
+              - marvell,cn9130-ac5x-carrier
+          - const: marvell,rd-ac5x-carrier
+          - const: marvell,cn9130-cpu-module
+          - const: marvell,cn9130
+          - const: marvell,armada-ap807-quad
+          - const: marvell,armada-ap807
+
+      - description:
+          Alleycat5X (98DX35xx) Reference Design as COM Express Carrier plus
+          Armada CN9131 COM Express CPU module
+        items:
+          - enum:
+              - marvell,cn9131-ac5x-carrier
+          - const: marvell,rd-ac5x-carrier
+          - const: marvell,cn9131-cpu-module
+          - const: marvell,cn9131
+          - const: marvell,armada-ap807-quad
+          - const: marvell,armada-ap807
+
 additionalProperties: true
-- 
2.25.1


