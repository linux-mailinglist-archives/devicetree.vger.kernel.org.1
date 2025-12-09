Return-Path: <devicetree+bounces-245372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8860BCAFB2A
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 11:55:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3795D30BFD4C
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 10:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1988231ED88;
	Tue,  9 Dec 2025 10:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="YiqjCBy1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay06-hz1.antispameurope.com (mx-relay06-hz1.antispameurope.com [94.100.132.206])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1A32D2391
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 10:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.206
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765277648; cv=pass; b=ByGAL0uA+jz1kslx11oMPmWRg+fKdPyfrU37kbdVpr+eUTwqrQj8bV+YKhMeKZfc1s5+ewXUmWSm1KLbvNgXm9ugEKTIbqsK7/f3aF6jUc92AFVsExHjn1Pz8W3u1CYTttF9BX6K9qKfPXWseDLdEqikCnoreQ1zYCON3HIFX0g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765277648; c=relaxed/simple;
	bh=dXDi0s+km02ebBe7AWt7DzqybHNlwTYq4q7yTrzOyeA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YOLfcT+9uP2pEnEAGOpBo9IqdrWbKMCvkoylIVQgiks2pDTHlUw7MxmUcAgWMl4rUPpSe+/+IECxAB3qLuUUXoL3KxaIXFD6R5xiaStQsuPKekQs/BwfwQ71vU/MgiIOvZYASq3niWug4ooO82ARxRKKgrdYA9MdxZZ4OTeAfHE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=YiqjCBy1; arc=pass smtp.client-ip=94.100.132.206
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate06-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=nmy9fyQ6PEbPx0XQ71lGiSv7DepEPOFim0DYw8pJHy4=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765277614;
 b=aBJeNEyK/PUhNm1eXN+DvTEqncMFidWrDB7DHyz5tT3lDt63Am24+r3859udSlLKxsgycYtW
 SdDsxmNTrHQR7rZWss0VTIWfmD2QWjx5sA7DI855k3roqV/mOVyFeM7rqxozQbXe4aMo0t76lEH
 apLx7AvFpsUoAh+RqHJve4/1Y1XouTsfeSwez3Ys1+EZjmvX7eQ92ChupsE4VllkTvBLBg1+u18
 /hOHtv47txK9iq3eIsXvxAnaoiMTncXuAHlNEt58vSwWNabuZsedXXBBJQEnVZusIVynTB1/dAg
 208DqSdsMRD4Xb+de7p3GZLg1k6MwQi340OIRgF//kWAg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765277614;
 b=XXFLXsAfjLdpOCi4a+KevIFQGe1jbB4MJmXozx7P2+XeatiT6gyVCxQ5wZwds4DuGeN/5cFe
 HC5c+7X6nQlnciSyeEWYarPdlQyBJbyJYfXJnY4Kshv1K0bIoEg3n97PAnXUFQUHttf9fxsf3Gi
 SbRp5Birj1JYVRXusmZtzogiilZ+AgcKbFor5m8rZYbL6gfsAnv18a+6kXCjf7ZEs35AF+Sbt0s
 G7FWo3HQBcOyJqfJvMiKLx0BKesCUYt9qL7WmA4uqMOKUhcsX/EC3Hb4FeLY2T6wK5hcrLJfIBS
 vIrPvauuHZ4jmVhbD/GLk8Ola7bIVwVQyS+nrOh4nsLww==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay06-hz1.antispameurope.com;
 Tue, 09 Dec 2025 11:53:34 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 78D3FCC0E92;
	Tue,  9 Dec 2025 11:53:26 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Martin Schmiedel <Martin.Schmiedel@tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/8] arm64: dts: tqma8mpql-mba8mpxl: Configure IEEE 1588 event out signal
Date: Tue,  9 Dec 2025 11:53:11 +0100
Message-ID: <20251209105318.977102-6-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251209105318.977102-1-alexander.stein@ew.tq-group.com>
References: <20251209105318.977102-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay06-hz1.antispameurope.com with 4dQbLH1DFbz4PRJ9
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:fc01c51da6ede21ee2d8c257f7bd177f
X-cloud-security:scantime:1.956
DKIM-Signature: a=rsa-sha256;
 bh=nmy9fyQ6PEbPx0XQ71lGiSv7DepEPOFim0DYw8pJHy4=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765277613; v=1;
 b=YiqjCBy1Qve81kTEwnygBaaEBBmEpMaSxsy+2DQ+AeW0XYb57ZEt1pdOo5MBNwpS749FZYHj
 jK49gDYEpyqpPNCG5wmLiarTnGTi5UmOOhPMINT1HPrEPmLhTSpAAEU+dLMH+XFNVVZlVeO/V9K
 pofUvvipKnl01+KPWhC3GOmrB4vrD+94s0g/iVzkNUylkk2i1NV+2Sj4j2pa05h9odURZhnz+dY
 phFU3uvYu3IczDG8TO5+GgHygs4I1sLBEKZYrqPDhk/E2+Zpdf7VtvBNcNqJzwZ+oHSmg8N+sU3
 aq9mSzAI62dHbDW0GFxtJOs0nuD3FiDj2hoeuiHFlrJug==

The event out signal on channel 2 is available on pad SAI2_RXD0 which is
connected to X63 pin 13.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index ac889a69da69a..fdfe246c56407 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -807,7 +807,8 @@ pinctrl_eqos: eqosgrp {
 			   <MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2			0x12>,
 			   <MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3			0x12>,
 			   <MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL		0x12>,
-			   <MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x14>;
+			   <MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x14>,
+			   <MX8MP_IOMUXC_SAI2_RXD0__ENET_QOS_1588_EVENT2_OUT		0x16>;
 	};
 
 	pinctrl_eqos_event: eqosevtgrp {
-- 
2.43.0


