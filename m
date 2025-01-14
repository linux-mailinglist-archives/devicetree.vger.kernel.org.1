Return-Path: <devicetree+bounces-138452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BDAA10792
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 14:19:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D1391686C4
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 13:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E5292361F4;
	Tue, 14 Jan 2025 13:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwUhZ1RK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AAB2361EC;
	Tue, 14 Jan 2025 13:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736860770; cv=none; b=jGY3/fA4aedT9Vubpzm8P6+JmE6PFL5XMU0FIqZ5TSpC8rYBmIa6zuZaxQLtGiIKOQz4RhlIl30DncVBfU/3NC+RSEYMTJ7zs7Vz3EsEoXyCUjZH08XjG5Sq3wQm5lmNK5pHtvL7ttqGJvr/P0/jI6KkRR8Z9hwhhPUyHZlLmfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736860770; c=relaxed/simple;
	bh=8yp8wj5CZLyUheL3COSbwLN32UWBL06zRFhsfhD44t0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dmZBnRm1n9XcwG+9rVW1Ptb9uZZnjwWMgEuDOyXeE+n3QliM8SpfQj9Oq/3l9b3YDA1bm3QfEAVFD78bDEYmU6o3O+QCGel2fhi8XIEIoCuvC7FlXWnp/eQNOPU/yS08LL8MOMcAczCAtvUEQCGkG28o2HO8Uwc4YtjtUDwCpi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwUhZ1RK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86A3CC4CEE1;
	Tue, 14 Jan 2025 13:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736860769;
	bh=8yp8wj5CZLyUheL3COSbwLN32UWBL06zRFhsfhD44t0=;
	h=From:To:Cc:Subject:Date:From;
	b=SwUhZ1RKt7gC1NgRT3HxoEwBdBCBviHUX2fDxpWavx2ZmUH/eQwKx5+mZ8Kd6s956
	 e3GETflIPhy/ug9+C+IJH6rFffYzsH9z3R/f5Nxmo/v0iU8htQEfuD4q8K3XZXOeeW
	 oRlOHeHEfAHCeBKk8MH+XoFZQHqFpHsW+KZlDZik7REQkv56kKLeosqhsM2Uf+sxxa
	 lelj1cOsWqNSctWQcGxiU+1lPGuM6K3++GEP8d5LX1E4VeX+TuZFjzZatnRsJnM7us
	 vnPOHY7uuLgZUQ4gJY0veeaBwZEovccX6ai3jD6v6NuWI4p8ZgXRDRGkN57WmOg2fN
	 XTDIn5b/32Qpg==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	valentina.fernandezalanis@microchip.com,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: dts: microchip: update pcie reg properties to new format
Date: Tue, 14 Jan 2025 13:18:56 +0000
Message-ID: <20250114-kilobyte-oven-170d6778089e@spud>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3318; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=IF0aY3m7nsj4WuRNkJ6oDUfJt2kJoHaM4evLpeVSh18=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDOltKY6fe4w+ZzPvElM1rn+z1i3xk4xbx5OfX33WR09U7 VR+ayDXUcrCIMbBICumyJJ4u69Fav0flx3OPW9h5rAygQxh4OIUgIkwVDL8zwu1TunRMJAsPp+6 geUTZwdLuuINf7dfmzQPTWZPVG83YGR48+Pay4xHv8JYHz4Q++nJoz0x2/30Kt/T9xWPFseXXbr HBAA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

The existing PolarFire SoC devicetrees all use root port instance 1,
update the reg properties in PCIe nodes to use the new format that
specifies the instance in use. Failing to do so would still work but
produces warnings:
mpfs-icicle-kit.dtb: pcie@3000000000: reg: [[48, 0, 0, 134217728], [0, 1124073472, 0, 65536]] is too short
mpfs-icicle-kit.dtb: pcie@3000000000: reg-names: ['cfg', 'apb'] is too short

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Conor Dooley <conor@kernel.org>
CC: Daire McNamara <daire.mcnamara@microchip.com>
CC: valentina.fernandezalanis@microchip.com
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: linux-riscv@lists.infradead.org
CC: devicetree@vger.kernel.org
CC: linux-kernel@vger.kernel.org
---
 arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi | 5 +++--
 arch/riscv/boot/dts/microchip/mpfs-m100pfs-fabric.dtsi    | 5 +++--
 arch/riscv/boot/dts/microchip/mpfs-polarberry-fabric.dtsi | 5 +++--
 3 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
index 1069134f2e12..a6dda55a2d1d 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
@@ -32,8 +32,9 @@ pcie: pcie@3000000000 {
 		#interrupt-cells = <0x1>;
 		#size-cells = <0x2>;
 		device_type = "pci";
-		reg = <0x30 0x0 0x0 0x8000000>, <0x0 0x43000000 0x0 0x10000>;
-		reg-names = "cfg", "apb";
+		reg = <0x30 0x0 0x0 0x8000000>, <0x0 0x43008000 0x0 0x2000>,
+		      <0x0 0x4300a000 0x0 0x2000>;
+		reg-names = "cfg", "bridge", "ctrl";
 		bus-range = <0x0 0x7f>;
 		interrupt-parent = <&plic>;
 		interrupts = <119>;
diff --git a/arch/riscv/boot/dts/microchip/mpfs-m100pfs-fabric.dtsi b/arch/riscv/boot/dts/microchip/mpfs-m100pfs-fabric.dtsi
index 8230f06ddf48..36a9860f31da 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-m100pfs-fabric.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs-m100pfs-fabric.dtsi
@@ -20,8 +20,9 @@ pcie: pcie@2000000000 {
 		#interrupt-cells = <0x1>;
 		#size-cells = <0x2>;
 		device_type = "pci";
-		reg = <0x20 0x0 0x0 0x8000000>, <0x0 0x43000000 0x0 0x10000>;
-		reg-names = "cfg", "apb";
+		reg = <0x20 0x0 0x0 0x8000000>, <0x0 0x43008000 0x0 0x2000>,
+		      <0x0 0x4300a000 0x0 0x2000>;
+		reg-names = "cfg", "bridge", "ctrl";
 		bus-range = <0x0 0x7f>;
 		interrupt-parent = <&plic>;
 		interrupts = <119>;
diff --git a/arch/riscv/boot/dts/microchip/mpfs-polarberry-fabric.dtsi b/arch/riscv/boot/dts/microchip/mpfs-polarberry-fabric.dtsi
index 9a56de7b91d6..a57dca891965 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-polarberry-fabric.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs-polarberry-fabric.dtsi
@@ -20,8 +20,9 @@ pcie: pcie@2000000000 {
 		#interrupt-cells = <0x1>;
 		#size-cells = <0x2>;
 		device_type = "pci";
-		reg = <0x20 0x0 0x0 0x8000000>, <0x0 0x43000000 0x0 0x10000>;
-		reg-names = "cfg", "apb";
+		reg = <0x20 0x0 0x0 0x8000000>, <0x0 0x43008000 0x0 0x2000>,
+		      <0x0 0x4300a000 0x0 0x2000>;
+		reg-names = "cfg", "bridge", "ctrl";
 		bus-range = <0x0 0x7f>;
 		interrupt-parent = <&plic>;
 		interrupts = <119>;
-- 
2.45.2


