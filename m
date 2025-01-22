Return-Path: <devicetree+bounces-140287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF5AA1919A
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 13:43:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 03DCA1609B6
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 12:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EEDF213259;
	Wed, 22 Jan 2025 12:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="QFgpYHBG"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D913B1F8F16;
	Wed, 22 Jan 2025 12:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737549761; cv=none; b=KXW6qKK4t9TdMcHklSIQ/K8x9GDBISU7sCro18XIWB/itbPH6f0tDwk8cJoQqbzBVUX+k03bGaonG0m6z9sqMtnUMYcdssWBKntPNF4+C9zJ7IPuTcR83CQAX9cX1YVORUc5l7/dklu4nuDuhXP6AeBVlKuxcSQM7t6mrm1EmrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737549761; c=relaxed/simple;
	bh=kyyDak3Hjb09MRtl+c9JvygqePMgcclxPqqpsxLlPnQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WqlhzVvS77cRswb9T0fSiCHQ25kEpKBcnWJMFLp/QQdrANIC9kdbi7qW5sP6kFjmrLliLVW0AlM1B7INdIRqGaSvkPXDzFmczH51/3lageyTBhKE/+qGqW+3Ntrc9Q/fN8aG3SQbQs862kgFbE0z62987ICcYkANmR72DHRW+v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=QFgpYHBG; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50MCgYnx1012237
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 22 Jan 2025 06:42:34 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1737549754;
	bh=fA+QZmHLMheNWe1fuWSyOeK1K91l2wgNybCSNPDo7ig=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=QFgpYHBGUSwnbdH7zzxq1f83MJfgvmGTk1kH+GdnW43E2IdIOSb5GlZzFNFH983sJ
	 ZAoUPDhlTVgJzRrSxAZWqrQt0xCmUuGj/TYhdb5TXJOg2eQT6So74aAH6hBEvVagRV
	 nE6gLxYE/lawxgnqz1UOlBXwfJgQauY5LuLWBxCg=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50MCgYvQ053712;
	Wed, 22 Jan 2025 06:42:34 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 22
 Jan 2025 06:42:34 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 22 Jan 2025 06:42:34 -0600
Received: from uda0492258.dhcp.ti.com (uda0492258.dhcp.ti.com [10.24.72.104])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50MCgN25007253;
	Wed, 22 Jan 2025 06:42:31 -0600
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH 2/2] arm64: dts: ti: k3-am62p5-sk: Add boot phase tag for USB0
Date: Wed, 22 Jan 2025 18:11:49 +0530
Message-ID: <20250122124223.1118789-3-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250122124223.1118789-1-s-vadapalli@ti.com>
References: <20250122124223.1118789-1-s-vadapalli@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

The USB0 instance of USB on AM62Px SoC can be used for USB DFU boot. This
requires USB0 to be enabled at all stages of the boot process. In order to
support USB DFU boot on AM62P5-SK, add the "bootph-all" property to USB0.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
index ad71d2f27f53..20ceb1c11d8e 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
@@ -519,6 +519,7 @@ &usbss1 {
 };
 
 &usb0 {
+	bootph-all;
 	usb-role-switch;
 
 	port {
-- 
2.43.0


