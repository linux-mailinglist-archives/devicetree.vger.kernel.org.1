Return-Path: <devicetree+bounces-4167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E50B97B1749
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:25:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id EE96728254F
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 09:25:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D37F3419D;
	Thu, 28 Sep 2023 09:25:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2211D341A3
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 09:25:24 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 682621B5;
	Thu, 28 Sep 2023 02:25:21 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38S9P4wG104284;
	Thu, 28 Sep 2023 04:25:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695893104;
	bh=VOgmZjppaNHRvb+fq7iB4eyXgEBm+n29yek9u6VmbPM=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=M7WdNJwK1s5Vd7sGKOy2TrfBhWTyz0eO7OuYvtS6Pr79vZcjAlXoKnARNDntseNbs
	 tHKM4/4/j6mYwUJRGwIoHlbnQnR3iHVZ0QGRJ5nsIakjquuDn6bx2KBA3HbX29IDMh
	 0wM3XFelrN8rg6jsnght5MV9wqtXgQ1OBMypjmjM=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38S9P4ss006600
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 28 Sep 2023 04:25:04 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 28
 Sep 2023 04:25:04 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 28 Sep 2023 04:25:04 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38S9P3tj090367;
	Thu, 28 Sep 2023 04:25:03 -0500
From: Jai Luthra <j-luthra@ti.com>
Date: Thu, 28 Sep 2023 14:54:27 +0530
Subject: [PATCH v2 2/6] arm64: dts: ti: k3-am62a7-sk: Split vcc_3v3
 regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20230928-mcasp_am62a-v2-2-ce9f0e1ba22b@ti.com>
References: <20230928-mcasp_am62a-v2-0-ce9f0e1ba22b@ti.com>
In-Reply-To: <20230928-mcasp_am62a-v2-0-ce9f0e1ba22b@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon
	<will@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devarsht@ti.com>, <a-bhatia1@ti.com>,
        Jai
 Luthra <j-luthra@ti.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1487; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=8UdWpyx47NjH2sp2+nFjUjfUOYp2UBEB4/o9/Nf7fxo=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlFUZivrZAvboxWYTPt/uQfEC9X/DYuWAvKBMNa
 D/89vc5DemJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZRVGYgAKCRBD3pH5JJpx
 RXdeD/9Q4KaKvu/CVwubxurKDwYapnMFCs+mLI9ktR0E3ILIn5+gVWEKLhnvx87OZkXmkx7W5qK
 NuLlQ8eHGLLQrebVtjlt2c7IvzSqZgoVNy7Wi6gJUSbi/EnC4Ml7kAtjJuAQDNjnDN3K4eQhHn7
 hdSaLFr1Y6o3CMoPVI3S5TQ2KS/90DogpCwoeHJ6cM2s4Bf9oJHkJzEMvaLsaXRlOIKty7JlcSw
 Hc9xWfduyR8i1KFJvTwLylFapic0e/nOIlWorr5/0Ms12WVPvwW4iDJIQ3/eQn6Cp1Oji6wfkoW
 Dbd8TSVFPynSJy6B08/3dB0u9jq6N6xnXVow37JwfIv+uB+pxkBIWhIcgUdL5Ui+KUSvegpSsv5
 myQ6lwJnovgPwzQCVb/B+pKgzUVEjQQ8fluybgDvFag4KapxncsxxeUuXLCcs6vMHh1mgfCIXcs
 8K1uyo7FWszMcKDgLDCR7l4mA6l29BsZUZwGK5UqonPfokt5usEEvmDewxXMvGzaVJgaenpLomq
 VaqpNZybZtEDYE3JPdQFdptRSj7YKguLGmompAy8VSSw8DsM2RZ0zJkuty3oxn5EbqHg1g5vbRs
 Xpi8alxtd5ikSGkTj8LthvOWw81kzxpJQUV+CQGt9qaUmnCPxGNPC7sIqUyHug2kRaeJnrh89+A
 2HpiSQKzB6yAAKg==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

VCC_3V3_MAIN is the output of LM5141-Q1, and it serves as an input to
TPS22965DSGT which produces VCC_3V3_SYS. [1]

Link: https://www.ti.com/lit/zip/sprr459 [1]
Signed-off-by: Jai Luthra <j-luthra@ti.com>
Reviewed-by: Devarsh Thakkar <devarsht@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index cff283c75f8e..c689d3da2def 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -79,10 +79,10 @@ vcc_5v0: regulator-1 {
 		regulator-boot-on;
 	};
 
-	vcc_3v3_sys: regulator-2 {
+	vcc_3v3_main: regulator-2 {
 		/* output of LM5141-Q1 */
 		compatible = "regulator-fixed";
-		regulator-name = "vcc_3v3_sys";
+		regulator-name = "vcc_3v3_main";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vmain_pd>;
@@ -101,6 +101,17 @@ vdd_mmc1: regulator-3 {
 		gpio = <&exp1 3 GPIO_ACTIVE_HIGH>;
 	};
 
+	vcc_3v3_sys: regulator-4 {
+		/* output of TPS222965DSGT */
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3_sys";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_main>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";

-- 
2.42.0


