Return-Path: <devicetree+bounces-234819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0CFC311AB
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 14:02:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E82D2189FFEF
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 13:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2321D1F099C;
	Tue,  4 Nov 2025 13:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9ZjqWte"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27A3189BB0
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 13:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762261372; cv=none; b=HddSp2djSvhp79p4AcO8VA4EYo28daXULY+XubOyZiwZFeEy2I6VRMIVLsvFhXNAzCCTp+N1M5f+1NyLVbZXdINjfR4bfbN9vfypzStSCWUoqLs2JkadNotER/gho8HDh1paiY3eWk9RD3u3rse/TtTjJo8BFMchE6V6U2tQhnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762261372; c=relaxed/simple;
	bh=nO5efxEn3koHlNWjqzoH04IwSu69Au/yUC6cBYDN5lQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Xyu4sre15a7nZFpY65BM5DjDZATLJgqm9cTcDdrJEYI4a3G4tCTdjIaFSWntLrsQ+DUgG6GTdplOPrwLEW5C2JkT3hOwtkVygJ3nwRcVAN7zsYy4tkf6GanLVWdr9YHRZm5LinuxMgaNgASAE7kKVyua1w5kjuyb3Flc0BIUnm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9ZjqWte; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01CA3C4CEF7;
	Tue,  4 Nov 2025 13:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762261370;
	bh=nO5efxEn3koHlNWjqzoH04IwSu69Au/yUC6cBYDN5lQ=;
	h=From:To:Cc:Subject:Date:From;
	b=n9ZjqWtejOBNHIn5V/yA6LoKqvoYLwzs6LSqaAyEpTQbL4mHcMuVLfXm8qm/6o9mR
	 gIC3nNKUkg2f+jt+5V30yPUkil6qq323t/RoZVbhf6EIDrRXYthtpm4RdvV7HhlJgE
	 TMaIYDcbOuLV8b/lbWrIgfzoYPUsU0HGOPO/sAIlXijs02+0vr9VD9vWL1hSKFClhW
	 794CJrUKJ2nA2/4rG7blpQn4xgg+lSXLIlwGSAfIODrueGhiVcpxma95+wfVZVLowL
	 xirH5SJ1L4h+pYlT612yVuZf7YD6A6rd60VXUKNoESSegYdzG0b6vk0/yoA0TnIXKl
	 FMYobn4J/w/Ew==
From: Dinh Nguyen <dinguyen@kernel.org>
To: devicetree@vger.kernel.org
Cc: dinguyen@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH] arm64: dts: socfpga: agilex5: fix CHECK_DTBS warning for NAND
Date: Tue,  4 Nov 2025 07:02:42 -0600
Message-ID: <20251104130242.214949-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the required clock-names property NAND controller. This change corrects
the warning:

socfpga_agilex5_socdk_nand.dtb: nand-controller@10b80000 (cdns,hp-nfc):
 'clock-names' is a required property

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
index a13ccee3c4c3..771c594532e7 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
@@ -274,6 +274,7 @@ nand: nand-controller@10b80000 {
 			#size-cells = <0>;
 			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clkmgr AGILEX5_NAND_NF_CLK>;
+			clock-names = "nf_clk";
 			cdns,board-delay-ps = <4830>;
 			iommus = <&smmu 4>;
 			status = "disabled";
-- 
2.42.0.411.g813d9a9188


