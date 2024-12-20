Return-Path: <devicetree+bounces-132927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6119F8BF6
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 06:46:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8FE1D7A2465
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 05:46:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4245086324;
	Fri, 20 Dec 2024 05:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="n2ySVPdV"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC1A25949A;
	Fri, 20 Dec 2024 05:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.249
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734673578; cv=none; b=Jb/WTncDpEGpcZxMuX5tGi/FnQZditP42oe/Sj02h8fknhDjGXA0ufjW1sG1eq0jWllfmW1SYDqjGTSIJ1nOmQaB6a0gDxh86Ftmx0Tyl9yGtOzgyvTy7mkqs5KfOqGHBqhj+ZFjeRrnmNyr9FYAgJtM+RJBjIMtvjaKBntsp04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734673578; c=relaxed/simple;
	bh=iTuIjcn4aPcIXdN28OEGTFcxgUvpNgqiJ+EE6wuzfxg=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=o7LvuigLtI8jStz6H0NFfzXg2mI9i8DN7Sr5WZnqqnvrppFB1sLGcvEJ4qhK47Go7xGjgM9F5Ftjw2clQ9Q7NYjdadBCsNpdEGExx+gnaKyO2jZULG83nIhZCpUXnsQe5BE3JcPCEnS6hZO61qb+5DvsrHlTGV6eeR2b+tF2448=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=n2ySVPdV; arc=none smtp.client-ip=198.47.23.249
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 4BK5jtmY020148;
	Thu, 19 Dec 2024 23:45:55 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1734673555;
	bh=K7M/Q3yMw6BAIPte+sWOvd375dRIYu4Pkgf89ouVHmw=;
	h=From:To:CC:Subject:Date;
	b=n2ySVPdVXbtbILUdkz4C4IkgY5gEZSoF8Ghj4KE7jzvWkWlW/+MA0RbqrdkuXNHhB
	 i2k1UzTQO9MAmJl97TDzGgsBPzK1/YaI6Gk1lHuojRHWk/u9LE9QsyhhVl5E2x2HVd
	 nA7wcIeTjoUI4ki1uDBjtk7P+8UC0Q7wQmxkMQVo=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 4BK5jt7r027353
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 19 Dec 2024 23:45:55 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 19
 Dec 2024 23:45:54 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 19 Dec 2024 23:45:54 -0600
Received: from uda0492258.dhcp.ti.com (uda0492258.dhcp.ti.com [10.24.72.81])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4BK5jo9j125990;
	Thu, 19 Dec 2024 23:45:51 -0600
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-am62p-j722s-common-main: enable USB0 for DFU boot
Date: Fri, 20 Dec 2024 11:15:16 +0530
Message-ID: <20241220054550.153360-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Add the "bootph-all" property to the "usb0" device-tree node. This is
required for the USB0 instance of USB to be functional at all stages of
USB DFU boot.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---

Hello,

This patch is based on linux-next tagged next-20241219.

Enabling USB DFU Boot for AM62P5-SK requires the "bootph-all" property as
indicated at:
https://lore.kernel.org/r/20241218124542.3519447-5-s-vadapalli@ti.com/
This patch is being posted to have the "bootph-all" property present in
the Linux device-tree in order to have the same property in the U-Boot
device-tree in the future via DT sync.

Regards,
Siddharth.

 arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
index 41e1c24b1144..4516a95b7504 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
@@ -651,6 +651,7 @@ usb0: usb@31000000 {
 			interrupt-names = "host", "peripheral";
 			maximum-speed = "high-speed";
 			dr_mode = "otg";
+			bootph-all;
 			snps,usb2-gadget-lpm-disable;
 			snps,usb2-lpm-disable;
 		};
-- 
2.43.0


