Return-Path: <devicetree+bounces-3449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B84C97AEDFE
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 15:32:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BC5402816C7
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 13:32:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 203AB28E35;
	Tue, 26 Sep 2023 13:32:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85FB428E17
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 13:32:14 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26953B4;
	Tue, 26 Sep 2023 06:32:13 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38QDVxVR078691;
	Tue, 26 Sep 2023 08:31:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695735119;
	bh=24lgo+VIhYhPt5vr9tO9vGuMf3CbdECDhwOOwF8kklE=;
	h=From:To:CC:Subject:Date;
	b=MPzWViL5ooeZ4EcDh7uM9U2TWilZUC6c8FBCNMlhDMp0S6zvIBhXhs7ExA6p7MXPN
	 qKGirBgF46LJt5UaNCFAozfR/g1wXbnHK8Tvo6FVGlcnmeAG0XBktWNj0zvox59VTG
	 QAw3zKeFmVolFKSwDOkO9Pus8QGI4tKTEYg4hx9M=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38QDVw8V027558
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 26 Sep 2023 08:31:59 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 26
 Sep 2023 08:31:58 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 26 Sep 2023 08:31:58 -0500
Received: from localhost.localdomain (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38QDVsPl113086;
	Tue, 26 Sep 2023 08:31:55 -0500
From: Keerthy <j-keerthy@ti.com>
To: <robh+dt@kernel.org>, <nm@ti.com>, <vigneshr@ti.com>,
        <conor+dt@kernel.org>, <kristo@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <j-keerthy@ti.com>, <u-kumar1@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 0/7] arm64: ti: k3-j7: Add the ESM & main domain watchdog nodes
Date: Tue, 26 Sep 2023 18:57:58 +0530
Message-ID: <20230926132805.6518-1-j-keerthy@ti.com>
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
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The series add the ESM & main domain watchdog nodes for j721s2,
j784s4 SOCs.

Changes in v5:

	* Updated commit log and added comments for MCU watchdog
	  instances disabling.

Changes in v4:

        * Added bootph-pre-ram for all the ESM instances needed for SPL.

Changes in v3:

        * Added all the RTI events for MAIN_ESM for j784s4 as 8 instances
          are enabled.
        * Rebased on top of 6.6-rc1
        * Tested for the watchdog reset

RESEND series - corrected krzysztof.kozlowski+dt@linaro.org ID

Changes in v2:

        * Added all the instances of watchdog on j784s4/j721s2
        * Fixed all 0x0 in dts to 0x00
        * Fixed couple of ESM event numbers for j721s2
        * Rebased to linux-next branch

Keerthy (7):
  arm64: dts: ti: k3-j721s2: Add ESM instances
  arm64: dts: ti: k3-j784s4: Add ESM instances
  arm64: dts: ti: k3-j7200: Add MCU domain ESM instance
  arm64: dts: ti: k3-j784s4-main: Add the main domain watchdog instances
  arm64: dts: ti: k3-j784s4-mcu: Add the mcu domain watchdog instances
  arm64: dts: ti: k3-j721s2-main: Add the main domain watchdog instances
  dts: ti: k3-j712s2-mcu: Add the mcu domain watchdog instances

 .../boot/dts/ti/k3-j7200-mcu-wakeup.dtsi      |   7 +
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi    |  95 +++++++++
 .../boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi     |  38 ++++
 arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi    | 190 ++++++++++++++++++
 .../boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi     |  38 ++++
 5 files changed, 368 insertions(+)

-- 
2.17.1


