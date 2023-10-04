Return-Path: <devicetree+bounces-5777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 919C47B7DE4
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:12:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id EB145281447
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 11:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB36511CA0;
	Wed,  4 Oct 2023 11:12:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B03F11720
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 11:12:54 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 729EEA1;
	Wed,  4 Oct 2023 04:12:52 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 394BCe3R045799;
	Wed, 4 Oct 2023 06:12:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696417960;
	bh=5UraJIrnbCP+y+TDVwwJXbCa6lNQbYGcqOwXQqCGtzQ=;
	h=From:To:CC:Subject:Date;
	b=a/7JDqkFzg48+1rSEyD1O9G0CFPpj0bagSrRNEKCwPl2nVLJmWtOGAJVNwEObrds+
	 yK3EfsNAogpPdN6lNUPpx1BahOQBbYo1oUPExG/g0T9lFcKpPi7Q46/dW53njfWw7h
	 KmUFv5irTYGW12el2lGwVb5APSAsrLHUjvazIWUQ=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 394BCepQ039917
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 4 Oct 2023 06:12:40 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 4
 Oct 2023 06:12:39 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 4 Oct 2023 06:12:40 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 394BCdXt010468;
	Wed, 4 Oct 2023 06:12:39 -0500
From: Nitin Yadav <n-yadav@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <rogerq@ti.com>
CC: <kristo@kernel.org>, <robh+dt@kernel.org>, <conor+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/3] Add support for GPMC NAND
Date: Wed, 4 Oct 2023 16:42:35 +0530
Message-ID: <20231004111238.3968984-1-n-yadav@ti.com>
X-Mailer: git-send-email 2.25.1
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
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This series adds support for GPMC NAND on AM62x LP SK
board.

v1: https://lore.kernel.org/all/20230913114711.2937844-1-n-yadav@ti.com/

Change Log:
 - Rearrange device tree properties in recommended sequence.
 - Move status property at last place in the node. 
 - Fix commit message and commit descriptions. 

Nitin Yadav (3):
  arm64: dts: ti: Add GPMC support for AM62x LP SK
  arm64: dts: ti: Add overlay for NAND daughter card
  arm64: defconfig: Enable GPMC NAND support

 arch/arm64/boot/dts/ti/Makefile               |   2 +
 .../arm64/boot/dts/ti/k3-am62-lp-sk-nand.dtso | 119 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62-main.dtsi      |  29 +++++
 arch/arm64/boot/dts/ti/k3-am62.dtsi           |   2 +
 arch/arm64/configs/defconfig                  |   3 +
 5 files changed, 155 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am62-lp-sk-nand.dtso

-- 
2.25.1


