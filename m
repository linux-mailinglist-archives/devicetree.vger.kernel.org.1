Return-Path: <devicetree+bounces-252149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EF8CFBADE
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 03:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6684230F6EE1
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 02:10:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C37F25CC79;
	Wed,  7 Jan 2026 02:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Usl63sWn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40ED025A64C;
	Wed,  7 Jan 2026 02:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767751813; cv=none; b=nusmm46T4O7ELJgsbTg2dG/m9Quy7W1N5RnSD2ITst9vNzdq56V29Z+S85rjrCicLLtN8LmHH5nS0En/5Z1aKP/gSIJw9d74mFZgJrhfxwiXkvCMGZVuNMhmBUbU/R0SPqtHX+oJuxwt1VBMjND0hsHhwL82Huqddk/5nzapQEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767751813; c=relaxed/simple;
	bh=12eYzsY+uCcWiQdHRuMZK9/t3j//pTN38HKrXY+KR2E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YoQmudMoLH2HyFStBlcoJLoeWKEpSUlJL0CVoBfWQerjkgH/sl3nNExJLjhYpfgRP+RXo8O+g4J8t2Sp1LW9K2z8ExyN+o9L9DFNHlf97n8OsXK0nLUWcm0WX99t03lNtSWdMcnUJTbDgvSzTaVAuZyPir2njAguSYC8yu537C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Usl63sWn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1A48C19423;
	Wed,  7 Jan 2026 02:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767751812;
	bh=12eYzsY+uCcWiQdHRuMZK9/t3j//pTN38HKrXY+KR2E=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Usl63sWn5EWV90FhPkXbzNjnocqFsBo7qSWHdI8jaMD3wCF9ACVYM4DkSNXTzyV5s
	 +4U0TyQ9cJLXwH4clvS+ezJp6tOng9EEnYWNQHCPqhULs6tbiDk0jha8I5P4K9V//l
	 Cthzzsgv5NjLL44D2TiraRGkyoP/gX54pLTG1zydb5ZNPsgdkJ3GhYAKr/vCiTnJsH
	 svMM8j1gMvSWelCmi24qdMOnlFWY2BLHim1hzLAUwtfWW7dtVanmGJgXu71JQRW2QM
	 3VFxWfsCCOlMeaUV3YE/SYVlHiqb+ftNaMnV2Hr6hwr0nc9m8EZlYWwbdcTIrqMdsj
	 1QBjMpI3m9TuA==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Tue, 06 Jan 2026 20:09:45 -0600
Subject: [PATCH 06/13] arm64: dts: broadcom: stingray: Fix 'simple-bus'
 node names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-dt-dtbs-broadcom-fixes-v1-6-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.15-dev

Fix 'simple-bus' node names to follow the defined pattern. Nodes with 'reg'
or 'ranges' addresses should also have a unit-address.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../arm64/boot/dts/broadcom/stingray/stingray-fs4.dtsi |  2 +-
 .../boot/dts/broadcom/stingray/stingray-pcie.dtsi      |  2 +-
 .../arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi |  2 +-
 arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi    | 18 +++++++++---------
 4 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray-fs4.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray-fs4.dtsi
index 9666969c8c88..cf3cb9199ce4 100644
--- a/arch/arm64/boot/dts/broadcom/stingray/stingray-fs4.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/stingray-fs4.dtsi
@@ -30,7 +30,7 @@
  *  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
-	fs4: fs4 {
+	fs4: fs4-bus@67000000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray-pcie.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray-pcie.dtsi
index 663e51756746..fbb2621d1b29 100644
--- a/arch/arm64/boot/dts/broadcom/stingray/stingray-pcie.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/stingray-pcie.dtsi
@@ -38,7 +38,7 @@ pcie8: pcie@60400000 {
 	phy-names = "pcie-phy";
 };
 
-pcie-ss {
+pcie-ss-bus@40000000 {
 	compatible = "simple-bus";
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi
index 3fa9e57185b2..850988287e48 100644
--- a/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi
@@ -2,7 +2,7 @@
 /*
  *Copyright(c) 2018 Broadcom
  */
-	usb {
+	usb-bus@68500000 {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
index 9b015b8e1bb1..f9f77b2639c5 100644
--- a/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
@@ -199,7 +199,7 @@ hsls_25m_div2_clk: clock-12500000 {
 		clock-mult = <1>;
 	};
 
-	scr {
+	scr-bus@61000000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -303,7 +303,7 @@ smmu: iommu@3000000 {
 		};
 	};
 
-	crmu: crmu {
+	crmu: crmu-bus@66400000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -412,7 +412,7 @@ gpio_crmu: gpio@24800 {
 	#include "stingray-pcie.dtsi"
 	#include "stingray-usb.dtsi"
 
-	hsls {
+	hsls-bus@68900000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -725,7 +725,7 @@ sdio1: sdhci@3f2000 {
 		};
 	};
 
-	tmons {
+	tmons-bus@8f100000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -814,18 +814,18 @@ cpu-crit {
 		};
 	};
 
-	nic-hsls {
+	nic-hsls-bus@60800000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
-		ranges = <0x0 0x0  0x0 0x7fffffff>;
+		ranges = <0x0 0x0 0x60800000 0x6fffff>;
 
-		nic_i2c0: i2c@60826100 {
+		nic_i2c0: i2c@26100 {
 			compatible = "brcm,iproc-nic-i2c";
 			#address-cells = <1>;
 			#size-cells = <0>;
-			reg = <0x60826100 0x100>,
-			      <0x60e00408 0x1000>;
+			reg = <0x026100 0x100>,
+			      <0x600408 0x1000>;
 			brcm,ape-hsls-addr-mask = <0x03400000>;
 			clock-frequency = <100000>;
 			status = "disabled";

-- 
2.51.0


