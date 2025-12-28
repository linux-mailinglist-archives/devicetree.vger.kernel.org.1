Return-Path: <devicetree+bounces-250001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E20EACE57E8
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 23:19:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D20C33007265
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 22:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F125286D55;
	Sun, 28 Dec 2025 22:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0wgWyWj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1D8285CB8
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 22:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766960369; cv=none; b=t80fQ2imLE5LyfpMBST6j3ndtGz0wpbYYYF3uk5oqapenqDePVMX0txppO5iiUjlLSSfdqda4SNe9uwETx9qxh/IhaXEjM5U4IC7SWslUUFjGrf85ohXY2FTfKyjZhrO0+l6A3qtW9h9kyVh2uB76Cy2a7GHFTaiJS0i9fswuFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766960369; c=relaxed/simple;
	bh=HgXoRAn3QG2wW3n8YZuvRQnQG28JwkLm6LApycXMIXg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NGszc47GFOMevSMsQzZ9245Tye3flz0s8kETdNzZfS8kaU7gUf4Ukl8xNNGfWARDnZxW82DPAQ7AaHvqnjmQJdA/SbcO4yjw1x/+DtAKC3ZhCvKVCK6H+xT/dzElKjbkJ5JQnRmXaO1l9T76/L5u7CBx+y12p0b6I+/LkThvMVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0wgWyWj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B54A8C116D0;
	Sun, 28 Dec 2025 22:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766960369;
	bh=HgXoRAn3QG2wW3n8YZuvRQnQG28JwkLm6LApycXMIXg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=C0wgWyWjVt5fErdxAM0Y7odiO5GsUeplYamTXHspFu7ICd/kEvVQ1F0IFSCExfO+f
	 Iuk/YKZru4PeVDC2F3iopGxJ+A8qVZASbUFrZBH0GhTMmR1zNgDQTOVPQQHM5Xlxdu
	 XYxkIUfAsSYSVC96HuQvMxXYmkzs8AKLi4FByB5KSQjrxZRD3AqVtgFibriwTCikYC
	 Gx0HDjL0NdyZldoaISwBPzjNngv60ryPbORNLuqoGQ9r9YWaSiuPcaVjcnbPwUd8n1
	 YLaLB3w485bAlkWvd0TeCZw/PT6RMU4komBNNDgzJdBk2g+yBw3hbCi+SIYWzgGTqA
	 HdW9Qwu8c7vog==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 5/5] ARM: dts: socfpga: fix dtbs_check warning for fpga-region
Date: Sun, 28 Dec 2025 16:18:46 -0600
Message-ID: <20251228221846.863904-5-dinguyen@kernel.org>
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

soc (simple-bus): base_fpga_region: 'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml

base_fpga_region (fpga-region): $nodename:0: 'base_fpga_region' does not match
'^fpga-region(@.*|-([0-9]|[1-9][0-9]+))?$'
	from schema $id: http://devicetree.org/schemas/fpga/fpga-region.yaml

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/intel/socfpga/socfpga.dtsi         | 3 ++-
 arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
index f686fd0966e1..587700a88fa8 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
@@ -87,12 +87,13 @@ pdma: pdma@ffe01000 {
 			};
 		};
 
-		base_fpga_region {
+		base_fpga_region: fpga-region {
 			compatible = "fpga-region";
 			fpga-mgr = <&fpgamgr0>;
 
 			#address-cells = <0x1>;
 			#size-cells = <0x1>;
+			ranges;
 		};
 
 		can0: can@ffc00000 {
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
index 4df2b98a3e59..a53a94678df2 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
@@ -80,12 +80,13 @@ pdma: pdma@ffda1000 {
 			};
 		};
 
-		base_fpga_region {
+		base_fpga_region: fpga-region {
 			#address-cells = <0x1>;
 			#size-cells = <0x1>;
 
 			compatible = "fpga-region";
 			fpga-mgr = <&fpga_mgr>;
+			ranges;
 		};
 
 		clkmgr@ffd04000 {
-- 
2.42.0.411.g813d9a9188


