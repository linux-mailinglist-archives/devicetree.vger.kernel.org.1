Return-Path: <devicetree+bounces-7805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB147C592E
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:33:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AA5B01C20E92
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 16:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7018182AB;
	Wed, 11 Oct 2023 16:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=z3ntu.xyz header.i=@z3ntu.xyz header.b="JJHjEFTh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046F33F4B3
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:33:32 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22EBFB0;
	Wed, 11 Oct 2023 09:33:31 -0700 (PDT)
Received: from [192.168.178.23] (k10064.upc-k.chello.nl [62.108.10.64])
	by mail.z3ntu.xyz (Postfix) with ESMTPSA id F38A6C88E9;
	Wed, 11 Oct 2023 16:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1697042009; bh=qhKCT4xrkgikeWF4fbn1jxq8p8MIe5Q6C2l6e3PNY5U=;
	h=From:Subject:Date:To:Cc;
	b=JJHjEFTh/7Ebx5nZwH0dWU5pvi+UQhKvL++lM41KjvgR2JTNA7Dt9EP7fgPz8qhtO
	 WTxeRSc/x7b2HfNRiOjR4XouAQxXcY7YMz1bspN26XAcU4whLMYgi9lxaEHYWkvzS8
	 7bBYPqNkyZreyHfa2dk2idNQBemcQ1H282bGogSw=
From: Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH 0/3] Add watchdog nodes to msm8226 & msm8974
Date: Wed, 11 Oct 2023 18:33:12 +0200
Message-Id: <20231011-msm8226-msm8974-watchdog-v1-0-2c472818fbce@z3ntu.xyz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAEjOJmUC/x2MQQqAIBAAvxJ7TsjNyvpKdJDacg9WaFQg/j3pN
 MxhJkIgzxRgKCJ4ujnwsWeRZQGzNftGgpfsgBXWspJSuOA0Yvuz75R4zDXb5diE0ZpUsypCoyD
 np6eV3389Til9TGLaR2oAAAA=
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1366; i=luca@z3ntu.xyz;
 h=from:subject:message-id; bh=qhKCT4xrkgikeWF4fbn1jxq8p8MIe5Q6C2l6e3PNY5U=;
 b=owEBbQKS/ZANAwAIAXLYQ7idTddWAcsmYgBlJs5TOneAtkZj1F5CsZKdsfrGSrlcZ3qmg2NP5
 +G8AI9e782JAjMEAAEIAB0WIQQ5utIvCCzakboVj/py2EO4nU3XVgUCZSbOUwAKCRBy2EO4nU3X
 Vpx8D/4+FIELvM73S2A7NuOX0vSGtsp1r0yatMMV1Wch3QQ7mRCmUf/QYAUXzzHRMSndwTbSZoP
 4IlopG7Mehr9CmJDXnb5UqvQtUS2y9mtuhTqSi46h6MkeOKahnFzaKgg+CIwgCNtLPPLS/dNn7e
 rTYWQsHj71XNTSEiMVOZa4p7bZkwHHBno0j471u+50B5OWCcsk+rjCKHZO191L0TlMgCDX9i5MT
 N95M5MKc+0nBXzApPjgQjpr4fBPwMeaeEOo10CqEUbkWboQhMHB9X0uDePeZDZ2h0HgqIfRpwbn
 sglh3bU3ZV7ylQfyn0Mx1l2TEhG5c+mNZ+d5r8FCIk2Z107FwGoPJq/JnMoHUR33sfhe9NaSO7h
 QsH4CEgRqA1KDD5ivFB/fuZiWwcSzrZGlmXRH/3+eS9tnrsFmlR1ZBEMawYu8W8pPdBjgI5Rw7U
 FML49dcMYg6wxgNFWlSOPP/b+Gz1Bjn5ggdTU3jDs8OGKb43caFM9qzFWu9B1XFYM5rQRLQ1VD8
 2p4jaWaLtkMjbEfdVv5OGkuIxQsMshoak9exWbYgXAJTxDbUpkYxLFOTWNDeynfy2prxeksjtPP
 Xao+3N2cDUm1VqZBiXCODR/XuWfy83zk7FxoCWBSfJFooi0SgyuAc8J2HRaouZJipkhOPVLj/H6
 Uv2pB34Thbld2uA==
X-Developer-Key: i=luca@z3ntu.xyz; a=openpgp;
 fpr=BD04DA24C971B8D587B2B8D7FAF69CF6CD2D02CD
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Document the compatible for the watchdog found on both SoCs, and add
them to the SoC dtsi file. And especially for the case where the
bootloader has already enabled the watchdog we need to start petting it
on time, otherwise the system gets rebooted.

It's worth noting that the watchdog behaves a bit unexpectedly.
It appears the watchdog counts down significantly slower when there's no
load on the system and can last far longer than 30 seconds until they
bark. Only when putting load on the system, e.g. with stress-ng does the
watchdog interrupt fire and kill the system within an expected amount of
time.

This behavior has been observed on both msm8974 and msm8226 smartphones.

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
Matti Lehtimäki (3):
      dt-bindings: watchdog: qcom-wdt: Add MSM8226 and MSM8974 compatibles
      ARM: dts: qcom: msm8226: Add watchdog node
      ARM: dts: qcom: msm8974: Add watchdog node

 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml | 2 ++
 arch/arm/boot/dts/qcom/qcom-msm8226.dtsi                 | 8 ++++++++
 arch/arm/boot/dts/qcom/qcom-msm8974.dtsi                 | 8 ++++++++
 3 files changed, 18 insertions(+)
---
base-commit: 2933a1156742d8c47550493a77af8e2d81cf3c84
change-id: 20231011-msm8226-msm8974-watchdog-a88e45f4e2a4

Best regards,
-- 
Luca Weiss <luca@z3ntu.xyz>


