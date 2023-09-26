Return-Path: <devicetree+bounces-3331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A939F7AE4C8
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 06:54:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C60521C2042A
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 04:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F34861876;
	Tue, 26 Sep 2023 04:54:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94EB6186F
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 04:54:28 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CC8619E;
	Mon, 25 Sep 2023 21:54:27 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38Q4sGVN127720;
	Mon, 25 Sep 2023 23:54:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695704056;
	bh=Ez0n0IB9An/4q6TtN9YYyKqtOIiZUXjQe4ILvhUADOw=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=K3Hy7NvoUmwN6i0DZYHkJM5TsY+nSiyFkRCK4EzQJ9cP2OMYGmEqOvYKvo/aplzpQ
	 PRA/LY2INrfC111xikZ5/9F7x4PpMCt6LU34zBtlEh4zEUoGklt7GJjgwhcDjGSdYr
	 vPfKnRTH8RzCrWffcCkUzyzHy6RLPWds5OS8IMm0=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38Q4sGV4064871
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 25 Sep 2023 23:54:16 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 25
 Sep 2023 23:54:16 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 25 Sep 2023 23:54:16 -0500
Received: from lelv0854.itg.ti.com (lelv0854.itg.ti.com [10.181.64.140])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38Q4sG5F027523;
	Mon, 25 Sep 2023 23:54:16 -0500
Received: from localhost (danish-tpc.dhcp.ti.com [10.24.69.199])
	by lelv0854.itg.ti.com (8.14.7/8.14.7) with ESMTP id 38Q4sFqm004442;
	Mon, 25 Sep 2023 23:54:15 -0500
From: MD Danish Anwar <danishanwar@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>
CC: <afd@ti.com>, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Tero
 Kristo <kristo@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <srk@ti.com>, <r-gunasekaran@ti.com>,
        <danishanwar@ti.com>
Subject: [PATCH v3 4/4] arm64: defconfig: Enable TI_ICSSG_PRUETH
Date: Tue, 26 Sep 2023 10:23:37 +0530
Message-ID: <20230926045337.1248276-5-danishanwar@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230926045337.1248276-1-danishanwar@ti.com>
References: <20230926045337.1248276-1-danishanwar@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The Programmable Real-time Unit and Industrial Communication Subsystem
Gigabit (PRU_ICSSG) is a low-latency microcontroller subsystem in the TI
K3 SoCs such as AM654x, AM64x. This subsystem is provided for the use
cases like implementation of custom peripheral interfaces, offloading of
tasks from the other processor cores of the SoC, etc.

Currently AM654x-EVM uses ICSSG driver.

Signed-off-by: MD Danish Anwar <danishanwar@ti.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5443e6ff4544..6061e5e0e401 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -368,6 +368,7 @@ CONFIG_SNI_NETSEC=y
 CONFIG_STMMAC_ETH=m
 CONFIG_DWMAC_TEGRA=m
 CONFIG_TI_K3_AM65_CPSW_NUSS=y
+CONFIG_TI_ICSSG_PRUETH=m
 CONFIG_QCOM_IPA=m
 CONFIG_MESON_GXL_PHY=m
 CONFIG_AQUANTIA_PHY=y
-- 
2.34.1


