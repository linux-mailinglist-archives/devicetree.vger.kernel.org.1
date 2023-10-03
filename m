Return-Path: <devicetree+bounces-5429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF017B6511
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:12:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 581E52818FD
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:12:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C125BDDDE;
	Tue,  3 Oct 2023 09:12:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27537DDD2
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 09:12:11 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47CDFAD;
	Tue,  3 Oct 2023 02:12:08 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3939BsjR034477;
	Tue, 3 Oct 2023 04:11:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696324314;
	bh=VOgmZjppaNHRvb+fq7iB4eyXgEBm+n29yek9u6VmbPM=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=U6GLRy3sSA3IQmg0dsP2JeU4Ip1EMozPNuPUONd5KawrJdBfaj5e9lxPBzeLQshNO
	 5ZftUf+e9FhNotICrJQQ+zfW3Z9c8Q7i64Vm7UbV097stSUBdU4Wj3KLTGAR8lagZ2
	 O3L72Vq9E0thQ39Hs04NCmYU5t89e4kvJth1RTGc=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3939BsLM000805
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 3 Oct 2023 04:11:54 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 3
 Oct 2023 04:11:54 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 3 Oct 2023 04:11:54 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3939Brm1019187;
	Tue, 3 Oct 2023 04:11:53 -0500
From: Jai Luthra <j-luthra@ti.com>
Date: Tue, 3 Oct 2023 14:41:31 +0530
Subject: [PATCH v3 2/6] arm64: dts: ti: k3-am62a7-sk: Split vcc_3v3
 regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231003-mcasp_am62a-v3-2-2b631ff319ca@ti.com>
References: <20231003-mcasp_am62a-v3-0-2b631ff319ca@ti.com>
In-Reply-To: <20231003-mcasp_am62a-v3-0-2b631ff319ca@ti.com>
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
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlG9rPSwxdUO8bLQX3ohrzKwxpNpRmouusi9bH9
 0W+moZ6CwCJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZRvazwAKCRBD3pH5JJpx
 RYShEAC4rYGiz/KujHAtFqUWNtM+EsDe4h4NUJTmlwrNAuYS50UmJCHnz+2G1oUglCuTXzmPC3+
 XDC4Yn0FNr8/weAuYJsUmaL1JHEPYLuZb5C+Zfe6PZMJepCESvpAHMgr5xT/7YUksBFPmUBAtdK
 jVxOfk9WFFqLvDvNVPd9RDsgvSGrfw8THXrC7YcHu1xHzOBWX3cv55CL27uia4AOyWdfIcW6JL5
 l20i4F14cFSJSQtihgMgPngtkcs7u7sZ2b9vA4O6Vg3/BKH+sLeY336CHqZbHZEj8S+UtlwOOG8
 jSk03TygoH0hw/OicOm4XK9f+zpKhPSajLW01dAAkvwcH7zJsv7idXA4GhBfoCLEyUzihiyhXSE
 Iplbl7611FFRxbJtxGHghIhglrOro+pqapS/iUDesm9tpF2q7yzOUI6zv3rOqvtOZE66iOoVaHD
 6G9Eq0+wtsc5Qut2rZhdxNibFht1ABsTU8aLJDass2HuYrQl6vYbgsPWPEb/1SyALF64imSMp2g
 pZx7IW/cpD6NsYE365qNmUSLcQTScPtET+c2ybusGbzZsfSZnmmbA8Wgyt4B/b5OnjX1Xlsm030
 OyxqJ0z26ytN8j6P5zQvtpYdPU/ahOnJWN44afNizyl5Qkw4guzYlxBCkVm10uFX7JIvZn50/xR
 dO4kAChapdlqyHA==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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


