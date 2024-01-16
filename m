Return-Path: <devicetree+bounces-32494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D4A82F88E
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 21:48:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F414B28C6A3
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 20:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ABF71350D5;
	Tue, 16 Jan 2024 19:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSnOfSjq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE4D1350D1;
	Tue, 16 Jan 2024 19:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705434735; cv=none; b=RKH3BUS19XjwVpClELHGU88IHV1Hi6/ie7P+u72U5c/iPMtQNop2bp9UVinzTXO9aq7Gw1DXTWKc0gBx9UE8m7aSLALrRmsyvrOTR3B6vkYb6QJDu2V0T7+IksjjYMY/qDZGAZAhMwGjE3Bb/6X1HGrjlzNkUcYwGdg2t+LuL/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705434735; c=relaxed/simple;
	bh=o7ojtSxbbwiAuKTyLt6r3A4v7TrYc1uzV/5c/vzFSyM=;
	h=Received:DKIM-Signature:From:To:Cc:Subject:Date:Message-ID:
	 X-Mailer:In-Reply-To:References:MIME-Version:X-stable:
	 X-Patchwork-Hint:X-stable-base:Content-Transfer-Encoding; b=IEbjKTd/Zdi4jvFgL955MJ6rzuHWfx6kWNEHtBmbwZbYJvlFaFIrqSCOa9vzwATFMRgfePwa+cppvnOht2mrvEvjrPMBhpMg+IUTUHgwdwNFH/z3ROZujCei8yOS3ZFMWzKM1Jz6ankvK+evBGb9uYCHYDCvDWFtviLnJ8RrBPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSnOfSjq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31739C43394;
	Tue, 16 Jan 2024 19:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705434734;
	bh=o7ojtSxbbwiAuKTyLt6r3A4v7TrYc1uzV/5c/vzFSyM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CSnOfSjqyb8vB3DVV6R6gFHlQslrhxXMW2HUAJ9p5zCvAxA81CWQpHEyg22naHyAz
	 2WhNhUhf9Gd08QZgnQDC3jyt4OfBT1UoROROXmhJD0Vl8xE0oe4Dez2miSoOQVkHiJ
	 kpWTcGPhgRo1bbCXt3Kj8s4Dm13O2GC0zxRAEva8B0Rz3iB0kVjN01Us4YZLabAJbN
	 vVhNltnqV8r+z+m/ODmRwxrewOdFTnvIlUi52tKqg/Qy/KlhHmBN1Kexa63JWbqkhi
	 kk68DUIaYenKJmM3kBpG0hsWHLMdTZPxjtM0lCwQKOXZJMJ27A3FOtKP3rDhe7oR8L
	 uMLnXqyF9WZ7w==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Michal Simek <michal.simek@amd.com>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	laurent.pinchart@ideasonboard.com,
	ashok.reddy.soma@xilinx.com,
	manikanta.guntupalli@amd.com,
	harini.katakam@amd.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 6.6 064/104] arm64: zynqmp: Fix clock node name in kv260 cards
Date: Tue, 16 Jan 2024 14:46:30 -0500
Message-ID: <20240116194908.253437-64-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116194908.253437-1-sashal@kernel.org>
References: <20240116194908.253437-1-sashal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.12
Content-Transfer-Encoding: 8bit

From: Michal Simek <michal.simek@amd.com>

[ Upstream commit 0bfb7950cc1975372c4c58c3d3f9803f05245d46 ]

node name shouldn't use '_' that's why convert it to '-'.

Signed-off-by: Michal Simek <michal.simek@amd.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dtso | 12 ++++++------
 arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revB.dtso | 12 ++++++------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dtso b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dtso
index dee238739290..92f4190d564d 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dtso
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dtso
@@ -22,37 +22,37 @@
 /plugin/;
 
 &{/} {
-	si5332_0: si5332_0 { /* u17 */
+	si5332_0: si5332-0 { /* u17 */
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <125000000>;
 	};
 
-	si5332_1: si5332_1 { /* u17 */
+	si5332_1: si5332-1 { /* u17 */
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <25000000>;
 	};
 
-	si5332_2: si5332_2 { /* u17 */
+	si5332_2: si5332-2 { /* u17 */
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <48000000>;
 	};
 
-	si5332_3: si5332_3 { /* u17 */
+	si5332_3: si5332-3 { /* u17 */
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <24000000>;
 	};
 
-	si5332_4: si5332_4 { /* u17 */
+	si5332_4: si5332-4 { /* u17 */
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <26000000>;
 	};
 
-	si5332_5: si5332_5 { /* u17 */
+	si5332_5: si5332-5 { /* u17 */
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <27000000>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revB.dtso b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revB.dtso
index 73c5cb156caf..f88b71f5b07a 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revB.dtso
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revB.dtso
@@ -17,37 +17,37 @@
 /plugin/;
 
 &{/} {
-	si5332_0: si5332_0 { /* u17 */
+	si5332_0: si5332-0 { /* u17 */
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <125000000>;
 	};
 
-	si5332_1: si5332_1 { /* u17 */
+	si5332_1: si5332-1 { /* u17 */
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <25000000>;
 	};
 
-	si5332_2: si5332_2 { /* u17 */
+	si5332_2: si5332-2 { /* u17 */
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <48000000>;
 	};
 
-	si5332_3: si5332_3 { /* u17 */
+	si5332_3: si5332-3 { /* u17 */
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <24000000>;
 	};
 
-	si5332_4: si5332_4 { /* u17 */
+	si5332_4: si5332-4 { /* u17 */
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <26000000>;
 	};
 
-	si5332_5: si5332_5 { /* u17 */
+	si5332_5: si5332-5 { /* u17 */
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <27000000>;
-- 
2.43.0


