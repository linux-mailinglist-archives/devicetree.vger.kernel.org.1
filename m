Return-Path: <devicetree+bounces-14121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3964B7E20F1
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:09:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E547E2810CB
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1256E1EB39;
	Mon,  6 Nov 2023 12:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=riseup.net header.i=@riseup.net header.b="JcNFWOPD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E1711EA8F
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 12:09:13 +0000 (UTC)
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0A1C19A9;
	Mon,  6 Nov 2023 04:09:12 -0800 (PST)
Received: from fews01-sea.riseup.net (fews01-sea-pn.riseup.net [10.0.1.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx1.riseup.net (Postfix) with ESMTPS id 4SP9B44y4qzDqdN;
	Mon,  6 Nov 2023 12:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1699272552; bh=rvBysnDTedQ1OPH1fcwqwY0T/9uUDPaDjSEpMyS7Tcs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JcNFWOPDOx8aqPkhLq/QVs/eG9N24kg+hAPN8BiG3x+jo1lr/nHdjIuYNdy/9hQx9
	 4wPn7S1XL4QkQ27Ro5WRAIX1E22f94CSnn4oecxCvkx1GcNpLoSupJqQcRmL36MoOx
	 ECNrmt46U5qUYeflNYyzzE5h4IMEaZktFMWj5Eh0=
X-Riseup-User-ID: EC34A06A5473F8E656B867CF49E6268AFAF37AF9EDCA1140DEC63E033A1FE818
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews01-sea.riseup.net (Postfix) with ESMTPSA id 4SP9B12gVxzJmtY;
	Mon,  6 Nov 2023 12:08:57 +0000 (UTC)
From: Dang Huynh <danct12@riseup.net>
Date: Mon, 06 Nov 2023 19:08:30 +0700
Subject: [PATCH 2/8] dt-bindings: mfd: qcom-spmi-pmic: Document PM8937 PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231106-pm8937-v1-2-ec51d9eeec53@riseup.net>
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

Add bindings for PM8937 PMIC (qcom,pm8937). This PMIC is found in
boards with MSM8917, MSM8937, MSM8940 and APQ variants.

Signed-off-by: Dang Huynh <danct12@riseup.net>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 9fa568603930..8f728920df9e 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -66,6 +66,7 @@ properties:
           - qcom,pm8841
           - qcom,pm8909
           - qcom,pm8916
+          - qcom,pm8937
           - qcom,pm8941
           - qcom,pm8950
           - qcom,pm8953

-- 
2.42.1


