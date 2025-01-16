Return-Path: <devicetree+bounces-139006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E93A13A4A
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 13:57:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49F8C3A4F27
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 12:57:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D67461DE8BA;
	Thu, 16 Jan 2025 12:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="kmgrUbDb"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C544918FDD5;
	Thu, 16 Jan 2025 12:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737032272; cv=none; b=np8dLzEmphEdXiyie2aIMCMzkdgiZ9mQbGTxTVQ83nLrVdgmVIrcBx2AHtmCHJfI6wsSGBt3gegCdNp3Mit0WtkoQNuYVndKWtwaDkVlMVgCmTO1FJKEHw6nEhE7PGkWbvScBXDPDa0AsNS7DMyTyLJlJJxdF39pYadYRzgCaq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737032272; c=relaxed/simple;
	bh=HT828kQtogZYeHbIsVs/bw4uo41N1ehETMyadw5I3tc=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=WMoLraSkibmyuhx01Fj3iMZGwLAJmI6rDJJ14fpFMwCs+ogRll5lNFQ/UzsioYV7EQXvSuXZUJgHeHk4OHsAlulhzZhR5VIQ22QfeXzsik4N519Sriddl1SYm+fACoiJ3NwF/cwTcYB02vo9pPHq3/gbGsH1ztj9HP9sISA3EI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=kmgrUbDb; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50GCvV4T4049470
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 16 Jan 2025 06:57:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1737032252;
	bh=UgkmcNxQbJDDNl4BxDwnBgJCeP+UnqNZYJdP5yDYWOg=;
	h=From:To:CC:Subject:Date;
	b=kmgrUbDbC2xYxIvZgtUsmTdIRt86Egb5iQXrPluQRK4knTCTO+7JPUENfaOt5iRhF
	 GMidougcoq0kBEoCwKDU1VFzntF7PfySJFGDU2DipQvtG1rNUV8Vud/HvkIfICjff1
	 agYFLxNYggS0Jad6ZIcXOtRMOj+CYrXM2vHV8qHI=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 50GCvVLx064504
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 16 Jan 2025 06:57:31 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 16
 Jan 2025 06:57:30 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 16 Jan 2025 06:57:30 -0600
Received: from hp-z2-tower.dhcp.ti.com (hp-z2-tower.dhcp.ti.com [172.24.227.4])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50GCvQ8l039502;
	Thu, 16 Jan 2025 06:57:27 -0600
From: Hrushikesh Salunke <h-salunke@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <r-gunasekaran@ti.com>,
        <rogerq@kernel.org>, <s-vadapalli@ti.com>
CC: <h-salunke@ti.com>, <srk@ti.com>, <danishanwar@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm64: dts: ti: k3-j722s-evm: Fix USB2.0_MUX_SEL to select Type-C
Date: Thu, 16 Jan 2025 18:27:26 +0530
Message-ID: <20250116125726.2549489-1-h-salunke@ti.com>
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

J722S SOC has two usb controllers USB0 and USB1. USB0 is brought out on
the EVM as a stacked USB connector which has one Type-A and one Type-C
port. These Type-A and Type-C ports are connected to MUX so only
one of them can be enabled at a time.

Commit under Fixes, tries to enable the USB0 instance of USB to
interface with the Type-C port via the USB hub, by configuring the
USB2.0_MUX_SEL to GPIO_ACTIVE_HIGH. But it is observed on J722S-EVM
that Type-A port is enabled instead of Type-C port.

Fix this by setting USB2.0_MUX_SEL to GPIO_ACTIVE_LOW to enable Type-C
port.

Fixes: 485705df5d5f ("arm64: dts: ti: k3-j722s: Enable PCIe and USB support on J722S-EVM")
Signed-off-by: Hrushikesh Salunke <h-salunke@ti.com>
---
This patch is based on commit
619f0b6fad52 Merge tag 'seccomp-v6.13-rc8' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux

 arch/arm64/boot/dts/ti/k3-j722s-evm.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
index a00f4a7d20d9..a11daa447f3d 100644
--- a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
@@ -495,7 +495,7 @@ exp1: gpio@23 {
 		p05-hog {
 			/* P05 - USB2.0_MUX_SEL */
 			gpio-hog;
-			gpios = <5 GPIO_ACTIVE_HIGH>;
+			gpios = <5 GPIO_ACTIVE_LOW>;
 			output-high;
 		};
 
-- 
2.34.1


