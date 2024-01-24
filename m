Return-Path: <devicetree+bounces-34797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A80D83B164
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 19:47:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AEBB01F23296
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 18:47:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53E4A131E43;
	Wed, 24 Jan 2024 18:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="LDkSsOsm"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE92113174F;
	Wed, 24 Jan 2024 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.142
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706122055; cv=none; b=W5xw+AQDV/2QHsgvjb02NWMcLHS24Oy7UTqQ7FeTcpyEx7jnzvDyLOWeVpf0U7oCkGJUCC4o9QS2C2rc1MLuN3Gsk6e7a66MTvLQHFV36V9yFfh5QH86HjgjPhF6zvlWUqK/1+qsgcJ6VhqBslkoiiW5OsJRqTaYYmQtCCDrPEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706122055; c=relaxed/simple;
	bh=HjY4ii9Xy6yn8+DAE+/RbOSid7OhUBGxenJ3Lgm8OVk=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=V+IGCM2IMvzqbzBrKJXX7Rzad6dIm6nSZHbwI9S2Fn9GgmH/6ohhYgF8iI1sYC2vxP0aSDl5w75runY2cAwWFuP2WFWQgNwiqsia+n+rZeRFz9TKSORHWo4kyAuJbj590PHIpKUCoYAzS9tE1Phu8YuQ/IZs0kK/88FZ9pp6FVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=LDkSsOsm; arc=none smtp.client-ip=198.47.19.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 40OIlPD5074457;
	Wed, 24 Jan 2024 12:47:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1706122045;
	bh=wGTbZq6fgX7EM2b1ZSI2la80QEUuP9Fkqi4Pll3YN9w=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=LDkSsOsmhBxXmxUupTWDwQbmzoqVry+o0G6c/hzSmwbfs14NTLxdvsjtHSs9UGBka
	 Mfs+cECTObncRUZDG1hA+1ImARJhLUzcybhj6qTHE65SqSLVuh5IN27nkXMaEqGVDH
	 r0NonxWbqQ49N5dYrvHu9L78AWOE+23kFAk7t8fE=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 40OIlPw2014129
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 24 Jan 2024 12:47:25 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 24
 Jan 2024 12:47:25 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 24 Jan 2024 12:47:24 -0600
Received: from lelvsmtp6.itg.ti.com ([10.249.42.149])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 40OIlNaP119099;
	Wed, 24 Jan 2024 12:47:24 -0600
From: Andrew Davis <afd@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>
Subject: [PATCH 03/11] arm64: dts: ti: k3-j7200: Convert serdes_ln_ctrl node into reg-mux
Date: Wed, 24 Jan 2024 12:47:14 -0600
Message-ID: <20240124184722.150615-3-afd@ti.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240124184722.150615-1-afd@ti.com>
References: <20240124184722.150615-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

This removes a dependency on the parent node being a syscon node.
Convert from mmio-mux to reg-mux adjusting node name and properties
as needed.

Signed-off-by: Andrew Davis <afd@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
index da67bf8fe703e..50d1f173bde31 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
@@ -33,10 +33,11 @@ scm_conf: scm-conf@100000 {
 		ranges = <0x00 0x00 0x00100000 0x1c000>;
 
 		serdes_ln_ctrl: mux-controller@4080 {
-			compatible = "mmio-mux";
+			compatible = "reg-mux";
+			reg = <0x4080 0x20>;
 			#mux-control-cells = <1>;
-			mux-reg-masks = <0x4080 0x3>, <0x4084 0x3>, /* SERDES0 lane0/1 select */
-					<0x4088 0x3>, <0x408c 0x3>; /* SERDES0 lane2/3 select */
+			mux-reg-masks = <0x0 0x3>, <0x4 0x3>, /* SERDES0 lane0/1 select */
+					<0x8 0x3>, <0xc 0x3>; /* SERDES0 lane2/3 select */
 		};
 
 		cpsw0_phy_gmii_sel: phy@4044 {
-- 
2.39.2


