Return-Path: <devicetree+bounces-188161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37ED0AE2FBC
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 14:07:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13DE53ADE49
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 12:07:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EE71199949;
	Sun, 22 Jun 2025 12:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPof5QRN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0126FC3
	for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 12:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750594070; cv=none; b=jExPRQuyfpuOaA0zXtxVi7rofNjzLtkThNyqelrq2kPwj2U7rUeG7aQ0bwXqgB/5vv/3FxqLhssLIjx/HV2eoNpYumz3zcyEHa1OaD9tKblgy+1+gUmtq+NRlB6SRm4iuvAGT88Xt61kQ9BV2Rja10B0PG5+eeKnfV7vifBIPBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750594070; c=relaxed/simple;
	bh=F8mDqSlRL/gISQh/68cz/s/3/klZnbKbUfhZsq+eSVo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GJHCHy1sT89APRXfT2jQClUFDfL0pSXnPlJIWu01wxxV19+Uw5ouWEKB5wyMJA9ywFu/ZsvIg4GKmy7iohHOCKEJz7dEBLPD7l7CzkfyxdKCmmh6THVeSUwHMk2Dg3f4kWAPk1WME7mSsY6GS/qiwr3lq6Llo3BXlGaUJ9eaRQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPof5QRN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DAD2C4CEE3;
	Sun, 22 Jun 2025 12:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750594069;
	bh=F8mDqSlRL/gISQh/68cz/s/3/klZnbKbUfhZsq+eSVo=;
	h=From:To:Cc:Subject:Date:From;
	b=PPof5QRN535PeZLW8MfC3ayVK/6+JdEkdDOjdK0Vzr3o7mhrf3DJPYyP8i+5irQqc
	 CTRwtyPfZYkvDQXO9+jXUQCecSvYkL4f91RDH50/waKt2fB1CR4wBeNnMGo6OE3FdG
	 BMATbsaFbm+Qc4AEi64DkslX4iwqiJzYrntH5MvlRWbgv4sn2g/iltgeP84n4zYSJW
	 3ClkAnduMnZ6pHCVv7L/pZSq13VQuk6oZzzqphLc8B0Fq3Lelr6o0XcQxQTtjcJdAW
	 kDJ0CVUPLNYk/xCT/2htrx7M5GQ+M5kP7ulVrnbDlmiYpuP2d5TJkoPtLYKupfxWkK
	 26INMewC5qfuA==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/6] arm64: dts: socfpga: agilex: fix dtbs_check warning for fs2-free-clk
Date: Sun, 22 Jun 2025 07:07:31 -0500
Message-ID: <20250622120737.600336-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The f2s-free-clk requires a clock-frequency value. We put in an
arbitrary value of 100 MHz for a constant. The true clock frequency
would get generated in an FPGA design and the bootloader will populated
in actual hardware designs.

This fixes warning like this:

arch/arm64/boot/dts/intel:34:8
      4  f2s-free-clk (fixed-clock): 'clock-frequency' is a required property

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index a77a504effea..c1e66db0f4c5 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -126,6 +126,7 @@ cb_intosc_ls_clk: cb-intosc-ls-clk {
 		f2s_free_clk: f2s-free-clk {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
+			clock-frequency = <100000000>;
 		};
 
 		osc1: osc1 {
-- 
2.42.0.411.g813d9a9188


