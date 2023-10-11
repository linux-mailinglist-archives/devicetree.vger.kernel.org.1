Return-Path: <devicetree+bounces-7806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA357C5931
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:34:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DCF4C2822F7
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 16:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE1A018E1E;
	Wed, 11 Oct 2023 16:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=z3ntu.xyz header.i=@z3ntu.xyz header.b="x/YFwaEE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0261B3F4A7
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:34:03 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CA28C4;
	Wed, 11 Oct 2023 09:34:01 -0700 (PDT)
Received: from [192.168.178.23] (k10064.upc-k.chello.nl [62.108.10.64])
	by mail.z3ntu.xyz (Postfix) with ESMTPSA id 3CE64C88F4;
	Wed, 11 Oct 2023 16:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1697042009; bh=JWUwGDogpu1uH279Xj7i+R0l2O7xCsC50GV+X5eh6IQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=x/YFwaEEBKscI4zX8q93grF3T0i0mvvyM7FjWVhacceHDko5prY2Eyem9lZxgaA4H
	 6gOOwPQc0EPTlBZQjTc8kG67NOj1coBMW+lANIwI4m5lRY++EElzQB2UjWn4ELUsyH
	 gMpq82+nwyWLOgf1PUU2mDHo7kZ9ShGC5ZcDddPU=
From: Luca Weiss <luca@z3ntu.xyz>
Date: Wed, 11 Oct 2023 18:33:13 +0200
Subject: [PATCH 1/3] dt-bindings: watchdog: qcom-wdt: Add MSM8226 and
 MSM8974 compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231011-msm8226-msm8974-watchdog-v1-1-2c472818fbce@z3ntu.xyz>
References: <20231011-msm8226-msm8974-watchdog-v1-0-2c472818fbce@z3ntu.xyz>
In-Reply-To: <20231011-msm8226-msm8974-watchdog-v1-0-2c472818fbce@z3ntu.xyz>
To: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Sai Prakash Ranjan <quic_saipraka@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca@z3ntu.xyz>, 
 =?utf-8?q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=968; i=luca@z3ntu.xyz;
 h=from:subject:message-id; bh=wkSxJhg8qrUykyVIb0Ugy6zRVaxaLc1W6UllYSVedPY=;
 b=owEBbQKS/ZANAwAIAXLYQ7idTddWAcsmYgBlJs5WPEgvNvr4S97QioveRiwYQAGeSUC0jq76+
 GDm9Jig2mCJAjMEAAEIAB0WIQQ5utIvCCzakboVj/py2EO4nU3XVgUCZSbOVgAKCRBy2EO4nU3X
 VoS1EACXQF2iyKjzSb6rWh6MofKhPAbD9hzHyju9b2bIUJfe7jeu+ehsEms3wZcXyfYYhOLJQj7
 R92SK7lXc/KZWidmBtkyIBQreI2WMU0ibOz9+aYLHH6PSkVXsLtBNvGaMMoEJHucF1hz99Fe7t5
 6nyCaMAOjpiU6ivviVTOcYjb87TtFLJP9yv1zpHt4n3tM3TIxBMZhhaRpJOFu6S2QZ6n2o09lha
 jjW1Xbwdf7my0kdDX/2Rnu6xkFZDZfQGaccOpMdyxywOSCPwhzOs6r2HhWPZKaILnlonCjfGgNp
 zagLYC3452L+HqCObN6kuyq6pAwiq21DBcudxpQOOUq2uUJzbRInXUhcmsB49d3HqfpnRFmjixx
 ZAZdHPgy560FT+UMM5i21UzuqD0xkQUrfmkeWNxJEnTMHtRsEJsqcVvddvPy0U1DDizrKPixddt
 WLsdGmsCshMgVQo7U14pPtpdoBKnke4dM3tdLLXFMZTybOJSy6vYVkTbfZmWipjP+5qJbDPx4JK
 zX651RHAMtYKQi0I2uUKK0DbDdqI9MU+NaD/HL6nXPUmXlpt7jbICTcKfViOsoLTt/nIjOt6xRP
 GopBzN/FqHVSiOx8NQpBLH2Z5UY8Vqi4YTHqpLaYXkO19dYibpoFnFZc1ty+fWHGzWmSfYazEjH
 fcamqVxS5kcb4Uw==
X-Developer-Key: i=luca@z3ntu.xyz; a=openpgp;
 fpr=BD04DA24C971B8D587B2B8D7FAF69CF6CD2D02CD
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Matti Lehtimäki <matti.lehtimaki@gmail.com>

Add compatibles for the MSM8226 and MSM8974 platforms to the Qualcomm
watchdog binding.

Signed-off-by: Matti Lehtimäki <matti.lehtimaki@gmail.com>
Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
index 5046dfa55f13..c12bc852aedc 100644
--- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
@@ -21,6 +21,8 @@ properties:
               - qcom,apss-wdt-ipq5018
               - qcom,apss-wdt-ipq5332
               - qcom,apss-wdt-ipq9574
+              - qcom,apss-wdt-msm8226
+              - qcom,apss-wdt-msm8974
               - qcom,apss-wdt-msm8994
               - qcom,apss-wdt-qcm2290
               - qcom,apss-wdt-qcs404

-- 
2.42.0


