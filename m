Return-Path: <devicetree+bounces-1410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA187A61E3
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:00:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDD5E281467
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:00:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1792F2E651;
	Tue, 19 Sep 2023 12:00:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896DC4684
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:00:00 +0000 (UTC)
Received: from mx.kernkonzept.com (serv1.kernkonzept.com [IPv6:2a01:4f8:1c1c:b490::2])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BEC6F3;
	Tue, 19 Sep 2023 04:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kernkonzept.com; s=mx1; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description;
	bh=ffq0+SGQ8MUyYv3w6IpPZxS0q3DMyt6jN+7SxiKE6GE=; b=h4XzlwIRhiYBdzseaguyIujdfD
	W0inlorb+nsWhFe+7Cg7EYSihkirHCVsbkhk9/uVrYbABXUupX2AensJOgWtSTHSdLu0etROnDxwv
	QeVnIrdamJNS1SlXLtdZ5ALZAviHRCN9S045FUopzdbQeH3e/6zAfneYMVvWoNu5SrOI8XQD7SS4l
	MzOZXjjv3Xqod5dA7iDD9sTPvpWn3Qwk4GI7NLHtCQaXXUevsMEgN8C3Ki4CT8R5LardtukmKaHOj
	Apyc+zh3St92vYI1AIomGYUDFk596doTu0GeE9iK3ZVXXTwArwLdvLuZSJokMTwGmGSefG5fp9BF9
	V6VMLpcg==;
Received: from [10.22.3.24] (helo=serv1.dd1.int.kernkonzept.com)
	by mx.kernkonzept.com with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim 4.96)
	id 1qiZOV-004b4T-1G;
	Tue, 19 Sep 2023 13:59:55 +0200
From: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Date: Tue, 19 Sep 2023 13:59:48 +0200
Subject: [PATCH v2 1/4] spi: dt-bindings: qup: Document power-domains and
 OPP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230919-spi-qup-dvfs-v2-1-1bac2e9ab8db@kernkonzept.com>
References: <20230919-spi-qup-dvfs-v2-0-1bac2e9ab8db@kernkonzept.com>
In-Reply-To: <20230919-spi-qup-dvfs-v2-0-1bac2e9ab8db@kernkonzept.com>
To: Mark Brown <broonie@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Stephan Gerhold <stephan.gerhold@kernkonzept.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Document power-domains and operating-points-v2 to allow making
performance state votes for certain clock frequencies of the SPI QUP
controller.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
---
 Documentation/devicetree/bindings/spi/qcom,spi-qup.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/qcom,spi-qup.yaml b/Documentation/devicetree/bindings/spi/qcom,spi-qup.yaml
index 93f14dd01afc..1e498a791406 100644
--- a/Documentation/devicetree/bindings/spi/qcom,spi-qup.yaml
+++ b/Documentation/devicetree/bindings/spi/qcom,spi-qup.yaml
@@ -47,6 +47,11 @@ properties:
   interrupts:
     maxItems: 1
 
+  operating-points-v2: true
+
+  power-domains:
+    maxItems: 1
+
   reg:
     maxItems: 1
 
@@ -63,6 +68,7 @@ examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-msm8996.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
 
     spi@7575000 {
         compatible = "qcom,spi-qup-v2.2.1";
@@ -76,6 +82,8 @@ examples:
         pinctrl-1 = <&blsp1_spi1_sleep>;
         dmas = <&blsp1_dma 12>, <&blsp1_dma 13>;
         dma-names = "tx", "rx";
+        power-domains = <&rpmpd MSM8996_VDDCX>;
+        operating-points-v2 = <&spi_opp_table>;
         #address-cells = <1>;
         #size-cells = <0>;
     };

-- 
2.39.2


