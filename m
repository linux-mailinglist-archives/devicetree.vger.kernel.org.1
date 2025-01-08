Return-Path: <devicetree+bounces-136850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD8CA068F7
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 23:54:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D08903A6A21
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 22:54:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23A1B2046A3;
	Wed,  8 Jan 2025 22:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="elHDE0mp"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3872D205507;
	Wed,  8 Jan 2025 22:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736376791; cv=none; b=tav3DQ29E0oCIJ+GEqsgVodp1LMvN38XMSEHeiNOknTsO4uixpOK+4JsbFy+O4l5oPBRdDKS+65xoezwINHHwQNv2Ust/O25my3LRApBLdquADgEsLLJQRZVbO04o9gxmAjUw88Pnb8MNXEAxI/4wo/gpUzG3HkBZbtYnZWnnns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736376791; c=relaxed/simple;
	bh=CWw8l8Bx6HW4yS08hUfRB6a4ZMQVRspEptIwTdKru1Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=jN31mMqtaP83hPLnRfMvkHtFxtTnjwHfJ8+Z7+iRhKFTQBzcm4PEOfUfyw/NRWwtqBFL0Qmc1rNhGn/AU5bWzrgxtVtU+LWa4wuWszP4xKSPCIu4mOp9j0K93QKZs8Fk5oq6wx773i6jCn/1A7/RZN4crMdKXXot1VJT45P6SJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=elHDE0mp; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 508MqDVP081037;
	Wed, 8 Jan 2025 16:52:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736376733;
	bh=vOwRZpFoseOz9hM473nLmBBHXI/FXd6Ps4xPKvt35/k=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=elHDE0mpR9ctwrwK0FLxmCQgllmkqw0LpgU/mDuNJ+6DcorV5YT2qcgcYnRjAZO11
	 NrfVKP7r1D5/CVuk2c/OLOEElKZExeoPD4wKCvUHlSPwrJEgC3z0vyPiI7yWDRrUd6
	 liA/ZnZ+9TlbnYN8I8cEKXYznHfJqtVxHKA6EGvk=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 508MqDYL080912
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 8 Jan 2025 16:52:13 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 8
 Jan 2025 16:52:13 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 8 Jan 2025 16:52:12 -0600
Received: from localhost (bb.dhcp.ti.com [128.247.81.12])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 508MqCMU038352;
	Wed, 8 Jan 2025 16:52:12 -0600
From: Bryan Brattlof <bb@ti.com>
Date: Wed, 8 Jan 2025 16:51:55 -0600
Subject: [PATCH v2 3/3] arm64: dts: ti: k3-am62l: add initial reference
 board file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20250108-am62lx-v2-3-581285a37d8f@ti.com>
References: <20250108-am62lx-v2-0-581285a37d8f@ti.com>
In-Reply-To: <20250108-am62lx-v2-0-581285a37d8f@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Bryan Brattlof <bb@ti.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1783; i=bb@ti.com;
 h=from:subject:message-id; bh=aXWJV3lurQbpO8RjUHTuNWtjBXtYaKNXg8VgRBPGmWE=;
 b=owNCWmg5MUFZJlNZce+8qwAAaP////95Tv+lebvj70y6FvTv/Ox3855Kfnf/fP9u7XPO/u+wA
 RrIIepoADTQMgNBpoABoaaAaZDQaADRppo00AAAGhoMRoZGgeU09RptRpkM1PRtUQAaNAyDQaZD
 EBo0aDCMjINDIAADZTEBpoYCGnqAD1AxDJ6mmJiBk0GgYZACZGgHqNNNDQNANBgjEBpoBiAGTEZ
 AyAZDCMI0BiZGQ0DTIABpk0BAjPHWh4VKJ0YGGLk0wMgDO7hUpt0I3+tTIOzPyJGWA/GOt0gYw0
 NkaH3dFccVOuUZdkMEM4Oni7BG1BrCdwDK76ByoZA2zhEYuwqFToUCVgY7UiwYOWPby7gocV9KJ
 iT+SARfGllzBcj7AY54N3/OzD/hsaa1/yR0QHnS5yKKYN1DDsl1+seC1yJUJe+wsGZiVbcWEUK+
 THa1P0EQ3kB8T0u9os0EDdE+9EMYxhhjiQTNTDjNSFEUNzXgtoRZrwE4NiWyCCy1L0vfxHdSYMQ
 Pv9fIpeqNJfhBB0V23KvChLkTA/hedtIgmspTGOjpjfJgw545DmzS8yp9nY5NLf20Qm3HCvG+WI
 Vk2bwM2EqNtKukHZbv4zBQImkqeAF4/pU+J91rpWaGpx07x9HS5ZohiQsdgG0wpclQgxz/Q12lp
 xiD/F3JFOFCQce+8qw=
X-Developer-Key: i=bb@ti.com; a=openpgp;
 fpr=D3D177E40A38DF4D1853FEEF41B90D5D71D56CE0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

From: Vignesh Raghavendra <vigneshr@ti.com>

Add the initial board file for the AM62L3's Evaluation Module.

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
Signed-off-by: Bryan Brattlof <bb@ti.com>
---
Changes in v1:
 - switched to non-direct links so TRM updates are automatic
 - removed current-speed property from main_uart0
 - removed empty reserved-memory{} node
 - removed serial2 from aliases{} node
 - corrected main_uart0 pinmux
---
 arch/arm64/boot/dts/ti/k3-am62l3-evm.dts | 43 ++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
new file mode 100644
index 0000000000000..ed0148ce1bea6
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0-only or MIT
+/*
+ * Device Tree file for the AM62L3 Evaluation Module
+ * Copyright (C) 2024 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ * Technical Reference Manual: https://www.ti.com/lit/pdf/sprujb4
+ */
+
+/dts-v1/;
+
+#include "k3-am62l3.dtsi"
+
+/ {
+	compatible = "ti,am62l3-evm", "ti,am62l3";
+	model = "Texas Instruments AM62L3 Evaluation Module";
+
+	chosen {
+		stdout-path = &main_uart0;
+	};
+
+	memory@80000000 {
+		reg = <0x00000000 0x80000000 0x00000000 0x80000000>;
+		device_type = "memory";
+		bootph-all;
+	};
+};
+
+&pmx0 {
+	main_uart0_pins_default: main_uart0-default-pins {
+		pinctrl-single,pins = <
+			AM62PX_IOPAD(0x01b4, PIN_INPUT, 0)	/* (D13) UART0_RXD */
+			AM62PX_IOPAD(0x01b8, PIN_OUTPUT, 0)	/* (C13) UART0_TXD */
+		>;
+		bootph-all;
+	};
+};
+
+&main_uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_uart0_pins_default>;
+	status = "okay";
+	bootph-all;
+};

-- 
2.47.1


