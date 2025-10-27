Return-Path: <devicetree+bounces-231637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E66C0F1D7
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 17:00:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B51A334F281
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 16:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29A3830C368;
	Mon, 27 Oct 2025 15:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="NsxXLJec"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E96030CD8F
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761580679; cv=none; b=r+msWDBssciXxqhs6O9gq+DIceMY8Yq/Ai/JXWbC/bHU/5vrqmdQsLfu00q5XCawTbEeCjJLZ5YPfitTToDG/CEHiZLsjcOlUgIycCPD+t0V2kdv884va5X7UbM32ssdIvtMuPmXFS584IUViDoS1K4WWFi9KrOQqYIyHVgkiN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761580679; c=relaxed/simple;
	bh=cNeEoNZMNjs7g8eJeKWktT8oOWjoRNKkmyvCV4rbGdo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oxZyDgJllAm1inYjFPNS6z4vjIAcXmSig50MJOafjIcm/sLDRbhRd44DEXLmVmjzutSfhi7NsP2f7LQOCq8x5tpgyhdfWvmtVZ1bSWSMW+WNtQaDiSpQj+bdMIR7Nbx1KNsWzIfJITgxZg52tSc70vmJmpjhrrcyhbvbczXLswA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=NsxXLJec; arc=none smtp.client-ip=91.218.175.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1761580664;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7DktUCNizUthk/eVYWcphe4sD34yOq87O4J/7ILxNWI=;
	b=NsxXLJecBlL5+cyKyvFiI6hida+cTbMcscYIDDa4jS3yYGcrOfZXzB2o/c4EGF/VFrf8PB
	bKQNj9HmzilsHCag2fRU+g6lVGv519KVy4+QcBPsO8hIReP20iDjiVBC4qVtGKvOgAq7zA
	VzlG45KebSh6HL5QLDqD2pjnofyLBr6hTW/DslhwLyxrgK5TgEgBC05eKNAuj5NWuRZ6BB
	TdXrukHsYWbyaCJE2rCJi9AkS4343Q9Lec/GXs/N9YOjXdJe5GOw0XOURI1fhQCqt7FfvC
	4UKvRaZ2p3K4H2bV+KfaNN8R1GMa16fMEVwhkhRLjVOKqTYbGPLzFGTpX0lP/A==
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	stable@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Fix vccio4-supply on rk3566-pinetab2
Date: Mon, 27 Oct 2025 16:54:28 +0100
Message-ID: <20251027155724.138096-1-diederik@cknow-tech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Page 13 of the PineTab2 v2 schematic dd 20230417 shows VCCIO4's power
source is VCCIO_WL. Page 19 shows that VCCIO_WL is connected to
VCCA1V8_PMU, so fix the PineTab2 dtsi to reflect that.

Fixes: 1b7e19448f8f ("arm64: dts: rockchip: Add devicetree for Pine64 PineTab2")
Cc: stable@vger.kernel.org
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
Changes since v1:
- Added Fixes tag (Dragan)
- Added R-b tag

 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
index d0e38412d56a..08bf40de17ea 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
@@ -789,7 +789,7 @@ &pmu_io_domains {
 	vccio1-supply = <&vccio_acodec>;
 	vccio2-supply = <&vcc_1v8>;
 	vccio3-supply = <&vccio_sd>;
-	vccio4-supply = <&vcc_1v8>;
+	vccio4-supply = <&vcca1v8_pmu>;
 	vccio5-supply = <&vcc_1v8>;
 	vccio6-supply = <&vcc1v8_dvp>;
 	vccio7-supply = <&vcc_3v3>;
-- 
2.51.0


