Return-Path: <devicetree+bounces-9885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B3F7CEF24
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 07:40:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 30254B2107A
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 05:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89B8846682;
	Thu, 19 Oct 2023 05:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="NfxEuHt+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D67717C2
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 05:40:39 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 479A211B;
	Wed, 18 Oct 2023 22:40:37 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39J5eOdC048169;
	Thu, 19 Oct 2023 00:40:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1697694024;
	bh=5vSWNA2DYmfd9yoLIfzlu92Ablb2/nW6TuHm3S1WCY4=;
	h=From:To:CC:Subject:Date;
	b=NfxEuHt+DAtbky1Z13fDbuUMdkAzlrpS75wiV288BVCFY/GpyKS8nrObThpEkZ/Wz
	 pdtw1FCmd8JCNuSu8OjAf7q0DVsTwLEO3OeJacp+Tj87CZY8Ecll0FMQJ0hf1/or2M
	 vTjUTHFwBwSL+ISlOcA7V7AmTGmZLKDxZa1n2Voc=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39J5eORC016619
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 19 Oct 2023 00:40:24 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 19
 Oct 2023 00:40:24 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 19 Oct 2023 00:40:24 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39J5eNMj020287;
	Thu, 19 Oct 2023 00:40:24 -0500
From: Jayesh Choudhary <j-choudhary@ti.com>
To: <vigneshr@ti.com>, <nm@ti.com>, <a-bhatia1@ti.com>, <rogerq@kernel.org>
CC: <afd@ti.com>, <s-vadapalli@ti.com>, <conor+dt@kernel.org>,
        <r-ravikumar@ti.com>, <sabiya.d@ti.com>, <kristo@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <j-choudhary@ti.com>
Subject: [PATCH v12 0/5] Enable Display for J784S4 and AM69-SK platform
Date: Thu, 19 Oct 2023 11:10:17 +0530
Message-ID: <20231019054022.175163-1-j-choudhary@ti.com>
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

This series adds support for:
- DisplayPort for J784S4-EVM
- Displayport and HDMI for AM69-SK platform

Changelog v11->v12:
- Revert back to port definition as per v9 as W=1 warning in v10 and v11
  was not acceptable. (Suggested by Vignesh)
  [3/5]: Remove '#address-cells' and '#size-cells' from dss_ports as now
  we are back to default single port definition on J784S4-EVM board file
  [4/5]: Revert back to NOT using reg for default port 0 on J784S4-EVM.
  [5/5]: Add #address-cells and #size-cells in dss-ports for AM69-SK as
  they can no longer be kept in main file.
- Pick up R-by tag for the series by Roger in v11.

v11: https://lore.kernel.org/all/20231005132732.7462-1-j-choudhary@ti.com/

Changelog v10->v11:
- Added comment for disabling serdes-refclk (according to comments of v5)
- Update commit message to document why serdes, wiz nodes (2/5) and mhdp-
  bridge, tidss nodes (3/5) are disabled.
- Keep only ports in board files and move common properties to main file
  and document why ports are kept empty.

v10: https://lore.kernel.org/all/20230927121157.278592-1-j-choudhary@ti.com/

Changelog v9->v10:
- Remove duplicate properties from dp0_ports node in main file.
- Add reg for the port even though there is only single port in dss_port
  since its more accurate description for the port.
- Carry the R-by tags from v9.

v9: https://lore.kernel.org/all/20230803080441.367341-1-j-choudhary@ti.com/

Changelog v8->v9:
- Fix compatible of serdes_ln_ctrl node
- Fix extra new lines across nodes
- Fix node-names to keep them generic

v8: https://lore.kernel.org/all/20230801070019.219660-1-j-choudhary@ti.com/

Changelog v7->v8:
- rebase on tag next-20230731
- add AM69 display support
- fix commit heading for patch [2/5]

v7: https://lore.kernel.org/all/20230728050859.7370-1-j-choudhary@ti.com/

Changelog v6->v7:
- change compatible for scm_conf to 'simple-bus'
- drop main_cpsw node due to driver dependency on [1]

v6: https://lore.kernel.org/all/20230721132029.123881-1-j-choudhary@ti.com/

Changelog v5->v6:
- Change header file according to [2].
- Add idle-state property in serdes_ln_ctrl node.
- Fix dtbs_check warning due to clock-frequency property in serdes_refclk
  node by disabling the node in main.dtsi and enabling it in board file
  when the clock-frequency node is actually added.

v5: https://lore.kernel.org/all/20230710101705.154119-1-j-choudhary@ti.com/

Changelog v4->v5:
- rebased the patches on linux-next tip.

v4: https://lore.kernel.org/all/20230425131607.290707-1-j-choudhary@ti.com/

Changelog v3->v4:
- add reg property to serdes_ln_ctrl and fix the node name again to
  get rid of dtbs_check error.
- reorder reg, reg-names and ranges property for main_cpsw1.
- correct the order for clocks in serdes_wiz nodes to fix dtbs_check
  warnings.
- fix indentation in reg, reg-names and clock property for dss node.
- add comments for the reg type in dss registers.

v3: https://lore.kernel.org/all/20230419061710.290068-1-j-choudhary@ti.com/

Changelog v3->v2:
- fix dtc warnings for 'scm_conf' and 'serdes_ln_ctrl' nodes
  (Checked all the changes of the series with W=12 option during build)
- added clock-frequency for serdes_refclk along with other EVM changes
  This refclk is being used by all the instances of serdes_wiz which
  are disabled by default. So configuring refclk when the serdes nodes
  are used for the first time is okay.

v2: https://lore.kernel.org/all/20230414151553.339599-1-j-choudhary@ti.com/

Changelog v1->v2:
- Moved J784S4 EVM changes together to the last patch
  (Suggested by Andrew)

v1: https://lore.kernel.org/all/20230405111412.151192-1-j-choudhary@ti.com/


[0]: <https://lore.kernel.org/all/570903b6-8239-d44a-5fac-71700804cb5d@ti.com/>
[1]: <https://lore.kernel.org/all/20230605154153.24025-1-afd@ti.com/>
[2]: <https://lore.kernel.org/all/20230721125732.122421-1-j-choudhary@ti.com/>

Dasnavis Sabiya (1):
  arm64: dts: ti: k3-am69-sk: Add DP and HDMI support

Rahul T R (2):
  arm64: dts: ti: k3-j784s4-main: Add DSS and DP-bridge node
  arm64: dts: ti: k3-j784s4-evm: Enable DisplayPort-0

Siddharth Vadapalli (2):
  arm64: dts: ti: k3-j784s4-main: Add system controller and SERDES lane
    mux
  arm64: dts: ti: k3-j784s4-main: Add WIZ and SERDES PHY nodes

 arch/arm64/boot/dts/ti/k3-am69-sk.dts      | 232 +++++++++++++++++
 arch/arm64/boot/dts/ti/k3-j784s4-evm.dts   | 117 +++++++++
 arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi | 274 +++++++++++++++++++++
 3 files changed, 623 insertions(+)

-- 
2.25.1


