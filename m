Return-Path: <devicetree+bounces-2283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4207AA6EC
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 04:13:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9D30F2810E2
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 02:13:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2ED3396;
	Fri, 22 Sep 2023 02:13:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB18377
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 02:13:14 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2BA6CE;
	Thu, 21 Sep 2023 19:13:12 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38LA0lh6124462;
	Thu, 21 Sep 2023 05:00:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695290447;
	bh=3azZIS16U/M/AO8F3hpR4EiyQZGHjlE3Gu8Kpe/CaJE=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=IfFDwK2/oGJAMqIpxMRCzDpnjiU/vANO2C8jcf7sf/oY8PE0VjbJ69vPbhu2MLL4M
	 wnTCU7EnpHfCz5b8hgi8DWuwqPiHTqigpRMf9WLPt0ER4w13vIoybYXl4DnwStigIz
	 OzgeLinU0BtRPyWpRqW+rdihnCStfB0ackqJe7+s=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38LA0l5X041435
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 21 Sep 2023 05:00:47 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 21
 Sep 2023 05:00:46 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 21 Sep 2023 05:00:46 -0500
Received: from uda0500640.dal.design.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38LA0dD4060269;
	Thu, 21 Sep 2023 05:00:43 -0500
From: Ravi Gunasekaran <r-gunasekaran@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>
CC: <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <sinthu.raja@ti.com>,
        <r-gunasekaran@ti.com>
Subject: [PATCH 1/3] arm64: dts: ti: Add USB Type C swap defines for J721S2 SoC
Date: Thu, 21 Sep 2023 15:30:37 +0530
Message-ID: <20230921100039.19897-2-r-gunasekaran@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230921100039.19897-1-r-gunasekaran@ti.com>
References: <20230921100039.19897-1-r-gunasekaran@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Sinthu Raja <sinthu.raja@ti.com>

Lanes 0 and 2 of the J721S2 SerDes WIZ are reserved for USB type-C
lane swap. Update the macro definition for it.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
Signed-off-by: Ravi Gunasekaran <r-gunasekaran@ti.com>
---
 arch/arm64/boot/dts/ti/k3-serdes.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-serdes.h b/arch/arm64/boot/dts/ti/k3-serdes.h
index 29167f85c1f6..21b4886c47ba 100644
--- a/arch/arm64/boot/dts/ti/k3-serdes.h
+++ b/arch/arm64/boot/dts/ti/k3-serdes.h
@@ -111,7 +111,7 @@
 
 #define J721S2_SERDES0_LANE2_EDP_LANE2		0x0
 #define J721S2_SERDES0_LANE2_PCIE1_LANE2	0x1
-#define J721S2_SERDES0_LANE2_IP3_UNUSED		0x2
+#define J721S2_SERDES0_LANE2_USB_SWAP		0x2
 #define J721S2_SERDES0_LANE2_IP4_UNUSED		0x3
 
 #define J721S2_SERDES0_LANE3_EDP_LANE3		0x0
-- 
2.17.1


