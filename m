Return-Path: <devicetree+bounces-6178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A64F7BA21F
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:15:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id AA9841C20852
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:13:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20E3930CF4;
	Thu,  5 Oct 2023 15:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Pd1xVOjX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93AA430CE5
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:13:25 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30E951687E;
	Thu,  5 Oct 2023 08:13:23 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 395FDBQx044781;
	Thu, 5 Oct 2023 10:13:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696518791;
	bh=O9FhfvATundeGpAaMYwp4zaxW3D2P8Zjw0rWxeEZ63A=;
	h=From:To:CC:Subject:Date;
	b=Pd1xVOjXLqSJs10Mv/iPGrmQuDlTBj1p+RllitBUFUN7F3it0rB8HCf8IdExuStgN
	 i19juVbEZTpoiaB5F9p8CcWh4SZ1JRF3FNQSWvMMUKNbBWg/PT4ukPv/TC5BPuC1UO
	 01u2dV0OmzCbd8R+XwrBoXqw95Zv8g44vTvRfiIY=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 395FDBxc105345
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 5 Oct 2023 10:13:11 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 5
 Oct 2023 10:13:11 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 5 Oct 2023 10:13:11 -0500
Received: from uda0132425.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 395FD7Pb027216;
	Thu, 5 Oct 2023 10:13:08 -0500
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
Subject: [PATCH 0/2] arm64: dts: ti: Use simple-bus wherever possible
Date: Thu, 5 Oct 2023 20:43:00 +0530
Message-ID: <20231005151302.1290363-1-vigneshr@ti.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This series coverts simple-mfd to simple-bus for segments housing Data
movement related IPs (DMASS on AM64/AM62 and AM62A), NAVSS on the rest)

Boot tested on all K3 SoCs. excerised DMA by using ethernet and OSPI for
sanity.

Vignesh Raghavendra (2):
  arm64: dts: ti: k3-*: Convert DMSS to simple-bus
  arm64: dts: ti: k3-*: Convert NAVSS to simple-bus

 arch/arm64/boot/dts/ti/k3-am62-main.dtsi         | 2 +-
 arch/arm64/boot/dts/ti/k3-am62p-main.dtsi        | 2 +-
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi         | 2 +-
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi         | 2 +-
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi          | 2 +-
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi        | 2 +-
 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi  | 2 +-
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi        | 2 +-
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi  | 2 +-
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi       | 2 +-
 arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi | 2 +-
 11 files changed, 11 insertions(+), 11 deletions(-)

-- 
2.42.0


