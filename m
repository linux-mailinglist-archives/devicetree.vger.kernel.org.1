Return-Path: <devicetree+bounces-240927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 943ECC77B49
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 08:33:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 836F24E7050
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 07:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DB522F291B;
	Fri, 21 Nov 2025 07:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Lwsd05w3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay139-hz1.antispameurope.com (mx-relay139-hz1.antispameurope.com [94.100.133.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B1E22836C
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 07:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.185
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763710386; cv=pass; b=StCUv3dMIdND1omMs57jfrFw1sHm4l6IfOo/TQjsNqrW9XixHjqeFX2oTeOv0z75Bfr7n/qvLJL4j7akfZeSAKuOvmRB434pq2EijhxVzVPdJmY1XP8puO66X8+bOf+6XByP3sU9V+3zgw41JldnBzN1BKo5J/uWu5dm1Sdk8Sw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763710386; c=relaxed/simple;
	bh=irY4+aQ29QnkbeLn0nQsrvfY/8RJJ2M64NCPho3lbeQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZtUvMDGIowigwaaX3IGJOBYTRQfGAL1Nthx6mO7UUxJjRXrxZUwOI8UPbNo8yEoSA65dShe3GyZdfNBp8Fx9syGFiuD/sz6ZnxDQgPY/xgED8pHm9qLqjsfqb0KPtg8dYUMsidcX3pyhfQec2RipOIdZW8O3aNgc7ImRxwcbt68=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Lwsd05w3; arc=pass smtp.client-ip=94.100.133.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate139-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=5Dqt//Bb3x/Y5eSf+OIeQhron5iHwkVjbr2ny9T+e44=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763710314;
 b=CHisQH9DrMb4MdBhzFRbhqrTtMSrFsgwIg/6u1BHtOQr9cV/vdwj/BhowjhI4Cdei+EmO/e5
 ZuHLhuFeOwaF8xWAj4RDM73LO4A9B32CZVR9Ptw9tqFD+jM9ySNbxsbj36qC7NZCLwcv6SfO/F+
 8XZcJxbQUwCFlSJ4cjrUNDMmEuHHtuA1v3pVkMl0s5DAlvopEX7n0nCJRteYEMgii1G8AaIrZwY
 ZXFUfTSEk1bKqEOxvfa5AOLW8zFwuElxgML6ZYBXfvI5gv2SiFatNMcEZPnVCZqyHlEZFN+4SnI
 CU08Rrg8HA1yVAWqfLHzKD7csmHvMbwrpTtBp7UFTda4A==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763710314;
 b=hl2lPfMVa74lQbDOuh2Fb0H9Aly3+Wjhv6N3fWGGzXAj3tjXwi4cKN/Qt5bb/uPY+dFhXLbw
 el/45MyAvWzIGMDl3lIAgXUQvr3OoWASOtzJM55tuu6RLlUSXyevI/xa4ieBF30v/s5bl003pfr
 X1G9rHNcq1SASVteH6rSSsUNap6PqVT58WsCRHWNOE+0GN8h1QFfMOZMLl5xnN3Wvj3Vcx28t0W
 n3X3qWicSZbRoUPRPZQVFaCa28h2lJjEWO+OlY5ZvpD67hHoEzAnAbGfu/9NSuwKHOZj+u7Y2Wh
 JWASXfG24Oo3h/+GPpbo+0HMG/Cfx2JxOJB4sDpjfHEbw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay139-hz1.antispameurope.com;
 Fri, 21 Nov 2025 08:31:53 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 382945A0495;
	Fri, 21 Nov 2025 08:31:45 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: tqma8xxs: replace 0 with IMX_LPCG_CLK_0 for lpcg indices
Date: Fri, 21 Nov 2025 08:31:40 +0100
Message-ID: <20251121073142.3367642-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay139-hz1.antispameurope.com with 4dCRjs6s50zNwSv
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:56853c09cfe5c0363f0c70f3518d825f
X-cloud-security:scantime:2.285
DKIM-Signature: a=rsa-sha256;
 bh=5Dqt//Bb3x/Y5eSf+OIeQhron5iHwkVjbr2ny9T+e44=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763710313; v=1;
 b=Lwsd05w38AH5Q4/OrkOVsUTqa9nuLezZ0fKubVk0L538eBXNV66ydJYOQeP+YWdtL1BZg1YA
 Q4Ray2RFwuOE5SD5zlqzp4wb4o6Nl1vSCcY0QbNHEVZrR0ce0Yl4n59N0ivKO7wvqh6XmE31hCY
 yt/2Y5ONpMterHbt99No4lLslAN45TaNq+YYqdEvyWLAtaVcYSQ63Sv4AlWhvW66WudooB0EEdg
 rfIKpetmETUHaY2405mVIsnZtCUU29RXjl+9m4TeRsqy+1PlOmzoLQHPgbJPPKniqia647Qce5x
 p3DKdSRlk5lo7esYX+aZwxE0w72x3j37DIg8nvLlF90Zw==

Replace the 0 with IMX_LPCG_CLK_0 for LPCG clock indices. Although the
numerical value is identical, the LPCG input is defined as
IMX_LPCG_CLK_<n>, so using the symbolic constant improves clarity and
consistency with the LPCG clock naming convention.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/tqma8xxs.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi b/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi
index 2d0a329c2fa50..ebf20d5b5df9c 100644
--- a/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi
+++ b/arch/arm64/boot/dts/freescale/tqma8xxs.dtsi
@@ -406,7 +406,7 @@ &sai1 {
 	assigned-clocks = <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_PLL>,
 			  <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_SLV_BUS>,
 			  <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_MST_BUS>,
-			  <&sai1_lpcg 0>;
+			  <&sai1_lpcg IMX_LPCG_CLK_0>;
 	assigned-clock-rates = <786432000>, <49152000>, <12288000>, <49152000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sai1>;
-- 
2.43.0


