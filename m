Return-Path: <devicetree+bounces-240926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id E3049C77B46
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 08:33:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8DB55354248
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 07:33:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0AFF285C8D;
	Fri, 21 Nov 2025 07:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="rcEKvPP2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay51-hz1.antispameurope.com (mx-relay51-hz1.antispameurope.com [94.100.132.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537E4275106
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 07:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.226
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763710385; cv=pass; b=J6Fism4F1TsaaXYiwikjNLbxph4NNZ8eYtFCQZZrYX1qNO70cwyW/wgXloVQytnYIlT5sH34o6zf8EtKM1UwkhLgNHn86o76HplhVAVbEmjxJ7UaHEMQH0ANq+723nnCeICppnoS/xKejVe0clvWcZKyC4awUjiE4ijziC8rw9g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763710385; c=relaxed/simple;
	bh=yxLZqcd5zM0Zptc34DEGfIKYPe3PxXkgB686Z8yY8kw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cUgZfbHvE5DvK1jPv/6fF1oXr2e7xeAmTF7sDsIasUEqqsXPEbHa4cbsAv3369mooUm3YBOpGP0CLYTxtMOYWqIy7+y7I/FLwC7BpuYtDmlHOVLStzpru1gerwRz3JEdmt/G6W4iBxSIenGh5dYTMKr905Rx/GUcmwtb0IUIQsE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=rcEKvPP2; arc=pass smtp.client-ip=94.100.132.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate51-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=SHcSWj72/by64/S98T4wmbPzKNfmbTKpvj8oqcHTQ4E=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763710314;
 b=dJtp5S/HzjCqtGhORk0Nj4fj/qulBaiiHSAdazlT8mNa+OjKvK58Z6IJ6QrfnXBw1tTm/Zpy
 guOhaJ475gmP3BeOy1+bC1W/LdpRrbTNQ/gQNn5Ep04l7PXnQE9Sgml0uF0O6HpojvyCXBwWoh/
 9NpZIpopWsN7L/9W3DjngZeKD5+ULGJ+pB2yey9IRAGlBD1RGkb7Q6NnqQLqBgeki6sOpz74GAj
 czofsGJTPiTso0B/PMQ561i90UmDGiF8f2Z7+0ruZEuFc/FH85EQShMEPz9+D+t/9+5uWOwZ7EO
 tE42F/TglVtZLLRnrZ1VgoDqleCXRoCVd00bkgT0wSQaQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763710314;
 b=QGQwqc4Ko+MoTH+BVXm8IQ1CBFC9mTPZB5QSNzbQwBjLrlNopRcHP9dMznv9hMpVdtx+k/y1
 1AYmHPT1T12SJpA/T57LurvvMrTC0SoPqGdphPT0H1NYHgDfakQvoQLHuRikFUvRLirNnCbyTyY
 FX8Ezp5yn75E9FedbxvPNj5maJfnSJYjsSPhczVTSgQtAC/13w8t1nb6K91hwij5BV6SJ8PDv5Y
 SJVK4K2o2ot8kT6mw2sRKYRoZg7gmW02YulO6MugPi3QTWvD1DhUiZFUawlb1S3CwOdmfwGXZrZ
 9K0Ij4ZnqmDdVXGXJfs0RkEG0ABbbpBIJzppypLEUhPBg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay51-hz1.antispameurope.com;
 Fri, 21 Nov 2025 08:31:54 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 7DCBB5A076C;
	Fri, 21 Nov 2025 08:31:46 +0100 (CET)
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
Subject: [PATCH 2/2] arm64: dts: tqma8xxs-mb-smarc-2: replace 0 with IMX_LPCG_CLK_0 for lpcg indices
Date: Fri, 21 Nov 2025 08:31:41 +0100
Message-ID: <20251121073142.3367642-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251121073142.3367642-1-alexander.stein@ew.tq-group.com>
References: <20251121073142.3367642-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay51-hz1.antispameurope.com with 4dCRjv1PFPz33Nyk
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:4b0d0fc0d52d0a2e82669a6eda2d09f7
X-cloud-security:scantime:1.914
DKIM-Signature: a=rsa-sha256;
 bh=SHcSWj72/by64/S98T4wmbPzKNfmbTKpvj8oqcHTQ4E=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763710313; v=1;
 b=rcEKvPP2PCBvTfH51g1SmihuZDFM12hlhwBcDDmw9rMBsDMzrs4x46ExWikCnOFAfdGaUp43
 rFztg5eNnOh1oBgkzLACznT8KRDLntvPZDLZ2Dh5c7/8Nmd435NEpss/5gnXQwfQ3ol0+J0yASM
 AXsHNqGFrd1IAQ0sgML349k5UIyLI52Ui570fnE0RkSg1YCpmMaBTg8zn/AQBvDslzZOD4Yrxvh
 hwUQknRNkvmUM5jZUMnYTzv0m+g4XbV1I83nzULpV0pRPyWjjZadzibT/j4vwexWdGlvchoHd+i
 kTmDLnTkGDrZ3qem7HlXgZr6VRGDIdCDcBdoWlcd8DA5Q==

Replace the 0 with IMX_LPCG_CLK_0 for LPCG clock indices. Although the
numerical value is identical, the LPCG input is defined as
IMX_LPCG_CLK_<n>, so using the symbolic constant improves clarity and
consistency with the LPCG clock naming convention.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/tqma8xxs-mb-smarc-2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/tqma8xxs-mb-smarc-2.dtsi b/arch/arm64/boot/dts/freescale/tqma8xxs-mb-smarc-2.dtsi
index 3d20e3bf32ce7..8bfe77113d64b 100644
--- a/arch/arm64/boot/dts/freescale/tqma8xxs-mb-smarc-2.dtsi
+++ b/arch/arm64/boot/dts/freescale/tqma8xxs-mb-smarc-2.dtsi
@@ -130,7 +130,7 @@ &i2c0 {
 	tlv320aic3x04: audio-codec@18 {
 		compatible = "ti,tlv320aic32x4";
 		reg = <0x18>;
-		clocks = <&mclkout0_lpcg 0>;
+		clocks = <&mclkout0_lpcg IMX_LPCG_CLK_0>;
 		clock-names = "mclk";
 		iov-supply = <&reg_1v8>;
 		ldoin-supply = <&reg_3v3>;
-- 
2.43.0


