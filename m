Return-Path: <devicetree+bounces-4163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1197B1745
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:25:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id DC67AB2099C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 09:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62AA3341A5;
	Thu, 28 Sep 2023 09:25:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B131A34194
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 09:25:21 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BB45CEB;
	Thu, 28 Sep 2023 02:25:18 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38S9P65O069061;
	Thu, 28 Sep 2023 04:25:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695893106;
	bh=CpTQhz6CzpXT4DLoSwddHTVxsIKxiCg1g6FnlCBYdeQ=;
	h=From:Date:Subject:References:In-Reply-To:To:CC;
	b=OnYHrAHsSMLfiAl/k5mTKtvsMGLbhD3ZDtwihmsBHXnM7hU7w6TSEc5uHU1+lq5Lm
	 UcQFfAZTF5DcCEBHBCMlsrdMT8e8tmTGEPh/lOMkS1156r2nDUdq9ilGKhNHTCinbt
	 Fsw3VRI0KhnhoenlvzUtnYwwRJ8LF4vadTJwXySw=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38S9P67u006622
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 28 Sep 2023 04:25:06 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 28
 Sep 2023 04:25:05 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 28 Sep 2023 04:25:05 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38S9P5Rb022111;
	Thu, 28 Sep 2023 04:25:05 -0500
From: Jai Luthra <j-luthra@ti.com>
Date: Thu, 28 Sep 2023 14:54:28 +0530
Subject: [PATCH v2 3/6] arm64: dts: ti: k3-am62a7-sk: Drop i2c-1 to 100Khz
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20230928-mcasp_am62a-v2-3-ce9f0e1ba22b@ti.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1007; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=kIS3ZLOQp1627tfZHv/33mM01dpsIXBto944wmubaH0=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlFUZjJdY4gaFWroFOHK0yOVfcmElw2Lo5JJ8d/
 D6MvNu61i6JAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZRVGYwAKCRBD3pH5JJpx
 RXDQD/9O8JUwmOBhP1Ig193pqbn412hNWLwz3seFWiN4OJHgQnUZxfQTrWreIMjbtjWAZ7GLqo+
 ZzLgGLwm7RGOwx5v9KvqoUA2A0MSU7jztzVO5CuCsd+Qm7LTibwZTeuizC4bUPquSh3EL56NtM0
 6sGCwTJub1hcnDl6aSx0xP3eY1klcq5xO8Zi9C26AlAPhYoUTjK6PVrlpxVIjBh82fztKGDln+0
 JYhD/5ptCWWLjbRP7wrzcCxpKWXPaq7UvzGIvkVwKrZFNE+q3Z9S9JCKOrsDWiHKE1hNz4OKRY9
 kVy4a7kKFBxaqxu9NGKlCKV+lLyiCqA57zyQJsdlU6Ty4hoistdN4EGzGBohZ0Ha9gb+hIpBHIA
 W7MZ33RF70tlbiw58gHKrJOm3U8ypu6yd/qV+n+/r/xxnbyRxiuqbx+fhU2Y34ZLx8KgiQcQpNS
 0e6yHRTQ4qOTW2z7OlYM1HSvX5xO44zkd8d+aGcwUrn3cBZlkvYVsTrIRjz8zinYFeqFsPQxjvN
 rZdZSv0/qh8fSpIOZ89tnLKsgMyrvq2TUnh4gKNckgCujgSTcfmkvc/o/PVTEgtPFYsHaTsChyY
 og87AFze2GP+hQWtgBdwcR1kvTSfcbITkFtClg6ZgiQr0o0KO65ZOxIDDDJBRgXTqT7LSoH0lHU
 Q5q4wB/6jkAwJdg==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The TLV320AIC3106 audio codec is interfaced on the i2c-1 bus. With the
default rate of 400Khz the i2c register writes fail to sync:

[   36.026387] tlv320aic3x 1-001b: Unable to sync registers 0x16-0x16. -110
[   38.101130] omap_i2c 20010000.i2c: controller timed out

Dropping the rate to 100Khz fixes the issue.

Reviewed-by: Devarsh Thakkar <devarsht@ti.com>
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


