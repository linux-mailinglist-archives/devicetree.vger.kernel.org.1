Return-Path: <devicetree+bounces-14047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C017E1DBB
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 10:58:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6551E1C209CD
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAA66171A9;
	Mon,  6 Nov 2023 09:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="rZvpMRrx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D381168DB
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 09:58:26 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1472125;
	Mon,  6 Nov 2023 01:58:24 -0800 (PST)
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2783C13AC;
	Mon,  6 Nov 2023 10:58:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1699264682;
	bh=bCGMJiX9pW7HAN0UX6C7RxU6jaO0RofSA0XWj512TVE=;
	h=From:Date:Subject:To:Cc:From;
	b=rZvpMRrxXN2Lcg1XI58Cv2YBDSIDVVKX4dkzNmmPowXXYxm/Q9Z3JXrf3YU31yhzd
	 xL9Pm4cRDaYE9qW6TqsHSaZ1iNBu0c74Etc6fTC3hpdiLhOThMC7xBh7BoiixQDkTi
	 owZN8RKTmg3inKDunro6ZPfsbDWR8XVEg4hEm/cs=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Mon, 06 Nov 2023 11:57:48 +0200
Subject: [PATCH] arm64: dts: ti: k3-am65-main: Fix DSS irq trigger type
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231106-am65-dss-clk-edge-v1-1-4a959fec0e1e@ideasonboard.com>
X-B4-Tracking: v=1; b=H4sIAJu4SGUC/x2MSQqAMAwAvyI5G2iVqvgV8aBNqsGVBkQQ/27xO
 DAzDyhHYYU2eyDyJSrHnsDmGfh52CdGocRQmKK01lQ4bJVDUkW/LsiUhJrsSFR7E1wDqTsjB7n
 /Z9e/7wcTZfYbYwAAAA==
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Aradhya Bhatia <a-bhatia1@ti.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1461;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=bCGMJiX9pW7HAN0UX6C7RxU6jaO0RofSA0XWj512TVE=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlSLi6cvpFRvR+MBUm93OYcll36SndxspyXYJNP
 R+7CVq+PoCJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZUi4ugAKCRD6PaqMvJYe
 9WNqD/40POYjydCN/gA7/aKulSsuQ2NmyAp0NfjkpCTtedx4Akc2Hg7xwvRDsR3+HXDrV7yGL8d
 rJELklG9a0qUZpAlJWPtw5aS4E3jH/Bk7Ne4OwW811yS88eIZ7OYe+/XoC33sdka/acyH0QXqy7
 HAor04fg7kfOTWiQeJOf2CrgidZQA0yv2/Rf/0fgMxCCx48d8e9v6wk+AVqLFeWzf9WV1Pha/8u
 AaPBz93osRRiWDhs3vR6YujTmD8YiKraJjmM2S+T1o6UvPdpHGdNNQd94v/yfE2TDwZdfYo/bWr
 DwoZuk/SuLuUytdUT/azmTjGILiOuWyQD9f6XfMMXPh1QpBZoNPLrBZDCsMNO2FaRTodHzqcApd
 mL50COwjfi9wOp356omx47I/7OVsK1OhKIHn9h+hQO1Kzp60wtKbYCTTeew/lPGfak6OSDDnLMq
 DNpwsskk6PcA2xgbauSJucb9oSEBO4vr9zZVfJtoOkvpy5TiWVlLhy9nBU4Y+QDFxEjPBl7TNrX
 nICw71t2BN7sezRG75hqAZjOWoTZblXWagiGRodjbNmjK/a1lYLzcOLaaYSYg5gExcRypNAzkIm
 iSmbCUSM+9QAURKpmtSa9t2iSrJuylyG9qYFp1ExmkOdwPBB0JlhPpsFBmARPtHLkyJAr0gnqDz
 vN0JJxtb3iKzRtw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5

DSS irq trigger type is set to IRQ_TYPE_EDGE_RISING in the DT file, but
the TRM says it is level triggered.

For some reason triggering on rising edge results in double the amount
of expected interrupts, e.g. for normal page flipping test the number of
interrupts per second is 2 * fps. It is as if the IRQ triggers on both
edges. There are no other side effects to this issue than slightly
increased CPU & power consumption due to the extra interrupt.

Switching to IRQ_TYPE_LEVEL_HIGH is correct and fixes the issue, so
let's do that.

Fixes: fc539b90eda2 ("arm64: dts: ti: am654: Add DSS node")
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index bc460033a37a..c98068b6c122 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -1034,7 +1034,7 @@ dss: dss@4a00000 {
 		assigned-clocks = <&k3_clks 67 2>;
 		assigned-clock-parents = <&k3_clks 67 5>;
 
-		interrupts = <GIC_SPI 166 IRQ_TYPE_EDGE_RISING>;
+		interrupts = <GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>;
 
 		dma-coherent;
 

---
base-commit: ffc253263a1375a65fa6c9f62a893e9767fbebfa
change-id: 20231106-am65-dss-clk-edge-7d1bdd7c0f58

Best regards,
-- 
Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>


