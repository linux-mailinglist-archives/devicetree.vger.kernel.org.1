Return-Path: <devicetree+bounces-14120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C517E20F0
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:09:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 319B9B20AAA
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:09:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62F791EB3D;
	Mon,  6 Nov 2023 12:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=riseup.net header.i=@riseup.net header.b="PsiuYecO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5021EA8F
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 12:09:10 +0000 (UTC)
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D3D419A1;
	Mon,  6 Nov 2023 04:09:09 -0800 (PST)
Received: from mx0.riseup.net (mx0-pn.riseup.net [10.0.1.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx1.riseup.net (Postfix) with ESMTPS id 4SP9BF0lJKzDqr0;
	Mon,  6 Nov 2023 12:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1699272549; bh=ueiGIoED8D7GUi0JdyqB+12pNhhh43uK1CXKDG24qd8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=PsiuYecOlEokv/12vj6Gdbn+xtk4cDHGjC8jB43V1rFX6o1GLTt8xkjb95E0FoFqR
	 dNQ5eoQEm7CC2IQ/TRrluRm5M+sd1APi/OVQGSrvbwCdrgGTshSO+H+43RDNeSV4pU
	 PahLdxtkULbaMQIV8QjV4xnfrFNZnNqC7qxrS7pc=
Received: from fews01-sea.riseup.net (fews01-sea-pn.riseup.net [10.0.1.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx0.riseup.net (Postfix) with ESMTPS id 4SP9BC4Txpz9tMS;
	Mon,  6 Nov 2023 12:09:07 +0000 (UTC)
X-Riseup-User-ID: 7746C3B741D4916DBEF99B4EF2D3668B6DB9241BDE0EEDFD821D3A7F75339FA0
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews01-sea.riseup.net (Postfix) with ESMTPSA id 4SP9B82XcyzJmmw;
	Mon,  6 Nov 2023 12:09:04 +0000 (UTC)
From: Dang Huynh <danct12@riseup.net>
Date: Mon, 06 Nov 2023 19:08:32 +0700
Subject: [PATCH 4/8] dt-bindings: regulator: qcom,spmi-regulator: Document
 PM8937 PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231106-pm8937-v1-4-ec51d9eeec53@riseup.net>
References: <20231106-pm8937-v1-0-ec51d9eeec53@riseup.net>
In-Reply-To: <20231106-pm8937-v1-0-ec51d9eeec53@riseup.net>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Robert Marko <robimarko@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Dang Huynh <danct12@riseup.net>

Add support for qcom,pm8937-regulators compatible string and add
relevant supplies in QCOM's SPMI regulator documentation.

Signed-off-by: Dang Huynh <danct12@riseup.net>
---
 .../bindings/regulator/qcom,spmi-regulator.yaml       | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,spmi-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,spmi-regulator.yaml
index 7a1b7d2abbd4..aea849e8eadf 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,spmi-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,spmi-regulator.yaml
@@ -22,6 +22,7 @@ properties:
       - qcom,pm8841-regulators
       - qcom,pm8909-regulators
       - qcom,pm8916-regulators
+      - qcom,pm8937-regulators
       - qcom,pm8941-regulators
       - qcom,pm8950-regulators
       - qcom,pm8994-regulators
@@ -291,6 +292,24 @@ allOf:
       patternProperties:
         "^vdd_s[1-3]-supply$": true
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pm8937-regulators
+    then:
+      properties:
+        vdd_l1_l19-supply: true
+        vdd_l20_l21-supply: true
+        vdd_l2_l23-supply: true
+        vdd_l3-supply: true
+        vdd_l4_l5_l6_l7_l16-supply: true
+        vdd_l8_l11_l12_l17_l22-supply: true
+        vdd_l9_l10_l13_l14_l15_l18-supply: true
+      patternProperties:
+        "^vdd_s[1-6]-supply$": true
+
   - if:
       properties:
         compatible:

-- 
2.42.1


