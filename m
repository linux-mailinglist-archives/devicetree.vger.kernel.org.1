Return-Path: <devicetree+bounces-255209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CB0D2131D
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 21:36:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E5AEC3012966
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 20:36:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E126356A04;
	Wed, 14 Jan 2026 20:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="bf0JX5gm"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3373559DF
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 20:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768422995; cv=none; b=jjluLOEYGol1Pz6KdToNHei0F7DzmMgBmkLE86/r7y2DOgv01XPRNYeCLYvi1xQ/pwJmh3JwDEnm/XlWdNiOCYKYkUHjRqo7aa4V8rJKqxwAo24NyfJ9EqvByIxS/Ffk1Yu/yVOF9UnnNIXMuqoWw1J4jbhBXUFhOl1g7QUYqYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768422995; c=relaxed/simple;
	bh=QEUIYRInaEC3c74hutjnKT/qhvoylxfQvUsB1PjSGcg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Z9DMQ9aw6Eazr2Y57YklEr7+sow+aoMEJNAlFikjlOgeRvQTMtqJ38BoJ9wkSlGBvWFfc65EzkZpqKRwzrCUB1j/4zzUZMnvGgLSi0YfxAOK5oImmKt9f+pMn68e08n5w2kjCIEzBL8VM30wxbq9dXG5ODfwHJTjnFa05sgRJdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=bf0JX5gm; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1768422990;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7fCNgNyUd3DDr6tt4Zqt5gmFiXNIkDuCRI4DULVvdDQ=;
	b=bf0JX5gmZ8uSNgKThpRO3zoBiXZLineJwuZjagA6Xxm2S8rvcaNx/G3fakBx8BtK+zjvj+
	zBYcBLGaySQTlejJOOqHLuatXkXI+VmH5VXKuf0wX0ahaPivZaZsCYaqsVjoSC87UM78pm
	VVj2RuXQKIYKyad7abQWV5nj7r+6a1wC2h4alpOlaZK0nZdwu0tExrnmef5WgaKJIb3tYy
	SY+rmfG8pRmHC0UDH9cn9SA4RRS5eU4w+iP33C5sr4mrqz99VX0E56ft2HVim9l4ZK2+mt
	e6U1SfKt3A2KNQkqPGUFZtnbBv49WRvovc2xCT1pJlYRY3oVbQGMYCs3tyNvrQ==
From: Val Packett <val@packett.cool>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Val Packett <val@packett.cool>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: x1-dell-thena: Move PERST and Wake GPIOs to PCIe port nodes
Date: Wed, 14 Jan 2026 17:33:32 -0300
Message-ID: <20260114203600.5617-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

A recent commit, 960609b22be5 ("arm64: dts: qcom: hamoa: Move PHY, PERST,
and Wake GPIOs to PCIe port nodes and add port Nodes for all PCIe ports")
has modified the DTs for most Hamoa-based devices, but skipped the Thena
dtsi (common for Dell Latitude and Inspiron SKUs). Apply the change to it.

Signed-off-by: Val Packett <val@packett.cool>
---
 arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
index bf04a12b16bc..fcf2845beb3c 100644
--- a/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi
@@ -1081,9 +1081,6 @@ &mdss_dp3_phy {
 };
 
 &pcie4 {
-	perst-gpios = <&tlmm 146 GPIO_ACTIVE_LOW>;
-	wake-gpios = <&tlmm 148 GPIO_ACTIVE_LOW>;
-
 	pinctrl-0 = <&pcie4_default>;
 	pinctrl-names = "default";
 
@@ -1098,6 +1095,9 @@ &pcie4_phy {
 };
 
 &pcie4_port0 {
+	perst-gpios = <&tlmm 146 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 148 GPIO_ACTIVE_LOW>;
+
 	wifi@0 {
 		compatible = "pci17cb,1107";
 		reg = <0x10000 0x0 0x0 0x0 0x0>;
@@ -1115,9 +1115,6 @@ wifi@0 {
 };
 
 &pcie6a {
-	perst-gpios = <&tlmm 152 GPIO_ACTIVE_LOW>;
-	wake-gpios = <&tlmm 154 GPIO_ACTIVE_LOW>;
-
 	vddpe-3v3-supply = <&vreg_nvme>;
 
 	pinctrl-0 = <&pcie6a_default>;
@@ -1133,6 +1130,11 @@ &pcie6a_phy {
 	status = "okay";
 };
 
+&pcie6a_port0 {
+	perst-gpios = <&tlmm 152 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 154 GPIO_ACTIVE_LOW>;
+};
+
 &pm8550_gpios {
 	rtmr0_default: rtmr0-reset-n-active-state {
 		pins = "gpio10";
-- 
2.51.2


