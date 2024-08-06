Return-Path: <devicetree+bounces-91322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FDF948F01
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 14:25:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3DEFB28EBC
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 12:25:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB5EF1BE236;
	Tue,  6 Aug 2024 12:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="GDfQW/7J"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61421BD015
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 12:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722947132; cv=none; b=I+z67ZhPIfUTqea+AGLCOA1jIMdoEaHDx2n9Y4DNJT+9gKtHzB42zYo2KkXv/w8yVh/PlQIn+KlsRBrXRl8juCjKwXVVG554MEmwLAYYV6xH6M+R+5W60guxFpuwF1xmPWLK1H1wX/JEtq+6j1iUMkkED0Hyu7ssMF8ZMFaLGho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722947132; c=relaxed/simple;
	bh=VfuSf5ngJ8XW0VcI4cj9AdD8Mob4mpbDN8NuHeRXz4k=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=aT3L1osJwtV0G8pkAcqXKjwWCtpeCMzhYBUs9c9VIjHoR/lO/o6P4pSlIOFIzv4f+oBPuPFPhKZuQIBVpWlynF9+bRc9bVPocOXFUYjNj0cbvAhP24xLMuz55apBvqmKsSz4qVE1WMw77vfMi50icby99X/DvbglfcXMHlTJDAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=GDfQW/7J; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: f0f5758453ee11ef9a4e6796c666300c-20240806
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=2BoMz9cBayjnEnwe5QPiKn3dgxJMU3koTsNPiDOYlu0=;
	b=GDfQW/7JAEoLbVb44uCHRyZmOqxYbZC19ZCMo4AyLBEeDLMiOm9FoqU7mUhEf+Ntug0Za04H12niv+UKgslQX7CTPoWvugyEK0SoLVf/NQy9aQOVhmLx0Z2RaXdDU4vzdvpTOTY6fZtNpa6KmcHF2MuVXxhE7/mqj6soHlJQHn0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:2ae55be1-cd1f-47ac-a674-b562cde860b0,IP:0,U
	RL:25,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:25
X-CID-META: VersionHash:6dc6a47,CLOUDID:2dd3740e-581f-42a8-8c8e-0df96f3eec79,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES
	:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: f0f5758453ee11ef9a4e6796c666300c-20240806
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw01.mediatek.com
	(envelope-from <macpaul.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 778575964; Tue, 06 Aug 2024 20:25:18 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 6 Aug 2024 20:25:18 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 6 Aug 2024 20:25:18 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>, <devicetree@vger.kernel.org>
CC: Bear Wang <bear.wang@mediatek.com>, Pablo Sun <pablo.sun@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>, Macpaul Lin <macpaul@gmail.com>, "Sen
 Chu" <sen.chu@mediatek.com>, Jason-ch Chen <Jason-ch.Chen@mediatek.com>,
	Chris-qj chen <chris-qj.chen@mediatek.com>, MediaTek Chromebook Upstream
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Chen-Yu Tsai
	<wenst@chromium.org>
Subject: [PATCH] dt-bindings: regulator: mediatek,mt6397-regulator: convert to YAML
Date: Tue, 6 Aug 2024 20:25:07 +0800
Message-ID: <20240806122507.2766-1-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--5.977500-8.000000
X-TMASE-MatchedRID: PbAPOCPnK7bEQS2ecfkpFx+WEMjoO9WWWjWsWQUWzVqWvHBAiRR1yXv9
	jBhUgWuonD3AxwqeC/rkllaluas5jhhzK7qAlTSLbBu6+EIezdwK3n1SHen81XrSpK2Q9yJIlAb
	6jlt7Eoqb5RM17I4NianGhAzR2zz5sMxbssmtlrB0T92GM7xr5P+UEb65dgmQobK4OZUAldI8kg
	TMwC5jFl0qoPPNyuNdvn2R3e1T0pArIbYOlrrv2p4CIKY/Hg3Am4n49vyf9XEvM/mydp5vVCq2r
	l3dzGQ1aanDwoBvR/oage6BIt1eoJ+4E5ri/LhL9y3b9myibxvzzZXWCE+KxsC+ksT6a9fy
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--5.977500-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: C143B8A13F77DC4CB15480867F6F45C20BD6CE7515862A28CED5F8B4042033BC2000:8
X-MTK: N

Convert the MediaTek MT6397 regulator bindings to DT schema.

Signed-off-by: Sen Chu <sen.chu@mediatek.com>
Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 .../regulator/mediatek,mt6397-regulator.yaml  | 275 ++++++++++++++++++
 .../bindings/regulator/mt6397-regulator.txt   | 220 --------------
 2 files changed, 275 insertions(+), 220 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/mediatek,mt6397-regulator.yaml
 delete mode 100644 Documentation/devicetree/bindings/regulator/mt6397-regulator.txt

diff --git a/Documentation/devicetree/bindings/regulator/mediatek,mt6397-regulator.yaml b/Documentation/devicetree/bindings/regulator/mediatek,mt6397-regulator.yaml
new file mode 100644
index 0000000..c5e8df0
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/mediatek,mt6397-regulator.yaml
@@ -0,0 +1,275 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/mediatek,mt6397-regulator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek MT6397 Regulator
+
+maintainers:
+  - Sen Chu <sen.chu@mediatek.com>
+  - Macpaul Lin <macpaul.lin@mediatek.com>
+
+description:
+  Regulator node of the PMIC. This node should under the PMIC's device node.
+  All voltage regulators provided by the PMIC are described as sub-nodes of
+  this node.
+
+properties:
+  compatible:
+    items:
+      - const: mediatek,mt6397-regulator
+
+patternProperties:
+  "^(buck_)?v(core|drm|gpu|io18|pca(7|15)|sramca(7|15))$":
+    description: Buck regulators
+    type: object
+    $ref: regulator.yaml#
+    properties:
+      regulator-allowed-modes:
+        description: |
+          BUCK regulators can set regulator-initial-mode and regulator-allowed-modes to
+          values specified in dt-bindings/regulator/mediatek,mt6397-regulator.h
+        items:
+          enum: [0, 1]
+      regulator-compatible:
+        pattern: "^(buck_)?v(core|drm|gpu|io18|pca(7|15)|sramca(7|15))$"
+    unevaluatedProperties: false
+
+  "^(ldo_)?v(tcxo|(a|io)28)$":
+    description: LDOs with fixed 2.8V output and 0~100/10mV tuning
+    type: object
+    $ref: regulator.yaml#
+    properties:
+      regulator-allowed-modes: false
+      regulator-compatible:
+        pattern: "^(ldo_)?v(tcxo|(a|io)28)$"
+    unevaluatedProperties: false
+
+  "^(ldo_)?vusb$":
+    description: LDOs with fixed 3.0V output and 0~100/10mV tuning
+    type: object
+    $ref: regulator.yaml#
+    properties:
+      regulator-allowed-modes: false
+      regulator-compatible:
+        pattern: "^(ldo_)?vusb$"
+    unevaluatedProperties: false
+
+  "^(ldo_)?v(cama|emc3v3|gp[123456]|ibr|mc|mch)$":
+    description: LDOs with variable output and 0~100/10mV tuning
+    type: object
+    $ref: regulator.yaml#
+    properties:
+      regulator-allowed-modes: false
+      regulator-compatible:
+        pattern: "^(ldo_)?v(cama|emc3v3|gp[123456]|ibr|mc|mch)$"
+    unevaluatedProperties: false
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    pwrap {
+       	pmic {
+            compatible = "mediatek,mt6397";
+
+            mt6397regulator: mt6397regulator {
+                compatible = "mediatek,mt6397-regulator";
+
+                mt6397_vpca15_reg: buck_vpca15 {
+                    regulator-compatible = "buck_vpca15";
+                    regulator-name = "vpca15";
+                    regulator-min-microvolt = < 850000>;
+                    regulator-max-microvolt = <1350000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-enable-ramp-delay = <200>;
+                };
+
+                mt6397_vpca7_reg: buck_vpca7 {
+                    regulator-compatible = "buck_vpca7";
+                    regulator-name = "vpca7";
+                    regulator-min-microvolt = < 850000>;
+                    regulator-max-microvolt = <1350000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-enable-ramp-delay = <115>;
+                };
+
+                mt6397_vsramca15_reg: buck_vsramca15 {
+                    regulator-compatible = "buck_vsramca15";
+                    regulator-name = "vsramca15";
+                    regulator-min-microvolt = < 850000>;
+                    regulator-max-microvolt = <1350000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-enable-ramp-delay = <115>;
+                };
+
+                mt6397_vsramca7_reg: buck_vsramca7 {
+                    regulator-compatible = "buck_vsramca7";
+                    regulator-name = "vsramca7";
+                    regulator-min-microvolt = < 850000>;
+                    regulator-max-microvolt = <1350000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-enable-ramp-delay = <115>;
+                };
+
+                mt6397_vcore_reg: buck_vcore {
+                    regulator-compatible = "buck_vcore";
+                    regulator-name = "vcore";
+                    regulator-min-microvolt = < 850000>;
+                    regulator-max-microvolt = <1350000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-enable-ramp-delay = <115>;
+                };
+
+                mt6397_vgpu_reg: buck_vgpu {
+                    regulator-compatible = "buck_vgpu";
+                    regulator-name = "vgpu";
+                    regulator-min-microvolt = < 700000>;
+                    regulator-max-microvolt = <1350000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-enable-ramp-delay = <115>;
+                };
+
+                mt6397_vdrm_reg: buck_vdrm {
+                    regulator-compatible = "buck_vdrm";
+                    regulator-name = "vdrm";
+                    regulator-min-microvolt = < 800000>;
+                    regulator-max-microvolt = <1400000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-enable-ramp-delay = <500>;
+                };
+
+                mt6397_vio18_reg: buck_vio18 {
+                    regulator-compatible = "buck_vio18";
+                    regulator-name = "vio18";
+                    regulator-min-microvolt = <1500000>;
+                    regulator-max-microvolt = <2120000>;
+                    regulator-ramp-delay = <12500>;
+                    regulator-enable-ramp-delay = <500>;
+                };
+
+                mt6397_vtcxo_reg: ldo_vtcxo {
+                    regulator-compatible = "ldo_vtcxo";
+                    regulator-name = "vtcxo";
+                    regulator-min-microvolt = <2800000>;
+                    regulator-max-microvolt = <2800000>;
+                    regulator-enable-ramp-delay = <90>;
+                };
+
+                mt6397_va28_reg: ldo_va28 {
+                    regulator-compatible = "ldo_va28";
+                    regulator-name = "va28";
+                    /* fixed output 2.8 V */
+                    regulator-enable-ramp-delay = <218>;
+                };
+
+                mt6397_vcama_reg: ldo_vcama {
+                    regulator-compatible = "ldo_vcama";
+                    regulator-name = "vcama";
+                    regulator-min-microvolt = <1500000>;
+                    regulator-max-microvolt = <2800000>;
+                    regulator-enable-ramp-delay = <218>;
+                };
+
+                mt6397_vio28_reg: ldo_vio28 {
+                    regulator-compatible = "ldo_vio28";
+                    regulator-name = "vio28";
+                    /* fixed output 2.8 V */
+                    regulator-enable-ramp-delay = <240>;
+                };
+
+                mt6397_usb_reg: ldo_vusb {
+                    regulator-compatible = "ldo_vusb";
+                    regulator-name = "vusb";
+                    /* fixed output 3.3 V */
+                    regulator-enable-ramp-delay = <218>;
+                };
+
+                mt6397_vmc_reg: ldo_vmc {
+                    regulator-compatible = "ldo_vmc";
+                    regulator-name = "vmc";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-enable-ramp-delay = <218>;
+                };
+
+                mt6397_vmch_reg: ldo_vmch {
+                    regulator-compatible = "ldo_vmch";
+                    regulator-name = "vmch";
+                    regulator-min-microvolt = <3000000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-enable-ramp-delay = <218>;
+                };
+
+                mt6397_vemc_3v3_reg: ldo_vemc3v3 {
+                    regulator-compatible = "ldo_vemc3v3";
+                    regulator-name = "vemc_3v3";
+                    regulator-min-microvolt = <3000000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-enable-ramp-delay = <218>;
+                };
+
+                mt6397_vgp1_reg: ldo_vgp1 {
+                    regulator-compatible = "ldo_vgp1";
+                    regulator-name = "vcamd";
+                    regulator-min-microvolt = <1220000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-enable-ramp-delay = <240>;
+                };
+
+                mt6397_vgp2_reg: ldo_vgp2 {
+                    regulator-compatible = "ldo_vgp2";
+                    regulator-name = "vcamio";
+                    regulator-min-microvolt = <1000000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-enable-ramp-delay = <218>;
+                };
+
+                mt6397_vgp3_reg: ldo_vgp3 {
+                    regulator-compatible = "ldo_vgp3";
+                    regulator-name = "vcamaf";
+                    regulator-min-microvolt = <1200000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-enable-ramp-delay = <218>;
+                };
+
+                mt6397_vgp4_reg: ldo_vgp4 {
+                    regulator-compatible = "ldo_vgp4";
+                    regulator-name = "vgp4";
+                    regulator-min-microvolt = <1200000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-enable-ramp-delay = <218>;
+                };
+
+                mt6397_vgp5_reg: ldo_vgp5 {
+                    regulator-compatible = "ldo_vgp5";
+                    regulator-name = "vgp5";
+                    regulator-min-microvolt = <1200000>;
+                    regulator-max-microvolt = <3000000>;
+                    regulator-enable-ramp-delay = <218>;
+                };
+
+                mt6397_vgp6_reg: ldo_vgp6 {
+                    regulator-compatible = "ldo_vgp6";
+                    regulator-name = "vgp6";
+                    regulator-min-microvolt = <1200000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-enable-ramp-delay = <218>;
+                };
+
+                mt6397_vibr_reg: ldo_vibr {
+                    regulator-compatible = "ldo_vibr";
+                    regulator-name = "vibr";
+                    regulator-min-microvolt = <1200000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-enable-ramp-delay = <218>;
+                };
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/regulator/mt6397-regulator.txt b/Documentation/devicetree/bindings/regulator/mt6397-regulator.txt
deleted file mode 100644
index c080086..0000000
--- a/Documentation/devicetree/bindings/regulator/mt6397-regulator.txt
+++ /dev/null
@@ -1,220 +0,0 @@
-Mediatek MT6397 Regulator
-
-Required properties:
-- compatible: "mediatek,mt6397-regulator"
-- mt6397regulator: List of regulators provided by this controller. It is named
-  according to its regulator type, buck_<name> and ldo_<name>.
-  The definition for each of these nodes is defined using the standard binding
-  for regulators at Documentation/devicetree/bindings/regulator/regulator.txt.
-
-The valid names for regulators are::
-BUCK:
-  buck_vpca15, buck_vpca7, buck_vsramca15, buck_vsramca7, buck_vcore, buck_vgpu,
-  buck_vdrm, buck_vio18
-LDO:
-  ldo_vtcxo, ldo_va28, ldo_vcama, ldo_vio28, ldo_vusb, ldo_vmc, ldo_vmch,
-  ldo_vemc3v3, ldo_vgp1, ldo_vgp2, ldo_vgp3, ldo_vgp4, ldo_vgp5, ldo_vgp6,
-  ldo_vibr
-
-BUCK regulators can set regulator-initial-mode and regulator-allowed-modes to
-values specified in dt-bindings/regulator/mediatek,mt6397-regulator.h
-
-Example:
-	pmic {
-		compatible = "mediatek,mt6397";
-
-		mt6397regulator: mt6397regulator {
-			compatible = "mediatek,mt6397-regulator";
-
-			mt6397_vpca15_reg: buck_vpca15 {
-				regulator-compatible = "buck_vpca15";
-				regulator-name = "vpca15";
-				regulator-min-microvolt = < 850000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <12500>;
-				regulator-enable-ramp-delay = <200>;
-			};
-
-			mt6397_vpca7_reg: buck_vpca7 {
-				regulator-compatible = "buck_vpca7";
-				regulator-name = "vpca7";
-				regulator-min-microvolt = < 850000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <12500>;
-				regulator-enable-ramp-delay = <115>;
-			};
-
-			mt6397_vsramca15_reg: buck_vsramca15 {
-				regulator-compatible = "buck_vsramca15";
-				regulator-name = "vsramca15";
-				regulator-min-microvolt = < 850000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <12500>;
-				regulator-enable-ramp-delay = <115>;
-
-			};
-
-			mt6397_vsramca7_reg: buck_vsramca7 {
-				regulator-compatible = "buck_vsramca7";
-				regulator-name = "vsramca7";
-				regulator-min-microvolt = < 850000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <12500>;
-				regulator-enable-ramp-delay = <115>;
-
-			};
-
-			mt6397_vcore_reg: buck_vcore {
-				regulator-compatible = "buck_vcore";
-				regulator-name = "vcore";
-				regulator-min-microvolt = < 850000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <12500>;
-				regulator-enable-ramp-delay = <115>;
-			};
-
-			mt6397_vgpu_reg: buck_vgpu {
-				regulator-compatible = "buck_vgpu";
-				regulator-name = "vgpu";
-				regulator-min-microvolt = < 700000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-ramp-delay = <12500>;
-				regulator-enable-ramp-delay = <115>;
-			};
-
-			mt6397_vdrm_reg: buck_vdrm {
-				regulator-compatible = "buck_vdrm";
-				regulator-name = "vdrm";
-				regulator-min-microvolt = < 800000>;
-				regulator-max-microvolt = <1400000>;
-				regulator-ramp-delay = <12500>;
-				regulator-enable-ramp-delay = <500>;
-			};
-
-			mt6397_vio18_reg: buck_vio18 {
-				regulator-compatible = "buck_vio18";
-				regulator-name = "vio18";
-				regulator-min-microvolt = <1500000>;
-				regulator-max-microvolt = <2120000>;
-				regulator-ramp-delay = <12500>;
-				regulator-enable-ramp-delay = <500>;
-			};
-
-			mt6397_vtcxo_reg: ldo_vtcxo {
-				regulator-compatible = "ldo_vtcxo";
-				regulator-name = "vtcxo";
-				regulator-min-microvolt = <2800000>;
-				regulator-max-microvolt = <2800000>;
-				regulator-enable-ramp-delay = <90>;
-			};
-
-			mt6397_va28_reg: ldo_va28 {
-				regulator-compatible = "ldo_va28";
-				regulator-name = "va28";
-				/* fixed output 2.8 V */
-				regulator-enable-ramp-delay = <218>;
-			};
-
-			mt6397_vcama_reg: ldo_vcama {
-				regulator-compatible = "ldo_vcama";
-				regulator-name = "vcama";
-				regulator-min-microvolt = <1500000>;
-				regulator-max-microvolt = <2800000>;
-				regulator-enable-ramp-delay = <218>;
-			};
-
-			mt6397_vio28_reg: ldo_vio28 {
-				regulator-compatible = "ldo_vio28";
-				regulator-name = "vio28";
-				/* fixed output 2.8 V */
-				regulator-enable-ramp-delay = <240>;
-			};
-
-			mt6397_usb_reg: ldo_vusb {
-				regulator-compatible = "ldo_vusb";
-				regulator-name = "vusb";
-				/* fixed output 3.3 V */
-				regulator-enable-ramp-delay = <218>;
-			};
-
-			mt6397_vmc_reg: ldo_vmc {
-				regulator-compatible = "ldo_vmc";
-				regulator-name = "vmc";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-enable-ramp-delay = <218>;
-			};
-
-			mt6397_vmch_reg: ldo_vmch {
-				regulator-compatible = "ldo_vmch";
-				regulator-name = "vmch";
-				regulator-min-microvolt = <3000000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-enable-ramp-delay = <218>;
-			};
-
-			mt6397_vemc_3v3_reg: ldo_vemc3v3 {
-				regulator-compatible = "ldo_vemc3v3";
-				regulator-name = "vemc_3v3";
-				regulator-min-microvolt = <3000000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-enable-ramp-delay = <218>;
-			};
-
-			mt6397_vgp1_reg: ldo_vgp1 {
-				regulator-compatible = "ldo_vgp1";
-				regulator-name = "vcamd";
-				regulator-min-microvolt = <1220000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-enable-ramp-delay = <240>;
-			};
-
-			mt6397_vgp2_reg: ldo_vgp2 {
-				egulator-compatible = "ldo_vgp2";
-				regulator-name = "vcamio";
-				regulator-min-microvolt = <1000000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-enable-ramp-delay = <218>;
-			};
-
-			mt6397_vgp3_reg: ldo_vgp3 {
-				regulator-compatible = "ldo_vgp3";
-				regulator-name = "vcamaf";
-				regulator-min-microvolt = <1200000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-enable-ramp-delay = <218>;
-			};
-
-			mt6397_vgp4_reg: ldo_vgp4 {
-				regulator-compatible = "ldo_vgp4";
-				regulator-name = "vgp4";
-				regulator-min-microvolt = <1200000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-enable-ramp-delay = <218>;
-			};
-
-			mt6397_vgp5_reg: ldo_vgp5 {
-				regulator-compatible = "ldo_vgp5";
-				regulator-name = "vgp5";
-				regulator-min-microvolt = <1200000>;
-				regulator-max-microvolt = <3000000>;
-				regulator-enable-ramp-delay = <218>;
-			};
-
-			mt6397_vgp6_reg: ldo_vgp6 {
-				regulator-compatible = "ldo_vgp6";
-				regulator-name = "vgp6";
-				regulator-min-microvolt = <1200000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-enable-ramp-delay = <218>;
-			};
-
-			mt6397_vibr_reg: ldo_vibr {
-				regulator-compatible = "ldo_vibr";
-				regulator-name = "vibr";
-				regulator-min-microvolt = <1200000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-enable-ramp-delay = <218>;
-			};
-		};
-	};
-- 
2.18.0


