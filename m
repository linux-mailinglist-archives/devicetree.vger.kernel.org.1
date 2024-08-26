Return-Path: <devicetree+bounces-96721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A17795F3DC
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 16:29:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA3C228345D
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 14:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C84218CC0B;
	Mon, 26 Aug 2024 14:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="MjhzRnMu"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEEC718BBBF
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 14:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724682549; cv=none; b=lKeKsbLxi4y30jcD8lVlD5BAq8xfo21vqwYfcC9i19L+Guyj6whfJYvjbU5+i8BeZ9FJrnnEgKZUfXE6JC7ajHFHmQ8sUa4mggxFrdE/icuDK5CdjHJaEzoDOE1LPgPErsRr9ZYuTyVs27inS+3NhfiHJRbbgYO7CAdhVQbmytA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724682549; c=relaxed/simple;
	bh=xtxuyIa/wDkl6gBOFbgR2DCEEZ442yZ5rhen22WtP5I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jb/DmRXInJiCQByYDM+C/R09mKdjUn5vPN7t3saSC7SRHDQo1Ypt5/zfDq/uJFM2tnXAvJ6JKWkgTJ1eD3tlOufVdYL5GqGAHv4T+OF8wvBSZ5i9j+S0bAPRNHKy3pQ4nhs1ZBltNi+AAmb8npFnwbuXCUHYlGfbCH35fopGzBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=MjhzRnMu; arc=none smtp.client-ip=185.136.64.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 20240826142901c24e738dd060971fcd
        for <devicetree@vger.kernel.org>;
        Mon, 26 Aug 2024 16:29:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=x9pt7lsHs5ZT3pCqHVRpcN4kmYqFRl5kXmH0AVDwzNg=;
 b=MjhzRnMuBqT2gD6s7kHTzP6Y0W34Fv7zwOCCwfMO/KjNpDuwTSwt7Ix3ONSpDf5w9KvuQ3
 PxbUms42cmVZk9jo5HRVY6G4OkQqtmVHxh86P8mfhmzqtHsogU8rpa/0LZ3VhWyLqnERJkAh
 EnApAwme0Yjfvs1ZI72YC47WWEr5iASn/j01J5B/RgaXPtOsjk7zHCldMwl7mQ2QnhTN7GWA
 zPp3QJwgDi7w4B69y5N45DHzKRCpw7RDda1K35Hp9aQiWP07rml220sqw7qlW1rS1LUAgDuU
 uJ8CfUsfjoILwhqjlw1Jjsr75t7TzqVnMTLPdGw4g/feR066wOrgXXOw==;
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
	Bao Cheng Su <baocheng.su@siemens.com>,
	Hua Qian Li <huaqian.li@siemens.com>
Subject: [PATCH 1/2] arm64: dts: ti: iot2050: Disable lock-step for all iot2050 boards
Date: Mon, 26 Aug 2024 16:28:58 +0200
Message-ID: <d1fad2c1b5275d412338becfd7772216b5b5412c.1724682539.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1724682539.git.jan.kiszka@siemens.com>
References: <cover.1724682539.git.jan.kiszka@siemens.com>
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


