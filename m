Return-Path: <devicetree+bounces-233230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BB514C2015E
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:51:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A37544E33A2
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F520350A25;
	Thu, 30 Oct 2025 12:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="gEH9zKFe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay32-hz1.antispameurope.com (mx-relay32-hz1.antispameurope.com [94.100.133.208])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF4334028E
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.208
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761828666; cv=pass; b=BUIqeBNOaIm/7S7pLze4C2HHBu2nsJ6te24uwImrZ7yT+xQ6TB7u/SmmgwMq1ay4Dtw2jkr5SURkL+5vcpvIkuOdFHHzaJNm8IlYBNJdSIXWVx/A56MtFzs9SOjjJqrQJQQey+LaZDFfHzkMJglA7SRIE5o9I11BTzm8OHOnCPE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761828666; c=relaxed/simple;
	bh=8R70P4kEEcIbFjodXfQBxXqAq+lQZtKZ+MdM85RNf64=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jnLtQIOgr90RaSo+MrWchnsyOtCQpc0ckAJav3bJnKSfhkZ8iukz+j2u3+uUwkzKgjIzRnZy1VBU+YprKvDTPI74dQnAliClOW8RxRpb5P9yiXkmP13K81P09c1D8s7YXk4XRbjuoP+ewGVy6JpMLWhwdwhKwO38/YWA7b+2hpg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=gEH9zKFe; arc=pass smtp.client-ip=94.100.133.208
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate32-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=orpjfmaMqp/ep6TopDZ6qss0KQr8oMJ5sbynNFItMqc=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761828610;
 b=dbXL94P+fUnEilks2zAhKzHAX2U3fsyLq2OWH2NMlPVw00n8NiCmIKMl06wz7yqye3VsgFDC
 sku8Z/o1sbXHu4RCpGSWoQj6V8twtaD0DYZCf1zbXJ39pZOnNIm3XvLGKr/1l4OrOICSdbQvUHd
 XVXbZsJ7RN9+NI9JgUeY8Amwheg445X2cUrMg/br457GykwEIbFdaMtzi7x07CeNWiB+9e/+Ecy
 07cnArcEUhNolXU4Y+jx3YPYgW39znsTPwWnt1PNaUttP+JwIley/iBUMXuSpehjYcpsW8dM4yc
 y3at9uW5vo2WkTMWZjBmJ8Nt5Sc5SmEVGXZXRV0+2j57A==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761828610;
 b=f9nGHRnxkyq0Sj72bp5PM041UQf+v2YpvDquJoaeByA5T3Ar3nkIW7S29hDNL93I4/UsN+VB
 2c1A60S5K4rHZWynIhQRvZtB5Zc8qVBQvidUSTLII039Pz1znTwk2ymqiPQbbuuXH2RD2jVMXQt
 eJQzyEEk4q+Vcx2yLGJvAk3J5aKDh7jh1FDiiOtx6CZRgpGuE4Zp2xs7/JRqL/PWH6Vm5/xj8ln
 N0/uCHnf4YG+9mQ04x+/gyfE3qPujBBeU4SOpf6omO+gRam1MBTtPlHPGwOat4XjVUW6coQzWoC
 Gf2xHGeoXz3MaXFJT+mpIZVelgmkoDR9hInAveWcB4Gxw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay32-hz1.antispameurope.com;
 Thu, 30 Oct 2025 13:50:10 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id CFE28220C62;
	Thu, 30 Oct 2025 13:50:02 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 10/19] arm64: dts: imx95-tqma9596sa: remove superfluous pinmux for flexspi
Date: Thu, 30 Oct 2025 13:49:17 +0100
Message-ID: <20251030124936.1408152-11-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
References: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay32-hz1.antispameurope.com with 4cy3qH419Jz8stG
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:201a609ca4cd8de84ce042f2b20575b7
X-cloud-security:scantime:1.813
DKIM-Signature: a=rsa-sha256;
 bh=orpjfmaMqp/ep6TopDZ6qss0KQr8oMJ5sbynNFItMqc=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761828609; v=1;
 b=gEH9zKFeluuDJBNc35v1uHozzcTmUKRTb8XQKvuS6YbTM6DCFUbrl+UJ8Ai293dUI9AulU4u
 w9eC041o4H8kD9IXWw/u57WJTD+RfsizW9CKAYGT2acQME0Zf7Xd8Ir8fyKBgtygoriJACS1cvG
 l24EIzAFqBiq6UgurK5Q8XtMEbTHVw/aKcZY9qka2Wk7+iMoH0XeCE7hbFtbWT6SM6BuVaF5hQp
 MbC9O0TFxEPk4Bd3R/hF5DC4Pzss3orDSaW44Rf47d9Q41y3acpobulwqcBhXRLudQruEHCkYNP
 qQ9qNzjXW1Cdj3knjzt3xhWQQuQ3KOenDGVIsUsyAvcaw==

A sleep pin mux is not useful if it is the same as the normal pin mux.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
index 36da8ff8d1835..b7136982700a9 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
@@ -117,9 +117,8 @@ &flexcan3 {
 };
 
 &flexspi1 {
-	pinctrl-names = "default", "sleep";
+	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_flexspi1>;
-	pinctrl-1 = <&pinctrl_flexspi1>;
 	status = "okay";
 
 	flash0: flash@0 {
-- 
2.43.0


