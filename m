Return-Path: <devicetree+bounces-68029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E218CA98B
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 10:02:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6236628354D
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 08:02:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2F5E4CE04;
	Tue, 21 May 2024 08:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="irqOQyYa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D1447A48;
	Tue, 21 May 2024 08:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716278565; cv=none; b=fdFt2Lctz+NBY8+gWSyl8ugEaVRMyxZsWhOSs5GPIwKwzA2LkolFBJtsiKdxQWrO6PQIqe4mGzot8WpcZlYM/NbJzG07ngi/JfpRjZD9Q4dmibrqc6fPhgPsyqv/jEQW1N6qz3w2jNPF+oNglLzypSTdtYzp50GB5TpBOVLgcKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716278565; c=relaxed/simple;
	bh=7Bg0EkekzT1leAOQM31BuKsgT0tR/z20yhvwOHsgw8M=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ORefNZ9PK3aEjbODTQYllGylptCIkQbcNv0l9v0PwVlk1e3Dj0JLu0kcGfYAO8CyJ6NDr5SVX9S8qG8CSRJtAvQQMdNXsxvaK4oohIFKUk1ng+ZF5Lmhx2IFL+79Oh1QvrgEVSxK/BilgqySkC02i+0OTDhGVZQAw8QjRfXTfVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=irqOQyYa; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44L2RvGh002296;
	Tue, 21 May 2024 10:02:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=selector1; bh=9dp1VLe
	jRl1NLDB777JA8IKm3sHxNgriMqBjr0bCdkg=; b=irqOQyYamV00GN2VL6RTJlT
	+vYAtKyMZZY9NCmfExD9dJq5DvPfFfCn9NJyhRkKZvSRTimcAfwBebWaQ/4c4KYB
	31QLg+unoaEpGdu+t9ywWtVfoZ3NtlMPnwdJZIMF26JO/nDJT3EkLhxOEZs/LVsx
	M68KMZ13/7TLoA6TvFvvCShD/2yNDCqcP3OdMpztcU7kTbEjtMc16OdbdTK0qidy
	lECiIvs4dYZFN8QmYJpnkWE9hub/8bcQvT7qgLyb97/fc9LTU6RBD5o6NKBCS3lU
	9uo9Q/k+dFy/3palvYP1qsw7gHRNEgZzbYaiWj0AyStyAsaAWi/fzpg4UdfG+kQ=
	=
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3y6n42av1n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 21 May 2024 10:02:16 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id B023A4002D;
	Tue, 21 May 2024 10:02:12 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6AB402122E8;
	Tue, 21 May 2024 10:01:38 +0200 (CEST)
Received: from localhost (10.48.86.232) by SHFDAG1NODE2.st.com (10.75.129.70)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Tue, 21 May
 2024 10:01:38 +0200
From: Pascal Paillet <p.paillet@foss.st.com>
To: Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <p.paillet@foss.st.com>
Subject: [PATCH] arm64: dts: st: OP-TEE async notif on PPI 15 for stm32mp25
Date: Tue, 21 May 2024 10:01:31 +0200
Message-ID: <20240521080131.473447-1-p.paillet@foss.st.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-21_04,2024-05-21_01,2024-05-17_01

From: Etienne Carriere <etienne.carriere@foss.st.com>

Define GIC PPI 15 (aka GIC interrupt line 31) for OP-TEE asynchronous
notification.

Signed-off-by: Etienne Carriere <etienne.carriere@foss.st.com>
Signed-off-by: Pascal Paillet <p.paillet@foss.st.com>
---
 arch/arm64/boot/dts/st/stm32mp251.dtsi | 4 +++-
 arch/arm64/boot/dts/st/stm32mp253.dtsi | 4 ++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index 4b48e4ed2d28..d0e10dda96b6 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -51,9 +51,11 @@ clk_rcbsec: clk-rcbsec {
 	};
 
 	firmware {
-		optee {
+		optee: optee {
 			compatible = "linaro,optee-tz";
 			method = "smc";
+			interrupt-parent = <&intc>;
+			interrupts = <GIC_PPI 15 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>;
 		};
 
 		scmi {
diff --git a/arch/arm64/boot/dts/st/stm32mp253.dtsi b/arch/arm64/boot/dts/st/stm32mp253.dtsi
index 029f88981961..69001f924d17 100644
--- a/arch/arm64/boot/dts/st/stm32mp253.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp253.dtsi
@@ -28,3 +28,7 @@ timer {
 			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>;
 	};
 };
+
+&optee {
+	interrupts = <GIC_PPI 15 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>;
+};
-- 
2.34.1


