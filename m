Return-Path: <devicetree+bounces-135822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C74B4A0258E
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 13:31:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A9A013A1442
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 12:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53AB71DE2A4;
	Mon,  6 Jan 2025 12:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="uBMO0/aG"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFEC11DDC3A;
	Mon,  6 Jan 2025 12:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736166705; cv=none; b=DyZYMqBLM3AsJNYMafaL3ik/zWSve0T7l1KkC4hnr1UhUQ0hbnzrKevXPxymnSj2Wj6qq9B3A9hYlwOBvT0v1U4LOY8puEzERSYJp2xdBY1nsPe1sJd1TQI6J9GCS1bLCbNWcNC/LGmm10dm74eMox6NlW/jRi4vWSCQ7nhh+lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736166705; c=relaxed/simple;
	bh=ocIjMMX86l5aXvO9kfRYj4EEZMd8kMyX3Oe415Mvz9w=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=hjtrXUdMGHcB0Yzhk77udMk37gwGYlE+VsIOq3PULt80rwXUNp66vUgZsrtrMmw4PiL0N+Ve94nNzDa/KZuchLMzyu3NUXZAwG1CNpdtA1nwnZ8/Ag+ysSiUICWY+nP9zOA0wIIfS4VdXzu9I6e0wN5aqTJYsHkfRTG5KXd0Eo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=uBMO0/aG; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 506CVR2p2789486
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 6 Jan 2025 06:31:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736166687;
	bh=HvgttcVET7LS9gnu9cFNnv8pyvgfsHqqp2dm/tHr+NY=;
	h=From:To:CC:Subject:Date;
	b=uBMO0/aG35GCL2yQs0NC6YGIxh7izv1jZ42eZSrULxzBVHBIVp8FRxr3oBkv+HarX
	 mBtZWcuxI7+QL3TkgzC4hNpigBRFhzcv3p6NUo1O6J/VbiJf8Szc8JiAfVf4NwOPrk
	 eNAMqjUN8C+yFmRUCEN2oQqi5ohJh321QjK0JtiQ=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 506CVRes006557
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 6 Jan 2025 06:31:27 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 6
 Jan 2025 06:31:26 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 6 Jan 2025 06:31:26 -0600
Received: from localhost (chintan-thinkstation-p360-tower.dhcp.ti.com [172.24.227.220])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 506CVQEN094247;
	Mon, 6 Jan 2025 06:31:26 -0600
From: Chintan Vankar <c-vankar@ti.com>
To: Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Tero Kristo
	<kristo@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon
	<nm@ti.com>
CC: <srk@ti.com>, <s-vadapalli@ti.com>, <danishanwar@ti.com>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Chintan Vankar <c-vankar@ti.com>
Subject: [PATCH 0/2] Add bootph-all property to necessary nodes to enable ethernet boot for AM68-SK, J722s and AM62p-SK
Date: Mon, 6 Jan 2025 18:01:20 +0530
Message-ID: <20250106123122.3531845-1-c-vankar@ti.com>
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

This series adds bootph-all property to necessary nodes to enable
ethernet boot support for AM68-SK, J722s and AM62p-SK.

This series is based on linux-next tagged next-20250106.

Chintan Vankar (2):
  arm64: dts: ti: k3-am68-sk*: Add bootph-all property to necessary
    nodes to enable Ethernet boot
  arm64: dts: ti: k3-am62p5*/k3-j722s: Add bootph-all property to
    necessary nodes to enable Ethernet boot

 arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi | 3 +++
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts                | 2 ++
 arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts       | 5 +++++
 arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi       | 2 ++
 arch/arm64/boot/dts/ti/k3-j722s-evm.dts                | 3 +++
 5 files changed, 15 insertions(+)

-- 
2.34.1


