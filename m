Return-Path: <devicetree+bounces-97368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CE496216F
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 09:40:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E327281758
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 07:40:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7DD015A87A;
	Wed, 28 Aug 2024 07:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="GrpAFypI"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA758154C14
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 07:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724830752; cv=none; b=Lqcec4mc/lSq+WuJpuJadOCmUEZSzvGGWuZQT1x1B8rwoCynqbdwsZnISy0EGc4nrJiZtPe0Ip82q7c1NfcTE3ufSDIbmz61sFq+HDjtms4qaB9/ohWJKda+Clll2hLH9Kf7mqhlqYqaCw+PuX8z1HZcgUrAnL/I5B6SnnHdmic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724830752; c=relaxed/simple;
	bh=xtxuyIa/wDkl6gBOFbgR2DCEEZ442yZ5rhen22WtP5I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qg0Yh59GiRF2kDyHkimtdQEmYGhO9mPy/iMeCxIRftWTsp6DygBaB/mIr3TyR/KaNAc4W4Qzicld0gY62ZSUeometD/bk0HIhC7FjwWYCfZBs/RrBbbH4l+JG9lxsNmaVkMv2JFW7sZ34g4w4jlKLtZhKcXKiLXh4apX1DzlEAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=GrpAFypI; arc=none smtp.client-ip=185.136.64.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 202408280739021db560e05d9cfd4931
        for <devicetree@vger.kernel.org>;
        Wed, 28 Aug 2024 09:39:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=x9pt7lsHs5ZT3pCqHVRpcN4kmYqFRl5kXmH0AVDwzNg=;
 b=GrpAFypIKYzPTizJ//qqJ1pEqdqb+0F3vP96Ug84YmnbQqgJzdssiONH3DZAdUkk43CyAE
 nFZzxgSpkn0YtykNosRM0wklPEgLRXKDmUL9Nl3ZoHnZAbsSVN5Gz1t+SQcZcKiPsZm0diTr
 SklPe64XFV6hAyONmjuf5EKffKPD5QxvFHgRgK3m5f22FiMuuoE29lnxY52MMWeGg5QOiTLr
 9e3RWdCjxgeJOZH1OS0uPG6QQ4dc5EP8w2I/vkYz4Pmxt+UHwzDD2EinINVNrqwx+dgBSoG4
 HZ+Jm+3ecmq7E0iRfCnzBCkQD8YL4SiiAHbnyEgf/847c1ZsWQd64xrA==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Bao Cheng Su <baocheng.su@siemens.com>,
	Hua Qian Li <huaqian.li@siemens.com>
Subject: [PATCH v2 1/2] arm64: dts: ti: iot2050: Disable lock-step for all iot2050 boards
Date: Wed, 28 Aug 2024 09:39:00 +0200
Message-ID: <d1f5f84db7a1597cd29628a0b503e578367b7b40.1724830741.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1724830741.git.jan.kiszka@siemens.com>
References: <cover.1724830741.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Li Hua Qian <huaqian.li@siemens.com>

The PG1 A variant of the iot2050 series has been identified which
partially lacks support for lock-step mode. This implies that all
iot2050 boards can't support this mode. As a result, lock-step mode has
been disabled across all iot2050 boards for consistency and to avoid
potential issues.

Signed-off-by: Li Hua Qian <huaqian.li@siemens.com>
Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi | 5 -----
 arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi     | 5 +++++
 arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dts     | 5 -----
 3 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi
index e2584a5efe34..b3c4c0eec3dc 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common-pg2.dtsi
@@ -9,11 +9,6 @@
  * Common bits of the IOT2050 Basic and Advanced variants, PG2
  */
 
-&mcu_r5fss0 {
-	/* lock-step mode not supported on PG2 boards */
-	ti,cluster-mode = <0>;
-};
-
 &main_pmx0 {
 	cp2102n_reset_pin_default: cp2102n-reset-default-pins {
 		pinctrl-single,pins = <
diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
index ef34b851e178..e76828ccf21b 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
@@ -635,3 +635,8 @@ icssg0_eth1_phy: ethernet-phy@1 {
 		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
 	};
 };
+
+&mcu_r5fss0 {
+	/* lock-step mode not supported on iot2050 boards */
+	ti,cluster-mode = <0>;
+};
diff --git a/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dts b/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dts
index 29a31891b3db..4968a47f31ea 100644
--- a/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dts
+++ b/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic.dts
@@ -22,8 +22,3 @@ / {
 	compatible = "siemens,iot2050-basic", "ti,am654";
 	model = "SIMATIC IOT2050 Basic";
 };
-
-&mcu_r5fss0 {
-	/* lock-step mode not supported on this board */
-	ti,cluster-mode = <0>;
-};
-- 
2.43.0


