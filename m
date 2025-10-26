Return-Path: <devicetree+bounces-231154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E165C0AEA5
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 18:26:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 67FE84E55FD
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 17:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E60E0253956;
	Sun, 26 Oct 2025 17:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="n/d0hMqP"
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta1.migadu.com (out-179.mta1.migadu.com [95.215.58.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77278205E26
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 17:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761499607; cv=none; b=dycRqI/T2+Mo8c9WjnGt7h0OTJXDLKhDxJvTj0XTK9u9PrNzie/82XzgDbjlPWKzuZBsuHDBec96UOtf6bBOcobq4xxi39X++xF3mnkyr0GBIP5P6XmwheZz4s4jtIrnMXrm8RHfU2p3Mmw/AaxSEg+q7C8T1QDrhdoG5ZeCMFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761499607; c=relaxed/simple;
	bh=4GvK710XnmCdzXDMCAH9ndiaPMY+UYPitVyF3O0sRJY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tdqiU7EZXNm3LMebausYmZfpQJYqjOvg6mvgLGo/k0uQefQAifNT9jiMqY90jkdZNDPEoT360NvqP7AOVGb1CUs5yDnb5pqAF7B2Hl462hnora366HL76XXCBq/pUSEzKEyy/Yj6z07Css/bfOvazE02IytT5tU3FZ7/LH4lrr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=n/d0hMqP; arc=none smtp.client-ip=95.215.58.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1761499602;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3lFD1esy0bOO1GR9/VeKIxmL26xXKQjGQtkmjDjqjxk=;
	b=n/d0hMqPEpqnefQswGuQIuiH8oNIJ4/MOodZcOSESvtfOXccz3rc9tV60y5yy3N4tzjbS6
	koNKze4JXyvBxVHQ6kCa9B43pfeMqqBi1Z7aod9BeTKny59Xu8lYq7X76wItWO6SuC8vXV
	ZoWQ+GsJq5rwoohqUKG6FFa1sfjx4/r1TCkditqUxlMlRScLDIdj/ZASW2wc+15zg4hMa7
	bfCMfBgutA0EpC2mW0tmE8iLvtRuOyWgteaCHxexnKX83Q5rxEAWzUVYOD7kfjKt5m3VvI
	ZNTQD34SPl75NnVCweff1Ar+2Z/IhUY3Fwyq6KzzSEvKpHVMDso902J6KYh+Fw==
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
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH] arm64: dts: rockchip: Fix vccio4-supply on rk3566-pinetab2
Date: Sun, 26 Oct 2025 18:25:47 +0100
Message-ID: <20251026172608.108956-1-diederik@cknow-tech.com>
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

Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
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


