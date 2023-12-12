Return-Path: <devicetree+bounces-24282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4572080EA20
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:16:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75C2E1C209A8
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 11:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07BB35CD21;
	Tue, 12 Dec 2023 11:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="WI7l+KCO"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2881FB7;
	Tue, 12 Dec 2023 03:16:51 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BCBGh8F033417;
	Tue, 12 Dec 2023 05:16:43 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702379803;
	bh=kiJTvHAbpgfWTGzyY0nW1GKa69qabYWjZpST46uVbr8=;
	h=From:To:CC:Subject:Date;
	b=WI7l+KCOcozWUt7huUMs/Kk/9CC2Vk0xA63sXOLt9HNnYFocRguedd/g3Dko1vwx1
	 JWHUXjcqhuDyAFnNANaCUqtDgNt9fYOOsIPuqSVTZD3Grw5WLCtrYjpEiyhk5MWWHz
	 tb2W4Gg4nlRwwVKg4eG2+HUD37Vi5podnouth72A=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BCBGgEO025855
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 12 Dec 2023 05:16:42 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 12
 Dec 2023 05:16:42 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 12 Dec 2023 05:16:42 -0600
Received: from uda0132425.dhcp.ti.com (uda0132425.dhcp.ti.com [172.24.227.94])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BCBGd8W094897;
	Tue, 12 Dec 2023 05:16:40 -0600
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/3] arm64: dts: ti: k3: Add additioal regs for DMA components
Date: Tue, 12 Dec 2023 16:46:31 +0530
Message-ID: <20231212111634.3515175-1-vigneshr@ti.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

This adds additional reg ranges which are not directly used by Linux but
by other components like U-Boot

Binding is accepted via dmaengine tree and is in linux-next[0]

[0] https://lore.kernel.org/dmaengine/170083278148.771517.1841889156174413563.b4-ty@kernel.org/


Manorit Chawdhry (2):
  arm64: dts: ti: k3-am65: Add additional regs for DMA components
  arm64: dts: ti: k3-j7*: Add additional regs for DMA components

Vignesh Raghavendra (1):
  arm64: dts: ti: k3-am6*: Add additional regs for DMA components

 arch/arm64/boot/dts/ti/k3-am62-main.dtsi       | 18 ++++++++++++++----
 arch/arm64/boot/dts/ti/k3-am62a-main.dtsi      | 18 ++++++++++++++----
 arch/arm64/boot/dts/ti/k3-am62p-main.dtsi      | 18 ++++++++++++++----
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi       | 18 ++++++++++++++----
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi       |  8 ++++++--
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi        |  8 ++++++--
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi      |  8 ++++++--
 .../arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi |  8 ++++++--
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi      |  8 ++++++--
 .../arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi |  8 ++++++--
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi     |  8 ++++++--
 .../boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi      |  8 ++++++--
 arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi     |  8 ++++++--
 .../boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi      |  8 ++++++--
 14 files changed, 116 insertions(+), 36 deletions(-)

-- 
2.43.0


