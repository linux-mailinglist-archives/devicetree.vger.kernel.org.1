Return-Path: <devicetree+bounces-10249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AE37D0789
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 07:20:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B651E282342
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 05:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B12A9211C;
	Fri, 20 Oct 2023 05:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="qrnKYoT5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB1722115
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 05:19:57 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A36FB8;
	Thu, 19 Oct 2023 22:19:56 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39K5JgWZ047974;
	Fri, 20 Oct 2023 00:19:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1697779182;
	bh=YOyCVbrH9XYmK1l7b4XXUCGJm7bSvnigEETh7vRt/cc=;
	h=From:To:CC:Subject:Date;
	b=qrnKYoT52Wnf/00F4PJKDO1L5ybSTwFL9W1xvBBN6hJFAAGqDszK3J49W1z6gjdqP
	 3pCKv9GC8LNsWFaLfnKcdDHLc5xAkhB98uqag+aCUdgLEgGNWokXU3JNHK8hTjiEfz
	 gAi1fTljNYQ+PLwkb5/ZkV2zh7+rkII8s3edH9CA=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39K5JgB4038204
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 20 Oct 2023 00:19:42 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 20
 Oct 2023 00:19:42 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 20 Oct 2023 00:19:42 -0500
Received: from lelv0854.itg.ti.com (lelv0854.itg.ti.com [10.181.64.140])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39K5JgNI116867;
	Fri, 20 Oct 2023 00:19:42 -0500
Received: from localhost (danish-tpc.dhcp.ti.com [10.24.69.31])
	by lelv0854.itg.ti.com (8.14.7/8.14.7) with ESMTP id 39K5JfVh026773;
	Fri, 20 Oct 2023 00:19:41 -0500
From: MD Danish Anwar <danishanwar@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>
CC: Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Tero Kristo <kristo@kernel.org>, <srk@ti.com>, <r-gunasekaran@ti.com>,
        MD Danish Anwar <danishanwar@ti.com>
Subject: [PATCH v6 0/3] Add AM65x ICSSG Ethernet support
Date: Fri, 20 Oct 2023 10:49:34 +0530
Message-ID: <20231020051937.3709871-1-danishanwar@ti.com>
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

Hi All,

This series adds support for ICSSG ethernet on AM65x SR2.0. 
This series also enables TI_ICSSG_PRUETH as loadable kernel module.
This series is based on the latest next-20230925 linux-next.

This is the v6 of the series [v1]. This addresses comments made on v5.

Changes from v5 to v6:
*) Fixed build failure seen on previous revision by creating new dtb
   k3-am654-evm.dtb. This dtb will now contain base-board and the ICSSG2
   overlay.
*) Removed renaming of k3-am654-base-board.dts to k3-am654-common-board.dts
   Now k3-am654-base-board.dts remains as it was.

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
[v5] https://lore.kernel.org/all/20231013110150.4142508-1-danishanwar@ti.com/

Thanks and Regards,
MD Danish Anwar
MD Danish Anwar (3):
  arm64: dts: ti: k3-am65-main: Add ICSSG IEP nodes
  arm64: dts: ti: k3-am654-base-board: add ICSSG2 Ethernet support
  arm64: dts: ti: k3-am654-idk: Add ICSSG Ethernet ports

 arch/arm64/boot/dts/ti/Makefile             |   4 +
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi    |  36 +++
 arch/arm64/boot/dts/ti/k3-am654-icssg2.dtso | 145 ++++++++++
 arch/arm64/boot/dts/ti/k3-am654-idk.dtso    | 296 ++++++++++++++++++++
 4 files changed, 481 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am654-icssg2.dtso
 create mode 100644 arch/arm64/boot/dts/ti/k3-am654-idk.dtso

base-commit: 4230ea146b1e64628f11e44290bb4008e391bc24
-- 
2.34.1


