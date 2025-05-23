Return-Path: <devicetree+bounces-179981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 802B9AC247E
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 15:50:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41219164AEE
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 13:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67D8A29293C;
	Fri, 23 May 2025 13:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="s/HZkIQA"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8963A23BF8F
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 13:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748008202; cv=none; b=C2BWmheVG/B6QX2D7fteuWOLTqqhALRjtoWKXsmaV7SGQULTPd9b2mxQJNRCc83AphTkFGfGXxc1HpegUHYOzWDsOqvv1DxYdYwo73M/rICTXI8Qi5Ht7Q+ozVl+ZEYwe6aYR1rnEEH+AOzjnLL0gaEMPOHiv3HLt7bjLRRVogI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748008202; c=relaxed/simple;
	bh=wbCbtkL9mN/kzqCGLv0GqsU/0JLG5cV0hmoK0cElDk4=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=UDZVcUDjULwvNwRirwuhFpmmdfLmxy2TKFcKqKmDTryZJMKTNDLp7ZmbDL6RUySLtVAMNRAA4p/66Uz4TJTG6UsGTrpJJf2U7IM12KUhYaxS2AjkH7W+bJHTACOfZPcBIawn7S6vpFLN64YeYZDu7iQCsf1K1Demk0xWiL54CZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=s/HZkIQA; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllvem-sh03.itg.ti.com ([10.64.41.86])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTP id 54NDnrqK2123631;
	Fri, 23 May 2025 08:49:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1748008193;
	bh=qXGLNKvg3Y7rTiwH1N2hMztt+amwnRIwV/2Puqb3q6k=;
	h=From:To:CC:Subject:Date;
	b=s/HZkIQA+X9YHWObr2bMvqNPZZOr6D8MMlC8YJhTWI8mMBLYBuuP6mBMoeUPJDgXV
	 zVuFkVz2Ld7N1hOPjCg8aSu1QhuQA8XEZ64XfigAxFopzVBehskpm0+s/B6q/FgGmF
	 7Yd57JTvBBy9jrdvF30xlfOklIhO95X8XFdPcXp8=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by fllvem-sh03.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 54NDnqX6099872
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Fri, 23 May 2025 08:49:53 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 23
 May 2025 08:49:52 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 23 May 2025 08:49:52 -0500
Received: from a0507176-HP-Z2-Tower-G9-Workstation-Desktop-PC.dhcp.ti.com (a0507176-hp-z2-tower-g9-workstation-desktop-pc.dhcp.ti.com [10.24.68.154])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 54NDnmoa102762;
	Fri, 23 May 2025 08:49:49 -0500
From: Gokul Praveen <g-praveen@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>
CC: <g-praveen@ti.com>, <u-kumar1@ti.com>, <n-francis@ti.com>
Subject: [PATCH] arm64: dts: ti: Modify J784S4 SoC SERDES lane controller register length
Date: Fri, 23 May 2025 19:19:46 +0530
Message-ID: <20250523134946.144461-1-g-praveen@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Modify the J784S4 SoC SERDES lane controller register length from 0x30 to 0x50 
to enable SERDES4 registers.

'Fixes:9cc161a4509c2("arm64: dts: ti: Refactor J784s4 SoC files to a common
file")'
Signed-off-by: Gokul Praveen <g-praveen@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
index 1944616ab357..1fc0a11c5ab4 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
@@ -77,7 +77,7 @@ pcie1_ctrl: pcie1-ctrl@4074 {
 
 		serdes_ln_ctrl: mux-controller@4080 {
 			compatible = "reg-mux";
-			reg = <0x00004080 0x30>;
+			reg = <0x00004080 0x50>;
 			#mux-control-cells = <1>;
 			mux-reg-masks = <0x0 0x3>, <0x4 0x3>, /* SERDES0 lane0/1 select */
 					<0x8 0x3>, <0xc 0x3>, /* SERDES0 lane2/3 select */
-- 
2.34.1


