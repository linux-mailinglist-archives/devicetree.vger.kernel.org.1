Return-Path: <devicetree+bounces-250000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B46CE57E2
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 23:19:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5CC173002D7C
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 22:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21EB82848BB;
	Sun, 28 Dec 2025 22:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qa3LuLub"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12AC226CEB
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 22:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766960369; cv=none; b=sk0G82nG8v4JVml6wuPJ5m+GiCl6ByRLQz5va0PAYdqPfn7+zY0igjFjScF7x3BBap+m10ZbcmCLWsCkkOwgfMfbGhizN+7s0txk05rP6YxxfrK7AYakjZBqtlYuUlwJyoVJbv0owoWGYposEBcnKSzWbClmImjjrj3bJQr5VPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766960369; c=relaxed/simple;
	bh=463EVqw2YAtNQ9cdggMUH2K+X7vqQHIYxqFcOaksnJ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tYGhD/oU4alFPh0NoBorsJVRsjVKuuLL7VzApLFrBBNTUbo5Km0YaP+62MKY/mPOGQubZBXXaKRgao8GIOsjkoD2dj0Um7EPZ3vxyB3vagOHpWrO+QDbiUQv65V96WrG88eUxl32fPnRuYAP6oTxvTY9umJw1Y9uVEWldodPFHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qa3LuLub; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB6BDC116B1;
	Sun, 28 Dec 2025 22:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766960368;
	bh=463EVqw2YAtNQ9cdggMUH2K+X7vqQHIYxqFcOaksnJ8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qa3LuLubOfILqwubF018feQdqeXCeMoYXT7SRcg/vdDzi2Fz9uFyXgP2V1Jn+Lmta
	 M6xew296wG5PK7Xb1FegTptGbdLvMs7FpHcSAy/q4bHQUm0uOS+lcNI5ScRObYDNOC
	 vEUKBcueODqGms0LiG+hzUmQ426YdTBv4bDgQtPLXv8Uynej14UvbziwI4LOvfoCdr
	 cnfnNJuWQ/mUjjauMBVkb5ARxcBwzKLvDxMF9+64XGYzQMldJm2TRu7WsCVMOe5Z9d
	 aOCl5+DQ7AR1kac/lmEMLEZ9VeD3wK9xQ/ujJ0hGIzr9Mh9NIIkgvex+yyIfSBmtVu
	 aDbFxSDdWaR2Q==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 4/5] ARM: dts: socfpga: add #address-cells and #size-cells for sram node
Date: Sun, 28 Dec 2025 16:18:45 -0600
Message-ID: <20251228221846.863904-4-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20251228221846.863904-1-dinguyen@kernel.org>
References: <20251228221846.863904-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add #address-cells and #size-cells for sram node to fix below DTB_CHECK
warnings:

socfpga_arria5_socdk.dtb: sram@ffff0000 (mmio-sram): '#size-cells' is a
required property from schema $id: http://devicetree.org/schemas/sram/sram.yaml

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/intel/socfpga/socfpga.dtsi         | 3 +++
 arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
index ba24f971686e..f686fd0966e1 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
@@ -785,6 +785,9 @@ nand0: nand-controller@ff900000 {
 		ocram: sram@ffff0000 {
 			compatible = "mmio-sram";
 			reg = <0xffff0000 0x10000>;
+			#address-cells = <0x1>;
+			#size-cells = <0x1>;
+			ranges;
 		};
 
 		qspi: spi@ff705000 {
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
index b108265e9bde..4df2b98a3e59 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
@@ -686,6 +686,9 @@ nand: nand-controller@ffb90000 {
 		ocram: sram@ffe00000 {
 			compatible = "mmio-sram";
 			reg = <0xffe00000 0x40000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
 		};
 
 		eccmgr: eccmgr {
-- 
2.42.0.411.g813d9a9188


