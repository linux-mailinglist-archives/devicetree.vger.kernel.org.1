Return-Path: <devicetree+bounces-3328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 398387AE4C2
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 06:54:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 4065F1C208D4
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 04:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CBCF1876;
	Tue, 26 Sep 2023 04:54:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86C9186F
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 04:54:05 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48652E6;
	Mon, 25 Sep 2023 21:54:03 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38Q4rn5O051204;
	Mon, 25 Sep 2023 23:53:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695704029;
	bh=Go15b/k/smUqjssd2hv2fpP2DZLkV5ke0QY6yaKaxGQ=;
	h=From:To:CC:Subject:Date;
	b=Ak1bsZFHIL7hSLyaxh2tvQHI5YDYhSrZoyaOkmQo7KUGTHGzjpBYKcl+4x8d087o2
	 qu2nm6MvwquBVA9Z3wAloihjSwcZG/owIB1MC7y7gk4H1TOnYV1d8gThVqVGP1FqEB
	 oyHD9axAz2INZM0PQLEKIqHp1os4ejz5SQor4ELo=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38Q4rnQD005391
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 25 Sep 2023 23:53:49 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 25
 Sep 2023 23:53:48 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 25 Sep 2023 23:53:48 -0500
Received: from lelv0854.itg.ti.com (lelv0854.itg.ti.com [10.181.64.140])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38Q4rmXs008069;
	Mon, 25 Sep 2023 23:53:48 -0500
Received: from localhost (danish-tpc.dhcp.ti.com [10.24.69.199])
	by lelv0854.itg.ti.com (8.14.7/8.14.7) with ESMTP id 38Q4rmr1004401;
	Mon, 25 Sep 2023 23:53:48 -0500
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
Subject: [PATCH v3 0/4] Add AM65x ICSSG Ethernet support
Date: Tue, 26 Sep 2023 10:23:33 +0530
Message-ID: <20230926045337.1248276-1-danishanwar@ti.com>
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

This is the v3 of the series [v1]. This addresses comments made on v2.

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

base-commit: 8fff9184d1b5810dca5dd1a02726d4f844af88fc
-- 
2.34.1


