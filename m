Return-Path: <devicetree+bounces-10762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E50DD7D2A4E
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:21:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 81085B20D60
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 06:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83C6C63D4;
	Mon, 23 Oct 2023 06:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trvn.ru header.i=@trvn.ru header.b="N8kfWVYw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3774D568E
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 06:21:24 +0000 (UTC)
Received: from box.trvn.ru (box.trvn.ru [194.87.146.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 846D5D70;
	Sun, 22 Oct 2023 23:21:22 -0700 (PDT)
Received: from authenticated-user (box.trvn.ru [194.87.146.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by box.trvn.ru (Postfix) with ESMTPSA id 48ADC4C0C8;
	Mon, 23 Oct 2023 11:21:09 +0500 (+05)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trvn.ru; s=mail;
	t=1698042069; bh=luFC7my9PJ6B7z1i59mt1ERZ1dlWg9/dkHvKsguCUSo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=N8kfWVYwZjQOXm4rGD8cA8cbc2f5ID92oAlwrty5fvsgH/SYZ2bV8IhnfPnUF4kyV
	 gwhH4PmlMmvTeF+h7AvT1FOFuc3JD3JT3oj54F5esz6JxKA6yBeWClW7ZNzM14XTEm
	 ffyHKlnWmhC6IGnuCyH/O6MOfytOevcjGIWijnqwzRpnexkVqp8ZoK2g/PLVK7g0NU
	 4b/xJ/svcGoLxDerDhCh8D67v9hiTk1RGVWuOvRPsKp22ZX3VRcRr1IV4KMLu7wae0
	 A6v6UQDmc0ttVIulu83e/YSsLYBaiJtEvk1ny+JYBpQxedb1GgaY8CZu3p93NcXmmK
	 jvaVczMxnZmiw==
From: Nikita Travkin <nikita@trvn.ru>
Date: Mon, 23 Oct 2023 11:20:32 +0500
Subject: [PATCH v2 1/3] dt-bindings: mfd: qcom,spmi-pmic: Add pm8916 vm-bms
 and lbc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-pm8916-dtsi-bms-lbc-v2-1-343e3dbf423e@trvn.ru>
References: <20231023-pm8916-dtsi-bms-lbc-v2-0-343e3dbf423e@trvn.ru>
In-Reply-To: <20231023-pm8916-dtsi-bms-lbc-v2-0-343e3dbf423e@trvn.ru>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 Nikita Travkin <nikita@trvn.ru>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1246; i=nikita@trvn.ru;
 h=from:subject:message-id; bh=luFC7my9PJ6B7z1i59mt1ERZ1dlWg9/dkHvKsguCUSo=;
 b=owEBbQKS/ZANAwAIAUMc7O4oGb91AcsmYgBlNhDRw3kL1xMo/oFuqFrVGmBx/J1tcSHs8Vlrm
 O5FI2hw13SJAjMEAAEIAB0WIQTAhK9UUj+qg34uxUdDHOzuKBm/dQUCZTYQ0QAKCRBDHOzuKBm/
 dTIRD/4m9cd91tQKb8ywplt7DOVB8WuPPqMB5SXFanHKRg6mQE9rcU4MiKF4Di68RkOqwvoU6eU
 pclYoN4+IEaZg4UW5UHumh1fl5CvCj6OvV9jwVl2XWoZ/FsizPpAmNWDMgylmAdzcRiNlGeQn5y
 rzndH7eloPc+NxP7dYAHiQ2pGS1cP8+xUnd5hgAH94vcOrxlYheYPXw6qzxPqEuhTIhnRdUSLAl
 f0sQg9oCVG4ZxZraplqeb/tZRKylaYh8YK5X+0f1wOvBKcMkuFB0L3tf/RbxZzTua6FNJO3eH4x
 OT9u+wavVvqWnXmUzpyO9n7FZpW9CJpwLI99Kpb8FqOcuX9cevuG2y8h2dq4ABqBQ/YbCQ+8KR8
 zM53rpNlpQAW90jXDDZWSBJleQXbPxuaWn1riEeabZbA6g83PML+vQxXhaAE47ZUWOqWT2XUE19
 UdSOKvcS1qzIOtRDii42YmLut4xb8PcFUOljer0ukxDOxqsN0J/OqFWD4eOicGtiAQpm9liNru5
 uvfLxvcm+gybq2RtYzDIpCZoBJV2ljmUeUyfZjULZx1vlpVVkUWF2O2b9cnzeOOsayrgse0bhT9
 GDwCKwiUMJimYwr87vxwDooyPEblCcRw73MmX4N92YJ5mvHNUjtnL3PeaxKjNR43cgCOcOUWB6k
 7HJeSAfOVd+dn+A==
X-Developer-Key: i=nikita@trvn.ru; a=openpgp;
 fpr=C084AF54523FAA837E2EC547431CECEE2819BF75

PM8916 (and probably some other similar pmics) have hardware blocks for
battery monitoring and charging. Add patterns for respecive nodes so the
devicetree for those blocks can be validated properly.

Signed-off-by: Nikita Travkin <nikita@trvn.ru>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 9fa568603930..49103e07032a 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -134,9 +134,15 @@ patternProperties:
     type: object
     $ref: /schemas/sound/qcom,pm8916-wcd-analog-codec.yaml#
 
+  "^battery@[0-9a-f]+$":
+    type: object
+    oneOf:
+      - $ref: /schemas/power/supply/qcom,pm8916-bms-vm.yaml#
+
   "^charger@[0-9a-f]+$":
     type: object
     oneOf:
+      - $ref: /schemas/power/supply/qcom,pm8916-lbc.yaml#
       - $ref: /schemas/power/supply/qcom,pm8941-charger.yaml#
       - $ref: /schemas/power/supply/qcom,pm8941-coincell.yaml#
       - $ref: /schemas/power/supply/qcom,pmi8998-charger.yaml#

-- 
2.41.0


