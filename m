Return-Path: <devicetree+bounces-6274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 411427BA947
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 20:40:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 99E751F232E9
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 18:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B53E734CD0;
	Thu,  5 Oct 2023 18:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ytmLM5VL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F115F262A7
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 18:40:02 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE909FF;
	Thu,  5 Oct 2023 11:39:58 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3959bj9S091449;
	Thu, 5 Oct 2023 04:37:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696498665;
	bh=AWm94OcSYQMiV0cbA4Ey3lwR6RIUb40JJctj6csgig0=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=ytmLM5VLB6LeJ4W3/gheJs+F+I7m+Qb6JQ0RZW1DhTfxBM8cyyDoRrW/4GoS0vYa0
	 ROmI2m5ABOqnQR6vl9MuAl6iJUYVfH1yVzp4j8cBzpTLQUnETUynHA82UqnW1fpoWl
	 ggMxaAMHq5dppTmiCqU8ZcHDY2KHTmkeyDvip/0E=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3959bjNH042845
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 5 Oct 2023 04:37:45 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 5
 Oct 2023 04:37:45 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 5 Oct 2023 04:37:45 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3959bitN012884;
	Thu, 5 Oct 2023 04:37:44 -0500
From: Nitin Yadav <n-yadav@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <rogerq@ti.com>
CC: <kristo@kernel.org>, <robh+dt@kernel.org>, <conor+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 3/3] arm64: defconfig: Enable GPMC NAND support
Date: Thu, 5 Oct 2023 15:07:39 +0530
Message-ID: <20231005093739.4071934-4-n-yadav@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231005093739.4071934-1-n-yadav@ti.com>
References: <20231005093739.4071934-1-n-yadav@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS,SPF_NONE,UPPERCASE_50_75,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Enable config required to support GPMC NAND on
AM62x LP SK and AM64x SKEVM.

Signed-off-by: Nitin Yadav <n-yadav@ti.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 66bfbef73324..a2758ac73f87 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -270,6 +270,8 @@ CONFIG_MTD_DATAFLASH=y
 CONFIG_MTD_SST25L=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_DENALI_DT=y
+CONFIG_MTD_NAND_OMAP2=m
+CONFIG_MTD_NAND_OMAP_BCH=y
 CONFIG_MTD_NAND_MARVELL=y
 CONFIG_MTD_NAND_BRCMNAND=m
 CONFIG_MTD_NAND_FSL_IFC=y
@@ -1357,6 +1359,7 @@ CONFIG_ARM_MEDIATEK_CCI_DEVFREQ=m
 CONFIG_EXTCON_PTN5150=m
 CONFIG_EXTCON_USB_GPIO=y
 CONFIG_EXTCON_USBC_CROS_EC=y
+CONFIG_OMAP_GPMC=m
 CONFIG_RENESAS_RPCIF=m
 CONFIG_IIO=y
 CONFIG_EXYNOS_ADC=y
-- 
2.25.1


