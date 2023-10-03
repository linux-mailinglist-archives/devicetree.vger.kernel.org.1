Return-Path: <devicetree+bounces-5427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A257B650F
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:12:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6681528177E
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:12:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA141DF4D;
	Tue,  3 Oct 2023 09:12:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2544DDDF
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 09:12:10 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25035AC;
	Tue,  3 Oct 2023 02:12:08 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3939Bug4034483;
	Tue, 3 Oct 2023 04:11:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696324316;
	bh=hFOR+BafjthIcZVU9B2FFehUzOmrBZCSwFOWCdHH4CM=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=SP5g4MtfP7xNBpVuGnfK62Bdfnu9SDDBGGuec8u4+PKPfxVwWp4PLVirFmO9I2V0p
	 R0J7zquEDl3aU/SL4QAT9DnW/osLokK+xUHVBuCRXgLiKHk14ZHF7bvuqWvqawXXyT
	 n9R9Dw1b95BiLTWQuGctapsQ49gfUhe2SD7T208c=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3939BuJ3070546
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 3 Oct 2023 04:11:56 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 3
 Oct 2023 04:11:55 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 3 Oct 2023 04:11:55 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3939Bsmb074062;
	Tue, 3 Oct 2023 04:11:55 -0500
From: Jai Luthra <j-luthra@ti.com>
Date: Tue, 3 Oct 2023 14:41:32 +0530
Subject: [PATCH v3 3/6] arm64: dts: ti: k3-am62a7-sk: Drop i2c-1 to 100Khz
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231003-mcasp_am62a-v3-3-2b631ff319ca@ti.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1122; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=1Ur1KQudJbK++tRz3iH5DYIRD+GMJnGmG/rzza0+qvs=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlG9rP14AGN+ESpxnUtkN3IGh5pe1aqFaMNa3hp
 znpQsVgzuSJAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZRvazwAKCRBD3pH5JJpx
 RUPREACG/MVLhLiALrS3cv+i2bUFLYlaIESEuqkmpisNAVZEDxR3Zz7ZB9VkPoSDM7XbkXi4lk6
 LgaiogMRG//JGEVHisQ+y/bAi7sKSgAayhuXwBudfxjODQ/kvD9ElxAJXTMNCeYMxEOyunsqamY
 ThJe3sVJoJHA1rWDANcCS1u6Bxm8TKsdC7ZyXG2nfXoRbkbR22p20fv03tObLDH2LfJSWyGwtU2
 ULsiiEgq+ByG2cgWo9cHvRdJZZmlSFLUel6ad5CRx2jFK1U8wAQLyH3qQb5cxrPTpuf3fCqlVwN
 2L07LNOXezZth5FCGr3KAJ0BBNZBbFO7LddT90q1uD+baohT7V3cAlxX2v+bZ2YLSD1I9A62T1n
 QQTesR7bQmN/g1y9IUJllCx/UB4sjPAjbHjQYAGD2PkA4rOKEsasyUxpN5VFqDhNRGqI4hYnprh
 SF3BCaytorfC4dOgfKUPcV57Taekz1AxDyLAUKpRFDc7o/DYOlpzw4gwCh4q7+XAcU+8hY3oY0w
 mPb4QJYH8Q8u8gvjq/i3syi4NMsA05MhIycOmW9vvUT4JFmv8uIKjGvWNKqgF6c+uoVQKsSVCkK
 EFSwxCPiCy6fhnPHrUnSQMI/KtX0i5hmfOxcXG/XX3FERv3MI6xW8vu1zFBKgCQvNqLaUEMvcWx
 SMazXD5OggPqlVw==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The TLV320AIC3106 audio codec is interfaced on the i2c-1 bus. With the
default rate of 400Khz the i2c register writes fail to sync:

[   36.026387] tlv320aic3x 1-001b: Unable to sync registers 0x16-0x16. -110
[   38.101130] omap_i2c 20010000.i2c: controller timed out

Dropping the rate to 100Khz fixes the issue.

Fixes: 38c4a08c820c ("arm64: dts: ti: Add support for AM62A7-SK")
Reviewed-by: Devarsh Thakkar <devarsht@ti.com>
Reviewed-by: Aradhya Bhatia <a-bhatia1@ti.com>
Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index c689d3da2def..866b2725f775 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -261,7 +261,7 @@ &main_i2c1 {
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_i2c1_pins_default>;
-	clock-frequency = <400000>;
+	clock-frequency = <100000>;
 
 	exp1: gpio@22 {
 		compatible = "ti,tca6424";

-- 
2.42.0


