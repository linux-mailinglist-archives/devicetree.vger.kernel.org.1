Return-Path: <devicetree+bounces-247050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F36CC3582
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:50:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C7453063403
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7B5D315D32;
	Tue, 16 Dec 2025 13:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="TWrp7zLi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay47-hz3.antispameurope.com (mx-relay47-hz3.antispameurope.com [94.100.134.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62CD2F7AAC
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765892418; cv=pass; b=leZOYzwEaqdqf+lDKudsyn9UJV8Lmk/9tm3P+1J/SsMWCKKBnykpEbSyM0hfm2CYaRnJ8bsVVRddpPt3Xumky3pAix/HGxH5lY2nHymyfahgjNy8eohuMlmu1OS9pMLirM09T7GLcKEEEUyxC+jZPBOheSbujoNHFlJRYXmbCuI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765892418; c=relaxed/simple;
	bh=N8TpxZwTyWRYknKFIaRqD5yc42lOcxuZYnhhV9yg8Ks=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GT7NKr3IFl6FvqyX12mz1aL7bNC0nBV6iGcRlb2no8NGMO7JlphP8Dw0DJYLLqqbRcr/sZZIZ7cJoI+Q9JxfGYd4QovJFDO8a16r+5DGfRZRgjLVnNRu1J8roFPdPiSP32GWYm8KzjgqV402OajqNwm8ZYcwPPWlmA+EaWxUYIQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=TWrp7zLi; arc=pass smtp.client-ip=94.100.134.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate47-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=51S2zN2wdAlNO7CZ6tg4ggDgdRZ66PTczsqK+t6gA2c=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765892393;
 b=sB+lSo/bkZ+10tT/nIywdhFZReD0IPDL4K/vjchscV5rJUlPs3Q1ucoHh8f/xSY/RdZUX3G3
 c6ktrwR6nEbrfwvZ1P5LZJmUahCUJYGFJIBw8jHiTveDCAAHDL9Cmna51+z0RagzeNTh3zznbDR
 13uWmr51aUpwfS2klOKrilIK/leM9XEqwGd1C2GGrfnhIZW2edi+jcp8ci+x3Zh6cExFmHnPTKf
 ixPYBYB1e1zPw1TnCP/STpXZfjo3V0NWjU6IBWDlCawQ6XDmK0GcYt9mrfSGUN4rQQRfL6YC/U1
 RbAvV9yaioPvigeOYz6L2elff+s/Cfbj7hZ+rDRdwZ2xQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765892393;
 b=EfD4BCTaN9tjRJrAR5uX3b7QYQg9pvM14fu/bTWq1W5xEkUwUPY6eWY0peyRVaVEz9IBIICa
 yKinndOSmaSm/SJOyzD2NZlTTdOOmSLaE8aljG4DoCwQLT6qbYTN6I4f+wFDjPwI9UHQPpUKRah
 kb0ehacB79vtaxfKkZUPPVGZtyTryPe1+in7U1QAp0fD5jgMddKw+BUY4F6rGwa7TlWdhX6uPto
 Ho0A66v9zrTI3xM2Si93I5l0lWaaEUPN9DqT5t6/qab0whHaqhr5TnzkHssapUe5+7hTrWX72eR
 4qLT3ETMTR1ryRCEI93aGiexAH0aAcUdok7nBgVO6z5ow==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay47-hz3.antispameurope.com;
 Tue, 16 Dec 2025 14:39:53 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 4F68E5A164D;
	Tue, 16 Dec 2025 14:39:45 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH 2/3] arm64: dts: imx8mn-tqma8mqnl: remove virtual 1.8V regulator
Date: Tue, 16 Dec 2025 14:39:24 +0100
Message-ID: <20251216133927.913039-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251216133927.913039-1-alexander.stein@ew.tq-group.com>
References: <20251216133927.913039-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay47-hz3.antispameurope.com with 4dVyhy0pfhz4MZNx
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:f1f82f19600168d6731e536ebde1b7be
X-cloud-security:scantime:2.336
DKIM-Signature: a=rsa-sha256;
 bh=51S2zN2wdAlNO7CZ6tg4ggDgdRZ66PTczsqK+t6gA2c=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765892392; v=1;
 b=TWrp7zLiC/qkG7lxELG8XBYyKsw7wIZOg+6NYLrpONfZK7L0FYIDWDt+99fYBf42jDI2kg1B
 zVXKL7oXjhdV+B1aXT8gMmoUa3383WENSGFKopzSi0RMMJM8s76hIajrY6t/nq4dQ+wGuV+luhb
 WLjQcgA8lNmF1zwYXtp/4k0QktdIHigTB0pLfHpH9ffnR088E79iFdLPX/Pf1EOyb42Shkwb9bO
 xoWS9EFsy2VAHHUs/80am6rCH6s/+HtUHlqTYf42LHRX7oMISUVyeKBtMPpmN1dEiLomedkh8Yl
 VVFEgTa1+x6vNpoKKrVJ4mfAs7nQFVXmaVp//srV095Ww==

From: Markus Niebel <Markus.Niebel@ew.tq-group.com>

BUCK5 regulator supplies the 1.8V rail. Use the actual regulator
instead of a virtual fixed regulator.

Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
index 34d6415348f8c..ac6ce5d814c50 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl.dtsi
@@ -15,14 +15,6 @@ memory@40000000 {
 		reg = <0x00000000 0x40000000 0 0x40000000>;
 	};
 
-	/* e-MMC IO, needed for HS modes */
-	reg_vcc1v8: regulator-vcc1v8 {
-		compatible = "regulator-fixed";
-		regulator-name = "TQMA8MXNL_VCC1V8";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-	};
-
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -236,7 +228,7 @@ &usdhc3 {
 	no-sd;
 	no-sdio;
 	vmmc-supply = <&buck4_reg>;
-	vqmmc-supply = <&reg_vcc1v8>;
+	vqmmc-supply = <&buck5_reg>;
 	status = "okay";
 };
 
-- 
2.43.0


