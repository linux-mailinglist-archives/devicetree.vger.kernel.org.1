Return-Path: <devicetree+bounces-239470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E6375C65339
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 17:41:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 9FCD1290BD
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 16:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B306F2DCF74;
	Mon, 17 Nov 2025 16:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqTKQsOD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890E02D59E8;
	Mon, 17 Nov 2025 16:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763397656; cv=none; b=HWTCaMrnk+1TlXWVj/AWYf7Wmib9BX5+Bcpj0uWUjBP55ZOW3ftrwkWro6gPaV8rxcY5f686fweHmvGkXpia172IjbUFl5ZDMn8uFITfeutzYlr5PwZ4/8ImBUbAJRHoGIVv9mVW5ZoZNyrCavnzqA4O1BGe2sHGIkOKv1xvHDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763397656; c=relaxed/simple;
	bh=0u/fEso+kgrOQ7Z6mwNX61ZMy46Dsfj98uHXjWsMpcI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NrBn8wUo6AC4TvX1WU50pTHz5T1HtGlSymDZCn6xclEiexajXMCHfc4lmdXFXAG5jzvjBWkGfcirvJgVez94cPMr0JVnmyMmRNc42qC/tp4BjVpM5cnYsRRzr+2cgKUnwgrXCnQH67Pa44I8DfQWnIWGADazEtORHn+xg8dEERU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqTKQsOD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75D47C19421;
	Mon, 17 Nov 2025 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763397656;
	bh=0u/fEso+kgrOQ7Z6mwNX61ZMy46Dsfj98uHXjWsMpcI=;
	h=From:To:Cc:Subject:Date:From;
	b=YqTKQsODxD5mu16b0gX2eCNqmjaieYGgZrGipXZsiLPR113mdl4oQvQOIthN0Nv5L
	 /zkR852Ya7xCttPoHljGzxbWm6xIvHMtbtvvpYougYDjGVflGSMqgNYL3O/VpuDpz6
	 UpWWTLRpR7YUrMmPILJDpmFz+CInnuqk0usQMGcFt0n9+WUpqVz6iymKYrNsjP1iI/
	 IL470I/jODMLXFndzWOThOIS+Omxo9y1jblsODxjzt09qfIKR+xKPUdJ+TPEbs8CGh
	 H8vOpbfwI5BVdQcJMkV+7/nsD1vu95r7GI/WQNKm28mzmvlTjpFR4nIDjjBtfz0cEw
	 Yj6NAqHM9wMIA==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1] riscv: dts: microchip: can on mpfs requires resets to function correctly
Date: Mon, 17 Nov 2025 16:40:46 +0000
Message-ID: <20251117-reference-mangle-17721deeb79c@spud>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1291; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=eWRbRrZhKobb1L/Lydi0NVCS0F3M286Cohr8lQnFPWA=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnSAbwpRxhvvTEwX/q485/u+6NpJXkTZsQGqRwp+cd2c 23X6e/XOkpZGMS4GGTFFFkSb/e1SK3/47LDuectzBxWJpAhDFycAjCRyJeMDA2XH9VccRcr3Cp/ 7t+jorfyKsw7LFfvntA6Ve/aot/LpdkY/udc2J1vZ7v5sKnXqa2PY34J5EU+LVvf+PrWHdGqaMu tEdwA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

The can driver must use resets during normal driver operation, and will
not function correctly without them. Add them to the devicetree for
mpfs.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Conor Dooley <conor.dooley@microchip.com>
CC: Daire McNamara <daire.mcnamara@microchip.com>
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: linux-riscv@lists.infradead.org
CC: devicetree@vger.kernel.org

linux-kernel@vger.kernel.org
 arch/riscv/boot/dts/microchip/mpfs.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/boot/dts/microchip/mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
index 0fb94581b6cb..015f1daf5f61 100644
--- a/arch/riscv/boot/dts/microchip/mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
@@ -444,6 +444,7 @@ can0: can@2010c000 {
 			clocks = <&clkcfg CLK_CAN0>, <&clkcfg CLK_MSSPLL3>;
 			interrupt-parent = <&plic>;
 			interrupts = <56>;
+			resets = <&mss_top_sysreg CLK_CAN0>;
 			status = "disabled";
 		};
 
@@ -453,6 +454,7 @@ can1: can@2010d000 {
 			clocks = <&clkcfg CLK_CAN1>, <&clkcfg CLK_MSSPLL3>;
 			interrupt-parent = <&plic>;
 			interrupts = <57>;
+			resets = <&mss_top_sysreg CLK_CAN1>;
 			status = "disabled";
 		};
 
-- 
2.51.0


