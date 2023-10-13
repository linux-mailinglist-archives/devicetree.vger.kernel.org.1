Return-Path: <devicetree+bounces-8455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D777C83ED
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 13:02:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 019221C2104B
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 11:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD8512B99;
	Fri, 13 Oct 2023 11:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="L674unkq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC46125CF
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 11:02:10 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7A20B7;
	Fri, 13 Oct 2023 04:02:08 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39DB1wSJ127444;
	Fri, 13 Oct 2023 06:01:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1697194918;
	bh=6ctdyBo1vyiyxFiiRhLGd/krHGLGu5yDPASGRfE77WI=;
	h=From:To:CC:Subject:Date;
	b=L674unkqSQsajy9WfH4v0FLsv/p+LcNNlc+k591GkOpLXbdkuoHZMj0g0GM49tDNf
	 fQN4KSQajRCd/PctGrHLJBk+oO95qlYDBs0LUiZNgG24G9UrkuhAwZOhOvNRW/saOD
	 eUQWFtd55NNnfPUoTxtYNxX0zcl8aTquvCd0hUP0=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39DB1wAI105471
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 13 Oct 2023 06:01:58 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 13
 Oct 2023 06:01:58 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 13 Oct 2023 06:01:58 -0500
Received: from fllv0122.itg.ti.com (fllv0122.itg.ti.com [10.247.120.72])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39DB1vuj018508;
	Fri, 13 Oct 2023 06:01:57 -0500
Received: from localhost (dhcp-10-24-69-31.dhcp.ti.com [10.24.69.31])
	by fllv0122.itg.ti.com (8.14.7/8.14.7) with ESMTP id 39DB1v0J022786;
	Fri, 13 Oct 2023 06:01:57 -0500
From: MD Danish Anwar <danishanwar@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>
CC: Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Tero Kristo <kristo@kernel.org>, <srk@ti.com>, <r-gunasekaran@ti.com>,
        MD Danish Anwar <danishanwar@ti.com>
Subject: [PATCH v5 0/3] Add AM65x ICSSG Ethernet support
Date: Fri, 13 Oct 2023 16:31:47 +0530
Message-ID: <20231013110150.4142508-1-danishanwar@ti.com>
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
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi All,

This series adds support for ICSSG ethernet on AM65x SR2.0. 
This series also enables TI_ICSSG_PRUETH as loadable kernel module.
This series is based on the latest next-20230925 linux-next.

This is the v5 of the series [v1]. This addresses comments made on v4.

Changes from v4 to v5:
*) Modified commit message of patch 2/4 as asked by Vignesh.
*) Dropped patch 4/4 ("Enable TI_ICSSG_PRUETH") as it was having build
   warning.

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
[v4] https://lore.kernel.org/all/20231003105539.1698436-1-danishanwar@ti.com/

Thanks and Regards,
MD Danish Anwar

MD Danish Anwar (3):
  arm64: dts: ti: k3-am65-main: Add ICSSG IEP nodes
  arm64: dts: ti: k3-am654-base-board: add ICSSG2 Ethernet support
  arm64: dts: ti: k3-am654-idk: Add ICSSG Ethernet ports

 arch/arm64/boot/dts/ti/Makefile               |   4 +
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      |  36 +++
 ...se-board.dts => k3-am654-common-board.dts} |   0
 arch/arm64/boot/dts/ti/k3-am654-icssg2.dtso   | 145 +++++++++
 arch/arm64/boot/dts/ti/k3-am654-idk.dtso      | 296 ++++++++++++++++++
 5 files changed, 481 insertions(+)
 rename arch/arm64/boot/dts/ti/{k3-am654-base-board.dts => k3-am654-common-board.dts} (100%)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am654-icssg2.dtso
 create mode 100644 arch/arm64/boot/dts/ti/k3-am654-idk.dtso

-- 
2.34.1


