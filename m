Return-Path: <devicetree+bounces-247034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0E2CC3205
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:17:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8EBDC302EB1C
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:17:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 034403BDA90;
	Tue, 16 Dec 2025 13:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="KxiUSz4Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay21-hz1.antispameurope.com (mx-relay21-hz1.antispameurope.com [94.100.132.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFD239A119
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 13:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.221
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765891032; cv=pass; b=gOTtaORHZjoof9R3IsvSi/0dCdL+EPlIEsp2Owk9lTxyWI+IL6W3VMuu+PzgBrjFgfmB3hPb5Ei4Hi91VLm9U2qYsUh+y3l7z43bPQ5SiFe4A/iDT/V6lmMLOnqkt9zOk5BOLW0NhpMNwzE0O3C9fw6SH5YRtf+W2xEKzkkQEOw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765891032; c=relaxed/simple;
	bh=zxxZrwSMySnJ+NOEKeTKxWL2NpOTHlJHW6Jdr7nLoak=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=B47ZdbwxPxJZ6TT7u+JcbAbhVf10IhBI6cUwK0xvMzbldfl/YPPmE9Ja0nfxBZIS4ue2G22Agu/e3Yfp/IZJ1uFYRp4jdkQPQSDfr2GSAkaWLCMpgbfhDVacNMokZW0/1ZSew3cLkXvLSssfJ+/ouemyf+7J+mkA5DZDj9pssSY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=KxiUSz4Z; arc=pass smtp.client-ip=94.100.132.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate21-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=J+XQ7ergPVCzcXY29psvIoBrucP9oMPTCH1A1rkDzxM=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765890940;
 b=WtX2kC1g+whhfGHoyihNrm4q3KZQA2HUtgXao+dnqC0jZIUq6jNwCUQDi3suN2iFm0hg1fkj
 zs4K2/0F+i6+bjJiyCOi5V4XJmveMoc2qtiFcW+aI2HSXN89F3OFwMM2VSpy1ada4Sm5RBzIAOr
 neRTeaKY/8E6NEVpNpznt7J+f8p6gwWpb/+K5YipyWdUG1ZrVEONpudK7HujNTJuCG3cJvii6s4
 LQPByurTh1Y2UI3t0ZRcmen+RAUbpbp4I1niMECEiEx8okq6rBUzAhN5/EXl9IexLC/iDQ3V+pz
 1N82NpMUE+kYgebsMZsN47fjwLlhXuj/faGtiDOnF1KAA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765890940;
 b=gav36Dyc/cLzhLDcvWcoxDyYbR1J2kJO3kmnEVVX8QEO3xlPE3vGsRhIO2v0WcudS7findme
 pU7Fk2rv6aTN5aDvyiA+6v/rtoQY0SCJXy1Ma0EW3qdKHwu+ZKnk5mECyBinZi8kXPRdHrDC53E
 UYm9/pkABCc3Mj1ROUs+gDCgd4X6z1RH8ymwAhLFVELpPqb9fQ5VYb4vsGxztc5HKMu1r/M66LE
 68Z4uX0yNMeC1wQDb02pp+bxEplw28P1BmIoLlhsr0zi3I327SNghHOX9juk/SvBV1RrCR2KcOV
 PoTKOmYIQQq7H8/rxyW0AeCRL9OsXLsN3xDPmQ293fGyg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay21-hz1.antispameurope.com;
 Tue, 16 Dec 2025 14:15:40 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 8B5FFCC0E8C;
	Tue, 16 Dec 2025 14:15:33 +0100 (CET)
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
Subject: [PATCH 1/1] arm64: dts: mba8mx: Fix Ethernet PHY IRQ support
Date: Tue, 16 Dec 2025 14:15:28 +0100
Message-ID: <20251216131529.886546-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay21-hz1.antispameurope.com with 4dVy921b72z41r9H
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:0fe9136366c4b6928e5776230e78d4b0
X-cloud-security:scantime:1.648
DKIM-Signature: a=rsa-sha256;
 bh=J+XQ7ergPVCzcXY29psvIoBrucP9oMPTCH1A1rkDzxM=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765890939; v=1;
 b=KxiUSz4Z0Ise0USMcWC4DWjnLPt8G+f8C4a/GOP3F3yPzK/UZvcs7EYC375BkNRgh04Tzx4V
 q3IHZcK7qULJ/0Q21qpocTjuYkj05Uix5dEQGsVfdt3fjRYvJLP0WvNJXphO/JpuVI6YPgU5BkT
 uU13tZGVP1Ia/fQgMhRhBhm1uJ5nKtj6Kb1HQf0z6bixxn1jhgmQDCrvEh6AytNW2zawjULxCw/
 /ZIRLpRFuGTL2ROfU9Krr7ayspQYuUpR+eE13gDhVHen9TVm7eJeNbK6XpdImhdODWnciQimPDf
 mPSXfe6KtaKxxqem1w+hYDdIImBlxooyFwfOjdMtf+18A==

Ethernet PHY interrupt mode is level triggered. Adjust the mode
accordingly.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/mba8mx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
index 225cd2f1220bf..10d5c211b1c9b 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -192,7 +192,7 @@ ethphy0: ethernet-phy@e {
 			reset-assert-us = <500000>;
 			reset-deassert-us = <500>;
 			interrupt-parent = <&expander2>;
-			interrupts = <6 IRQ_TYPE_EDGE_FALLING>;
+			interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
 		};
 	};
 };
-- 
2.43.0


