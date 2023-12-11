Return-Path: <devicetree+bounces-23848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BCC80C890
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 12:56:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 437CA2815DA
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 11:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0DF138DE7;
	Mon, 11 Dec 2023 11:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="CzOz/YTy"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99FE6CD;
	Mon, 11 Dec 2023 03:56:07 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BBBteR5059774;
	Mon, 11 Dec 2023 05:55:40 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702295740;
	bh=cBCSKRgalSrxIexaGmmwq60eDub9KyEpnmMNC0g44LM=;
	h=From:To:CC:Subject:Date;
	b=CzOz/YTyBZ5HqY5MQ1lyIuNbm1tdymQAAJerID80KIAzg8eCv1vgQNrDf5iaglhR0
	 Y5DqU2Bm9hps49bIF2vbpe6QppCwxNsZckCVZs1Y04WDWIclsPMufgzShNi4fK8Air
	 eV/xHELzYNszb6+6ibstyCJTUZeWtFoWzWUQIgrQ=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BBBte22126707
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 11 Dec 2023 05:55:40 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 11
 Dec 2023 05:55:39 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 11 Dec 2023 05:55:39 -0600
Received: from uda0492258.dhcp.ti.com (uda0492258.dhcp.ti.com [172.24.227.9])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BBBtZcp078322;
	Mon, 11 Dec 2023 05:55:36 -0600
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <afd@ti.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <r-gunasekaran@ti.com>,
        <srk@ti.com>, <s-vadapalli@ti.com>
Subject: [PATCH v3 0/2] Add PCIe Endpoint overlays for J721E and J721S2
Date: Mon, 11 Dec 2023 17:25:33 +0530
Message-ID: <20231211115535.1264353-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hello,

This series adds device-tree overlays for enabling PCIe in Endpoint mode
of operation on J721E-EVM and J721S2-EVM.

NOTE: This series is based on linux-next tagged next-20231211.

v2:
https://lore.kernel.org/r/20231115085204.3578616-1-s-vadapalli@ti.com/
Changes since v2:
- Rebased series on linux-next tagged next-20231211.
- Collected Reviewed-by tag from:
  Ravi Gunasekaran <r-gunasekaran@ti.com>
- Updated Makefile based on Andrew's suggestion to build the DTBs
  corresponding to the overlays only with an OF_ALL_DTBS build config
  since the generated DTBs are not required except to ensure that the
  overlays apply on the base DTB.
  Reference:
  https://lore.kernel.org/r/20231128-csi_dts-v3-9-0bb11cfa9d43@ti.com

v1:
https://lore.kernel.org/r/20231020113222.3161829-1-s-vadapalli@ti.com/
Changes since v1:
- Rebased series on linux-next tagged next-20231114.

Regards,
Siddharth.

Siddharth Vadapalli (2):
  arm64: dts: ti: k3-j721e-evm: Add overlay for PCIE0 Endpoint Mode
  arm64: dts: ti: k3-j721s2-evm: Add overlay for PCIE1 Endpoint Mode

 arch/arm64/boot/dts/ti/Makefile               | 10 +++-
 .../boot/dts/ti/k3-j721e-evm-pcie0-ep.dtso    | 53 +++++++++++++++++++
 .../boot/dts/ti/k3-j721s2-evm-pcie1-ep.dtso   | 53 +++++++++++++++++++
 3 files changed, 115 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-evm-pcie0-ep.dtso
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721s2-evm-pcie1-ep.dtso

-- 
2.34.1


