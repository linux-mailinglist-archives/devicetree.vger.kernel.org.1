Return-Path: <devicetree+bounces-137207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 324BEA0814D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 21:20:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED66F7A25B6
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 20:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43EB31FF7DA;
	Thu,  9 Jan 2025 20:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="KpACpZrq"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5921FCFE8;
	Thu,  9 Jan 2025 20:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736454016; cv=none; b=nWaFfU3xro+No/eNRwI8eDMdET/uo8I2DTaVkwM1nXrt1yV9/O20vdKD0Bk6+8X7FNIyd0UBNRM72yba8EWH83D1+4hk7u0Wth67so54ULH1sFRKI90lNNTH4V1w8iL3bSH5TVmnfYSCbgu4VyOuiylO+X3n+ACutKrZBO8xZEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736454016; c=relaxed/simple;
	bh=ElYWiUmJ2Ri6vRxfFhzAYuVD1aqDjlfwTAiSYUc0XOk=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=EAjex3xrB5lpm3n+Ngr46l2DV0p+noWiQit1NqUreNhkFpUpLBBQj1cPbjKWlfN982Ho53ne0tNtBMWnuP24FKxFK1FdwjtQHGAE0NnQVBdfSeGyVCqL6LahKmsd/kUiPs8LibsWIFl4R3B9z51E/MRFPDz6W2h98jvwDXkuqv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=KpACpZrq; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 509KK4tn3208660
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 9 Jan 2025 14:20:04 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736454004;
	bh=IEa18ie8DTllVVPJfMHrQACNyqSH9sbtwipii9X8L7k=;
	h=From:Subject:Date:To:CC;
	b=KpACpZrqchQuLwJDvHl/jQBzoT/B1M7kEQswCqe6pnuUa2PR0xpJq8WcS2t6Y0jIv
	 cTawl/uFRX0OzTVZGE4KbkA5kn4Mjmr/JUbLNbz+bylh5hUQs/NoAalvas0UMkkfY8
	 ZCG6W3F8TSt2/mcJ+8F90SdKEFOhONVfMYQtgdVs=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 509KK3sw018435
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 9 Jan 2025 14:20:04 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 9
 Jan 2025 14:20:03 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 9 Jan 2025 14:20:03 -0600
Received: from localhost (bb.dhcp.ti.com [128.247.81.12])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 509KK3DN070132;
	Thu, 9 Jan 2025 14:20:03 -0600
From: Bryan Brattlof <bb@ti.com>
Subject: [PATCH v3 0/3] arm64: dts: ti: introduce basic support for the
 AM62L
Date: Thu, 9 Jan 2025 14:20:01 -0600
Message-ID: <20250109-am62lx-v3-0-ef171e789527@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAHEvgGcC/zXMQQqDMBCF4avIrJuSjKbGrnqP4iIkkzpQTUlEL
 OLdG4Uu/8fj2yBTYspwrzZItHDmOJWoLxW4wU4vEuxLA0psFKIUdrzhexXOdk1nKHjTEpTzJ1H
 g9YSefemB8xzT93QXPNaD0FJJ8ycWFFJoo9BoW7fehMfMVxdH6Pd9/wGP+8rvmQAAAA==
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Bryan Brattlof <bb@ti.com>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hello Everyone,

This small series adds the initial support (currently just a UART) for 
TI's AM62L SoC family.

The AM62L is a lite, low power and performance optimized family of 
application processors that are built for Linux application development. 
AM62L is well suited for a wide range of general-purpose applications 
with scalable ARM Cortex-A53 core performance and embedded features such 
as: Multimedia DSI/DPI support, integrated ADC on chip, advanced lower 
power management modes, and extensive security options for IP protection 
with the built-in security features.

Additionally, the AM62Lx devices includes an extensive set of 
peripherals that make it a well-suited for a broad range of industrial 
applications while offering intelligent features and optimized power 
architecture as well. In addition, the extensive set of peripherals 
included in AM62Lx enables system-level connectivity, such as: USB, 
MMC/SD, OSPI, CAN-FD and an ADC.
 
AM62L is a general purpose processor, however some of the applications 
well suited for it include: Human Machine Interfaces (HMI), Medical 
patient monitoring , Building automation, Smart secure gateways, Smart 
Thermostats, EV charging stations, Smart Metering, Solar energy and 
more.
 
Some highlights of AM62L SoC are:
 - Single to Dual 64-bit Arm® Cortex®-A53 microprocessor subsystem up to 
   1.25GHz Integrated Giga-bit Ethernet switch supporting up to a total 
   of two external
 - 16-bit DDR Subsystem that supports LPDDR4, DDR4 memory types.
 - Display support: 1x display support over MIPI DSI (4 lanes DPHY) or 
   DPI (24-bit RGB LVCMOS)
 - Multiple low power modes support, ex: Deep sleep and Standby
 - Support for secure boot, Trusted Execution Environment (TEE) & 
   Cryptographic Acceleration

For more information check out our Technical Reference Manual (TRM) 
which is located here:

	https://www.ti.com/lit/pdf/sprujb4

Happy Hacking
~Bryan

Changes in v1:
 - switched to non-direct links so TRM updates are automatic
 - fixed indentation issues with a few nodes
 - separated bindings into a different patch
 - removed current-speed property from main_uart0{}
 - removed empty reserved-memory{} node
 - removed serial2 from aliases{} node
 - corrected the main_uart0{} pinmux
 - Link: https://lore.kernel.org/all/20241117-am62lx-v1-0-4e71e42d781d@ti.com/

Changes in v2:
- alphabetized phandles
- corrected macro and node names for main_uart0 pinmux
- Link to v2: https://lore.kernel.org/r/20250108-am62lx-v2-0-581285a37d8f@ti.com

Signed-off-by: Bryan Brattlof <bb@ti.com>
---
Bryan Brattlof (1):
      dt-bindings: arm: ti: Add binding for AM62L SoCs

Vignesh Raghavendra (2):
      arm64: dts: ti: k3-am62l: add initial infrastructure
      arm64: dts: ti: k3-am62l: add initial reference board file

 Documentation/devicetree/bindings/arm/ti/k3.yaml |  6 ++
 arch/arm64/boot/dts/ti/Makefile                  |  3 +
 arch/arm64/boot/dts/ti/k3-am62l-main.dtsi        | 52 ++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi      | 33 +++++++++
 arch/arm64/boot/dts/ti/k3-am62l.dtsi             | 89 ++++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62l3-evm.dts         | 43 ++++++++++++
 arch/arm64/boot/dts/ti/k3-am62l3.dtsi            | 67 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-pinctrl.h              |  2 +
 8 files changed, 295 insertions(+)
---
base-commit: 5532b8a9ce0e80514e37a1e082824934663580a3
change-id: 20241220-am62lx-ca9498efd87e

Best regards,
-- 
Bryan Brattlof <bb@ti.com>


