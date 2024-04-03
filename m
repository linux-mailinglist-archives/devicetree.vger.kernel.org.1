Return-Path: <devicetree+bounces-55939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BD389715F
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 15:40:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E42931C25C6A
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 13:40:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7E1914883F;
	Wed,  3 Apr 2024 13:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rnplus.nl header.i=@rnplus.nl header.b="Z26dLVSh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.rnplus.nl (mail.rnplus.nl [178.251.25.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6051487F3
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 13:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.25.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712151640; cv=none; b=IfFeQ+y7H4BKByh6zYew4s8R1eHuW+8vn29gxKD21xpsm+QbO5qnH3MWCXw5A6InHV5Lz2l5EOejW+93r31v/9+C57WtLU54rekKGSe6UDW468pim2z2B3/xA94+btSAbTcGm5U9pP28YoVGZ5BsP0mWiDWoLT4DwVZOtQ9EI3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712151640; c=relaxed/simple;
	bh=J3x6v1j8NItiPEP2ALslVPQ+eLcuXH6rDPyikVVJs7U=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kuqyjQk24zY59lWnGk9R62YQm8z26ZdbXI5LpRMMG1eBxH42tqb2Sqz+8Xt6XVoaVZE+9cEpPKXYrvs44OD5J3Z4aa7iZY1noFG4Am2fEM8TaU7BigA4uhzG78I7coolQK57qcB5b/60usEYtzylvtIpVdTSiKNAe1iuAY6Eaa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rnplus.nl; spf=pass smtp.mailfrom=rnplus.nl; dkim=pass (1024-bit key) header.d=rnplus.nl header.i=@rnplus.nl header.b=Z26dLVSh; arc=none smtp.client-ip=178.251.25.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rnplus.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rnplus.nl
Received: from localhost (unknown [127.0.0.1])
	by mail.rnplus.nl (Postfix) with ESMTP id ED00237948A
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 13:37:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at rnplus.nl
Received: from mail.rnplus.nl ([127.0.0.1])
	by localhost (mail.rnplus.nl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oHOrf3j00XaC for <devicetree@vger.kernel.org>;
	Wed,  3 Apr 2024 15:37:37 +0200 (CEST)
Received: from localhost.localdomain (184-179-179-143.ftth.glasoperator.nl [143.179.179.184])
	by mail.rnplus.nl (Postfix) with ESMTPSA id CBDE337947A;
	Wed,  3 Apr 2024 15:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=rnplus.nl; s=dkim;
	t=1712151453; bh=J3x6v1j8NItiPEP2ALslVPQ+eLcuXH6rDPyikVVJs7U=;
	h=From:To:Subject:Date:In-Reply-To:References;
	b=Z26dLVShrOqZaVWeKDgn4w32mfSkcvgNAkOzrO3X9xDzIkQIu66+cACZmAdvbrv86
	 kjr6bffH0ynPQYYIyKPNwQN3B+4GBGuok9EkXfnQORJWkEPYozDDcDaQh61F3YxYbG
	 VMCxGa1Nm6fuT3UzR9LBOMwRqrUOitlAZI+IGJ1E=
From: Renze Nicolai <renze@rnplus.nl>
To: renze@rnplus.nl,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org,
	arnd@arndb.de,
	olof@lixom.net,
	soc@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	joel@jms.id.au,
	andrew@aj.id.au
Subject: [PATCH v2 2/3] ARM: dts: Disable unused ADC channels for Asrock X570D4U BMC
Date: Wed,  3 Apr 2024 15:28:52 +0200
Message-ID: <20240403133037.37782-3-renze@rnplus.nl>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240403133037.37782-1-renze@rnplus.nl>
References: <20240403133037.37782-1-renze@rnplus.nl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Additionally adds labels describing the ADC channels.

Signed-off-by: Renze Nicolai <renze@rnplus.nl>
---
 .../dts/aspeed/aspeed-bmc-asrock-x570d4u.dts  | 29 +++++++++----------
 1 file changed, 13 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts
index dff69d6ff146..66318ef8caae 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts
@@ -337,20 +337,17 @@ fan@5 {
 &adc {
 	status = "okay";
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_adc0_default
-				&pinctrl_adc1_default
-				&pinctrl_adc2_default
-				&pinctrl_adc3_default
-				&pinctrl_adc4_default
-				&pinctrl_adc5_default
-				&pinctrl_adc6_default
-				&pinctrl_adc7_default
-				&pinctrl_adc8_default
-				&pinctrl_adc9_default
-				&pinctrl_adc10_default
-				&pinctrl_adc11_default
-				&pinctrl_adc12_default
-				&pinctrl_adc13_default
-				&pinctrl_adc14_default
-				&pinctrl_adc15_default>;
+	pinctrl-0 = <&pinctrl_adc0_default       /* 3VSB */
+			&pinctrl_adc1_default    /* 5VSB */
+			&pinctrl_adc2_default    /* VCPU */
+			&pinctrl_adc3_default    /* VSOC */
+			&pinctrl_adc4_default    /* VCCM */
+			&pinctrl_adc5_default    /* APU-VDDP */
+			&pinctrl_adc6_default    /* PM-VDD-CLDO */
+			&pinctrl_adc7_default    /* PM-VDDCR-S5 */
+			&pinctrl_adc8_default    /* PM-VDDCR */
+			&pinctrl_adc9_default    /* VBAT */
+			&pinctrl_adc10_default   /* 3V */
+			&pinctrl_adc11_default   /* 5V */
+			&pinctrl_adc12_default>; /* 12V */
 };
-- 
2.44.0


