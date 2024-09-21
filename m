Return-Path: <devicetree+bounces-104272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8669197DCFE
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2024 13:48:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3112F2823C3
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2024 11:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81DB3170853;
	Sat, 21 Sep 2024 11:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="atAysOQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A711416DEA7
	for <devicetree@vger.kernel.org>; Sat, 21 Sep 2024 11:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726919326; cv=none; b=PUSaQRKOgYSGkOeStzzrXjBmmIiD667iBSfKUu7OCFAhclXW4byLzN/f5Dk6pbldxU240UOjGTrbhBB+rlUdsD0qNBN/qV8E77E5IVO2EiJzdXIzkOsRDd8Eu5fHKde2th6U6un8MhpHQKUnJNd4LoI9FRE8si0Y5a4pWnGndiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726919326; c=relaxed/simple;
	bh=rvAXavuNEzC53fMDGsb7GkkZYNxDu/mrr43mU/iZ40o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HQZkeW2vUacCnHUBAG39KguU+u1/Ksgr0E8FRKRMF7CRu0/ABY2PaM8HasnkNHIfGmOpRzU8T3SQEcaI9thVOTXWlrYJrEiHS+SQ3NCEcEvBK8ZJddDPk7r0y5C0RuJh64FP2/Kk4XvkOqv6zTTlHl6DXxD4vuHg8r0plSzQxNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=atAysOQF; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=73WsSrI+FYKo5p/m6oSxAlAlI33R7iW0u09NBkVFkm4=; b=atAysO
	QFe1RqVMzBW3GRuozHccEFi/dsR0eJjCEjTnvyjITborI7psxfNoVoywGp5fB0yV
	SA89ynTM1uQuBkMLlYrWpKudB/ffjAQ8n0sWQDtOKSV6ROHGpK03p0AcY7k6LYCN
	FoWvg0GqTQskJlISAsaptZUKYNplTixGlaF/3rQvfom9xrgiIkXFKmJMBJrQn1ne
	7PxECH3BzyLGb6HgoN/M/TKXCgTktowp+ks5aKpNQfg9K85c1B3e4qKWR8p8Wj82
	IeDmD98ZGkGplz2NJxHkDAHWuoVbjwW4zzdvsOzyhcm0wkntt50lNKrmJHz1+JtZ
	ESvWMwfn67XL8OHw==
Received: (qmail 3652846 invoked from network); 21 Sep 2024 13:48:39 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 21 Sep 2024 13:48:39 +0200
X-UD-Smtp-Session: l3s3148p1@jKGVvJ8iRsYgAwDwn0Nz2qARpwvTE8dN
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 4/5] ARM: dts: renesas: genmai: sort pinctrl entries
Date: Sat, 21 Sep 2024 13:48:16 +0200
Message-ID: <20240921114813.4124-11-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240921114813.4124-7-wsa+renesas@sang-engineering.com>
References: <20240921114813.4124-7-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To make future additions easier.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/renesas/r7s72100-genmai.dts | 21 +++++++++----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/renesas/r7s72100-genmai.dts b/arch/arm/boot/dts/renesas/r7s72100-genmai.dts
index 5728b1080ca6..4f920afe0d62 100644
--- a/arch/arm/boot/dts/renesas/r7s72100-genmai.dts
+++ b/arch/arm/boot/dts/renesas/r7s72100-genmai.dts
@@ -174,17 +174,6 @@ &ostm1 {
 };
 
 &pinctrl {
-
-	scif2_pins: serial2 {
-		/* P3_0 as TxD2; P3_2 as RxD2 */
-		pinmux = <RZA1_PINMUX(3, 0, 6)>, <RZA1_PINMUX(3, 2, 4)>;
-	};
-
-	i2c2_pins: i2c2 {
-		/* RIIC2: P1_4 as SCL, P1_5 as SDA */
-		pinmux = <RZA1_PINMUX(1, 4, 1)>, <RZA1_PINMUX(1, 5, 1)>;
-	};
-
 	ether_pins: ether {
 		/* Ethernet on Ports 1,2,3,5 */
 		pinmux = <RZA1_PINMUX(1, 14, 4)>,/* P1_14 = ET_COL  */
@@ -206,6 +195,16 @@ ether_pins: ether {
 			 <RZA1_PINMUX(2, 10, 2)>,/* P2_10 = ET_RXD2 */
 			 <RZA1_PINMUX(2, 11, 2)>;/* P2_11 = ET_RXD3 */
 	};
+
+	i2c2_pins: i2c2 {
+		/* RIIC2: P1_4 as SCL, P1_5 as SDA */
+		pinmux = <RZA1_PINMUX(1, 4, 1)>, <RZA1_PINMUX(1, 5, 1)>;
+	};
+
+	scif2_pins: serial2 {
+		/* P3_0 as TxD2; P3_2 as RxD2 */
+		pinmux = <RZA1_PINMUX(3, 0, 6)>, <RZA1_PINMUX(3, 2, 4)>;
+	};
 };
 
 &rtc_x1_clk {
-- 
2.45.2


