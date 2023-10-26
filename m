Return-Path: <devicetree+bounces-12099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ACB7D7ECE
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 10:48:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D223281F3A
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 08:48:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 252971CF92;
	Thu, 26 Oct 2023 08:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="DY8Nu8Dn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B293017D5
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 08:48:08 +0000 (UTC)
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com [67.231.148.174])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25B4B189;
	Thu, 26 Oct 2023 01:48:07 -0700 (PDT)
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
	by mx0a-0016f401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39Q7OZGw015302;
	Thu, 26 Oct 2023 01:47:59 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=pfpt0220;
 bh=RYi3y6cD1TpaFcvH4KDKraF8GJ1jvPIh+434TvZb/ZM=;
 b=DY8Nu8DntJBK/CRM4WsqLJqEOCKOIucn9VkKid6iLZ5eaww7wTCShn3m2Fu6Cj9b6yNs
 x0clLWcn939ZGjVClvUFTGTRd7JmFVpFxadraOdZK6xSABv0TU9pq9ZD30VwoyJ+eNs5
 +Hzbz287gBfE88M7qfI5E2F5pVb3qadpM+dOOs1zzoi2UsqwJtH++8//wp7AKLPxHxOH
 XND+UQxtuymzWta2SOKSl/C7xGx9DMh/gQ1gA/dr4i82JmVZkdMGZot5JHDuKURFEZpm
 jv/UIMuLJ6TC4CI2WMyt5bYP33JCzkhjbWY5UijpkAVFC+NAKVtuuJzf6OEJCts+JSoF 6A== 
Received: from dc5-exch01.marvell.com ([199.233.59.181])
	by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 3ty0vrcymc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Thu, 26 Oct 2023 01:47:59 -0700
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Thu, 26 Oct
 2023 01:47:57 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server id 15.0.1497.48 via Frontend
 Transport; Thu, 26 Oct 2023 01:47:57 -0700
Received: from dc3lp-swdev041.marvell.com (dc3lp-swdev041.marvell.com [10.6.60.191])
	by maili.marvell.com (Postfix) with ESMTP id A22F13F70BF;
	Thu, 26 Oct 2023 01:47:54 -0700 (PDT)
From: Elad Nachman <enachman@marvell.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
        <sebastian.hesselbarth@gmail.com>, <pali@kernel.org>,
        <mrkiko.rs@gmail.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <enachman@marvell.com>, <cyuval@marvell.com>
Subject: [PATCH v3 2/3] dt-bindings: arm64: dts: add dt-bindings for ac5x rd carrier
Date: Thu, 26 Oct 2023 11:47:34 +0300
Message-ID: <20231026084735.3595944-3-enachman@marvell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231026084735.3595944-1-enachman@marvell.com>
References: <20231026084735.3595944-1-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: 5kPPOidPerLWhDbImRJeH4RUn2LCeaVu
X-Proofpoint-ORIG-GUID: 5kPPOidPerLWhDbImRJeH4RUn2LCeaVu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-26_06,2023-10-25_01,2023-05-22_02

From: Elad Nachman <enachman@marvell.com>

Add dt bindings for AC5X RD COM Express Type 7 carrier board.
This board will Accept a CN9131 COM Express Type 7 CPU module.

Signed-off-by: Elad Nachman <enachman@marvell.com>
---
 .../devicetree/bindings/arm/marvell/armada-7k-8k.yaml     | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
index 52d78521e412..71bc94047d1b 100644
--- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
+++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
@@ -60,4 +60,12 @@ properties:
           - const: marvell,armada-ap807-quad
           - const: marvell,armada-ap807
 
+      - description: AC5X RD COM Express Carrier for Armada CN9131 SoC with one external CP
+        items:
+          - const: marvell,ac5x_rd_carrier
+          - const: marvell,cn9131
+          - const: marvell,cn9130
+          - const: marvell,armada-ap807-quad
+          - const: marvell,armada-ap807
+
 additionalProperties: true
-- 
2.25.1


