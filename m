Return-Path: <devicetree+bounces-40049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C3E84F0D4
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 08:33:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8EF82290725
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 07:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1120657C7;
	Fri,  9 Feb 2024 07:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="gTRqxxzt"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-225.siemens.flowmailer.net (mta-65-225.siemens.flowmailer.net [185.136.65.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5846165BB4
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 07:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707464016; cv=none; b=JGugzioy+qRgGvyaI61seqj2h10fMg2eRCLbN3IvoYkiihay/CerWSaEShm9nzoE8IvmY/L9gFa3O064cJd6EA58FDSRt8Ce52luO2+h8hdWVegItmDPtmyN91+NhoaM/L2lrDYJmP/pYoGcL24FAt1+Wa0tXg+TIsw2nZ9PbaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707464016; c=relaxed/simple;
	bh=RLUBw5rRXak8EjSpQFHg4m3NozL4KVpKO2aKpiNsJRw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eoXV+ldkcH+AxO/pYCdXqLlYX8OBhoxKubLxFPTqJvZejIe5Per6et4uwkv/zSYUW4XUJLfHrB/TgKajhdjvkOfD1COxQzHRXVrrg2/zLqiyXUGcnoVO835uIEZ4mpxS1xmeLircZHqgabgtTfpwjLk4HAzLUAAVcE9UAS4oUyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=gTRqxxzt; arc=none smtp.client-ip=185.136.65.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-225.siemens.flowmailer.net with ESMTPSA id 20240209072323640e5c35ae4c5ba12f
        for <devicetree@vger.kernel.org>;
        Fri, 09 Feb 2024 08:23:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=yA1XgL1R9WxxOtIY8CnNkY8TcITrL/GQzQuoi7f9MIE=;
 b=gTRqxxztly4FS8drCSRCTqbssCSQ+A3SVMLaKQSv8PwkxIWjO0QJofo+2HSODB5FRs+fT1
 C9FCI3I+viLBjAFB+jPJtqx6FO9w8dzavQhRexM5lQht+N0jtemKlsJvse1VUkgnCUHA02lk
 tZvVc8rh1QdDWcfQHkbjIDAkGnUmw=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>
Subject: [PATCH v3 2/7] arm64: dts: ti: iot2050: Disable R5 lockstep for all PG2 boards
Date: Fri,  9 Feb 2024 08:23:16 +0100
Message-Id: <f692d0211915aefd4de7c9ecff5234683c9c7d59.1707463401.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1707463401.git.jan.kiszka@siemens.com>
References: <cover.1707463401.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Baocheng Su <baocheng.su@siemens.com>

The R5 lockstep disabling should be common for all PG2 boards, move it
from variants dts to common-pg2.dtsi.

As now the Basic PG2 consumes this twice, move Basic disabling to the
PG1 variant.

Signed-off-by: Baocheng Su <baocheng.su@siemens.com>
[Jan: avoid duplication of disabling for Basic PG2]
Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi     | 7 ++++++-
 arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi | 5 -----
 arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dts         | 5 +++++
 arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts   | 5 -----
 arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-pg2.dts  | 7 +------
 5 files changed, 12 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi
index e9b57b87e42e..42adb8815f38 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (c) Siemens AG, 2021
+ * Copyright (c) Siemens AG, 2021-2023
  *
  * Authors:
  *   Chao Zeng <chao.zeng@siemens.com>
@@ -9,6 +9,11 @@
  * Common bits of the IOT2050 Basic and Advanced variants, PG2
  */
 
+&mcu_r5fss0 {
+	/* lock-step mode not supported on PG2 boards */
+	ti,cluster-mode = <0>;
+};
+
 &main_pmx0 {
 	cp2102n_reset_pin_default: cp2102n-reset-default-pins {
 		pinctrl-single,pins = <
diff --git a/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi b/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi
index 1d6cddb11991..3bb6bcb0a5d3 100644
--- a/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi
@@ -40,8 +40,3 @@ &main_uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_uart0_pins_default>;
 };
-
-&mcu_r5fss0 {
-	/* lock-step mode not supported on Basic boards */
-	ti,cluster-mode = <0>;
-};
diff --git a/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dts b/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dts
index 87928ff28214..be9c8db4c43a 100644
--- a/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dts
+++ b/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dts
@@ -22,3 +22,8 @@ / {
 	compatible = "siemens,iot2050-basic", "ti,am654";
 	model = "SIMATIC IOT2050 Basic";
 };
+
+&mcu_r5fss0 {
+	/* lock-step mode not supported on this board */
+	ti,cluster-mode = <0>;
+};
diff --git a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts
index bd6f2e696e94..1e5d4d98b69b 100644
--- a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts
+++ b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts
@@ -21,11 +21,6 @@ / {
 	model = "SIMATIC IOT2050 Advanced M2";
 };
 
-&mcu_r5fss0 {
-	/* lock-step mode not supported on this board */
-	ti,cluster-mode = <0>;
-};
-
 &main_pmx0 {
 	main_bkey_pcie_reset: main-bkey-pcie-reset-default-pins {
 		pinctrl-single,pins = <
diff --git a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-pg2.dts b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-pg2.dts
index f00dc86d01b9..a8ce8c891894 100644
--- a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-pg2.dts
+++ b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-pg2.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (c) Siemens AG, 2018-2021
+ * Copyright (c) Siemens AG, 2018-2023
  *
  * Authors:
  *   Le Jin <le.jin@siemens.com>
@@ -22,8 +22,3 @@ / {
 	compatible = "siemens,iot2050-advanced-pg2", "ti,am654";
 	model = "SIMATIC IOT2050 Advanced PG2";
 };
-
-&mcu_r5fss0 {
-	/* lock-step mode not supported on this board */
-	ti,cluster-mode = <0>;
-};
-- 
2.35.3


