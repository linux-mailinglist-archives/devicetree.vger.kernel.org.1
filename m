Return-Path: <devicetree+bounces-229160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB18BF4906
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 06:02:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7799E4E40CA
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 04:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74BF5238159;
	Tue, 21 Oct 2025 04:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdrNLX8E"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517AB22DF9E
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 04:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761019365; cv=none; b=tlEk8q0EYBQE+hYMvzq+/moHyTVp+wfyBRNifylnQ/xKxVECgYWtELCEUhmaEAf7xhzmvXeiLZCiTrhmklHaRCofTqDolkIoH1YJuysoPQulqD+anbOvkL1ndqYqvNKmOus5Ia4c7lkGlTL4e01fmm+KKf9S6ZXctYyGumnlZ/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761019365; c=relaxed/simple;
	bh=p8cX9muVbBFHAJf8ejUtf+AAzhYamFPN0B12+buOQ7c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=df+1XWAwY7c9d1suSNKKCGz1kMxrW8wvoRhbk9pFgJ4JrUc+Hc66gs9+hooMYDTPymYa9SonTUx7Wwus7JuJv0M7ULVh9b36OkRKvh1r+XVgaVKU6M6QqxItOa3F6OWP/ZD6Rsbp8ZHokEQN11yUnR23k634giVLZwtkk3HZRdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdrNLX8E; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C392DC19424;
	Tue, 21 Oct 2025 04:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761019365;
	bh=p8cX9muVbBFHAJf8ejUtf+AAzhYamFPN0B12+buOQ7c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gdrNLX8E2myYoGxeMan6Zr9uylY+1MahKTAfykkimcxvfisJgkiLMqQW0dPQ9xocD
	 t2aCh+PWAf2nVMLBPVe8hSysNg6vEqdIDuUxyRhEOLjWATyo93gBmIgnybFkAr8dLG
	 ZSza5ujEGjivLNBlwlQ8LuSaI0ZK4/j4Oru2rPq0YZuG6UQrB6NmBZK6sPZUnVk6+m
	 oC/8HFnG766kjfj2zki/5wT2cmLj6flFBmqxot1O++6OgYijMsXUY+h0hYwtuCtdgM
	 xJzAUiSqrD2VbwWU93dFDJvAj+S5lOPwA185SoUVyQHBTHlTzQaGTU0rvXoWYfuyx/
	 wE4g1uqaXk73w==
From: Dinh Nguyen <dinguyen@kernel.org>
To: devicetree@vger.kernel.org
Cc: dinguyen@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 3/3] arm64: dts: socfpga: agilex: fix bindings warning for ecc manager
Date: Mon, 20 Oct 2025 23:02:30 -0500
Message-ID: <20251021040230.759832-3-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20251021040230.759832-1-dinguyen@kernel.org>
References: <20251021040230.759832-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix ranges warning: Warning (simple_bus_reg): /soc@0/eccmgr: missing or
empty reg/ranges property

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index c1e66db0f4c5..b8e2f2c3c558 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -608,7 +608,7 @@ sdr: sdr@f8011100 {
 			reg = <0xf8011100 0xc0>;
 		};
 
-		eccmgr {
+		eccmgr: eccmgr@ff8c0000 {
 			compatible = "altr,socfpga-s10-ecc-manager",
 				     "altr,socfpga-a10-ecc-manager";
 			altr,sysmgr-syscon = <&sysmgr>;
@@ -617,7 +617,7 @@ eccmgr {
 			interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
-			ranges;
+			ranges = <0 0xff8c0000 0x10000>;
 
 			sdramedac {
 				compatible = "altr,sdram-edac-s10";
-- 
2.42.0.411.g813d9a9188


