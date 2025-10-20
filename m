Return-Path: <devicetree+bounces-228883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 84823BF1934
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 15:39:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2354C3BB707
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:39:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FEFD31DDAE;
	Mon, 20 Oct 2025 13:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="T78cA/LO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay19-hz2.antispameurope.com (mx-relay19-hz2.antispameurope.com [83.246.65.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76C031A7F1
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 13:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=83.246.65.193
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760967546; cv=pass; b=VV1+uaL1UYuCBkuHzbbCwXx9N7sP5w8lj+oSLXvz98xeAYqW6sZNZLzOGxkKHiq+045xCdjbFAIqS73SuTGvYceddqSQcR9N+ve95eFhMYZUssd4KdyemGh4QMqoYH4GGcKfW18HH0KgGI2CkfU3cAxDjvI/xnxUtGFkMoJepe8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760967546; c=relaxed/simple;
	bh=gtCPPewMEBC8D7JOzdiBWDfrypJ2zDljjzYYOx3Ruuw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iZ2AIhIAxB9nyHJS+iZTQhRJteqrkbFKRTfYRukPfAyrPE+RlwDyg+pscpU1YgiY6XKGEX4YUiGLHBW25SaAxxJ+yik8h/HskiI9MeWkIgiV+b2iXtzwGgaMNkeMfn6bhBCnI3onxuZzNvTH3dBg4Ej+aXjSHc+I3+dcGj8yr6o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=T78cA/LO; arc=pass smtp.client-ip=83.246.65.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate19-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=iMew/cU0hjBoxwBz0iB+7LijsCZyiMyr5SL5xMs8+vU=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1760967484;
 b=Vps58T8hs5nUMkI48RUsS+lax5SLnkGE1KLmwEq3NWQJae8x+g6FFP8NqAyJ/riZpEFJVFn/
 kCg7c5rUhkzNO3BgGLtAL+1AYA8yIzx5hyQyynjE1kYqnLbBAbe3/lVkActr3j8BvFc+Bevp65V
 hlST55YellEX264aCALpuTSUNWrl7dH5EocKoXQvnjMhNUkEhJKbu0C1Ks07bQBV4AmxdvHlJ2D
 /oLV8ZMZyQCcgQfy0LcQ4pyu5y6u3zk3tnTAlevSUbsffJISQXDb1jSFWQ19ABp2n45L0Sl+XZ0
 NXTpXfspQU+9fxEP9ybMsAFTrBTOcBV4m/dD3t6RLgOBw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1760967484;
 b=bNDVKuBEAZ9Msmb0yBB+rpuK3bVA1ahKYoMf8aAnio6g7L07/MijOiABjTd03CPxbmw1MhWh
 JCKboyEpeu/cXMStSmACqYu18urGBD/bBfsgboSvHvGGdQZpHiy6wBCpPHsScP/X6H3emvohmMS
 vIH5T6b/j/YnkOSdijtLhKyajxVGEjUl52xcdrQru9XHloBqR9ZqcAPIpRhOzs4V5K7Brx3w34w
 +1/bx9YHAUz5qA4qTQVUiZARBGMlG1l/JSH6mXHt0FaNO1ziqP3esMfERrCGgB/D5fTm/pDqfPB
 oEazs4T6e4Tnq1NTE9Z2PJhTlRWi6+zn4Be7Y1AMX5JSQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay19-hz2.antispameurope.com;
 Mon, 20 Oct 2025 15:38:04 +0200
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 325B1220C57;
	Mon, 20 Oct 2025 15:37:56 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] arm64: dts: fsl-ls1028a: fix USB node compatible
Date: Mon, 20 Oct 2025 15:37:53 +0200
Message-ID: <20251020133754.304387-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay19-hz2.antispameurope.com with 4cqxM85HsCz2Gk5X
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:a9ced658393900b1efa503262e27cae1
X-cloud-security:scantime:2.178
DKIM-Signature: a=rsa-sha256;
 bh=iMew/cU0hjBoxwBz0iB+7LijsCZyiMyr5SL5xMs8+vU=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1760967484; v=1;
 b=T78cA/LOCeWEQ0buL55jtGaab9rAZk26trZtz54qh6oUAFMLEV7n1mG1yFad5YWvnkEotufp
 yyKZ3Yk/a+3s9YxbpD25qU9pFMwD0TUGQIkGp0zVR2DTi8SEX3kkr9b4gqHuUu58WvNS2pcv/cT
 3fvQ0wW8OF5+6dfYy/5eFdcr2M0ZVWH16HmbKszsW/1/g/SM1mLehbTe7xfvmSoBKIXYUd+CqrK
 Dmli2hmX4towiut5+INMZVicb1elPWmM3kx2kYqNEL8Oxhj9/y/f4Hk0jTXwpQuRRRuW0QiP8vp
 YdLOC6cuSqWso6h7tOQa4Xsoi03ft41gpZqbs2vJqEqDQ==

usb/fsl,ls1028a.yaml says the compatible is just a simple
'fsl,ls1028a-dwc3'

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 7d172d7e5737c..ddfb007dda920 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -613,7 +613,7 @@ gpio3: gpio@2320000 {
 		};
 
 		usb0: usb@3100000 {
-			compatible = "fsl,ls1028a-dwc3", "snps,dwc3";
+			compatible = "fsl,ls1028a-dwc3";
 			reg = <0x0 0x3100000 0x0 0x10000>;
 			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
 			snps,dis_rxdet_inp3_quirk;
@@ -623,7 +623,7 @@ usb0: usb@3100000 {
 		};
 
 		usb1: usb@3110000 {
-			compatible = "fsl,ls1028a-dwc3", "snps,dwc3";
+			compatible = "fsl,ls1028a-dwc3";
 			reg = <0x0 0x3110000 0x0 0x10000>;
 			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
 			snps,dis_rxdet_inp3_quirk;
-- 
2.43.0


