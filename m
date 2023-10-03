Return-Path: <devicetree+bounces-5466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A66017B66D9
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:56:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 57CFC281626
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 10:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DCCC1EA95;
	Tue,  3 Oct 2023 10:56:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EBA12B7C
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 10:56:22 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE677AC;
	Tue,  3 Oct 2023 03:56:21 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 393Atm8B059039;
	Tue, 3 Oct 2023 05:55:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696330548;
	bh=qfxFibk2z512fCIHjq/ouom5dRBwGuEZAl2syfqwaSs=;
	h=From:To:CC:Subject:Date;
	b=bmlI58Sf4zIY+pcO8LhvJhRqCOoMipIzu9Wt2Q6GCo5RAeztRGZ+t1DVQZnKwDcux
	 6wNAEZbMdTEHba9FfSj5cEmWQNVhCR7Ki2vcdgzTG/KtH+ngRi9slsny76qWbCiV0V
	 EiMh+KBFUHOjD9fXZnzX7s6EiA164tbzfU6I5m9o=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 393Atmjl006116
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 3 Oct 2023 05:55:48 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 3
 Oct 2023 05:55:47 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 3 Oct 2023 05:55:47 -0500
Received: from fllv0122.itg.ti.com (fllv0122.itg.ti.com [10.247.120.72])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 393AtluA122962;
	Tue, 3 Oct 2023 05:55:47 -0500
Received: from localhost (danish-tpc.dhcp.ti.com [10.24.69.199])
	by fllv0122.itg.ti.com (8.14.7/8.14.7) with ESMTP id 393Atlsg007878;
	Tue, 3 Oct 2023 05:55:47 -0500
From: MD Danish Anwar <danishanwar@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>
CC: Peng Fan <peng.fan@nxp.com>, Udit Kumar <u-kumar1@ti.com>,
        =?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?=
	<nfraprado@collabora.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Arnd
 Bergmann <arnd@arndb.de>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Geert
 Uytterhoeven <geert+renesas@glider.be>,
        Bjorn Andersson
	<quic_bjorande@quicinc.com>,
        Will Deacon <will@kernel.org>,
        Catalin Marinas
	<catalin.marinas@arm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring
	<robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Tero Kristo <kristo@kernel.org>, <linux-omap@vger.kernel.org>,
        <srk@ti.com>, <r-gunasekaran@ti.com>,
        MD Danish
 Anwar <danishanwar@ti.com>
Subject: [PATCH v4 0/4] Add AM65x ICSSG Ethernet support
Date: Tue, 3 Oct 2023 16:25:35 +0530
Message-ID: <20231003105539.1698436-1-danishanwar@ti.com>
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi All,

This series adds support for ICSSG ethernet on AM65x SR2.0. 
This series also enables TI_ICSSG_PRUETH as loadable kernel module.
This series is based on the latest next-20230925 linux-next.

This is the v4 of the series [v1]. This addresses comments made on v3.

Changes from v3 to v4:
*) Added RB tag of Andrew Davis.
*) Added LAKML to the --cc of this series as it was dropped in v3.

Changes from v2 to v3:
*) Changed comment of icssg nodes in device trees from "Dual Ethernet
   application node" to "Ethernet node" as asked by Andrew L.
*) Applied k3-am654-idk.dtbo at build time to the k3-am654-base-board.dtb
   in order to not have orphan DTBO as asked by Andrew D.
*) Modified k3-am654-gp-evm.dtb to have k3-am654-icssg2.dtbo as well.

Changes from v1 to v2:
*) Moved ICSSG2 nodes from k3-am654-base-board.dts to new overlay file
   k3-am654-icssg2.dtso as asked by Andrew.
*) Renamed k3-am654-base-board.dts to k3-am654-common-board.dts
*) Added "Enable TI_ICSSG_PRUETH" patch to this series.

[v1] https://lore.kernel.org/all/20230911071245.2173520-1-danishanwar@ti.com/
[v2] https://lore.kernel.org/all/20230921060913.721336-1-danishanwar@ti.com/
[v3] https://lore.kernel.org/all/20230926045337.1248276-1-danishanwar@ti.com/

Thanks and Regards,
MD Danish Anwar

MD Danish Anwar (4):
  arm64: dts: ti: k3-am65-main: Add ICSSG IEP nodes
  arm64: dts: ti: k3-am654-base-board: add ICSSG2 Ethernet support
  arm64: dts: ti: k3-am654-idk: Add ICSSG Ethernet ports
  arm64: defconfig: Enable TI_ICSSG_PRUETH

 arch/arm64/boot/dts/ti/Makefile               |   4 +
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      |  36 +++
 ...se-board.dts => k3-am654-common-board.dts} |   0
 arch/arm64/boot/dts/ti/k3-am654-icssg2.dtso   | 145 +++++++++
 arch/arm64/boot/dts/ti/k3-am654-idk.dtso      | 296 ++++++++++++++++++
 arch/arm64/configs/defconfig                  |   1 +
 6 files changed, 482 insertions(+)
 rename arch/arm64/boot/dts/ti/{k3-am654-base-board.dts => k3-am654-common-board.dts} (100%)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am654-icssg2.dtso
 create mode 100644 arch/arm64/boot/dts/ti/k3-am654-idk.dtso

-- 
2.34.1


