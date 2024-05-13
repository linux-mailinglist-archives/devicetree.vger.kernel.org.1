Return-Path: <devicetree+bounces-66770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A69838C490E
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 23:59:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7EE21C20D45
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 21:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3F7D84A2F;
	Mon, 13 May 2024 21:59:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="lbAMqkeT"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFF739FD8
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 21:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715637540; cv=none; b=DlJgzjfna+N6vyhqUAbb2DIxwaHiQP4fXrs7ePLPtamPK6WGvdk0kuyN/TSpvXYKRLOpBKuFRq6qV4fcWlbR5W9DOV1G836MHl1tfVoZ8+fK+fG2C4o7TN6iL8MoeRoqfwZp+lEICu8m31VEbOk9R1YJ8IQ4OTUOfaO/Zq17648=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715637540; c=relaxed/simple;
	bh=2S+Nj2cMmnlwjoeZGV3KjthapZS0GTgX0GekuUClTIY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=K0FuwhJv7tkBukWR0j1BV2whgDc9Kp3lmhC/jrh/sljfsYEFIPTQ2SgTcFm6g32frnXS/yxZ1YV/EC0+U4Rt2e7pvpjrE9piz9M6AdQvV7pteS5jml+PP3MD2tGteGnnBCfEirJaz7ET8BOkHviQA+hRB7CsjsSrSP8RTJDlStI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=lbAMqkeT; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id D6D8B87BC9;
	Mon, 13 May 2024 23:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1715637531;
	bh=d7xRaYr7WQ/WAGh0b8NuH1jVV3rJLRs+i7/Qt6CSGrY=;
	h=From:To:Cc:Subject:Date:From;
	b=lbAMqkeTtxKlm89+vpzcZkXel+b1s2lBIIxTe8zU9BGms7PdeTCvcQRPFO3m8sAqy
	 UQxxt9LBuKez5HVdTzezJBpr77a4uSXk6NJ5x91NvaArEu4dwIb+hIpo5qDWlReMTv
	 GX0qh9gmH2hnOg8LdXg7bWb4zr0zg4vO0w58RDDEVNSKeYq1Lii7ApOoOyPxTGkzX6
	 9jjbPGl1NB8Nu8JWxSVPo74zrCSeW9IiIWddSjPX+AB7Hnh5QM0zPQ4Rt0iA5lZtAc
	 zNBVZL1m7f54yKG/r5+6f1BBAJUPTIMjAhzEN3roM2BL+ZKXAMssJHAW59bw6IHzTZ
	 Ev6zkAAsSMVYA==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: Add arm,no-tick-in-suspend to STM32MP15xx STGEN timer
Date: Mon, 13 May 2024 23:58:15 +0200
Message-ID: <20240513215835.183402-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

STM32MP15xx RM0436 Rev 6 section 46.3 System timer generator (STGEN) states
"
Arm recommends that the system counter is in an always-on power domain.
This is not supported in the current implementation, therefore STGEN should
be saved and restored before Standby mode entry, and restored at Standby
exit by secure software.
...
"
Instead of piling up workarounds in the firmware which is difficult to
update, add "arm,no-tick-in-suspend" DT property into the timer node to
indicate the timer is stopped in suspend, and let the kernel fix the
timer up.

Fixes: 8471a20253eb ("ARM: dts: stm32: add stm32mp157c initial support")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/st/stm32mp151.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/st/stm32mp151.dtsi b/arch/arm/boot/dts/st/stm32mp151.dtsi
index 3b705e7fe5c0d..68846699b26fd 100644
--- a/arch/arm/boot/dts/st/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp151.dtsi
@@ -50,6 +50,7 @@ timer {
 			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>,
 			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>;
 		interrupt-parent = <&intc>;
+		arm,no-tick-in-suspend;
 	};
 
 	clocks {
-- 
2.43.0


