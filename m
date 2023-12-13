Return-Path: <devicetree+bounces-24755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25718811180
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 13:49:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D40BB281DB7
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:49:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 962512940A;
	Wed, 13 Dec 2023 12:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Ot3yupre"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CE4E10C;
	Wed, 13 Dec 2023 04:49:42 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BDCnVO6085317;
	Wed, 13 Dec 2023 06:49:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702471771;
	bh=OIRYLUKZ5INmTYZOwweJDDv9as22X7DSzbTpPm9Id1Y=;
	h=From:To:CC:Subject:Date;
	b=Ot3yupretPRMzTnRSnaIGCfcXf5QSquZCWSgFp63j2TD1lvrQOXv9QuTCU85LcwOs
	 SlF2l6wT1J8UcrgSllruIBH2ev5Att/PCOOg3DArlr/wjlSr4mfdTZZ19o//KrQmLH
	 jnS1qE6vQOgcIn9PlLgh8XZfJhiY4wELYZBHrJEI=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BDCnV4T091743
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 13 Dec 2023 06:49:31 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 13
 Dec 2023 06:49:31 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 13 Dec 2023 06:49:31 -0600
Received: from localhost ([10.24.69.141])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BDCnUkg092357;
	Wed, 13 Dec 2023 06:49:31 -0600
From: Vaishnav Achath <vaishnav.a@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <j-choudhary@ti.com>, <u-kumar1@ti.com>,
        <vaishnav.a@ti.com>
Subject: [PATCH 0/3] arm64: dts: ti: Introduce J722S SoC and EVM
Date: Wed, 13 Dec 2023 18:19:27 +0530
Message-ID: <20231213124930.3012-1-vaishnav.a@ti.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

This series adds basic support for J722S family of SoCs. Also add
J722S EVM support with basic peripheral like MMC and UART.

TRM: https://www.ti.com/lit/zip/sprujb3
EVM Schematics: https://www.ti.com/lit/zip/sprr495

Bootlog:
https://gist.github.com/vaishnavachath/23d859925277df9ccd628190e7c23371

Depends on:
https://lore.kernel.org/all/20231211132600.25289-1-vaishnav.a@ti.com/
https://lore.kernel.org/all/20231213081318.26203-1-vaishnav.a@ti.com/

Vaishnav Achath (3):
  dt-bindings: arm: ti: Add bindings for J722S SoCs
  arm64: dts: ti: Introduce J722S family of SoCs
  arm64: dts: ti: Add support for TI J722S Evaluation Module

 .../devicetree/bindings/arm/ti/k3.yaml        |   6 +
 arch/arm64/boot/dts/ti/Makefile               |   3 +
 arch/arm64/boot/dts/ti/k3-j722s-evm.dts       | 253 ++++++++++++++++
 arch/arm64/boot/dts/ti/k3-j722s.dtsi          | 275 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-pinctrl.h           |   3 +
 5 files changed, 540 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-j722s-evm.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-j722s.dtsi

-- 
2.17.1


