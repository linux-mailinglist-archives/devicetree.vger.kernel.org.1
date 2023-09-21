Return-Path: <devicetree+bounces-2191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B20317A9BDC
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:04:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 84A181C2149C
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FC2C18B1A;
	Thu, 21 Sep 2023 18:52:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593C3171D4
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:52:17 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4431153EFF;
	Thu, 21 Sep 2023 11:51:55 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38LA0hSU001920;
	Thu, 21 Sep 2023 05:00:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695290443;
	bh=7sPeJ3cF82T2KpMA+b/VQuIl+euYK6afaT51C9aZWvI=;
	h=From:To:CC:Subject:Date;
	b=J9aUGrcshukRoWODyEcESdI2RKZVrzJm2dBb6rUUKnuR4RDsfDL2WtEIVCwuYTrf5
	 6op8Anb4dRaVKpClRNcK1kvdmtixV9PeeFA5toKz7UKkhqcsP49z3aMcY6+TwCln5L
	 +2BmaSUHSAI/0DQV0Dzm82y+Zf0FftkYz4/FHjBg=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38LA0hOi003844
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 21 Sep 2023 05:00:43 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 21
 Sep 2023 05:00:43 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 21 Sep 2023 05:00:43 -0500
Received: from uda0500640.dal.design.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38LA0dD3060269;
	Thu, 21 Sep 2023 05:00:40 -0500
From: Ravi Gunasekaran <r-gunasekaran@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>
CC: <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <sinthu.raja@ti.com>,
        <r-gunasekaran@ti.com>
Subject: [PATCH 0/3] AM68 SK: Add support for PCIe and USB
Date: Thu, 21 Sep 2023 15:30:36 +0530
Message-ID: <20230921100039.19897-1-r-gunasekaran@ti.com>
X-Mailer: git-send-email 2.17.1
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

This series adds support for PCIe and USB interfaces.

Sinthu Raja (3):
  arm64: dts: ti: Add USB Type C swap defines for J721S2 SoC
  arm64: dts: ti: k3-am68-sk: Add DT node for PCIe
  arm64: dts: ti: k3-am68-sk: Add DT node for USB

 .../boot/dts/ti/k3-am68-sk-base-board.dts     | 56 +++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-serdes.h            |  2 +-
 2 files changed, 57 insertions(+), 1 deletion(-)


base-commit: 940fcc189c51032dd0282cbee4497542c982ac59
-- 
2.17.1


