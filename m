Return-Path: <devicetree+bounces-101494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D5E971FE9
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 19:04:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69EB42845F0
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 17:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0BA9178383;
	Mon,  9 Sep 2024 17:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="JratCYA+"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-225.siemens.flowmailer.net (mta-65-225.siemens.flowmailer.net [185.136.65.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 725FE17085C
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 17:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725901449; cv=none; b=SbFNBjsrJ/G8xy9pq2/TIxBxkbR4C202PcrEqqOyYffJf225K9Ato93CO3muuXKSvRqMzk1WTgWgOsevyoqDW7WCoa7E86WGW17vj5oLkIgtQJNvnJufaNV7hnp4u7CoBfRXHqL5YXOBaPa/WlAznaFZNstT72eq6bjkAy6D9u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725901449; c=relaxed/simple;
	bh=YFhEhD2DDFAzOc5YRN506WbRhSuqs9WezZihnyy8brI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BOSU28XevfPxsLpBg3bQy77NY1TlsSzpf/xOeQj2fiiRCY1qEfM9DH7WmgMee+SfwA/sXyUqxNv8kKbVAjA3U69c1JUeo6tqlRx1F6MQNA6OGMEjpdWlA2s7fwBKx/BHMCf7KYFYIJhzJMdXplLICnRSL8CUrk1zCMmIa5rz7Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=JratCYA+; arc=none smtp.client-ip=185.136.65.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-225.siemens.flowmailer.net with ESMTPSA id 202409091704033b98f7579cbf9a0574
        for <devicetree@vger.kernel.org>;
        Mon, 09 Sep 2024 19:04:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=lEToRIXgwmYCaLisxjDuneMdvn7veaPhbgDLaE9G4uY=;
 b=JratCYA+vxPMGwri2jLrg5gYEFpK0ZcEAI3VUD1YPqTGoeqeCzuMeruJW7p1PnpN3Fbt67
 5fBU/D+6aDzKLGrzuG8NP1OD0+FBeNb7QP/D4K7G3EzkepRT85nsxPz05kl551TejHzS11br
 glmXhSK3l26Fa71clFBNLYK2VKyrLT3d0d/JhZQ6vs1LqaUQmVQWagVkmrCDro5nAS+lc0Zb
 jDb5drOa287okWaAr5KFcmYUwWDx+IzRYjBLUkLGLBdOat0IJ+DHpZg1be3+KRMY6jyh0V83
 7LCjiyebk8mRtqPJ3Q8YMl0nWummSng1wVWqQMxHDYVY84IzmkbcMSUA==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Hua Qian Li <huaqian.li@siemens.com>,
	Diogo Ivo <diogo.ivo@siemens.com>
Subject: [PATCH v6 5/7] arm64: dts: ti: k3-am65-main: Add PVU nodes
Date: Mon,  9 Sep 2024 19:03:58 +0200
Message-ID: <a747b4df2ed36a9339b157d4f8011e1e7a37eeb6.1725901439.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1725901439.git.jan.kiszka@siemens.com>
References: <cover.1725901439.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

Add nodes for the two PVUs of the AM65. Keep them disabled, though,
because the board has to additionally define DMA pools and the devices
to be isolated.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index ba43325c0eec..2582dad68dff 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -841,6 +841,26 @@ main_cpts_mux: refclk-mux {
 				assigned-clock-parents = <&k3_clks 118 5>;
 			};
 		};
+
+		ti_pvu0: iommu@30f80000 {
+			compatible = "ti,am654-pvu";
+			reg = <0 0x30f80000 0 0x1000>,
+			<0 0x36000000 0 0x100000>;
+			reg-names = "cfg", "tlbif";
+			interrupts-extended = <&intr_main_navss 390>;
+			interrupt-names = "pvu";
+			status = "disabled";
+		};
+
+		ti_pvu1: iommu@30f81000 {
+			compatible = "ti,am654-pvu";
+			reg = <0 0x30f81000 0 0x1000>,
+			<0 0x36100000 0 0x100000>;
+			reg-names = "cfg", "tlbif";
+			interrupts-extended = <&intr_main_navss 389>;
+			interrupt-names = "pvu";
+			status = "disabled";
+		};
 	};
 
 	main_gpio0: gpio@600000 {
-- 
2.43.0


