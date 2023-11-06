Return-Path: <devicetree+bounces-14123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A997E20F3
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:09:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A137C1C20BBF
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A05071EB48;
	Mon,  6 Nov 2023 12:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=riseup.net header.i=@riseup.net header.b="MMV+nZ03"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11ACF1EB36
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 12:09:17 +0000 (UTC)
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1308119AB;
	Mon,  6 Nov 2023 04:09:16 -0800 (PST)
Received: from mx0.riseup.net (mx0-pn.riseup.net [10.0.1.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx1.riseup.net (Postfix) with ESMTPS id 4SP9BM4nVLzDqsX;
	Mon,  6 Nov 2023 12:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1699272555; bh=ADhevVZxzxyn973JhlX1uMcq1ATrbwpwc2EAFNlpRzk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=MMV+nZ03yDGqw6FoNGSKPxGaGHQsbRAksTscvpZJmqMLy6NJ1WeZeVjFDD5VKMe+E
	 znVk2Mw6r/QV5q7YRcoKWCuABuKXOizbWB0UDJDeky+wTvpamxncKuYDGUKs7ktFDO
	 TotoxWIy8PqyNxcJSS1i651an02OTFPzt6w7BoCU=
Received: from fews01-sea.riseup.net (fews01-sea-pn.riseup.net [10.0.1.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx0.riseup.net (Postfix) with ESMTPS id 4SP9BL4lX5z9t68;
	Mon,  6 Nov 2023 12:09:14 +0000 (UTC)
X-Riseup-User-ID: 51291C5CE49DEA1B08EC6951B10B8EF80AE208013B4D379B345326152F2E336F
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews01-sea.riseup.net (Postfix) with ESMTPSA id 4SP9BH2JswzJmmw;
	Mon,  6 Nov 2023 12:09:11 +0000 (UTC)
From: Dang Huynh <danct12@riseup.net>
Date: Mon, 06 Nov 2023 19:08:34 +0700
Subject: [PATCH 6/8] dt-bindings: regulator: qcom,smd-rpm-regulator:
 Document PM8937 IC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231106-pm8937-v1-6-ec51d9eeec53@riseup.net>
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

Document the pm8937 compatible string and available regulators in
the QCOM SMD RPM regulator documentation.

Signed-off-by: Dang Huynh <danct12@riseup.net>
---
 .../devicetree/bindings/regulator/qcom,smd-rpm-regulator.yaml         | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,smd-rpm-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,smd-rpm-regulator.yaml
index 9ea8ac0786ac..f2fd2df68a9e 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,smd-rpm-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,smd-rpm-regulator.yaml
@@ -47,6 +47,9 @@ description:
   For pm8916, s1, s2, s3, s4, l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11,
   l12, l13, l14, l15, l16, l17, l18
 
+  For pm8937, s1, s2, s3, s4, l1, l2, l3, l4, l5, l6, l7, l8, l9, l10,
+  l11, l12, l13, l14, l15, l16, l17, l18, l19, l20, l21, l22, l23
+
   For pm8941, s1, s2, s3, s4, l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11,
   l12, l13, l14, l15, l16, l17, l18, l19, l20, l21, l22, l23, l24, lvs1, lvs2,
   lvs3, 5vs1, 5vs2
@@ -92,6 +95,7 @@ properties:
       - qcom,rpm-pm8841-regulators
       - qcom,rpm-pm8909-regulators
       - qcom,rpm-pm8916-regulators
+      - qcom,rpm-pm8937-regulators
       - qcom,rpm-pm8941-regulators
       - qcom,rpm-pm8950-regulators
       - qcom,rpm-pm8953-regulators

-- 
2.42.1


